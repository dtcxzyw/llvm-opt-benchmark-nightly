inline.NumInlined: 3826
inline.NumDeleted: 1929
begin_hunk_0_@_ZN6Assimp6Logger4warnIJRA42_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_EEEvDpOT_:bb.a
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(42) %1) #26
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(42) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA42_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA42_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA13_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(13) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA42_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #26
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA42_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA16_S2_SC_RA3_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(46) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(3) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %7)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(46) %1) #26
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %7, ptr noundef nonnull align 1 dereferenceable(46) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %7) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA16_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_ESC_EESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(3) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit
  %i.d = load ptr, ptr %6, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %6, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %7, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %7, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #26
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %6, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp13ColladaLoader10CreateMeshERKNS_13ColladaParserEPKNS_7Collada4MeshERKNS4_7SubMeshEPKNS4_10ControllerEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 21 uses
  %8 = alloca %"class.std::vector.257", align 8   ; 10 uses
  %9 = alloca %"class.std::vector.262", align 8   ; 11 uses
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.267", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.c = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #30 ; 20 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1272
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1312
  store ptr null, ptr %i.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.f, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.g, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.h, i8 0, i64 36, i1 false)
  store ptr %i.c, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !range !9, !noundef !10
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  %i.o = icmp ugt i64 %i.n, 1023
  br i1 %i.o, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  %i.r = trunc nuw nsw i64 %i.n to i32
  store i32 %i.r, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 1 %i.t, i64 %i.n, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n
  store i8 0, ptr %i.u, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 4 uses
  %i.x = icmp ugt i64 %i.w, 1023
  br i1 %i.x, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  %i.z = trunc nuw nsw i64 %i.w to i32
  store i32 %i.z, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 1 %i.ab, i64 %i.w, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  store i8 0, ptr %i.ac, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 632 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %6 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %.idx668 = shl i64 %i.am, 3                     ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %.idx668
  %.not5.i = icmp eq i64 %i.am, 0
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET0_T_S9_S8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.ao = add i64 %.idx668, -8                    ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader1556, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3
  %i.as = getelementptr i8, ptr %i.ak, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi1424 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.at = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load1425 = load <2 x i64>, ptr %i.au, align 8
  %i.av = freeze <2 x i64> %wide.load
  %i.aw = freeze <2 x i64> %wide.load1425
  %i.ax = add <2 x i64> %i.av, %vec.phi           ; 2 uses
  %i.ay = add <2 x i64> %i.aw, %vec.phi1424       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET0_T_S9_S8_.exit, label %.lr.ph.i.preheader1556

.lr.ph.i.preheader1556:                           ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.ak, %.lr.ph.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader1556, %.lr.ph.i
  %.07.i = phi i64 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader1556 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader1556 ] ; 2 uses
  %i.bb = load i64, ptr %.sroa.02.06.i, align 8
  %.fr = freeze i64 %i.bb
  %i.bc = add i64 %.fr, %.07.i                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.an
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET0_T_S9_S8_.exit, label %.lr.ph.i, !llvm.loop !81

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET0_T_S9_S8_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.f
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 16 uses
  %i.be = trunc i64 %.0.lcssa.i to i32
  store i32 %i.be, ptr %i.d, align 4
  %i.bf = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.0.lcssa.i, i64 12) ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  %i.bh = extractvalue { i64, i1 } %i.bf, 0       ; 10 uses
  %i.bi = select i1 %i.bg, i64 -1, i64 %i.bh      ; 5 uses
  %i.bj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #30
          to label %bb.g unwind label %bb.p       ; 5 uses

bb.g:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET0_T_S9_S8_.exit
  %i.bk = icmp eq i64 %.0.lcssa.i, 0              ; 13 uses
  br i1 %i.bk, label %.thread1175, label %.loopexit709

.thread1175:                                      ; preds = %bb.g
  store ptr %i.bj, ptr %i.f, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

.loopexit709:                                     ; preds = %bb.g
  %i.bl = add i64 %i.bh, -12                      ; 2 uses
  %i.bm = urem i64 %i.bl, 12
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = add i64 %i.bn, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bj, i8 0, i64 %i.bo, i1 false)
  store ptr %i.bj, ptr %i.f, align 8
  %i.bp = getelementptr inbounds [12 x i8], ptr %i.ae, i64 %5 ; 2 uses
  %i.bq = icmp sgt i64 %.0.lcssa.i, 1
  br i1 %i.bq, label %bb.h, label %bb.i, !prof !82

bb.h:                                             ; preds = %.loopexit709
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr align 4 %i.bp, i64 %i.bh, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.i:                                             ; preds = %.loopexit709
  %i.br = icmp eq i64 %.0.lcssa.i, 1
  br i1 %i.br, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %i.bp, i64 12, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit: ; preds = %.thread1175, %bb.j, %bb.i, %bb.h
  %i.bs = phi i1 [ false, %bb.j ], [ false, %bb.i ], [ true, %bb.h ], [ false, %.thread1175 ] ; 14 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 12
  %i.cb = add i64 %.0.lcssa.i, %5                 ; 14 uses
  %.not = icmp ult i64 %i.ca, %i.cb
  br i1 %.not, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit485, label %bb.k

bb.k:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit
  %i.cc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #30
          to label %bb.l unwind label %bb.p       ; 5 uses

bb.l:                                             ; preds = %bb.k
  br i1 %i.bk, label %.loopexit708.thread, label %.loopexit708

.loopexit708:                                     ; preds = %bb.l
  %i.cd = add i64 %i.bh, -12                      ; 2 uses
  %i.ce = urem i64 %i.cd, 12
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = add i64 %i.cf, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cc, i8 0, i64 %i.cg, i1 false)
end_hunk_0
begin_hunk_1_@_ZN6Assimp13ColladaLoader10CreateMeshERKNS_13ColladaParserEPKNS_7Collada4MeshERKNS4_7SubMeshEPKNS4_10ControllerEmm:bb.a

_ZNSt6vectorIP10aiAnimMeshSaIS1_EED2Ev.exit:      ; preds = %._crit_edge897, %._crit_edge950.thread, %._crit_edge950, %bb.ea, %._crit_edge930
  %.sroa.0623.0.lcssa1194 = phi ptr [ %.sroa.0623.2, %._crit_edge930 ], [ %.sroa.0623.2, %._crit_edge950.thread ], [ %.sroa.0623.2, %._crit_edge950 ], [ %.sroa.0623.2, %bb.ea ], [ null, %._crit_edge897 ] ; 14 uses
  %.sroa.20636.0.lcssa1192 = phi ptr [ %.sroa.20636.2, %._crit_edge930 ], [ %.sroa.20636.2, %._crit_edge950.thread ], [ %.sroa.20636.2, %._crit_edge950 ], [ %.sroa.20636.2, %bb.ea ], [ null, %._crit_edge897 ] ; 12 uses
  %.sroa.0613.0.lcssa1190 = phi ptr [ %.sroa.0613.2, %._crit_edge930 ], [ %.sroa.0613.2, %._crit_edge950.thread ], [ %.sroa.0613.2, %._crit_edge950 ], [ %.sroa.0613.2, %bb.ea ], [ null, %._crit_edge897 ] ; 14 uses
  %.sroa.15620.0.lcssa1188 = phi ptr [ %.sroa.15620.2, %._crit_edge930 ], [ %.sroa.15620.2, %._crit_edge950.thread ], [ %.sroa.15620.2, %._crit_edge950 ], [ %.sroa.15620.2, %bb.ea ], [ null, %._crit_edge897 ] ; 12 uses
  %.not395 = icmp eq ptr %4, null
  br i1 %.not395, label %bb.hk, label %bb.en

bb.en:                                            ; preds = %_ZNSt6vectorIP10aiAnimMeshSaIS1_EED2Ev.exit
  %i.xc = load i32, ptr %4, align 8
  %i.xd = icmp eq i32 %i.xc, 0
  br i1 %i.xd, label %bb.eo, label %bb.hk

bb.eo:                                            ; preds = %bb.en
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.xg = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6Assimp13ColladaParser23ResolveLibraryReferenceINS_7Collada8AccessorEEERKT_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St4lessISD_ESaISt4pairIKSD_S4_EEERSH_(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.xe, ptr noundef nonnull align 8 dereferenceable(32) %i.xf)
          to label %bb.ep unwind label %bb.ew     ; 4 uses

bb.ep:                                            ; preds = %bb.eo
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xg, i64 88
  %i.xj = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6Assimp13ColladaParser23ResolveLibraryReferenceINS_7Collada4DataEEERKT_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St4lessISD_ESaISt4pairIKSD_S4_EEERSH_(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.xh, ptr noundef nonnull align 8 dereferenceable(32) %i.xi)
          to label %bb.eq unwind label %bb.ex     ; 3 uses

bb.eq:                                            ; preds = %bb.ep
  %i.xk = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.xl = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6Assimp13ColladaParser23ResolveLibraryReferenceINS_7Collada8AccessorEEERKT_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St4lessISD_ESaISt4pairIKSD_S4_EEERSH_(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.xe, ptr noundef nonnull align 8 dereferenceable(32) %i.xk)
          to label %bb.er unwind label %bb.ey     ; 3 uses

