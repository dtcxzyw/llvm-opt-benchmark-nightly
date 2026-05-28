inline.NumInlined: 299
inline.NumDeleted: 163
begin_hunk_0_@_ZN17DeadlyImportErrorC2EPKc:bb.a
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
  %5 = alloca %struct.aiColor3D, align 8          ; 9 uses
  %6 = alloca %struct.aiString, align 4           ; 7 uses
  %7 = alloca %struct.aiColor3D, align 8          ; 9 uses
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
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %11

11:                                               ; preds = %bb.h
  %12 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #20
          to label %.noexc176 unwind label %bb.ab ; 5 uses

.noexc176:                                        ; preds = %11
  %13 = getelementptr i8, ptr %12, i64 %i.ah      ; 2 uses
  store i8 0, ptr %12, align 1
  %i.ai = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc176
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 0, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.i, %.noexc176, %bb.h
  %.sroa.11220.0 = phi ptr [ %13, %bb.i ], [ %13, %.noexc176 ], [ null, %bb.h ] ; 2 uses
  %.sroa.0215.0 = phi ptr [ %12, %bb.i ], [ %12, %.noexc176 ], [ null, %bb.h ] ; 7 uses
  %i.al = load ptr, ptr %i.j, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef i64 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %.sroa.0215.0, i64 noundef 1, i64 noundef %i.ah)
          to label %bb.j unwind label %bb.ac      ; 0 uses

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.0215.0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 19 uses
  store ptr %.sroa.0215.0, ptr %i.aq, align 8
  invoke void @_ZN6Assimp11MD2Importer14ValidateHeaderEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
          to label %bb.k unwind label %bb.ac

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.ar, align 8
  %i.as = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #20
          to label %bb.l unwind label %bb.ac      ; 5 uses

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.as)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1120
  store i32 1, ptr %i.au, align 8
  %i.av = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20
          to label %bb.n unwind label %bb.ac      ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1128
  store ptr %i.av, ptr %i.aw, align 8
  store i32 0, ptr %i.av, align 4
  %i.ax = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
          to label %bb.o unwind label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store ptr %i.ax, ptr %i.ay, align 8
  %i.az = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %bb.p unwind label %bb.ac      ; 3 uses

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.ay, align 8
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.bb, align 8
  %i.bc = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
          to label %bb.r unwind label %bb.ac      ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #20
          to label %bb.s unwind label %bb.af      ; 13 uses

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 3 uses
  store i32 0, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store i32 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 1272
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 1312
  store ptr null, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.bh, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.bi, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bj, i8 0, i64 36, i1 false)
  store ptr %i.be, ptr %i.bc, align 8
  store i32 4, ptr %i.be, align 8
  %i.bl = load ptr, ptr %i.aq, align 8            ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load i32, ptr %i.bm, align 1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.br = load i32, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = mul i32 %i.bt, %i.br
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bv ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  %i.by = load i32, ptr %i.bx, align 1
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.cc = load i32, ptr %i.cb, align 1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 40 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 1            ; 3 uses
  store i32 %i.ch, ptr %i.bg, align 8
  %i.ci = load i32, ptr %i.cg, align 1            ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 5 uses
  %i.ck = shl nuw nsw i64 %i.cj, 4
  %i.cl = or disjoint i64 %i.ck, 8
  %i.cm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cl) #20
          to label %bb.t unwind label %bb.ag      ; 2 uses

bb.t:                                             ; preds = %bb.s
  store i64 %i.cj, ptr %i.cm, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.co = icmp eq i32 %i.ci, 0
  br i1 %i.co, label %.loopexit243, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.cj
  %i.cq = add nuw nsw i64 %i.cj, 1152921504606846975
  %i.cr = and i64 %i.cq, 1152921504606846975
  %xtraiter = and i64 %i.cj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.u, %.prol.preheader
  %i.cs = phi ptr [ %i.cu, %.prol.preheader ], [ %i.cn, %bb.u ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.u ]
  store i32 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr null, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.u
  %.unr = phi ptr [ %i.cn, %bb.u ], [ %i.cu, %.prol.preheader ]
  %i.cv = icmp samesign ult i64 %i.cr, 7
  br i1 %i.cv, label %.loopexit243, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.cw = phi ptr [ %i.dm, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr null, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i32 0, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr null, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store i32 0, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store ptr null, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store i32 0, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store ptr null, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store i32 0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  store ptr null, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  store i32 0, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  store ptr null, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  store i32 0, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  store ptr null, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  store i32 0, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  store ptr null, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 128 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cp
  br i1 %i.dn, label %.loopexit243, label %.new

.loopexit243:                                     ; preds = %.prol.loopexit, %.new, %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %i.be, i64 208
  store ptr %i.cn, ptr %i.do, align 8
  %i.dp = mul i32 %i.ch, 3                        ; 2 uses
  store i32 %i.dp, ptr %i.bf, align 4
  %i.dq = zext i32 %i.dp to i64
  %i.dr = mul nuw nsw i64 %i.dq, 12               ; 4 uses
  %i.ds = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dr) #20
          to label %bb.v unwind label %bb.ag      ; 2 uses