bb.er:                                            ; preds = %bb.eq
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 88
  %i.xn = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6Assimp13ColladaParser23ResolveLibraryReferenceINS_7Collada4DataEEERKT_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St4lessISD_ESaISt4pairIKSD_S4_EEERSH_(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.xh, ptr noundef nonnull align 8 dereferenceable(32) %i.xm)
          to label %bb.es unwind label %bb.ez     ; 2 uses

bb.es:                                            ; preds = %bb.er
  %i.xo = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.xp = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6Assimp13ColladaParser23ResolveLibraryReferenceINS_7Collada8AccessorEEERKT_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St4lessISD_ESaISt4pairIKSD_S4_EEERSH_(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.xe, ptr noundef nonnull align 8 dereferenceable(32) %i.xo)
          to label %bb.et unwind label %bb.fa

bb.et:                                            ; preds = %bb.es
  %.not396 = icmp eq ptr %i.xp, %i.xg
  br i1 %.not396, label %bb.fc, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.xq = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.xq, ptr noundef nonnull @.str.22)
          to label %bb.ev unwind label %bb.fb

bb.ev:                                            ; preds = %bb.eu
  invoke void @__cxa_throw(ptr nonnull %i.xq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.hp unwind label %bb.fa

bb.ew:                                            ; preds = %bb.eo
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ex:                                            ; preds = %bb.ep
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ey:                                            ; preds = %bb.eq
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ez:                                            ; preds = %bb.er
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fa:                                            ; preds = %bb.ev, %bb.es
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fb:                                            ; preds = %bb.eu
  %i.xw = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.xq) #26
  br label %.body

bb.fc:                                            ; preds = %bb.et
  %i.xx = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.xy = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6Assimp13ColladaParser23ResolveLibraryReferenceINS_7Collada8AccessorEEERKT_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St4lessISD_ESaISt4pairIKSD_S4_EEERSH_(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.xe, ptr noundef nonnull align 8 dereferenceable(32) %i.xx)
          to label %bb.fd unwind label %bb.fi     ; 3 uses

bb.fd:                                            ; preds = %bb.fc
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 88
  %i.ya = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6Assimp13ColladaParser23ResolveLibraryReferenceINS_7Collada4DataEEERKT_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St4lessISD_ESaISt4pairIKSD_S4_EEERSH_(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.xh, ptr noundef nonnull align 8 dereferenceable(32) %i.xz)
          to label %bb.fe unwind label %bb.fj     ; 3 uses

bb.fe:                                            ; preds = %bb.fd
  %i.yb = load i8, ptr %i.xj, align 8, !range !9, !noundef !10
  %i.yc = trunc nuw i8 %i.yb to i1
  br i1 %i.yc, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.yd = load i8, ptr %i.xn, align 8, !range !9, !noundef !10
  %i.ye = trunc nuw i8 %i.yd to i1
  br i1 %i.ye, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.yf = load i8, ptr %i.ya, align 8, !range !9, !noundef !10
  %i.yg = trunc nuw i8 %i.yf to i1
  br i1 %i.yg, label %bb.fh, label %bb.fl

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %bb.fe
  %i.yh = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.yh, ptr noundef nonnull @.str.23)
          to label %.invoke unwind label %bb.fk

bb.fi:                                            ; preds = %bb.fc
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fj:                                            ; preds = %.invoke, %bb.fd
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fk:                                            ; preds = %bb.fh
  %i.yk = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.yh) #26
  br label %.body

bb.fl:                                            ; preds = %bb.fg
  %i.yl = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.ym = load i64, ptr %i.yl, align 8
  %.not397 = icmp eq i64 %i.ym, 0
  br i1 %.not397, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.yn = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.yo = load i64, ptr %i.yn, align 8
  %.not398 = icmp eq i64 %i.yo, 1
  br i1 %.not398, label %bb.fp, label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.yp = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.yp, ptr noundef nonnull @.str.24)
          to label %.invoke unwind label %bb.fo

.invoke:                                          ; preds = %bb.fh, %bb.fn
  %i.yq = phi ptr [ %i.yp, %bb.fn ], [ %i.yh, %bb.fh ]
  invoke void @__cxa_throw(ptr nonnull %i.yq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %.cont unwind label %bb.fj

.cont:                                            ; preds = %.invoke
  unreachable

bb.fo:                                            ; preds = %bb.fn
  %i.yr = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.yp) #26
  br label %.body

bb.fp:                                            ; preds = %bb.fm
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xj, i64 32 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.xj, i64 40
  %i.yu = load ptr, ptr %i.yt, align 8            ; 2 uses
  %i.yv = load ptr, ptr %i.ys, align 8            ; 2 uses
  %i.yw = ptrtoint ptr %i.yu to i64
  %i.yx = ptrtoint ptr %i.yv to i64
  %i.yy = sub i64 %i.yw, %i.yx
  %i.yz = ashr exact i64 %i.yy, 5                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.za = icmp ugt i64 %i.yz, 384307168202282325
  br i1 %i.za, label %bb.fq, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #29
          to label %.noexc522 unwind label %bb.fs

.noexc522:                                        ; preds = %bb.fq
  unreachable

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.fp
  store i64 0, ptr %8, align 8
  %.not.i.i.i.i521 = icmp eq ptr %i.yu, %i.yv     ; 2 uses
  br i1 %.not.i.i.i.i521, label %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.zb = mul nuw nsw i64 %i.yz, 24               ; 3 uses
  %i.zc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zb) #30
          to label %.noexc523 unwind label %bb.fs ; 5 uses

.noexc523:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.zc, ptr %8, align 8
  %i.zd = getelementptr inbounds nuw [24 x i8], ptr %i.zc, i64 %i.yz
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.zc, i8 0, i64 %i.zb, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.zc, i64 %i.zb
  br label %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i

_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc523
  %i.ze = phi ptr [ %i.zc, %.noexc523 ], [ null, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 3 uses
  %.sink.i = phi ptr [ %i.zd, %.noexc523 ], [ null, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.zf = phi ptr [ %scevgep.i.i.i.i.i, %.noexc523 ], [ null, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.zh, align 8
  store ptr %i.zf, ptr %i.zg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.zi = getelementptr inbounds nuw i8, ptr %4, i64 296 ; 4 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %4, i64 304 ; 3 uses
  %i.zk = load ptr, ptr %i.zj, align 8            ; 2 uses
  %i.zl = load ptr, ptr %i.zi, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.zm = getelementptr inbounds nuw i8, ptr %4, i64 320
  %i.zn = getelementptr inbounds nuw i8, ptr %4, i64 328
  %i.zo = load ptr, ptr %i.zn, align 8
  store ptr %i.zo, ptr %10, align 8
  %.not1174 = icmp eq ptr %i.zk, %i.zl
  br i1 %.not1174, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit.thread, label %bb.fr

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit.thread: ; preds = %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.preheader

bb.fr:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.zp = ptrtoint ptr %i.zl to i64
  %i.zq = ptrtoint ptr %i.zk to i64
  %i.zr = sub i64 %i.zq, %i.zp
  %i.zs = ashr exact i64 %i.zr, 3
  invoke void @_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE14_M_fill_insertENS1_IPS8_SA_EEmRKS8_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr null, i64 noundef %i.zs, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit unwind label %bb.ft

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit: ; preds = %bb.fr
  %.pre1091 = load ptr, ptr %i.zj, align 8
  %.pre1092 = load ptr, ptr %i.zi, align 8
  %i.zt = icmp eq ptr %.pre1091, %.pre1092
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br i1 %i.zt, label %.preheader, label %.lr.ph953.preheader

.lr.ph953.preheader:                              ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit
  %i.zu = load ptr, ptr %i.zm, align 8
  br label %.lr.ph953

.preheader:                                       ; preds = %.lr.ph953, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit.thread, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit
  %i.zv = icmp ult i64 %5, %i.cb
  br i1 %i.zv, label %.lr.ph960, label %._crit_edge961

.lr.ph960:                                        ; preds = %.preheader
  %i.zw = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.zx = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.zy = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  %i.zz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  br label %bb.fu

bb.fs:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.fq
  %i.aab = landingpad { ptr, i32 }
          cleanup
  br label %bb.hj

bb.ft:                                            ; preds = %bb.fr
  %i.aac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.hh

.lr.ph953:                                        ; preds = %.lr.ph953.preheader, %.lr.ph953
  %.0370952 = phi i64 [ %i.aak, %.lr.ph953 ], [ 0, %.lr.ph953.preheader ] ; 3 uses
  %.sroa.0577.0951 = phi ptr [ %i.aaj, %.lr.ph953 ], [ %i.zu, %.lr.ph953.preheader ] ; 2 uses
  %i.aad = load ptr, ptr %9, align 8
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %.0370952
  %i.aaf = ptrtoint ptr %.sroa.0577.0951 to i64
  store i64 %i.aaf, ptr %i.aae, align 8
  %i.aag = load ptr, ptr %i.zi, align 8           ; 2 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.aag, i64 %.0370952
  %i.aai = load i64, ptr %i.aah, align 8
  %i.aaj = getelementptr inbounds [16 x i8], ptr %.sroa.0577.0951, i64 %i.aai
  %i.aak = add nuw i64 %.0370952, 1               ; 2 uses
  %i.aal = load ptr, ptr %i.zj, align 8
  %i.aam = ptrtoint ptr %i.aal to i64
  %i.aan = ptrtoint ptr %i.aag to i64
  %i.aao = sub i64 %i.aam, %i.aan
  %i.aap = ashr exact i64 %i.aao, 3
  %i.aaq = icmp ult i64 %i.aak, %i.aap
  br i1 %i.aaq, label %.lr.ph953, label %.preheader, !llvm.loop !92

._crit_edge961:                                   ; preds = %._crit_edge958, %.preheader
  %.not674962 = icmp eq ptr %i.ze, %i.zf
  br i1 %.not674962, label %._crit_edge967.thread, label %.lr.ph966

._crit_edge967.thread:                            ; preds = %._crit_edge961
  %i.aar = load ptr, ptr %7, align 8              ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 216
  store i32 0, ptr %i.aas, align 8
  br label %bb.gb

.lr.ph966:                                        ; preds = %._crit_edge961
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 369
  %i.aau = load i8, ptr %i.aat, align 1, !range !9
  %i.aav = xor i8 %i.aau, 1
  %i.aaw = zext nneg i8 %i.aav to i64
  br label %bb.gc

bb.fu:                                            ; preds = %.lr.ph960, %._crit_edge958
  %.0369959 = phi i64 [ %5, %.lr.ph960 ], [ %i.abj, %._crit_edge958 ] ; 3 uses
  %i.aax = load ptr, ptr %i.zw, align 8
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %.0369959
  %i.aaz = load i64, ptr %i.aay, align 8          ; 2 uses
  %i.aba = load ptr, ptr %i.zi, align 8
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.aba, i64 %i.aaz
  %i.abc = load i64, ptr %i.abb, align 8          ; 2 uses
  %.not979 = icmp eq i64 %i.abc, 0
  br i1 %.not979, label %._crit_edge958, label %.lr.ph957

.lr.ph957:                                        ; preds = %bb.fu
  %i.abd = load ptr, ptr %9, align 8
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.abd, i64 %i.aaz
  %i.abf = load i64, ptr %i.abe, align 8
  %i.abg = inttoptr i64 %i.abf to ptr
  %i.abh = sub nuw i64 %.0369959, %5
  %i.abi = trunc i64 %i.abh to i32                ; 2 uses
  br label %bb.fv

._crit_edge958:                                   ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit, %bb.fu
  %i.abj = add nuw i64 %.0369959, 1               ; 2 uses
  %exitcond1088.not = icmp eq i64 %i.abj, %i.cb
  br i1 %exitcond1088.not, label %._crit_edge961, label %bb.fu, !llvm.loop !93

bb.fv:                                            ; preds = %.lr.ph957, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit
  %.0364955 = phi i64 [ 0, %.lr.ph957 ], [ %i.adh, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit ]
  %.sroa.0574.0954 = phi ptr [ %i.abg, %.lr.ph957 ], [ %i.adi, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit ] ; 3 uses
  %i.abk = load i64, ptr %.sroa.0574.0954, align 8
  %i.abl = load ptr, ptr %i.zx, align 8           ; 2 uses
  %i.abm = load ptr, ptr %i.zy, align 8
  %i.abn = icmp eq ptr %i.abl, %i.abm
  br i1 %i.abn, label %.thread, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.abo = getelementptr inbounds nuw i8, ptr %.sroa.0574.0954, i64 8
  %i.abp = load i64, ptr %i.abo, align 8
  %.val = load i64, ptr %i.zz, align 8
  %.val446 = load i64, ptr %i.aaa, align 8
  %i.abq = mul i64 %.val446, %i.abp
  %i.abr = getelementptr [4 x i8], ptr %i.abl, i64 %i.abq
  %i.abs = getelementptr [4 x i8], ptr %i.abr, i64 %.val
  %i.abt = load float, ptr %i.abs, align 4        ; 2 uses
  %i.abu = fcmp ogt float %i.abt, 0.000000e+00
  br i1 %i.abu, label %.thread, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit

.thread:                                          ; preds = %bb.fv, %bb.fw
  %.0361660 = phi float [ %i.abt, %bb.fw ], [ 1.000000e+00, %bb.fv ] ; 2 uses
  %i.abv = getelementptr inbounds nuw [24 x i8], ptr %i.ze, i64 %i.abk ; 4 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 8 ; 4 uses
  %i.abx = load ptr, ptr %i.abw, align 8          ; 6 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 16 ; 2 uses
  %i.abz = load ptr, ptr %i.aby, align 8
  %.not.i526 = icmp eq ptr %i.abx, %i.abz
  br i1 %.not.i526, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %.thread
  store i32 %i.abi, ptr %i.abx, align 4
  %.sroa_idx568 = getelementptr inbounds nuw i8, ptr %i.abx, i64 4
  store float %.0361660, ptr %.sroa_idx568, align 4
  %i.aca = load ptr, ptr %i.abw, align 8
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  store ptr %i.acb, ptr %i.abw, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit

bb.fy:                                            ; preds = %.thread
  %i.acc = load ptr, ptr %i.abv, align 8          ; 7 uses
  %i.acd = ptrtoint ptr %i.abx to i64             ; 2 uses
  %i.ace = ptrtoint ptr %i.acc to i64             ; 3 uses
  %i.acf = sub i64 %i.acd, %i.ace                 ; 4 uses
  %i.acg = icmp eq i64 %i.acf, 9223372036854775800
  br i1 %i.acg, label %bb.fz, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
          to label %.noexc530 unwind label %.loopexit.split-lp

.noexc530:                                        ; preds = %bb.fz
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.fy
  %i.ach = ashr exact i64 %i.acf, 3               ; 3 uses
  %.sroa.speculated.i.i.i527 = call i64 @llvm.umax.i64(i64 %i.ach, i64 1)
  %i.aci = add nsw i64 %.sroa.speculated.i.i.i527, %i.ach ; 2 uses
  %i.acj = icmp ult i64 %i.aci, %i.ach
  %i.ack = call i64 @llvm.umin.i64(i64 %i.aci, i64 1152921504606846975)
  %i.acl = select i1 %i.acj, i64 1152921504606846975, i64 %i.ack ; 3 uses
  %.not.i.i.i528 = icmp ne i64 %i.acl, 0
  call void @llvm.assume(i1 %.not.i.i.i528)
  %i.acm = shl nuw nsw i64 %i.acl, 3
  %i.acn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acm) #30
          to label %.noexc531 unwind label %.loopexit680 ; 8 uses

.noexc531:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.acf ; 2 uses
  store i32 %i.abi, ptr %i.aco, align 4
  %.sroa_idx570 = getelementptr inbounds nuw i8, ptr %i.aco, i64 4
  store float %.0361660, ptr %.sroa_idx570, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.acc, %i.abx
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc531
  %i.acp = ptrtoaddr ptr %i.acn to i64
  %i.acq = add i64 %i.acd, -8
  %i.acr = sub i64 %i.acq, %i.ace                 ; 2 uses
  %i.acs = lshr i64 %i.acr, 3
  %i.act = add nuw nsw i64 %i.acs, 1              ; 2 uses
  %min.iters.check1427 = icmp ult i64 %i.acr, 24
  %i.acu = sub i64 %i.acp, %i.ace
  %diff.check = icmp ult i64 %i.acu, 32
  %or.cond = or i1 %min.iters.check1427, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader1444, label %vector.ph1428

vector.ph1428:                                    ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec1430 = and i64 %i.act, 4611686018427387900 ; 3 uses
  %i.acv = shl i64 %n.vec1430, 3                  ; 2 uses
  %i.acw = getelementptr i8, ptr %i.acn, i64 %i.acv ; 2 uses
  %i.acx = getelementptr i8, ptr %i.acc, i64 %i.acv
  br label %vector.body1431

vector.body1431:                                  ; preds = %vector.body1431, %vector.ph1428
  %index1432 = phi i64 [ 0, %vector.ph1428 ], [ %index.next1437, %vector.body1431 ] ; 2 uses
  %i.acy = shl i64 %index1432, 3                  ; 2 uses
  %next.gep1433 = getelementptr i8, ptr %i.acn, i64 %i.acy ; 2 uses
  %next.gep1434 = getelementptr i8, ptr %i.acc, i64 %i.acy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.acz = getelementptr i8, ptr %next.gep1434, i64 16
  %wide.load1435 = load <2 x i64>, ptr %next.gep1434, align 4, !alias.scope !97, !noalias !94
  %wide.load1436 = load <2 x i64>, ptr %i.acz, align 4, !alias.scope !97, !noalias !94
  %i.ada = getelementptr i8, ptr %next.gep1433, i64 16
  store <2 x i64> %wide.load1435, ptr %next.gep1433, align 4, !alias.scope !94, !noalias !97
  store <2 x i64> %wide.load1436, ptr %i.ada, align 4, !alias.scope !94, !noalias !97
  %index.next1437 = add nuw i64 %index1432, 4     ; 2 uses
  %i.adb = icmp eq i64 %index.next1437, %n.vec1430
  br i1 %i.adb, label %middle.block1438, label %vector.body1431, !llvm.loop !99

middle.block1438:                                 ; preds = %vector.body1431
  %cmp.n1439 = icmp eq i64 %i.act, %n.vec1430
  br i1 %cmp.n1439, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader1444

.lr.ph.i.i.i.i.i.preheader1444:                   ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block1438
  %.012.i.i.i.i.i.ph = phi ptr [ %i.acn, %.lr.ph.i.i.i.i.i.preheader ], [ %i.acw, %middle.block1438 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.acc, %.lr.ph.i.i.i.i.i.preheader ], [ %i.acx, %middle.block1438 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader1444, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ade, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1444 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.add, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1444 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.adc = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !97, !noalias !94
  store i64 %i.adc, ptr %.012.i.i.i.i.i, align 4, !alias.scope !94, !noalias !97
  %i.add = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.add, %i.abx
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block1438, %.noexc531
  %.0.lcssa.i.i.i.i.i529 = phi ptr [ %i.acn, %.noexc531 ], [ %i.acw, %middle.block1438 ], [ %i.ade, %.lr.ph.i.i.i.i.i ]
  %i.adf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i529, i64 8
  %.not.i23.i.i = icmp eq ptr %i.acc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.acc, i64 noundef %i.acf) #27
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.ga, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.acn, ptr %i.abv, align 8
  store ptr %i.adf, ptr %i.abw, align 8
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %i.acl
  store ptr %i.adg, ptr %i.aby, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit

.loopexit680:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

.loopexit.split-lp:                               ; preds = %bb.fz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.fx, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.fw
  %i.adh = add nuw i64 %.0364955, 1               ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.sroa.0574.0954, i64 16
  %exitcond1087.not = icmp eq i64 %i.adh, %i.abc
  br i1 %exitcond1087.not, label %._crit_edge958, label %bb.fv, !llvm.loop !101

._crit_edge967:                                   ; preds = %bb.gc
  %i.adj = trunc i64 %.1360 to i32
  %i.adk = load ptr, ptr %7, align 8              ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 216
  store i32 %i.adj, ptr %i.adl, align 8
  %i.adm = icmp ugt i64 %.1360, 2305843009213693951
  %i.adn = shl i64 %.1360, 3
  %spec.select = select i1 %i.adm, i64 -1, i64 %i.adn
  br label %bb.gb

bb.gb:                                            ; preds = %._crit_edge967, %._crit_edge967.thread
  %i.ado = phi ptr [ %i.aar, %._crit_edge967.thread ], [ %i.adk, %._crit_edge967 ]
  %i.adp = phi i64 [ 0, %._crit_edge967.thread ], [ %spec.select, %._crit_edge967 ]
  %i.adq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.adp) #30
          to label %bb.gd unwind label %bb.gh

bb.gc:                                            ; preds = %.lr.ph966, %bb.gc
  %.0359964 = phi i64 [ 0, %.lr.ph966 ], [ %.1360, %bb.gc ]
  %.sroa.0565.0963 = phi ptr [ %i.ze, %.lr.ph966 ], [ %i.adv, %bb.gc ] ; 3 uses
  %i.adr = load ptr, ptr %.sroa.0565.0963, align 8
  %i.ads = getelementptr inbounds nuw i8, ptr %.sroa.0565.0963, i64 8
  %i.adt = load ptr, ptr %i.ads, align 8
  %i.adu = icmp eq ptr %i.adr, %i.adt
  %not.or.cond = select i1 %i.adu, i64 %i.aaw, i64 1
  %not.or.cond.fr = freeze i64 %not.or.cond
  %.1360 = add i64 %not.or.cond.fr, %.0359964     ; 4 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %.sroa.0565.0963, i64 24 ; 2 uses
  %.not674 = icmp eq ptr %i.adv, %i.zf
  br i1 %.not674, label %._crit_edge967, label %bb.gc

bb.gd:                                            ; preds = %bb.gb
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ado, i64 224
  store ptr %i.adq, ptr %i.adw, align 8
  br i1 %.not.i.i.i.i521, label %._crit_edge973, label %.lr.ph972

.lr.ph972:                                        ; preds = %bb.gd
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 369
  %i.ady = getelementptr inbounds nuw i8, ptr %i.xg, i64 24
  %i.adz = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %i.aea = getelementptr inbounds nuw i8, ptr %i.xl, i64 16 ; 12 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.xl, i64 24 ; 12 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.xn, i64 8 ; 12 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.aee = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.aef = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.aeg = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aek = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aem = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aen = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.gi

._crit_edge973:                                   ; preds = %bb.hg, %bb.gd
  %i.aeo = load ptr, ptr %9, align 8              ; 3 uses
  %.not.i.i.i532 = icmp eq ptr %i.aeo, null
  br i1 %.not.i.i.i532, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit, label %bb.ge

bb.ge:                                            ; preds = %._crit_edge973
  %i.aep = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aeq = load ptr, ptr %i.aep, align 8
  %i.aer = ptrtoint ptr %i.aeq to i64
  %i.aes = ptrtoint ptr %i.aeo to i64
  %i.aet = sub i64 %i.aer, %i.aes
  call void @_ZdlPvm(ptr noundef nonnull %i.aeo, i64 noundef %i.aet) #27
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit: ; preds = %._crit_edge973, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %14 = load ptr, ptr %8, align 8                 ; 5 uses
  %i.aeu = load ptr, ptr %i.zg, align 8           ; 2 uses
  %.not4.i.i.i = icmp eq ptr %14, %i.aeu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.afb, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i ], [ %14, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit ] ; 3 uses
  %i.aev = load ptr, ptr %.05.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i533 = icmp eq ptr %i.aev, null
  br i1 %.not.i.i.i.i.i.i.i533, label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i, label %bb.gf