bb.v:                                             ; preds = %.loopexit243
  %i.dt = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.dt, label %.loopexit242, label %.loopexit242.loopexit

.loopexit242.loopexit:                            ; preds = %bb.v
  %i.du = add nsw i64 %i.dr, -12                  ; 2 uses
  %i.dv = urem i64 %i.du, 12
  %i.dw = sub nuw nsw i64 %i.du, %i.dv
  %i.dx = add nsw i64 %i.dw, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ds, i8 0, i64 %i.dx, i1 false)
  br label %.loopexit242

.loopexit242:                                     ; preds = %.loopexit242.loopexit, %bb.v
  store ptr %i.ds, ptr %i.bh, align 8
  %i.dy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dr) #20
          to label %bb.w unwind label %bb.ag      ; 2 uses

bb.w:                                             ; preds = %.loopexit242
  br i1 %i.dt, label %.loopexit241, label %.loopexit241.loopexit

.loopexit241.loopexit:                            ; preds = %bb.w
  %i.dz = add nsw i64 %i.dr, -12                  ; 2 uses
  %i.ea = urem i64 %i.dz, 12
  %i.eb = sub nuw nsw i64 %i.dz, %i.ea
  %i.ec = add nsw i64 %i.eb, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dy, i8 0, i64 %i.ec, i1 false)
  br label %.loopexit241

.loopexit241:                                     ; preds = %.loopexit241.loopexit, %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 4 uses
  store ptr %i.dy, ptr %i.ed, align 8
  %i.ee = load ptr, ptr %i.ay, align 8
  %i.ef = load ptr, ptr %i.ee, align 8            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 2, ptr %i.b, align 4
  %i.eg = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit unwind label %bb.ah ; 0 uses

_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit: ; preds = %.loopexit241
  %i.eh = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 28
  %i.ej = load i32, ptr %i.ei, align 1
  %.not = icmp eq i32 %i.ej, 0
  br i1 %.not, label %bb.aq, label %bb.x

bb.x:                                             ; preds = %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 20
  %i.el = load i32, ptr %i.ek, align 1
  %.not146 = icmp eq i32 %i.el, 0
  br i1 %.not146, label %bb.aq, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 44
  %i.en = load i32, ptr %i.em, align 1
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eo ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %5, align 8
  store float 1.000000e+00, ptr %i.eq, align 8
  %i.er = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit unwind label %bb.ai ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.y
  %i.es = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit180 unwind label %bb.ai ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit180: ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit
  store <2 x float> splat (float 5.000000e-02), ptr %5, align 8
  store float 5.000000e-02, ptr %i.eq, align 8
  %i.et = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit182 unwind label %bb.ai ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit182: ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit180
  %i.eu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ep) #19 ; 2 uses
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %i.ew = icmp ugt i32 %i.ev, 1023                ; 2 uses
  %i.ex = load i8, ptr %i.ep, align 1
  %i.ey = icmp eq i8 %i.ex, 0
  %or.cond = select i1 %i.ey, i1 true, i1 %i.ew
  br i1 %or.cond, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit182
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ez, i8 0, i64 1024, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.fb = and i64 %i.eu, 1023                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fa, ptr nonnull align 1 %i.ep, i64 %i.fb, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb
  store i8 0, ptr %i.fc, align 1
  store i32 %i.ev, ptr %6, align 4
  %i.fd = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull %6, ptr noundef nonnull @.str.28, i32 noundef 1, i32 noundef 0)
          to label %bb.aa unwind label %bb.aj     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ao