bb.gf:                                            ; preds = %.lr.ph.i.i.i
  %i.aew = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aex = load ptr, ptr %i.aew, align 8
  %i.aey = ptrtoint ptr %i.aex to i64
  %i.aez = ptrtoint ptr %i.aev to i64
  %i.afa = sub i64 %i.aey, %i.aez
  call void @_ZdlPvm(ptr noundef nonnull %i.aev, i64 noundef %i.afa) #27
  br label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i: ; preds = %bb.gf, %.lr.ph.i.i.i
  %i.afb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i534 = icmp eq ptr %i.afb, %i.aeu
  br i1 %.not.i.i.i534, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !102

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %14, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit, label %bb.gg

bb.gg:                                            ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i
  %i.afc = load ptr, ptr %i.zh, align 8
  %i.afd = ptrtoint ptr %i.afc to i64
  %i.afe = ptrtoint ptr %14 to i64
  %i.aff = sub i64 %i.afd, %i.afe
  call void @_ZdlPvm(ptr noundef nonnull %14, i64 noundef %i.aff) #27
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.hk

bb.gh:                                            ; preds = %bb.gb
  %i.afg = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.gi:                                            ; preds = %.lr.ph972, %bb.hg
  %.0355970 = phi i64 [ 0, %.lr.ph972 ], [ %i.anw, %bb.hg ] ; 15 uses
  %.0356969.a = phi i64 [ 0, %.lr.ph972 ], [ %.1357, %bb.hg ] ; 3 uses
  %15 = load ptr, ptr %8, align 8
  %i.afh = getelementptr inbounds nuw [24 x i8], ptr %15, i64 %.0355970 ; 4 uses
  %i.afi = load ptr, ptr %i.afh, align 8
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afh, i64 8 ; 3 uses
  %i.afk = load ptr, ptr %i.afj, align 8
  %i.afl = icmp eq ptr %i.afi, %i.afk
  %i.afm = load i8, ptr %i.adx, align 1, !range !9
  %i.afn = trunc nuw i8 %i.afm to i1
  %or.cond445 = select i1 %i.afl, i1 %i.afn, i1 false
  br i1 %or.cond445, label %bb.hg, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.afo = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #30
          to label %bb.gk unwind label %bb.gy     ; 24 uses