bb.ab:                                            ; preds = %11
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i210

bb.ac:                                            ; preds = %bb.q, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ad:                                            ; preds = %bb.l
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 1144) #18
  br label %.thread

bb.ae:                                            ; preds = %bb.p
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 16) #18
  br label %.thread

bb.af:                                            ; preds = %bb.r
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ag:                                            ; preds = %.loopexit242, %.loopexit243, %bb.s
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ah:                                            ; preds = %.loopexit241
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

bb.ai:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit180, %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit, %bb.y
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aj:                                            ; preds = %bb.z
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ap

bb.ak:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit182
  br i1 %i.ew, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fn = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke278 unwind label %bb.am

bb.am:                                            ; preds = %.invoke278, %bb.an, %bb.al
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.fp = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke278 unwind label %bb.am

.invoke278:                                       ; preds = %bb.al, %bb.an
  %i.fq = phi ptr [ %i.fp, %bb.an ], [ %i.fn, %bb.al ]
  %i.fr = phi ptr [ @.str.30, %bb.an ], [ @.str.29, %bb.al ]
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fq, ptr noundef nonnull %i.fr)
          to label %bb.ao unwind label %bb.am

bb.ao:                                            ; preds = %.invoke278, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ba

bb.ap:                                            ; preds = %bb.aj, %bb.am, %bb.ai
  %.pn151.pn = phi { ptr, i32 } [ %i.fl, %bb.ai ], [ %i.fo, %bb.am ], [ %i.fm, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread233

bb.aq:                                            ; preds = %bb.x, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <2 x float> splat (float 6.000000e-01), ptr %7, align 8
  store float 6.000000e-01, ptr %i.fs, align 8
  %i.ft = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit184 unwind label %bb.at ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit184: ; preds = %bb.aq
  %i.fu = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit186 unwind label %bb.at ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit186: ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit184
  store <2 x float> splat (float 5.000000e-02), ptr %7, align 8
  store float 5.000000e-02, ptr %i.fs, align 8
  %i.fv = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 unwind label %bb.at ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit186
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1008) %i.fw, i8 0, i64 1008, i1 false)
  store i32 15, ptr %8, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.fx, ptr noundef nonnull align 1 dereferenceable(15) @.str.31, i64 15, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.fy, align 1
  %i.fz = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull %8, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 0)
          to label %.noexc.i197 unwind label %bb.au ; 0 uses

.noexc.i197:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %9, i8 0, i64 1028, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.ga, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 18, ptr %i.a, align 8
  %i.gb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc198 unwind label %bb.av ; 2 uses

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
  br i1 %i.gh, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit200, label %bb.ar

bb.ar:                                            ; preds = %.noexc198
  %i.gi = trunc nuw nsw i64 %i.gg to i32
  store i32 %i.gi, ptr %9, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gj, ptr align 1 %.pre, i64 %i.gg, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gg
  store i8 0, ptr %i.gk, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit200

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit200: ; preds = %.noexc198, %bb.ar
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
  %i.gp = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull %9, ptr noundef nonnull @.str.28, i32 noundef 1, i32 noundef 0)
          to label %bb.as unwind label %bb.aw     ; 0 uses

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ba

bb.at:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit186, %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit184, %bb.aq
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.av:                                            ; preds = %.noexc.i197
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn147 = phi { ptr, i32 } [ %i.gt, %bb.aw ], [ %i.gs, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  %.pn147.pn = phi { ptr, i32 } [ %.pn147, %bb.ax ], [ %i.gr, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.at
  %.pn147.pn.pn = phi { ptr, i32 } [ %.pn147.pn, %bb.ay ], [ %i.gq, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.thread233

bb.ba:                                            ; preds = %bb.as, %bb.ao
  %i.gu = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 28
  %i.gw = load i32, ptr %i.gv, align 1
  %.not154 = icmp eq i32 %i.gw, 0
  br i1 %.not154, label %bb.bl, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gx = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.gy = zext i32 %i.gx to i64
  %i.gz = mul nuw nsw i64 %i.gy, 12               ; 2 uses
  %i.ha = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gz) #20
          to label %bb.bc unwind label %bb.bf     ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.hb = icmp eq i32 %i.gx, 0
  br i1 %i.hb, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.bc
  %i.hc = add nsw i64 %i.gz, -12                  ; 2 uses
  %i.hd = urem i64 %i.hc, 12
  %i.he = sub nuw nsw i64 %i.hc, %i.hd
  %i.hf = add nsw i64 %i.he, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ha, i8 0, i64 %i.hf, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bc
  %i.hg = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  store ptr %i.ha, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.be, i64 176
  store i32 2, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hj = load i32, ptr %i.hi, align 1            ; 2 uses
  %.not155 = icmp eq i32 %i.hj, 0
  br i1 %.not155, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %.loopexit
  %i.hk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.hk, ptr noundef nonnull @.str.34)
          to label %._crit_edge unwind label %bb.bf

._crit_edge:                                      ; preds = %bb.be
  %.pre253 = load ptr, ptr %i.aq, align 8
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bj, %bb.bi, %bb.be, %bb.bd, %bb.bb
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

bb.bg:                                            ; preds = %.loopexit
  %i.hm = uitofp i32 %i.hj to float
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge, %bb.bg
  %i.hn = phi ptr [ %i.gu, %bb.bg ], [ %.pre253, %._crit_edge ] ; 2 uses
  %.0133 = phi float [ %i.hm, %bb.bg ], [ 1.000000e+00, %._crit_edge ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %i.hp = load i32, ptr %i.ho, align 1            ; 2 uses
  %.not156 = icmp eq i32 %i.hp, 0
  br i1 %.not156, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.hq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bj unwind label %bb.bf

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.hq, ptr noundef nonnull @.str.35)
          to label %._crit_edge254 unwind label %bb.bf

._crit_edge254:                                   ; preds = %bb.bj
  %.pre255 = load ptr, ptr %i.aq, align 8
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bh
  %i.hr = uitofp i32 %i.hp to float
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge254, %bb.bk, %bb.ba
  %i.hs = phi ptr [ %i.hn, %bb.bk ], [ %.pre255, %._crit_edge254 ], [ %i.gu, %bb.ba ]
  %.1134 = phi float [ %.0133, %bb.bk ], [ %.0133, %._crit_edge254 ], [ 1.000000e+00, %bb.ba ] ; 3 uses
  %.0132 = phi float [ %i.hr, %bb.bk ], [ 1.000000e+00, %._crit_edge254 ], [ 1.000000e+00, %bb.ba ] ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hu = load i32, ptr %i.ht, align 1
  %.not250 = icmp eq i32 %i.hu, 0
  br i1 %.not250, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bl
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bw, i64 12 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bw, i64 20 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.be, i64 112 ; 3 uses
  br label %bb.bm

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.da, %bb.bl
  %i.ib = load ptr, ptr %i.at, align 8            ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1028
  store float 1.000000e+00, ptr %i.ic, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ib, i64 1032
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ib, i64 1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx, i8 0, i64 20, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ib, i64 1068
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ib, i64 1088
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %14 = ptrtoint ptr %.sroa.11220.0 to i64
  %15 = ptrtoint ptr %.sroa.0215.0 to i64
  %16 = sub i64 %14, %15
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0215.0, i64 noundef %16) #18
  %i.id = load ptr, ptr %i.j, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #16, !inline_history !11
  ret void

bb.bm:                                            ; preds = %.lr.ph, %bb.da
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.da ] ; 8 uses
  %.0126249 = phi i32 [ 0, %.lr.ph ], [ %i.rw, %bb.da ] ; 5 uses
  %i.ig = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #20
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ih = load ptr, ptr %i.bd, align 8
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 208
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %indvars.iv
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %i.ig, ptr %i.im, align 8
  %i.in = load ptr, ptr %i.bd, align 8
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 208
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %indvars.iv
  store i32 3, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %indvars.iv ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 6
  %i.iu = load i16, ptr %i.is, align 1
  %i.iv = zext i16 %i.iu to i32                   ; 2 uses
  %i.iw = load ptr, ptr %i.aq, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load i32, ptr %i.ix, align 1
  %.not157 = icmp ugt i32 %i.iy, %i.iv
  br i1 %.not157, label %bb.bt, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.bp:                                            ; preds = %bb.bn
  %i.ja = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ja, ptr noundef nonnull @.str.36)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.jb = load ptr, ptr %i.aq, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load i32, ptr %i.jc, align 1
  %i.je = add i32 %i.jd, -1
  br label %bb.bt