bb.gk:                                            ; preds = %bb.gj
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 1056 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.afo, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.afp, align 4
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 1060 ; 3 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 1076 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.afq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.afr, align 4
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afo, i64 1080 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afo, i64 1096 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afs, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aft, align 4
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afo, i64 1100 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afo, i64 1116 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.afu, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.afv, align 4
  %i.afw = load i64, ptr %i.ady, align 8
  %i.afx = mul i64 %i.afw, %.0355970
  %i.afy = load i64, ptr %i.adz, align 8
  %i.afz = load ptr, ptr %i.ys, align 8
  %i.aga = getelementptr [32 x i8], ptr %i.afz, i64 %i.afx
  %i.agb = getelementptr [32 x i8], ptr %i.aga, i64 %i.afy ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %i.agd = load i64, ptr %i.agc, align 8          ; 4 uses
  %i.age = icmp ugt i64 %i.agd, 1023
  br i1 %i.age, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit535, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.agf = trunc nuw nsw i64 %i.agd to i32
  store i32 %i.agf, ptr %i.afo, align 4
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afo, i64 4 ; 2 uses
  %i.agh = load ptr, ptr %i.agb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.agg, ptr align 1 %i.agh, i64 %i.agd, i1 false)
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agg, i64 %i.agd
  store i8 0, ptr %i.agi, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit535

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit535: ; preds = %bb.gk, %bb.gl
  %.val481 = load i64, ptr %i.aea, align 8
  %.val482 = load i64, ptr %i.aeb, align 8
  %.val483 = load ptr, ptr %i.aec, align 8
  %i.agj = mul i64 %.val482, %.0355970
  %i.agk = getelementptr [4 x i8], ptr %.val483, i64 %i.agj
  %i.agl = getelementptr [4 x i8], ptr %i.agk, i64 %.val481
  %i.agm = load float, ptr %i.agl, align 4
  store float %i.agm, ptr %i.afp, align 8
  %.val478 = load i64, ptr %i.aea, align 8
  %.val479 = load i64, ptr %i.aeb, align 8
  %.val480 = load ptr, ptr %i.aec, align 8
  %i.agn = mul i64 %.val479, %.0355970
  %i.ago = getelementptr [4 x i8], ptr %.val480, i64 %i.agn
  %i.agp = getelementptr [4 x i8], ptr %i.ago, i64 %.val478
  %i.agq = getelementptr i8, ptr %i.agp, i64 4
  %i.agr = load float, ptr %i.agq, align 4
  store float %i.agr, ptr %i.afq, align 4
  %.val475 = load i64, ptr %i.aea, align 8
  %.val476 = load i64, ptr %i.aeb, align 8
  %.val477 = load ptr, ptr %i.aec, align 8
  %i.ags = mul i64 %.val476, %.0355970
  %i.agt = getelementptr [4 x i8], ptr %.val477, i64 %i.ags
  %i.agu = getelementptr [4 x i8], ptr %i.agt, i64 %.val475
  %i.agv = getelementptr i8, ptr %i.agu, i64 8
  %i.agw = load float, ptr %i.agv, align 4        ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.afo, i64 1064
  store float %i.agw, ptr %i.agx, align 8
  %.val472 = load i64, ptr %i.aea, align 8
  %.val473 = load i64, ptr %i.aeb, align 8
  %.val474 = load ptr, ptr %i.aec, align 8
  %i.agy = mul i64 %.val473, %.0355970
  %i.agz = getelementptr [4 x i8], ptr %.val474, i64 %i.agy
  %i.aha = getelementptr [4 x i8], ptr %i.agz, i64 %.val472
  %i.ahb = getelementptr i8, ptr %i.aha, i64 12
  %i.ahc = load float, ptr %i.ahb, align 4        ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.afo, i64 1068
  store float %i.ahc, ptr %i.ahd, align 4
  %.val469 = load i64, ptr %i.aea, align 8
  %.val470 = load i64, ptr %i.aeb, align 8
  %.val471 = load ptr, ptr %i.aec, align 8
  %i.ahe = mul i64 %.val470, %.0355970
  %i.ahf = getelementptr [4 x i8], ptr %.val471, i64 %i.ahe
  %i.ahg = getelementptr [4 x i8], ptr %i.ahf, i64 %.val469
  %i.ahh = getelementptr i8, ptr %i.ahg, i64 16
  %i.ahi = load float, ptr %i.ahh, align 4        ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.afo, i64 1072 ; 2 uses
  store float %i.ahi, ptr %i.ahj, align 8
  %.val466 = load i64, ptr %i.aea, align 8
  %.val467 = load i64, ptr %i.aeb, align 8
  %.val468 = load ptr, ptr %i.aec, align 8
  %i.ahk = mul i64 %.val467, %.0355970
  %i.ahl = getelementptr [4 x i8], ptr %.val468, i64 %i.ahk
  %i.ahm = getelementptr [4 x i8], ptr %i.ahl, i64 %.val466
  %i.ahn = getelementptr i8, ptr %i.ahm, i64 20
  %i.aho = load float, ptr %i.ahn, align 4        ; 2 uses
  store float %i.aho, ptr %i.afr, align 4
  %.val463 = load i64, ptr %i.aea, align 8
  %.val464 = load i64, ptr %i.aeb, align 8
  %.val465 = load ptr, ptr %i.aec, align 8
  %i.ahp = mul i64 %.val464, %.0355970
  %i.ahq = getelementptr [4 x i8], ptr %.val465, i64 %i.ahp
  %i.ahr = getelementptr [4 x i8], ptr %i.ahq, i64 %.val463
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 24
  %i.aht = load float, ptr %i.ahs, align 4        ; 2 uses
  store float %i.aht, ptr %i.afs, align 8
  %.val460 = load i64, ptr %i.aea, align 8
  %.val461 = load i64, ptr %i.aeb, align 8
  %.val462 = load ptr, ptr %i.aec, align 8
  %i.ahu = mul i64 %.val461, %.0355970
  %i.ahv = getelementptr [4 x i8], ptr %.val462, i64 %i.ahu
  %i.ahw = getelementptr [4 x i8], ptr %i.ahv, i64 %.val460
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 28
  %i.ahy = load float, ptr %i.ahx, align 4        ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.afo, i64 1084
  store float %i.ahy, ptr %i.ahz, align 4
  %.val457 = load i64, ptr %i.aea, align 8
  %.val458 = load i64, ptr %i.aeb, align 8
  %.val459 = load ptr, ptr %i.aec, align 8
  %i.aia = mul i64 %.val458, %.0355970
  %i.aib = getelementptr [4 x i8], ptr %.val459, i64 %i.aia
  %i.aic = getelementptr [4 x i8], ptr %i.aib, i64 %.val457
  %i.aid = getelementptr i8, ptr %i.aic, i64 32
  %i.aie = load float, ptr %i.aid, align 4        ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.afo, i64 1088 ; 2 uses
  store float %i.aie, ptr %i.aif, align 8
  %.val454 = load i64, ptr %i.aea, align 8
  %.val455 = load i64, ptr %i.aeb, align 8
  %.val456 = load ptr, ptr %i.aec, align 8
  %i.aig = mul i64 %.val455, %.0355970
  %i.aih = getelementptr [4 x i8], ptr %.val456, i64 %i.aig
  %i.aii = getelementptr [4 x i8], ptr %i.aih, i64 %.val454
  %i.aij = getelementptr i8, ptr %i.aii, i64 36
  %i.aik = load float, ptr %i.aij, align 4        ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.afo, i64 1092
  store float %i.aik, ptr %i.ail, align 4
  %.val451 = load i64, ptr %i.aea, align 8
  %.val452 = load i64, ptr %i.aeb, align 8
  %.val453 = load ptr, ptr %i.aec, align 8
  %i.aim = mul i64 %.val452, %.0355970
  %i.ain = getelementptr [4 x i8], ptr %.val453, i64 %i.aim
  %i.aio = getelementptr [4 x i8], ptr %i.ain, i64 %.val451
  %i.aip = getelementptr i8, ptr %i.aio, i64 40
  %i.aiq = load float, ptr %i.aip, align 4        ; 2 uses
  store float %i.aiq, ptr %i.aft, align 8
  %.val448 = load i64, ptr %i.aea, align 8
  %.val449 = load i64, ptr %i.aeb, align 8
  %.val450 = load ptr, ptr %i.aec, align 8
  %i.air = mul i64 %.val449, %.0355970
  %i.ais = getelementptr [4 x i8], ptr %.val450, i64 %i.air
  %i.ait = getelementptr [4 x i8], ptr %i.ais, i64 %.val448
  %i.aiu = getelementptr i8, ptr %i.ait, i64 44
  %i.aiv = load float, ptr %i.aiu, align 4        ; 2 uses
  store float %i.aiv, ptr %i.afu, align 4
  %i.aiw = load ptr, ptr %i.afj, align 8
  %i.aix = load ptr, ptr %i.afh, align 8
  %i.aiy = ptrtoint ptr %i.aiw to i64
  %i.aiz = ptrtoint ptr %i.aix to i64
  %i.aja = sub i64 %i.aiy, %i.aiz
  %i.ajb = ashr exact i64 %i.aja, 3               ; 2 uses
  %i.ajc = trunc i64 %i.ajb to i32
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.afo, i64 1028
  store i32 %i.ajc, ptr %i.ajd, align 4
  %i.aje = and i64 %i.ajb, 4294967295             ; 2 uses
  %i.ajf = shl nuw nsw i64 %i.aje, 3              ; 2 uses
  %i.ajg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ajf) #30
          to label %bb.gm unwind label %bb.gy     ; 4 uses

bb.gm:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit535
  %i.ajh = icmp eq i64 %i.aje, 0
  br i1 %i.ajh, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.gm
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ajg, i8 0, i64 %i.ajf, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.gm
  %i.aji = getelementptr inbounds nuw i8, ptr %i.afo, i64 1048
  store ptr %i.ajg, ptr %i.aji, align 8
  %i.ajj = load ptr, ptr %i.afh, align 8          ; 3 uses
  %i.ajk = load ptr, ptr %i.afj, align 8
  %i.ajl = ptrtoint ptr %i.ajk to i64
  %i.ajm = ptrtoint ptr %i.ajj to i64
  %i.ajn = sub i64 %i.ajl, %i.ajm                 ; 3 uses
  %i.ajo = icmp sgt i64 %i.ajn, 8
  br i1 %i.ajo, label %bb.gn, label %bb.go, !prof !14