bb.bs:                                            ; preds = %bb.cq, %bb.cp, %bb.ce, %bb.cd, %bb.bq, %bb.bp
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.bt:                                            ; preds = %bb.br, %bb.bn
  %.0128 = phi i32 [ %i.je, %bb.br ], [ %i.iv, %bb.bn ]
  %i.jg = load ptr, ptr %i.bh, align 8
  %i.jh = zext i32 %.0126249 to i64               ; 3 uses
  %i.ji = getelementptr inbounds nuw [12 x i8], ptr %i.jg, i64 %i.jh ; 4 uses
  %i.jj = zext i32 %.0128 to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.jj ; 4 uses
  %i.jl = load i8, ptr %i.jk, align 1
  %i.jm = uitofp i8 %i.jl to float
  %i.jn = load float, ptr %i.bw, align 1
  %i.jo = fmul float %i.jn, %i.jm                 ; 2 uses
  store float %i.jo, ptr %i.ji, align 4
  %i.jp = load float, ptr %i.hv, align 1
  %i.jq = fadd float %i.jo, %i.jp
  store float %i.jq, ptr %i.ji, align 4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = uitofp i8 %i.js to float
  %i.ju = load float, ptr %i.hw, align 1
  %i.jv = fmul float %i.ju, %i.jt                 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 4 ; 2 uses
  store float %i.jv, ptr %i.jw, align 4
  %i.jx = load float, ptr %i.hx, align 1
  %i.jy = fadd float %i.jv, %i.jx
  store float %i.jy, ptr %i.jw, align 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  %i.ka = load i8, ptr %i.jz, align 1
  %i.kb = uitofp i8 %i.ka to float
  %i.kc = load float, ptr %i.hy, align 1
  %i.kd = fmul float %i.kc, %i.kb                 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  store float %i.kd, ptr %i.ke, align 4
  %i.kf = load float, ptr %i.hz, align 1
  %i.kg = fadd float %i.kd, %i.kf
  store float %i.kg, ptr %i.ke, align 4
  %i.kh = load ptr, ptr %i.ed, align 8
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.kh, i64 %i.jh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jk, i64 3
  %i.kk = load i8, ptr %i.kj, align 1             ; 2 uses
  %i.kl = icmp ugt i8 %i.kk, -95
  br i1 %i.kl, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.km = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc205 unwind label %bb.ca

.noexc205:                                        ; preds = %bb.bu
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.km, ptr noundef nonnull @.str)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bt, %.noexc205
  %.0.i = phi i8 [ %i.kk, %bb.bt ], [ -95, %.noexc205 ]
  %i.kn = zext i8 %.0.i to i64
  %i.ko = getelementptr inbounds nuw [12 x i8], ptr @_ZL11g_avNormals, i64 %i.kn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ki, ptr noundef nonnull align 4 dereferenceable(12) %i.ko, i64 12, i1 false)
  %i.kp = load ptr, ptr %i.aq, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 28
  %i.kr = load i32, ptr %i.kq, align 1            ; 2 uses
  %.not158 = icmp eq i32 %i.kr, 0
  br i1 %.not158, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ks = load i16, ptr %i.it, align 1
  %i.kt = zext i16 %i.ks to i32                   ; 2 uses
  %.not159 = icmp ugt i32 %i.kr, %i.kt
  br i1 %.not159, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ku = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ku, ptr noundef nonnull @.str.37)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.kv = load ptr, ptr %i.aq, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 28
  %i.kx = load i32, ptr %i.kw, align 1
  %i.ky = add i32 %i.kx, -1
  br label %bb.cb