bb.gn:                                            ; preds = %.loopexit
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ajg, ptr align 4 %i.ajj, i64 %i.ajn, i1 false)
  br label %bb.gq

bb.go:                                            ; preds = %.loopexit
  %i.ajp = icmp eq i64 %i.ajn, 8
  br i1 %i.ajp, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.ajq = load i64, ptr %i.ajj, align 4
  store i64 %i.ajq, ptr %i.ajg, align 4
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gn, %bb.go, %bb.gp
  %i.ajr = load <4 x float>, ptr %i.afp, align 8
  %i.ajs = load <4 x float>, ptr %i.afq, align 4
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.afo, i64 1104 ; 2 uses
  %i.aju = load <4 x float>, ptr %i.ajt, align 8
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.afo, i64 1108
  %i.ajw = load float, ptr %i.ajv, align 4
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.afo, i64 1112
  %i.ajy = load float, ptr %i.ajx, align 8
  %i.ajz = load float, ptr %i.afv, align 4
  %i.aka = load <4 x float>, ptr %i.aed, align 8  ; 4 uses
  %i.akb = load <4 x float>, ptr %i.aee, align 8  ; 4 uses
  %i.akc = load <4 x float>, ptr %i.aef, align 8  ; 4 uses
  %i.akd = load <4 x float>, ptr %i.aeg, align 8  ; 4 uses
  %i.ake = shufflevector <4 x float> %i.ajs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akf = fmul <4 x float> %i.akb, %i.ake
  %i.akg = shufflevector <4 x float> %i.ajr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aka, <4 x float> %i.akg, <4 x float> %i.akf)
  %i.aki = insertelement <4 x float> poison, float %i.agw, i64 0
  %i.akj = shufflevector <4 x float> %i.aki, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akc, <4 x float> %i.akj, <4 x float> %i.akh)
  %i.akl = insertelement <4 x float> poison, float %i.ahc, i64 0
  %i.akm = shufflevector <4 x float> %i.akl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akd, <4 x float> %i.akm, <4 x float> %i.akk)
  store <4 x float> %i.akn, ptr %i.afp, align 8
  %i.ako = insertelement <4 x float> poison, float %i.aho, i64 0
  %i.akp = shufflevector <4 x float> %i.ako, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akq = fmul <4 x float> %i.akb, %i.akp
  %i.akr = insertelement <4 x float> poison, float %i.ahi, i64 0
  %i.aks = shufflevector <4 x float> %i.akr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aka, <4 x float> %i.aks, <4 x float> %i.akq)
  %i.aku = insertelement <4 x float> poison, float %i.aht, i64 0
  %i.akv = shufflevector <4 x float> %i.aku, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akc, <4 x float> %i.akv, <4 x float> %i.akt)
  %i.akx = insertelement <4 x float> poison, float %i.ahy, i64 0
  %i.aky = shufflevector <4 x float> %i.akx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akd, <4 x float> %i.aky, <4 x float> %i.akw)
  store <4 x float> %i.akz, ptr %i.ahj, align 8
  %i.ala = insertelement <4 x float> poison, float %i.aik, i64 0
  %i.alb = shufflevector <4 x float> %i.ala, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alc = fmul <4 x float> %i.akb, %i.alb
  %i.ald = insertelement <4 x float> poison, float %i.aie, i64 0
  %i.ale = shufflevector <4 x float> %i.ald, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aka, <4 x float> %i.ale, <4 x float> %i.alc)
  %i.alg = insertelement <4 x float> poison, float %i.aiq, i64 0
  %i.alh = shufflevector <4 x float> %i.alg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ali = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akc, <4 x float> %i.alh, <4 x float> %i.alf)
  %i.alj = insertelement <4 x float> poison, float %i.aiv, i64 0
  %i.alk = shufflevector <4 x float> %i.alj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.all = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akd, <4 x float> %i.alk, <4 x float> %i.ali)
  store <4 x float> %i.all, ptr %i.aif, align 8
  %i.alm = insertelement <4 x float> poison, float %i.ajw, i64 0
  %i.aln = shufflevector <4 x float> %i.alm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alo = fmul <4 x float> %i.akb, %i.aln
  %i.alp = shufflevector <4 x float> %i.aju, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aka, <4 x float> %i.alp, <4 x float> %i.alo)
  %i.alr = insertelement <4 x float> poison, float %i.ajy, i64 0
  %i.als = shufflevector <4 x float> %i.alr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akc, <4 x float> %i.als, <4 x float> %i.alq)
  %i.alu = insertelement <4 x float> poison, float %i.ajz, i64 0
  %i.alv = shufflevector <4 x float> %i.alu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akd, <4 x float> %i.alv, <4 x float> %i.alt)
  store <4 x float> %i.alw, ptr %i.ajt, align 8
  %i.alx = load ptr, ptr %i.aeh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.aly = getelementptr inbounds nuw i8, ptr %i.afo, i64 4 ; 9 uses
  store ptr %i.aei, ptr %11, align 8
  %i.alz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aly) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.alz, ptr %i.b, align 8
  %i.ama = icmp ugt i64 %i.alz, 15
  br i1 %i.ama, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.gq
  %i.amb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc536 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546 ; 2 uses

.noexc536:                                        ; preds = %.noexc.i
  store ptr %i.amb, ptr %11, align 8
  %i.amc = load i64, ptr %i.b, align 8
  store i64 %i.amc, ptr %i.aei, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc536, %bb.gq
  %i.amd = phi ptr [ %i.amb, %.noexc536 ], [ %i.aei, %bb.gq ] ; 2 uses
  switch i64 %i.alz, label %bb.gs [
    i64 1, label %bb.gr
    i64 0, label %bb.gt
  ]

bb.gr:                                            ; preds = %._crit_edge.i.i
  %i.ame = load i8, ptr %i.aly, align 4
  store i8 %i.ame, ptr %i.amd, align 1
  br label %bb.gt

bb.gs:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amd, ptr nonnull align 1 %i.aly, i64 %i.alz, i1 false)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %._crit_edge.i.i
  %i.amf = load i64, ptr %i.b, align 8            ; 2 uses
  store i64 %i.amf, ptr %i.aej, align 8
  %i.amg = load ptr, ptr %11, align 8
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 %i.amf
  store i8 0, ptr %i.amh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ami = call noundef ptr @_ZNK6Assimp13ColladaLoader8FindNodeEPKNS_7Collada4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %i.alx, ptr noundef nonnull align 8 dereferenceable(32) %11) ; 2 uses
  %i.amj = load ptr, ptr %11, align 8             ; 2 uses
  %i.amk = icmp eq ptr %i.amj, %i.aei
  br i1 %i.amk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.gt
  %i.aml = load i64, ptr %i.aei, align 8
  %i.amm = add i64 %i.aml, 1
  call void @_ZdlPvm(ptr noundef %i.amj, i64 noundef %i.amm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.amn = icmp eq ptr %i.ami, null
  br i1 %i.amn, label %bb.gu, label %.thread661

bb.gu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.amo = load ptr, ptr %i.aeh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr %i.aek, ptr %12, align 8
  %i.amp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aly) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.amp, ptr %i.a, align 8
  %i.amq = icmp ugt i64 %i.amp, 15
  br i1 %i.amq, label %.noexc.i538, label %._crit_edge.i.i537

.noexc.i538:                                      ; preds = %bb.gu
  %i.amr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc539 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549 ; 2 uses

.noexc539:                                        ; preds = %.noexc.i538
  store ptr %i.amr, ptr %12, align 8
  %i.ams = load i64, ptr %i.a, align 8
  store i64 %i.ams, ptr %i.aek, align 8
  br label %._crit_edge.i.i537

._crit_edge.i.i537:                               ; preds = %.noexc539, %bb.gu
  %i.amt = phi ptr [ %i.amr, %.noexc539 ], [ %i.aek, %bb.gu ] ; 2 uses
  switch i64 %i.amp, label %bb.gw [
    i64 1, label %bb.gv
    i64 0, label %bb.gx
  ]

bb.gv:                                            ; preds = %._crit_edge.i.i537
  %i.amu = load i8, ptr %i.aly, align 4
  store i8 %i.amu, ptr %i.amt, align 1
  br label %bb.gx

bb.gw:                                            ; preds = %._crit_edge.i.i537
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amt, ptr nonnull align 1 %i.aly, i64 %i.amp, i1 false)
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv, %._crit_edge.i.i537
  %i.amv = load i64, ptr %i.a, align 8            ; 2 uses
  store i64 %i.amv, ptr %i.ael, align 8
  %i.amw = load ptr, ptr %12, align 8
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 %i.amv
  store i8 0, ptr %i.amx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.amy = call noundef ptr @_ZNK6Assimp13ColladaLoader13FindNodeBySIDEPKNS_7Collada4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %i.amo, ptr noundef nonnull align 8 dereferenceable(32) %12) ; 2 uses
  %i.amz = load ptr, ptr %12, align 8             ; 2 uses
  %i.ana = icmp eq ptr %i.amz, %i.aek
  br i1 %i.ana, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541: ; preds = %bb.gx
  %i.anb = load i64, ptr %i.aek, align 8
  %i.anc = add i64 %i.anb, 1
  call void @_ZdlPvm(ptr noundef %i.amz, i64 noundef %i.anc) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i542

bb.gy:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit535, %bb.gj
  %i.and = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546: ; preds = %.noexc.i
  %i.ane = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.hh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549: ; preds = %.noexc.i538
  %i.anf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.hh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i542: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %.not403 = icmp eq ptr %i.amy, null
  br i1 %.not403, label %bb.hc, label %.thread661

.thread661:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i542
  %.0664 = phi ptr [ %i.amy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i542 ], [ %i.ami, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN6Assimp13ColladaLoader15FindNameForNodeB5cxx11EPKNS_7Collada4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %.0664)
          to label %bb.gz unwind label %bb.hb

bb.gz:                                            ; preds = %.thread661
  %i.ang = load i64, ptr %i.aem, align 8          ; 5 uses
  %i.anh = icmp ugt i64 %i.ang, 1023
  %.pre1093.a = load ptr, ptr %13, align 8        ; 3 uses
  br i1 %i.anh, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ani = trunc nuw nsw i64 %i.ang to i32
  store i32 %i.ani, ptr %i.afo, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aly, ptr align 1 %.pre1093.a, i64 %i.ang, i1 false)
  %i.anj = getelementptr inbounds nuw i8, ptr %i.aly, i64 %i.ang
  store i8 0, ptr %i.anj, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.gz, %bb.ha
  %i.ank = icmp eq ptr %.pre1093.a, %i.aen
  br i1 %i.ank, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i551, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i551: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.anl = icmp ult i64 %i.ang, 16
  call void @llvm.assume(i1 %i.anl)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.anm = load i64, ptr %i.aen, align 8
  %i.ann = add i64 %i.anm, 1
  call void @_ZdlPvm(ptr noundef %.pre1093.a, i64 noundef %i.ann) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i551, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.hf

bb.hb:                                            ; preds = %.thread661
  %i.ano = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.hh

bb.hc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i542
  %i.anp = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.hd unwind label %bb.he

bb.hd:                                            ; preds = %bb.hc
  invoke void @_ZN6Assimp6Logger4warnIJRA75_KcRA1024_cRA3_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.anp, ptr noundef nonnull align 1 dereferenceable(75) @.str.25, ptr noundef nonnull align 1 dereferenceable(1024) %i.aly, ptr noundef nonnull align 1 dereferenceable(3) @.str.26)
          to label %bb.hf unwind label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.anq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.hf:                                            ; preds = %bb.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552
  %i.anr = load ptr, ptr %7, align 8
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 224
  %i.ant = load ptr, ptr %i.ans, align 8
  %i.anu = add i64 %.0356969.a, 1
  %i.anv = getelementptr inbounds nuw [8 x i8], ptr %i.ant, i64 %.0356969.a
  store ptr %i.afo, ptr %i.anv, align 8
  br label %bb.hg

bb.hg:                                            ; preds = %bb.gi, %bb.hf
  %.1357 = phi i64 [ %.0356969.a, %bb.gi ], [ %i.anu, %bb.hf ]
  %i.anw = add nuw i64 %.0355970, 1               ; 2 uses
  %exitcond1089.not = icmp eq i64 %i.anw, %i.yz
  br i1 %exitcond1089.not, label %._crit_edge973, label %bb.gi, !llvm.loop !103

bb.hh:                                            ; preds = %.loopexit680, %.loopexit.split-lp, %bb.gy, %bb.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549, %bb.hb, %bb.he, %bb.ft
  %.pn409.pn = phi { ptr, i32 } [ %i.aac, %bb.ft ], [ %i.anf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549 ], [ %i.afg, %bb.gh ], [ %i.and, %bb.gy ], [ %i.ane, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546 ], [ %i.ano, %bb.hb ], [ %i.anq, %bb.he ], [ %lpad.loopexit, %.loopexit680 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.anx = load ptr, ptr %9, align 8              ; 3 uses
  %.not.i.i.i553 = icmp eq ptr %i.anx, null
  br i1 %.not.i.i.i553, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit554, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.any = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.anz = load ptr, ptr %i.any, align 8
  %i.aoa = ptrtoint ptr %i.anz to i64
  %i.aob = ptrtoint ptr %i.anx to i64
  %i.aoc = sub i64 %i.aoa, %i.aob
  call void @_ZdlPvm(ptr noundef nonnull %i.anx, i64 noundef %i.aoc) #27
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit554

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit554: ; preds = %bb.hh, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #26
  br label %bb.hj

bb.hj:                                            ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit554, %bb.fs
  %.pn409.pn.pn = phi { ptr, i32 } [ %.pn409.pn, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit554 ], [ %i.aab, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body

bb.hk:                                            ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit, %bb.en, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EED2Ev.exit
  %i.aod = load ptr, ptr %7, align 8              ; 2 uses
  store ptr null, ptr %7, align 8
  %.not.i.i.i555 = icmp eq ptr %.sroa.0613.0.lcssa1190, null
  br i1 %.not.i.i.i555, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.aoe = ptrtoint ptr %.sroa.15620.0.lcssa1188 to i64
  %i.aof = ptrtoint ptr %.sroa.0613.0.lcssa1190 to i64
  %i.aog = sub i64 %i.aoe, %i.aof
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0613.0.lcssa1190, i64 noundef %i.aog) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.hk, %bb.hl
  %.not.i.i.i556 = icmp eq ptr %.sroa.0623.0.lcssa1194, null
  br i1 %.not.i.i.i556, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.hm

bb.hm:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.aoh = ptrtoint ptr %.sroa.20636.0.lcssa1192 to i64
  %i.aoi = ptrtoint ptr %.sroa.0623.0.lcssa1194 to i64
  %i.aoj = sub i64 %i.aoh, %i.aoi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0623.0.lcssa1194, i64 noundef %i.aoj) #27
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