bb.ca:                                            ; preds = %bb.cx, %bb.cw, %.noexc205.2, %bb.ct, %bb.cl, %bb.ck, %.noexc205.1, %bb.ch, %.noexc205, %bb.bu, %bb.by, %bb.bx
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cb:                                            ; preds = %bb.bz, %bb.bw
  %.1129 = phi i32 [ %i.ky, %bb.bz ], [ %i.kt, %bb.bw ]
  %i.la = load ptr, ptr %i.ia, align 8
  %i.lb = getelementptr inbounds nuw [12 x i8], ptr %i.la, i64 %i.jh ; 2 uses
  %i.lc = zext i32 %.1129 to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.lc ; 2 uses
  %i.le = load i16, ptr %i.ld, align 1
  %i.lf = uitofp i16 %i.le to float
  %i.lg = fdiv float %i.lf, %.1134
  store float %i.lg, ptr %i.lb, align 4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %i.li = load i16, ptr %i.lh, align 1
  %i.lj = uitofp i16 %i.li to float
  %i.lk = fdiv float %i.lj, %.0132
  %i.ll = fsub float 1.000000e+00, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  store float %i.ll, ptr %i.lm, align 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bv
  %i.ln = load ptr, ptr %i.bd, align 8
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 208
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %indvars.iv
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8
  store i32 %.0126249, ptr %i.lt, align 4
  %i.lu = add i32 %.0126249, 1                    ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  %i.lw = load i16, ptr %i.lv, align 1
  %i.lx = zext i16 %i.lw to i32                   ; 2 uses
  %i.ly = load ptr, ptr %i.aq, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.ma = load i32, ptr %i.lz, align 1
  %.not157.1 = icmp ugt i32 %i.ma, %i.lx
  br i1 %.not157.1, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ce unwind label %bb.bs

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.mb, ptr noundef nonnull @.str.36)
          to label %bb.cf unwind label %bb.bs

bb.cf:                                            ; preds = %bb.ce
  %i.mc = load ptr, ptr %i.aq, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.me = load i32, ptr %i.md, align 1
  %i.mf = add i32 %i.me, -1
  br label %bb.cg
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MD2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

bb.cn:                                            ; preds = %bb.cm, %bb.cj
  %.1129.1 = phi i32 [ %i.nz, %bb.cm ], [ %i.nu, %bb.cj ]
  %i.oa = load ptr, ptr %i.ia, align 8
  %i.ob = getelementptr inbounds nuw [12 x i8], ptr %i.oa, i64 %i.mh ; 2 uses
  %i.oc = zext i32 %.1129.1 to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.oc ; 2 uses
  %i.oe = load i16, ptr %i.od, align 1
  %i.of = uitofp i16 %i.oe to float
  %i.og = fdiv float %i.of, %.1134
  store float %i.og, ptr %i.ob, align 4
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 2
  %i.oi = load i16, ptr %i.oh, align 1
  %i.oj = uitofp i16 %i.oi to float
  %i.ok = fdiv float %i.oj, %.0132
  %i.ol = fsub float 1.000000e+00, %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  store float %i.ol, ptr %i.om, align 4
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ci
  %i.on = load ptr, ptr %i.bd, align 8
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 208
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = getelementptr inbounds nuw [16 x i8], ptr %i.oq, i64 %indvars.iv
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  store i32 %i.lu, ptr %i.ou, align 4
  %i.ov = add i32 %.0126249, 2                    ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.ox = load i16, ptr %i.ow, align 1
  %i.oy = zext i16 %i.ox to i32                   ; 2 uses
  %i.oz = load ptr, ptr %i.aq, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pb = load i32, ptr %i.pa, align 1
  %.not157.2 = icmp ugt i32 %i.pb, %i.oy
  br i1 %.not157.2, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pc = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cq unwind label %bb.bs

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.pc, ptr noundef nonnull @.str.36)
          to label %bb.cr unwind label %bb.bs

bb.cr:                                            ; preds = %bb.cq
  %i.pd = load ptr, ptr %i.aq, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  %i.pf = load i32, ptr %i.pe, align 1
  %i.pg = add i32 %i.pf, -1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co
  %.0128.2 = phi i32 [ %i.pg, %bb.cr ], [ %i.oy, %bb.co ]
  %i.ph = load ptr, ptr %i.bh, align 8
  %i.pi = zext i32 %i.ov to i64                   ; 3 uses
  %i.pj = getelementptr inbounds nuw [12 x i8], ptr %i.ph, i64 %i.pi ; 4 uses
  %i.pk = zext i32 %.0128.2 to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.pk ; 4 uses
  %i.pm = load i8, ptr %i.pl, align 1
  %i.pn = uitofp i8 %i.pm to float
  %i.po = load float, ptr %i.bw, align 1
  %i.pp = fmul float %i.po, %i.pn                 ; 2 uses
  store float %i.pp, ptr %i.pj, align 4
  %i.pq = load float, ptr %i.hv, align 1
  %i.pr = fadd float %i.pp, %i.pq
  store float %i.pr, ptr %i.pj, align 4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pl, i64 1
  %i.pt = load i8, ptr %i.ps, align 1
  %i.pu = uitofp i8 %i.pt to float
  %i.pv = load float, ptr %i.hw, align 1
  %i.pw = fmul float %i.pv, %i.pu                 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pj, i64 4 ; 2 uses
  store float %i.pw, ptr %i.px, align 4
  %i.py = load float, ptr %i.hx, align 1
  %i.pz = fadd float %i.pw, %i.py
  store float %i.pz, ptr %i.px, align 4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pl, i64 2
  %i.qb = load i8, ptr %i.qa, align 1
  %i.qc = uitofp i8 %i.qb to float
  %i.qd = load float, ptr %i.hy, align 1
  %i.qe = fmul float %i.qd, %i.qc                 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 2 uses
  store float %i.qe, ptr %i.qf, align 4
  %i.qg = load float, ptr %i.hz, align 1
  %i.qh = fadd float %i.qe, %i.qg
  store float %i.qh, ptr %i.qf, align 4
  %i.qi = load ptr, ptr %i.ed, align 8
  %i.qj = getelementptr inbounds nuw [12 x i8], ptr %i.qi, i64 %i.pi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pl, i64 3
  %i.ql = load i8, ptr %i.qk, align 1             ; 2 uses
  %i.qm = icmp ugt i8 %i.ql, -95
  br i1 %i.qm, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.qn = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc205.2 unwind label %bb.ca

.noexc205.2:                                      ; preds = %bb.ct
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.qn, ptr noundef nonnull @.str)
          to label %bb.cu unwind label %bb.ca

bb.cu:                                            ; preds = %.noexc205.2, %bb.cs
  %.0.i.2 = phi i8 [ %i.ql, %bb.cs ], [ -95, %.noexc205.2 ]
  %i.qo = zext i8 %.0.i.2 to i64
  %i.qp = getelementptr inbounds nuw [12 x i8], ptr @_ZL11g_avNormals, i64 %i.qo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qj, ptr noundef nonnull align 4 dereferenceable(12) %i.qp, i64 12, i1 false)
  %i.qq = load ptr, ptr %i.aq, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 28
  %i.qs = load i32, ptr %i.qr, align 1            ; 2 uses
  %.not158.2 = icmp eq i32 %i.qs, 0
  br i1 %.not158.2, label %bb.da, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qt = getelementptr inbounds nuw i8, ptr %i.is, i64 10
  %i.qu = load i16, ptr %i.qt, align 1
  %i.qv = zext i16 %i.qu to i32                   ; 2 uses
  %.not159.2 = icmp ugt i32 %i.qs, %i.qv
  br i1 %.not159.2, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qw = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cx unwind label %bb.ca

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.qw, ptr noundef nonnull @.str.37)
          to label %bb.cy unwind label %bb.ca

bb.cy:                                            ; preds = %bb.cx
  %i.qx = load ptr, ptr %i.aq, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 28
  %i.qz = load i32, ptr %i.qy, align 1
  %i.ra = add i32 %i.qz, -1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cv
  %.1129.2 = phi i32 [ %i.ra, %bb.cy ], [ %i.qv, %bb.cv ]
  %i.rb = load ptr, ptr %i.ia, align 8
  %i.rc = getelementptr inbounds nuw [12 x i8], ptr %i.rb, i64 %i.pi ; 2 uses
  %i.rd = zext i32 %.1129.2 to i64
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.rd ; 2 uses
  %i.rf = load i16, ptr %i.re, align 1
  %i.rg = uitofp i16 %i.rf to float
  %i.rh = fdiv float %i.rg, %.1134
  store float %i.rh, ptr %i.rc, align 4
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 2
  %i.rj = load i16, ptr %i.ri, align 1
  %i.rk = uitofp i16 %i.rj to float
  %i.rl = fdiv float %i.rk, %.0132
  %i.rm = fsub float 1.000000e+00, %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  store float %i.rm, ptr %i.rn, align 4
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cu
  %i.ro = load ptr, ptr %i.bd, align 8
  %i.rp = load ptr, ptr %i.ro, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 208
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds nuw [16 x i8], ptr %i.rr, i64 %indvars.iv
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store i32 %i.ov, ptr %i.rv, align 4
  %i.rw = add i32 %.0126249, 3
  %i.rx = load ptr, ptr %i.bd, align 8
  %i.ry = load ptr, ptr %i.rx, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 208
  %i.sa = load ptr, ptr %i.rz, align 8
  %i.sb = getelementptr inbounds nuw [16 x i8], ptr %i.sa, i64 %indvars.iv
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8            ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8 ; 2 uses
  %i.sf = load i32, ptr %i.sd, align 4
  %i.sg = load i32, ptr %i.se, align 4
  store i32 %i.sg, ptr %i.sd, align 4
  store i32 %i.sf, ptr %i.se, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sh = load ptr, ptr %i.aq, align 8
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  %i.sj = load i32, ptr %i.si, align 1
  %i.sk = zext i32 %i.sj to i64
  %i.sl = icmp samesign ult i64 %indvars.iv.next, %i.sk
  br i1 %i.sl, label %bb.bm, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, !llvm.loop !12