.body:                                            ; preds = %.loopexit687, %.loopexit.split-lp688, %.loopexit692, %.loopexit.split-lp693, %.loopexit697, %.loopexit.split-lp698, %bb.em, %bb.el, %bb.co, %bb.cq, %bb.cs, %bb.cv, %bb.cr, %bb.cp, %bb.dh, %bb.dg, %bb.da, %bb.ew, %bb.ey, %bb.fa, %bb.fb, %bb.fj, %bb.fk, %bb.fo, %bb.hj, %bb.fi, %bb.ez, %bb.ex
  %.sroa.15620.4 = phi ptr [ %.sroa.15620.0921, %bb.da ], [ %.sroa.15620.0.lcssa1188, %bb.fj ], [ %.sroa.15620.0.lcssa1188, %bb.fk ], [ %.sroa.15620.0.lcssa1188, %bb.hj ], [ %.sroa.15620.0.lcssa1188, %bb.fo ], [ %.sroa.15620.0.lcssa1188, %bb.fi ], [ %.sroa.15620.0.lcssa1188, %bb.fa ], [ %.sroa.15620.0.lcssa1188, %bb.fb ], [ %.sroa.15620.0.lcssa1188, %bb.ez ], [ %.sroa.15620.0.lcssa1188, %bb.ey ], [ %.sroa.15620.0.lcssa1188, %bb.ex ], [ %.sroa.15620.0.lcssa1188, %bb.ew ], [ %.sroa.15620.2, %bb.em ], [ %.sroa.15620.0921, %bb.cv ], [ %.sroa.15620.0921, %bb.co ], [ %.sroa.15620.0921, %.loopexit.split-lp693 ], [ %.sroa.15620.0921, %bb.cs ], [ %.sroa.15620.0921, %bb.cr ], [ %.sroa.15620.0921, %bb.cq ], [ %.sroa.15620.0921, %bb.cp ], [ %.sroa.15620.0921, %.loopexit.split-lp698 ], [ %.sroa.15620.0921, %bb.dh ], [ %.sroa.15620.0921, %bb.dg ], [ %.sroa.15620.2, %bb.el ], [ %.sroa.15620.0921, %.loopexit697 ], [ %.sroa.15620.0921, %.loopexit692 ], [ %.sroa.10.1912, %.loopexit687 ], [ %.sroa.10.1912, %.loopexit.split-lp688 ]
  %.sroa.0613.4 = phi ptr [ %.sroa.0613.0923, %bb.da ], [ %.sroa.0613.0.lcssa1190, %bb.fj ], [ %.sroa.0613.0.lcssa1190, %bb.fk ], [ %.sroa.0613.0.lcssa1190, %bb.hj ], [ %.sroa.0613.0.lcssa1190, %bb.fo ], [ %.sroa.0613.0.lcssa1190, %bb.fi ], [ %.sroa.0613.0.lcssa1190, %bb.fa ], [ %.sroa.0613.0.lcssa1190, %bb.fb ], [ %.sroa.0613.0.lcssa1190, %bb.ez ], [ %.sroa.0613.0.lcssa1190, %bb.ey ], [ %.sroa.0613.0.lcssa1190, %bb.ex ], [ %.sroa.0613.0.lcssa1190, %bb.ew ], [ %.sroa.0613.2, %bb.em ], [ %.sroa.0613.0923, %bb.cv ], [ %.sroa.0613.0923, %bb.co ], [ %.sroa.0613.0923, %.loopexit.split-lp693 ], [ %.sroa.0613.0923, %bb.cs ], [ %.sroa.0613.0923, %bb.cr ], [ %.sroa.0613.0923, %bb.cq ], [ %.sroa.0613.0923, %bb.cp ], [ %.sroa.0613.0923, %.loopexit.split-lp698 ], [ %.sroa.0613.0923, %bb.dh ], [ %.sroa.0613.0923, %bb.dg ], [ %.sroa.0613.2, %bb.el ], [ %.sroa.0613.0923, %.loopexit697 ], [ %.sroa.0613.0923, %.loopexit692 ], [ %.sroa.0613.1913, %.loopexit687 ], [ %.sroa.0613.1913, %.loopexit.split-lp688 ] ; 3 uses
  %.sroa.20636.4 = phi ptr [ %.sroa.20636.1900, %bb.da ], [ %.sroa.20636.0.lcssa1192, %bb.fj ], [ %.sroa.20636.0.lcssa1192, %bb.fk ], [ %.sroa.20636.0.lcssa1192, %bb.hj ], [ %.sroa.20636.0.lcssa1192, %bb.fo ], [ %.sroa.20636.0.lcssa1192, %bb.fi ], [ %.sroa.20636.0.lcssa1192, %bb.fa ], [ %.sroa.20636.0.lcssa1192, %bb.fb ], [ %.sroa.20636.0.lcssa1192, %bb.ez ], [ %.sroa.20636.0.lcssa1192, %bb.ey ], [ %.sroa.20636.0.lcssa1192, %bb.ex ], [ %.sroa.20636.0.lcssa1192, %bb.ew ], [ %.sroa.20636.2, %bb.em ], [ %.sroa.20636.0924, %bb.cv ], [ %.sroa.20636.0924, %bb.co ], [ %.sroa.20636.19001002, %.loopexit.split-lp693 ], [ %.sroa.20636.0924, %bb.cs ], [ %.sroa.20636.0924, %bb.cr ], [ %.sroa.20636.0924, %bb.cq ], [ %.sroa.20636.0924, %bb.cp ], [ %.sroa.20636.0924, %.loopexit.split-lp698 ], [ %.sroa.20636.1900, %bb.dh ], [ %.sroa.20636.1900, %bb.dg ], [ %.sroa.20636.2, %bb.el ], [ %.sroa.20636.0924, %.loopexit697 ], [ %.sroa.20636.1900.lcssa996, %.loopexit692 ], [ %.sroa.20636.1.lcssa, %.loopexit687 ], [ %.sroa.20636.1.lcssa, %.loopexit.split-lp688 ]
  %.sroa.0623.4 = phi ptr [ %.sroa.0623.1902, %bb.da ], [ %.sroa.0623.0.lcssa1194, %bb.fj ], [ %.sroa.0623.0.lcssa1194, %bb.fk ], [ %.sroa.0623.0.lcssa1194, %bb.hj ], [ %.sroa.0623.0.lcssa1194, %bb.fo ], [ %.sroa.0623.0.lcssa1194, %bb.fi ], [ %.sroa.0623.0.lcssa1194, %bb.fa ], [ %.sroa.0623.0.lcssa1194, %bb.fb ], [ %.sroa.0623.0.lcssa1194, %bb.ez ], [ %.sroa.0623.0.lcssa1194, %bb.ey ], [ %.sroa.0623.0.lcssa1194, %bb.ex ], [ %.sroa.0623.0.lcssa1194, %bb.ew ], [ %.sroa.0623.2, %bb.em ], [ %.sroa.0623.0926, %bb.cv ], [ %.sroa.0623.0926, %bb.co ], [ %.sroa.0623.1902, %.loopexit.split-lp693 ], [ %.sroa.0623.0926, %bb.cs ], [ %.sroa.0623.0926, %bb.cr ], [ %.sroa.0623.0926, %bb.cq ], [ %.sroa.0623.0926, %bb.cp ], [ %.sroa.0623.0926, %.loopexit.split-lp698 ], [ %.sroa.0623.1902, %bb.dh ], [ %.sroa.0623.1902, %bb.dg ], [ %.sroa.0623.2, %bb.el ], [ %.sroa.0623.0926, %.loopexit697 ], [ %.sroa.0623.1902, %.loopexit692 ], [ %.sroa.0623.1.lcssa, %.loopexit687 ], [ %.sroa.0623.1.lcssa, %.loopexit.split-lp688 ] ; 3 uses
  %.pn426.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rr, %bb.da ], [ %i.yj, %bb.fj ], [ %i.yk, %bb.fk ], [ %.pn409.pn.pn, %bb.hj ], [ %i.yr, %bb.fo ], [ %i.yi, %bb.fi ], [ %i.xv, %bb.fa ], [ %i.xw, %bb.fb ], [ %i.xu, %bb.ez ], [ %i.xt, %bb.ey ], [ %i.xs, %bb.ex ], [ %i.xr, %bb.ew ], [ %.pn.pn.pn, %bb.em ], [ %i.qm, %bb.cv ], [ %i.qe, %bb.co ], [ %lpad.loopexit.split-lp695, %.loopexit.split-lp693 ], [ %i.qi, %bb.cs ], [ %i.qh, %bb.cr ], [ %i.qg, %bb.cq ], [ %i.qf, %bb.cp ], [ %lpad.loopexit.split-lp700, %.loopexit.split-lp698 ], [ %i.sj, %bb.dh ], [ %i.si, %bb.dg ], [ %.pn.pn.pn, %bb.el ], [ %lpad.loopexit699, %.loopexit697 ], [ %lpad.loopexit694, %.loopexit692 ], [ %lpad.loopexit689, %.loopexit687 ], [ %lpad.loopexit.split-lp690, %.loopexit.split-lp688 ] ; 2 uses
  %.not.i.i.i557 = icmp eq ptr %.sroa.0613.4, null
  br i1 %.not.i.i.i557, label %_ZNSt6vectorIfSaIfEED2Ev.exit558, label %bb.hn

bb.hn:                                            ; preds = %.body
  %i.aok = ptrtoint ptr %.sroa.15620.4 to i64
  %i.aol = ptrtoint ptr %.sroa.0613.4 to i64
  %i.aom = sub i64 %i.aok, %i.aol
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0613.4, i64 noundef %i.aom) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit558

_ZNSt6vectorIfSaIfEED2Ev.exit558:                 ; preds = %.body, %bb.hn
  %.not.i.i.i559 = icmp eq ptr %.sroa.0623.4, null
  br i1 %.not.i.i.i559, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit560, label %bb.ho

bb.ho:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit558
  %i.aon = ptrtoint ptr %.sroa.20636.4 to i64
  %i.aoo = ptrtoint ptr %.sroa.0623.4 to i64
  %i.aop = sub i64 %i.aon, %i.aoo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0623.4, i64 noundef %i.aop) #27
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit560

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit560:        ; preds = %bb.ho, %_ZNSt6vectorIfSaIfEED2Ev.exit558, %bb.cc, %bb.ce, %bb.ak, %bb.ad, %bb.p
  %.pn439 = phi { ptr, i32 } [ %i.fs, %bb.ad ], [ %.pn426.pn.pn.pn.pn.pn, %bb.ho ], [ %i.gl, %bb.ak ], [ %i.oh, %bb.ce ], [ %i.cn, %bb.p ], [ %i.nl, %bb.cc ], [ %.pn426.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit558 ]
  call void @_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn439

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.hm, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.pr = load ptr, ptr %7, align 8                ; 3 uses
  %.not.i561 = icmp eq ptr %.pr, null
  br i1 %.not.i561, label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i

_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i:    ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit
  call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %.pr) #26
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 1320) #27
  br label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i
  %.0323667 = phi ptr [ %i.aod, %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i ], [ %i.aod, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit ], [ %i.c, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %.0323667

bb.hp:                                            ; preds = %bb.ev, %bb.df
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp16ColladaMeshIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp13ColladaLoader8findMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not53 = icmp eq ptr %i.g, %i.i
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.042.054, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.i
  br i1 %.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.042.054 = phi ptr [ %i.g, %.lr.ph ], [ %i.l, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.m = load ptr, ptr %.sroa.042.054, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240 ; 3 uses
  store ptr %i.j, ptr %2, align 8
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.o, ptr %i.b, align 8
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %2, align 8
  %i.r = load i64, ptr %i.b, align 8
  store i64 %i.r, ptr %i.j, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.d
  %i.s = phi ptr [ %i.q, %.noexc.i ], [ %i.j, %bb.d ] ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.n, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.n, i64 %i.o, i1 false)
  br label %bb.g

end_hunk_1