.thread233:                                       ; preds = %bb.ah, %bb.ap, %bb.az, %bb.bf
  %.pn160.pn.pn.pn.ph = phi { ptr, i32 } [ %i.hl, %bb.bf ], [ %.pn147.pn.pn, %bb.az ], [ %.pn151.pn, %bb.ap ], [ %i.fk, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.thread

bb.db:                                            ; preds = %bb.bo, %bb.ca, %bb.bs
  %.pn160.pn.pn.pn = phi { ptr, i32 } [ %i.jf, %bb.bs ], [ %i.iz, %bb.bo ], [ %i.kz, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.thread

.thread:                                          ; preds = %bb.db, %bb.ac, %bb.ad, %bb.ae, %bb.ag, %bb.af, %.thread233
  %.pn160.pn.pn.pn.pn.pn.pn230 = phi { ptr, i32 } [ %.pn160.pn.pn.pn.ph, %.thread233 ], [ %.pn160.pn.pn.pn, %bb.db ], [ %i.fj, %bb.ag ], [ %i.fi, %bb.af ], [ %i.fh, %bb.ae ], [ %i.ff, %bb.ac ], [ %i.fg, %bb.ad ]
  %17 = ptrtoint ptr %.sroa.11220.0 to i64
  %18 = ptrtoint ptr %.sroa.0215.0 to i64
  %19 = sub i64 %17, %18
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0215.0, i64 noundef %19) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit208

_ZNSt6vectorIhSaIhEED2Ev.exit208:                 ; preds = %.thread, %bb.c
  %.pn169 = phi { ptr, i32 } [ %i.v, %bb.c ], [ %.pn160.pn.pn.pn.pn.pn.pn230, %.thread ] ; 2 uses
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit211, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i210

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i210: ; preds = %bb.g, %bb.ab, %_ZNSt6vectorIhSaIhEED2Ev.exit208
  %.pn169237 = phi { ptr, i32 } [ %.pn169, %_ZNSt6vectorIhSaIhEED2Ev.exit208 ], [ %i.fe, %bb.ab ], [ %i.ag, %bb.g ]
  %i.sm = load ptr, ptr %i.j, align 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.so = load ptr, ptr %i.sn, align 8
  call void %i.so(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #16, !inline_history !11
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit211

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit211: ; preds = %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i210, %_ZNSt6vectorIhSaIhEED2Ev.exit208, %_ZNSt6vectorIhSaIhEED2Ev.exit208.thread239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %.pn169.pn = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.pn169, %_ZNSt6vectorIhSaIhEED2Ev.exit208 ], [ %.pn169237, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i210 ], [ %i.u, %_ZNSt6vectorIhSaIhEED2Ev.exit208.thread239 ]
  resume { ptr, i32 } %.pn169.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA1_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA1_KcERA25_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
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

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp12BaseImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #16
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp11MD2ImporterD0Ev(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #16
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN6Assimp12BaseImporterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #18
  br label %_ZN6Assimp12BaseImporterD2Ev.exit

_ZN6Assimp12BaseImporterD2Ev.exit:                ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #18
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
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
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #16
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #18
end_hunk_1
