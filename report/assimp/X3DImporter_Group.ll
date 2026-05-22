inline.NumInlined: 283
inline.NumDeleted: 129
begin_hunk_0_@_ZN6Assimp11X3DImporter15startReadSwitchERN4pugi8xml_nodeE:bb.a
bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %bb.h, %bb.n, %bb.o
  %i.aj = load ptr, ptr %6, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.c
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.al = load i64, ptr %i.c, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.an = load ptr, ptr %5, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.a, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.q:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  %i.ar = load ptr, ptr %6, align 8               ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.q
  %i.at = load i64, ptr %i.c, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.av = load ptr, ptr %5, align 8               ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.a
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.ax = load i64, ptr %i.a, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter13endReadSwitchEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter18startReadTransformERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %class.aiVector3t, align 8          ; 8 uses
  %5 = alloca %class.aiVector3t, align 8          ; 8 uses
  %6 = alloca %class.aiVector3t, align 8          ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::vector", align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <2 x float> zeroinitializer, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store <2 x float> zeroinitializer, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.f, ptr %7, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.g, align 8
  store i8 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.h, ptr %8, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.j = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.a
  store ptr %i.j, ptr %3, align 8
  %i.k = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc35 unwind label %bb.l

.noexc35:                                         ; preds = %.noexc
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc35
  %i.l = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.18)
          to label %.noexc36 unwind label %bb.l   ; 2 uses

.noexc36:                                         ; preds = %bb.b
  %i.m = load i64, ptr %i.i, align 8
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #19
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull %i.l, i64 noundef %i.n)
          to label %bb.c unwind label %bb.l       ; 0 uses

bb.c:                                             ; preds = %.noexc35, %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.p = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc39 unwind label %bb.l

.noexc39:                                         ; preds = %bb.c
  store ptr %i.p, ptr %2, align 8
  %i.q = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc40 unwind label %bb.l

.noexc40:                                         ; preds = %.noexc39
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc40
  %i.r = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.18)
          to label %.noexc41 unwind label %bb.l   ; 2 uses

.noexc41:                                         ; preds = %bb.d
  %i.s = load i64, ptr %i.g, align 8
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #19
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull %i.r, i64 noundef %i.t)
          to label %bb.e unwind label %bb.l       ; 0 uses

bb.e:                                             ; preds = %.noexc40, %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.v = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper20getVector3DAttributeERN4pugi8xml_nodeEPKcR10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %bb.f unwind label %bb.l       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.w = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper20getVector3DAttributeERN4pugi8xml_nodeEPKcR10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, ptr noundef nonnull align 4 dereferenceable(12) %5)
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.x = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper20getVector3DAttributeERN4pugi8xml_nodeEPKcR10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(12) %6)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.y = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper22getFloatArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %i.y, label %bb.j, label %_ZNSt6vectorIfSaIfEE5clearEv.exit

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %9, align 8               ; 6 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.not = icmp eq i64 %i.ae, 16
  br i1 %.not, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull @.str.7)
          to label %.invoke unwind label %bb.n

bb.l:                                             ; preds = %.noexc41, %bb.d, %.noexc39, %bb.c, %.noexc36, %bb.b, %.noexc, %bb.a, %bb.g, %bb.f, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.m:                                             ; preds = %.invoke, %bb.ac, %bb.af, %bb.ad, %bb.aa, %_ZNSt6vectorIfSaIfEE5clearEv.exit, %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.n:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.sroa.8.0.copyload18 = load float, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.716.0.copyload17 = load float, ptr %.sroa.716.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.sroa.6.0.copyload15 = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.013.0.copyload14 = load float, ptr %i.ab, align 4
  store ptr %i.ab, ptr %i.z, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.i
  %.sroa.013.0 = phi float [ 0.000000e+00, %bb.i ], [ %.sroa.013.0.copyload14, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %.sroa.6.0 = phi float [ 0.000000e+00, %bb.i ], [ %.sroa.6.0.copyload15, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 5 uses
  %.sroa.716.0 = phi float [ 1.000000e+00, %bb.i ], [ %.sroa.716.0.copyload17, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %.sroa.8.0 = phi float [ 0.000000e+00, %bb.i ], [ %.sroa.8.0.copyload18, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.aj = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper22getFloatArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  br i1 %i.aj, label %bb.p, label %_ZNSt6vectorIfSaIfEE5clearEv.exit46

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %9, align 8               ; 5 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.not32 = icmp eq i64 %i.ap, 16
  br i1 %.not32, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull @.str.9)
          to label %.invoke unwind label %bb.r

.invoke:                                          ; preds = %bb.k, %bb.q
  %i.ar = phi ptr [ %i.aq, %bb.q ], [ %i.af, %bb.k ]
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45:      ; preds = %bb.p
  %.sroa.04.0.copyload6 = load float, ptr %i.am, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.at = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.sroa.11.0.copyload11 = load float, ptr %.sroa.11.0..sroa_idx, align 4
  store ptr %i.am, ptr %i.ak, align 8
  %i.au = insertelement <2 x float> %i.at, float %.sroa.04.0.copyload6, i64 0
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit46

_ZNSt6vectorIfSaIfEE5clearEv.exit46:              ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45, %bb.o
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.o ], [ %.sroa.11.0.copyload11, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45 ] ; 3 uses
  %.sroa.04.0 = phi float [ 0.000000e+00, %bb.o ], [ %.sroa.04.0.copyload6, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45 ] ; 4 uses
  %i.av = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.o ], [ %i.au, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45 ] ; 4 uses
  %i.aw = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.o ], [ %i.at, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45 ] ; 2 uses
  %i.ax = load i64, ptr %i.g, align 8
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit46
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %i.bb, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6Assimp11X3DImporter23ParseHelper_Group_BeginEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bd = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 0, ptr noundef null)
          to label %bb.w unwind label %bb.u       ; 0 uses

bb.w:                                             ; preds = %bb.v
  br i1 %i.bb, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.be = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.y unwind label %bb.u

bb.y:                                             ; preds = %bb.x
  br i1 %i.be, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.ag unwind label %bb.u

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit46
  invoke void @_ZN6Assimp11X3DImporter23ParseHelper_Group_BeginEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.m

bb.ab:                                            ; preds = %bb.aa
  %i.bf = load i64, ptr %i.i, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ad unwind label %bb.m

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bk = load float, ptr %4, align 8             ; 4 uses
  %i.bl = load float, ptr %i.a, align 4           ; 3 uses
  %i.bm = load float, ptr %i.b, align 8           ; 4 uses
  %i.bn = fmul float %i.bl, 0.000000e+00          ; 2 uses
  %i.bo = fadd float %i.bk, %i.bn
  %i.bp = call float @llvm.fmuladd.f32(float %i.bk, float 0.000000e+00, float %i.bl)
  %i.bq = call float @llvm.fmuladd.f32(float %i.bk, float 0.000000e+00, float %i.bn) ; 2 uses
  %i.br = call float @llvm.fmuladd.f32(float %i.bm, float 0.000000e+00, float %i.bq)
  %i.bs = call noundef float @cosf(float noundef %.sroa.8.0) #19 ; 4 uses
  %i.bt = call noundef float @sinf(float noundef %.sroa.8.0) #19 ; 3 uses
  %i.bu = fsub float 1.000000e+00, %i.bs          ; 3 uses
  %i.bv = fmul float %.sroa.013.0, %i.bu          ; 5 uses
  %i.bw = call float @llvm.fmuladd.f32(float %i.bv, float %.sroa.013.0, float %i.bs) ; 3 uses
  %i.bx = fmul float %.sroa.716.0, %i.bt          ; 2 uses
  %i.by = fneg float %i.bx
  %i.bz = call float @llvm.fmuladd.f32(float %i.bv, float %.sroa.6.0, float %i.by) ; 3 uses
  %i.ca = fmul float %.sroa.6.0, %i.bt            ; 2 uses
  %i.cb = call float @llvm.fmuladd.f32(float %i.bv, float %.sroa.716.0, float %i.ca) ; 3 uses
  %i.cc = call float @llvm.fmuladd.f32(float %i.bv, float %.sroa.6.0, float %i.bx) ; 3 uses
  %i.cd = fmul float %.sroa.6.0, %i.bu            ; 3 uses
  %i.ce = call float @llvm.fmuladd.f32(float %i.cd, float %.sroa.6.0, float %i.bs) ; 3 uses
  %i.cf = fmul float %.sroa.013.0, %i.bt          ; 2 uses
  %i.cg = fneg float %i.cf
  %i.ch = call float @llvm.fmuladd.f32(float %i.cd, float %.sroa.716.0, float %i.cg) ; 3 uses
  %i.ci = fneg float %i.ca
  %i.cj = call float @llvm.fmuladd.f32(float %i.bv, float %.sroa.716.0, float %i.ci) ; 3 uses
  %i.ck = call float @llvm.fmuladd.f32(float %i.cd, float %.sroa.716.0, float %i.cf) ; 3 uses
  %i.cl = fmul float %.sroa.716.0, %i.bu
  %i.cm = call float @llvm.fmuladd.f32(float %i.cl, float %.sroa.716.0, float %i.bs) ; 3 uses
  %i.cn = fmul float %i.cc, 0.000000e+00
  %i.co = call float @llvm.fmuladd.f32(float %i.bw, float 0.000000e+00, float %i.cn)
  %i.cp = call float @llvm.fmuladd.f32(float %i.cj, float 0.000000e+00, float %i.co)
  %i.cq = fmul float %i.ce, 0.000000e+00
  %i.cr = call float @llvm.fmuladd.f32(float %i.bz, float 0.000000e+00, float %i.cq)
  %i.cs = call float @llvm.fmuladd.f32(float %i.ck, float 0.000000e+00, float %i.cr)
  %i.ct = fmul float %i.ch, 0.000000e+00
  %i.cu = call float @llvm.fmuladd.f32(float %i.cb, float 0.000000e+00, float %i.ct)
  %i.cv = call float @llvm.fmuladd.f32(float %i.cm, float 0.000000e+00, float %i.cu)
  %i.cw = call noundef float @cosf(float noundef %.sroa.11.0) #19 ; 4 uses
  %i.cx = call noundef float @sinf(float noundef %.sroa.11.0) #19 ; 3 uses
  %i.cy = fsub float 1.000000e+00, %i.cw          ; 3 uses
  %i.cz = fmul float %.sroa.04.0, %i.cy           ; 5 uses
  %i.da = call float @llvm.fmuladd.f32(float %i.cz, float %.sroa.04.0, float %i.cw) ; 4 uses
  %i.db = extractelement <2 x float> %i.av, i64 1 ; 9 uses
  %i.dc = fmul float %i.db, %i.cx                 ; 2 uses
  %i.dd = fneg float %i.dc
  %i.de = extractelement <2 x float> %i.aw, i64 0 ; 9 uses
  %i.df = call float @llvm.fmuladd.f32(float %i.cz, float %i.de, float %i.dd) ; 4 uses
  %i.dg = fmul float %i.de, %i.cx                 ; 2 uses
  %i.dh = call float @llvm.fmuladd.f32(float %i.cz, float %i.db, float %i.dg)
  %i.di = call float @llvm.fmuladd.f32(float %i.cz, float %i.de, float %i.dc) ; 4 uses
  %i.dj = fmul float %i.de, %i.cy                 ; 3 uses
  %i.dk = call float @llvm.fmuladd.f32(float %i.dj, float %i.de, float %i.cw) ; 4 uses
  %i.dl = fmul float %.sroa.04.0, %i.cx           ; 2 uses
  %i.dm = fneg float %i.dl
  %i.dn = call float @llvm.fmuladd.f32(float %i.dj, float %i.db, float %i.dm) ; 3 uses
  %i.do = fneg float %i.dg
  %i.dp = call float @llvm.fmuladd.f32(float %i.cz, float %i.db, float %i.do)
  %i.dq = call float @llvm.fmuladd.f32(float %i.dj, float %i.db, float %i.dl) ; 4 uses
  %i.dr = fmul float %i.db, %i.cy
  %i.ds = call float @llvm.fmuladd.f32(float %i.dr, float %i.db, float %i.cw)
  %i.dt = load float, ptr %5, align 8
  %i.du = load float, ptr %i.c, align 4
  %i.dv = load float, ptr %i.d, align 8
  %i.dw = fneg float %.sroa.11.0                  ; 2 uses
  %i.dx = call noundef float @cosf(float noundef %i.dw) #19 ; 4 uses
  %i.dy = call noundef float @sinf(float noundef %i.dw) #19 ; 3 uses
  %i.dz = fsub float 1.000000e+00, %i.dx          ; 2 uses
  %i.ea = fmul float %i.db, %i.dy                 ; 2 uses
  %i.eb = fneg float %i.ea
  %i.ec = fmul float %i.de, %i.dy                 ; 2 uses
  %i.ed = fmul float %.sroa.04.0, %i.dy           ; 2 uses
  %i.ee = fneg float %i.ed
  %i.ef = fneg float %i.ec
  %i.eg = fneg float %i.bk                        ; 3 uses
  %i.eh = fneg float %i.bl                        ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ej = load ptr, ptr %i.ei, align 8            ; 7 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 76
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  %i.el = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.er = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ev = fmul float %i.de, %i.dz                 ; 3 uses
  %i.ew = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x float> %i.av, %i.ex           ; 4 uses
  %i.ez = extractelement <2 x float> %i.ey, i64 0
  %i.fa = call float @llvm.fmuladd.f32(float %i.ez, float %i.de, float %i.eb) ; 4 uses
  %i.fb = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.ec, i64 1
  %i.fe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.av, <2 x float> %i.fd) ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.fg = call float @llvm.fmuladd.f32(float %i.ev, float %i.de, float %i.dx) ; 4 uses
  %i.fh = insertelement <2 x float> %i.ey, float %i.ev, i64 1
  %i.fi = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.ee, i64 1
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.aw, <2 x float> %i.fj) ; 2 uses
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.fm = call float @llvm.fmuladd.f32(float %i.ev, float %i.db, float %i.ed) ; 4 uses
  %i.fn = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fo = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.dx, i64 1
  %i.fq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.fn, <2 x float> %i.fp) ; 2 uses
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.fs = extractelement <2 x float> %i.fk, i64 0
  %i.ft = extractelement <2 x float> %i.fe, i64 0
  %i.fu = extractelement <2 x float> %i.fq, i64 0
  %i.fv = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.eg, i64 3
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 96
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 100
  %i.fw = load float, ptr %i.e, align 8           ; 3 uses
  %i.fx = call float @llvm.fmuladd.f32(float %i.fw, float 0.000000e+00, float 0.000000e+00) ; 8 uses
  %i.fy = call float @llvm.fmuladd.f32(float %i.fw, float 0.000000e+00, float 1.000000e+00) ; 4 uses
  %i.fz = fmul float %i.fx, %i.cc
  %i.ga = call float @llvm.fmuladd.f32(float %i.bw, float %i.fx, float %i.fz)
  %i.gb = call float @llvm.fmuladd.f32(float %i.cj, float %i.fy, float %i.ga)
  %i.gc = fmul float %i.fx, %i.ce
  %i.gd = call float @llvm.fmuladd.f32(float %i.bz, float %i.fx, float %i.gc)
  %i.ge = call float @llvm.fmuladd.f32(float %i.ck, float %i.fy, float %i.gd)
  %i.gf = fmul float %i.fx, %i.ch
  %i.gg = call float @llvm.fmuladd.f32(float %i.cb, float %i.fx, float %i.gf)
end_hunk_0
begin_hunk_1_@_ZN6Assimp11X3DImporter18startReadTransformERN4pugi8xml_nodeE:bb.a
  %i.nv = insertelement <2 x float> poison, float %i.mu, i64 0
  %i.nw = insertelement <2 x float> %i.nv, float %i.nu, i64 1
  %i.nx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.nb, <2 x float> %i.nw)
  %i.ny = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.np, <2 x float> zeroinitializer, <2 x float> %i.nx) ; 3 uses
  %i.nz = fmul float %i.dn, %i.nj
  %i.oa = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.ob = insertelement <2 x float> %i.oa, float %i.ni, i64 1
  %i.oc = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.od = insertelement <2 x float> %i.oc, float %i.nz, i64 1
  %i.oe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.ob, <2 x float> %i.od)
  %i.of = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.nb, <2 x float> %i.oe)
  %i.og = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.np, <2 x float> zeroinitializer, <2 x float> %i.of) ; 5 uses
  %i.oh = fmul <2 x float> %i.ns, zeroinitializer ; 2 uses
  %i.oi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ny, <2 x float> zeroinitializer, <2 x float> %i.oh) ; 3 uses
  %i.oj = extractelement <2 x float> %i.og, i64 0
  %i.ok = extractelement <2 x float> %i.oi, i64 0
  %i.ol = call float @llvm.fmuladd.f32(float %i.oj, float 0.000000e+00, float %i.ok)
  %i.om = fmul float %i.nj, 0.000000e+00
  %i.on = call float @llvm.fmuladd.f32(float %i.ni, float 0.000000e+00, float %i.om)
  %i.oo = call float @llvm.fmuladd.f32(float %i.nn, float 0.000000e+00, float %i.on)
  %i.op = fadd float %i.mq, %i.nh                 ; 2 uses
  %i.oq = fadd float %i.nk, %i.oo                 ; 2 uses
  %i.or = fmul <2 x float> %i.ka, %i.ns
  %i.os = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ny, <2 x float> zeroinitializer, <2 x float> %i.or)
  %i.ot = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.og, <2 x float> zeroinitializer, <2 x float> %i.os)
  %i.ou = insertelement <2 x float> poison, float %i.op, i64 0
  %i.ov = insertelement <2 x float> %i.ou, float %i.oq, i64 1 ; 3 uses
  %i.ow = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ov, <2 x float> zeroinitializer, <2 x float> %i.ot) ; 4 uses
  %i.ox = extractelement <2 x float> %i.ow, i64 0 ; 3 uses
  %i.oy = fmul float %i.ox, 0.000000e+00
  %i.oz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.ny, <2 x float> %i.oh)
  %i.pa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.og, <2 x float> zeroinitializer, <2 x float> %i.oz)
  %i.pb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ov, <2 x float> zeroinitializer, <2 x float> %i.pa) ; 4 uses
  %i.pc = extractelement <2 x float> %i.pb, i64 0 ; 3 uses
  %i.pd = call float @llvm.fmuladd.f32(float %i.pc, float 0.000000e+00, float %i.oy)
  %i.pe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.og, <2 x float> %i.oi)
  %i.pf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ov, <2 x float> zeroinitializer, <2 x float> %i.pe) ; 4 uses
  %i.pg = extractelement <2 x float> %i.pf, i64 0 ; 3 uses
  %i.ph = call float @llvm.fmuladd.f32(float %i.pg, float 0.000000e+00, float %i.pd)
  %i.pi = fmul float %i.fs, %i.ox
  %i.pj = call float @llvm.fmuladd.f32(float %i.ft, float %i.pc, float %i.pi)
  %i.pk = call float @llvm.fmuladd.f32(float %i.fu, float %i.pg, float %i.pj)
  %i.pl = extractelement <2 x float> %i.og, i64 1
  %i.pm = extractelement <2 x float> %i.oi, i64 1
  %i.pn = call float @llvm.fmuladd.f32(float %i.pl, float 0.000000e+00, float %i.pm)
  %i.po = fadd float %i.op, %i.ol                 ; 4 uses
  %i.pp = call float @llvm.fmuladd.f32(float %i.po, float 0.000000e+00, float %i.pk) ; 4 uses
  %i.pq = fmul float %i.fg, %i.ox
  %i.pr = call float @llvm.fmuladd.f32(float %i.fa, float %i.pc, float %i.pq)
  %i.ps = call float @llvm.fmuladd.f32(float %i.fm, float %i.pg, float %i.pr)
  %i.pt = call float @llvm.fmuladd.f32(float %i.po, float 0.000000e+00, float %i.ps) ; 3 uses
  %i.pu = fmul float %i.pt, 0.000000e+00          ; 2 uses
  %i.pv = fadd float %i.pp, %i.pu
  %i.pw = call float @llvm.fmuladd.f32(float %i.pp, float 0.000000e+00, float %i.pt)
  %i.px = call float @llvm.fmuladd.f32(float %i.pp, float 0.000000e+00, float %i.pu)
  %i.py = fadd float %i.oq, %i.pn                 ; 4 uses
  %i.pz = fmul <2 x float> %i.lm, %i.ow
  %i.qa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> %i.pb, <2 x float> %i.pz)
  %i.qb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.pf, <2 x float> %i.qa)
  %i.qc = insertelement <2 x float> poison, float %i.po, i64 0
  %i.qd = insertelement <2 x float> %i.qc, float %i.py, i64 1
  %i.qe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qd, <2 x float> zeroinitializer, <2 x float> %i.qb) ; 3 uses
  %i.qf = shufflevector <2 x float> %i.qe, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.qg = extractelement <2 x float> %i.qe, i64 0 ; 2 uses
  %i.qh = fadd float %i.qg, %i.px
  %i.qi = extractelement <2 x float> %i.ow, i64 1 ; 2 uses
  %i.qj = fmul float %i.qi, 0.000000e+00
  %i.qk = extractelement <2 x float> %i.pb, i64 1 ; 2 uses
  %i.ql = call float @llvm.fmuladd.f32(float %i.qk, float 0.000000e+00, float %i.qj)
  %i.qm = extractelement <2 x float> %i.pf, i64 1 ; 2 uses
  %i.qn = call float @llvm.fmuladd.f32(float %i.qm, float 0.000000e+00, float %i.ql)
  %i.qo = fadd float %i.po, %i.ph                 ; 3 uses
  %i.qp = call float @llvm.fmuladd.f32(float %i.qo, float 0.000000e+00, float %i.qh)
  %i.qq = fmul float %i.pt, %i.eh
  %i.qr = call float @llvm.fmuladd.f32(float %i.eg, float %i.pp, float %i.qq)
  %i.qs = fadd float %i.py, %i.qn                 ; 3 uses
  %i.qt = fmul float %i.fg, %i.qi
  %i.qu = call float @llvm.fmuladd.f32(float %i.fa, float %i.qk, float %i.qt)
  %i.qv = call float @llvm.fmuladd.f32(float %i.fm, float %i.qm, float %i.qu)
  %i.qw = call float @llvm.fmuladd.f32(float %i.py, float 0.000000e+00, float %i.qv) ; 3 uses
  %i.qx = shufflevector <2 x float> %i.ow, <2 x float> %i.ke, <2 x i32> <i32 1, i32 2>
  %i.qy = fmul <2 x float> %i.lm, %i.qx
  %i.qz = shufflevector <2 x float> %i.pb, <2 x float> %i.jx, <2 x i32> <i32 1, i32 2>
  %i.ra = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> %i.qz, <2 x float> %i.qy)
  %i.rb = shufflevector <2 x float> %i.pf, <2 x float> %i.kh, <2 x i32> <i32 1, i32 2>
  %i.rc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.rb, <2 x float> %i.ra)
  %i.rd = insertelement <2 x float> %i.kl, float %i.py, i64 0
  %i.re = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rd, <2 x float> zeroinitializer, <2 x float> %i.rc) ; 3 uses
  %i.rf = shufflevector <2 x float> %i.re, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.rg = extractelement <2 x float> %i.re, i64 1 ; 2 uses
  %i.rh = fadd float %i.rg, %i.ly
  %i.ri = insertelement <4 x float> %i.ma, float %i.rh, i64 2
  %i.rj = insertelement <4 x float> %i.ri, float %i.lx, i64 3
  %i.rk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.lg, <4 x float> %i.rj)
  %i.rl = fadd <4 x float> %i.rk, %i.mb
  %i.rm = insertelement <4 x float> %i.mc, float %i.mp, i64 3
  %i.rn = shufflevector <4 x float> %i.rm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ro = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rn, <4 x float> %i.md, <4 x float> %i.rl)
  %i.rp = call float @llvm.fmuladd.f32(float %i.rg, float 0.000000e+00, float %i.lb)
  %i.rq = call float @llvm.fmuladd.f32(float %i.me, float 0.000000e+00, float %i.rp)
  %i.rr = extractelement <2 x float> %i.ll, i64 1
  %i.rs = call float @llvm.fmuladd.f32(float %i.rr, float 0.000000e+00, float %i.rq)
  %i.rt = fmul float %i.qw, 0.000000e+00          ; 2 uses
  %i.ru = extractelement <2 x float> %i.qe, i64 1 ; 2 uses
  %i.rv = fadd float %i.ru, %i.rt
  %i.rw = call float @llvm.fmuladd.f32(float %i.ru, float 0.000000e+00, float %i.qw)
  %i.rx = insertelement <4 x float> %i.mi, float %i.rv, i64 2
  %i.ry = insertelement <4 x float> %i.rx, float %i.rw, i64 3
  %i.rz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mg, <4 x float> %i.rf, <4 x float> %i.ry)
  %i.sa = fadd <4 x float> %i.mj, %i.rz
  %i.sb = insertelement <4 x float> %i.mk, float %i.mp, i64 1
  %i.sc = insertelement <4 x float> %i.sb, float %i.qs, i64 2
  %i.sd = shufflevector <4 x float> %i.sc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.se = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sd, <4 x float> %i.ml, <4 x float> %i.sa)
  %i.sf = fadd <4 x float> %i.mm, %i.se
  %i.sg = fmul float %i.qw, %i.eh
  %i.sh = insertelement <4 x float> poison, float %i.rt, i64 0
  %i.si = insertelement <4 x float> %i.sh, float %i.sg, i64 1
  %i.sj = insertelement <4 x float> %i.si, float %i.pv, i64 2
  %i.sk = insertelement <4 x float> %i.sj, float %i.pw, i64 3
  %i.sl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mg, <4 x float> %i.qf, <4 x float> %i.sk)
  %i.sm = shufflevector <2 x float> %i.re, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.sn = shufflevector <4 x float> %i.sm, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.so = fadd <4 x float> %i.sn, %i.sl
  %i.sp = insertelement <4 x float> poison, float %i.qs, i64 0
  %i.sq = insertelement <4 x float> %i.sp, float %i.mp, i64 1
  %i.sr = insertelement <4 x float> %i.sq, float %i.qo, i64 2
  %i.ss = shufflevector <4 x float> %i.sr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.st = shufflevector <4 x float> %i.sm, <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 6, i32 7>
  %i.su = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ss, <4 x float> %i.st, <4 x float> %i.so)
  %i.sv = insertelement <4 x float> <float -0.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.qs, i64 1
  %i.sw = fadd <4 x float> %i.sv, %i.su
  %i.sx = call float @llvm.fmuladd.f32(float %i.mp, float %i.qg, float %i.qr)
  %i.sy = fadd float %i.qo, %i.sx
  %i.sz = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float poison>, <4 x float> %i.mc, <4 x i32> <i32 0, i32 1, i32 4, i32 2>
  %i.ta = shufflevector <4 x float> %i.ro, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.tb = fadd <4 x float> %i.sz, %i.ta
  store <4 x float> %i.tb, ptr %.sroa.18.0..sroa_idx, align 4
  store float %i.rs, ptr %.sroa.69.0..sroa_idx, align 4
  store <4 x float> %i.sf, ptr %.sroa.83.0..sroa_idx, align 4
  store <4 x float> %i.sw, ptr %.sroa.134.0..sroa_idx, align 4
  %.sroa.187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 132
  store float %i.qp, ptr %.sroa.187.0..sroa_idx, align 4
  %.sroa.199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 136
  store float %i.sy, ptr %.sroa.199.0..sroa_idx, align 4
  %i.tc = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ae unwind label %bb.m

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.tc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.ag unwind label %bb.m

bb.ag:                                            ; preds = %bb.w, %bb.y, %bb.z, %bb.ae, %bb.af
  %i.td = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.te = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.tf = load ptr, ptr %i.te, align 8
  %i.tg = ptrtoint ptr %i.tf to i64
  %i.th = ptrtoint ptr %i.td to i64
  %i.ti = sub i64 %i.tg, %i.th
  call void @_ZdlPvm(ptr noundef nonnull %i.td, i64 noundef %i.ti) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.tj = load ptr, ptr %8, align 8               ; 2 uses
  %i.tk = icmp eq ptr %i.tj, %i.h
  br i1 %i.tk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.tl = load i64, ptr %i.h, align 8
  %i.tm = add i64 %i.tl, 1
  call void @_ZdlPvm(ptr noundef %i.tj, i64 noundef %i.tm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.tn = load ptr, ptr %7, align 8               ; 2 uses
  %i.to = icmp eq ptr %i.tn, %i.f
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.tp = load i64, ptr %i.f, align 8
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

.sink.split:                                      ; preds = %bb.n, %bb.r
  %.sink = phi ptr [ %i.aq, %bb.r ], [ %i.af, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.ai, %bb.n ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #19
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.u, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.bc, %bb.u ], [ %.pn.ph, %.sink.split ]
  %i.tr = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i69 = icmp eq ptr %i.tr, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIfSaIfEED2Ev.exit70, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ts = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.tt = load ptr, ptr %i.ts, align 8
  %i.tu = ptrtoint ptr %i.tt to i64
  %i.tv = ptrtoint ptr %i.tr to i64
  %i.tw = sub i64 %i.tu, %i.tv
  call void @_ZdlPvm(ptr noundef nonnull %i.tr, i64 noundef %i.tw) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit70

_ZNSt6vectorIfSaIfEED2Ev.exit70:                  ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit70, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit70 ], [ %i.ag, %bb.l ]
  %i.tx = load ptr, ptr %8, align 8               ; 2 uses
  %i.ty = icmp eq ptr %i.tx, %i.h
  br i1 %i.ty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ak
  %i.tz = load i64, ptr %i.h, align 8
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ua) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.ub = load ptr, ptr %7, align 8               ; 2 uses
  %i.uc = icmp eq ptr %i.ub, %i.f
  br i1 %i.uc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ud = load i64, ptr %i.f, align 8
  %i.ue = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.ue) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper20getVector3DAttributeERN4pugi8xml_nodeEPKcR10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper22getFloatArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

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
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #19
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter16endReadTransformEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

declare void @_ZN6Assimp11X3DImporter20checkNodeMustBeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN6Assimp17Throw_DEF_And_USEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %i.b = load ptr, ptr %0, align 8, !noalias !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !alias.scope !6
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !6
  store i8 0, ptr %i.e, align 8, !alias.scope !6
  %i.g = add i64 %i.d, 44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !6
  %i.i = add i64 %i.h, -4611686018427387860
  %i.j = icmp ult i64 %i.i, 44
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.10, i64 noundef 44)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !alias.scope !6
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !alias.scope !6 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.sink.split, label %.sink.split.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.s = load i64, ptr %i.f, align 8, !noalias !9
  %i.t = and i64 %i.s, -2
  %i.u = icmp eq i64 %i.t, 4611686018427387902
  br i1 %i.u, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %.noexc9 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 6 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.w, ptr %1, align 8, !alias.scope !9
  %i.x = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc9
  store ptr %i.x, ptr %1, align 8, !alias.scope !9
  %i.ae = load i64, ptr %i.y, align 8
  store i64 %i.ae, ptr %i.w, align 8, !alias.scope !9
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.af = phi i64 [ %i.ab, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !alias.scope !9
  store ptr %i.y, ptr %i.v, align 8
  store i64 0, ptr %i.ag, align 8
  store i8 0, ptr %i.y, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aj = load ptr, ptr %1, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.w
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.h
  %i.al = load i64, ptr %i.w, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.an = load ptr, ptr %2, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.e
  br i1 %i.ao, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.e
  br i1 %i.ar, label %.sink.split, label %.sink.split.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = load i64, ptr %i.e, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.at) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.i, label %bb.j

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.i, label %bb.j

.sink.split.sink.split:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.c
  %.sink = phi ptr [ %i.q, %bb.c ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  %.pn.pn17.ph.ph = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  %i.au = load i64, ptr %i.e, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.av) #20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %.sink.split.sink.split
  %.pn.pn17.ph = phi { ptr, i32 } [ %.pn.pn17.ph.ph, %.sink.split.sink.split ], [ %i.p, %bb.c ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %.body
  %.pn.pn17 = phi { ptr, i32 } [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.ai, %.body ], [ %.pn.pn17.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.a) #19
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %.body, %bb.i
  %.pn.pn16 = phi { ptr, i32 } [ %i.ai, %.body ], [ %.pn.pn17, %bb.i ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ]
  resume { ptr, i32 } %.pn.pn16

bb.k:                                             ; preds = %bb.g
  unreachable
}

declare noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare noundef zeroext i1 @_ZN6Assimp11X3DImporter15FindNodeElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11X3DElemTypePP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN6Assimp18Throw_USE_NotFoundERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.b = load ptr, ptr %1, align 8, !noalias !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.e, ptr %5, align 8, !alias.scope !15
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !15
  store i8 0, ptr %i.e, align 8, !alias.scope !15
  %i.g = add i64 %i.d, 26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !15
  %i.i = add i64 %i.h, -4611686018427387878
  %i.j = icmp ult i64 %i.i, 26
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, i64 noundef 26)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !alias.scope !15
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %5, align 8, !alias.scope !15 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.sink.split, label %.sink.split.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.s = load i64, ptr %i.f, align 8, !noalias !18
  %i.t = add i64 %i.s, -4611686018427387898
  %i.u = icmp ult i64 %i.t, 6
  br i1 %i.u, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc16 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread ; 6 uses

.noexc16:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.w, ptr %4, align 8, !alias.scope !18
  %i.x = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc16
  store ptr %i.x, ptr %4, align 8, !alias.scope !18
  %i.ae = load i64, ptr %i.y, align 8
  store i64 %i.ae, ptr %i.w, align 8, !alias.scope !18
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.af = phi i64 [ %i.ab, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.ah, align 8, !alias.scope !18
  store ptr %i.y, ptr %i.v, align 8
  store i64 0, ptr %i.ag, align 8
  store i8 0, ptr %i.y, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !21 ; 2 uses
  %i.ak = load i64, ptr %i.ah, align 8, !noalias !21
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.noexc20 unwind label %bb.n

.noexc20:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.f
  %i.an = load ptr, ptr %0, align 8, !noalias !21
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.an, i64 noundef %i.aj)
          to label %.noexc21 unwind label %bb.n   ; 6 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ap, ptr %3, align 8, !alias.scope !21
  %i.aq = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

bb.h:                                             ; preds = %.noexc21
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %.noexc21
  store ptr %i.aq, ptr %3, align 8, !alias.scope !21
  %i.ax = load i64, ptr %i.ar, align 8
  store i64 %i.ax, ptr %i.ap, align 8, !alias.scope !21
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre.i19 = load i64, ptr %.phi.trans.insert.i18, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.h
  %i.ay = phi i64 [ %i.au, %bb.h ], [ %.pre.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !alias.scope !21
  store ptr %i.ar, ptr %i.ao, align 8
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %i.ar, align 8
  %i.bb = and i64 %i.ay, -2
  %i.bc = icmp eq i64 %i.bb, 4611686018427387902
  br i1 %i.bc, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22: ; preds = %bb.i
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %.noexc27 unwind label %bb.o   ; 6 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.be, ptr %2, align 8, !alias.scope !24
  %i.bf = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

bb.k:                                             ; preds = %.noexc27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load i64, ptr %i.bi, align 8            ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %.noexc27
  store ptr %i.bf, ptr %2, align 8, !alias.scope !24
  %i.bm = load i64, ptr %i.bg, align 8
  store i64 %i.bm, ptr %i.be, align 8, !alias.scope !24
  %.phi.trans.insert.i24 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.pre.i25 = load i64, ptr %.phi.trans.insert.i24, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.k
  %i.bn = phi i64 [ %i.bj, %bb.k ], [ %.pre.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bn, ptr %i.bp, align 8, !alias.scope !24
  store ptr %i.bg, ptr %i.bd, align 8
  store i64 0, ptr %i.bo, align 8
  store i8 0, ptr %i.bg, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.s unwind label %bb.p

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22, %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i1 [ false, %bb.m ], [ true, %bb.l ]  ; 2 uses
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %2, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.be
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.p
  %i.bv = load i64, ptr %i.be, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.o
  %.pn = phi { ptr, i32 } [ %i.br, %bb.o ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.bs, %bb.p ] ; 2 uses
  %.1 = phi i1 [ true, %bb.o ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %.0, %bb.p ] ; 2 uses
  %i.bx = load ptr, ptr %3, align 8               ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.ap
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = load i64, ptr %i.ap, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.2 = phi i1 [ true, %bb.n ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.cb = load ptr, ptr %4, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.w
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.cd = load i64, ptr %i.w, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  %i.cf = load ptr, ptr %5, align 8               ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.e
  br i1 %i.cg, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %5, align 8               ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.e
  br i1 %i.cj, label %.sink.split, label %.sink.split.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.ck = load i64, ptr %i.e, align 8
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.2, label %bb.q, label %bb.r

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.2, label %bb.q, label %bb.r

.sink.split.sink.split:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread, %bb.c
  %.sink = phi ptr [ %i.q, %bb.c ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread ]
  %.pn.pn.pn.pn42.ph.ph = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread ]
  %i.cm = load i64, ptr %i.e, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cn) #20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread, %.sink.split.sink.split
  %.pn.pn.pn.pn42.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn42.ph.ph, %.sink.split.sink.split ], [ %i.p, %bb.c ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %.body
  %.pn.pn.pn.pn42 = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn.pn, %.body ], [ %.pn.pn.pn.pn42.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.a) #19
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %.body, %bb.q
  %.pn.pn.pn.pn41 = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %.pn.pn.pn.pn42, %bb.q ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ]
  resume { ptr, i32 } %.pn.pn.pn.pn41

bb.s:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #19
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #19
  resume { ptr, i32 } %i.o
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #19
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #19
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !36
  store i8 0, ptr %i.a, align 8, !alias.scope !36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !36 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !36 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !36 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !36 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #20
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e, %.body.sink.split
  %.pn = phi { ptr, i32 } [ %.pn.ph, %.body.sink.split ], [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #19
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #11 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

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
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
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
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #19
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #19
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #19
  resume { ptr, i32 } %i.y
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!5 = distinct !{!5, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!6 = !{!7, !4}
!7 = distinct !{!7, !8, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!8 = distinct !{!8, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!11 = distinct !{!11, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!14 = distinct !{!14, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!15 = !{!16, !13}
!16 = distinct !{!16, !17, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!17 = distinct !{!17, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!20 = distinct !{!20, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!23 = distinct !{!23, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!26 = distinct !{!26, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!29 = distinct !{!29, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!32 = distinct !{!32, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!35 = distinct !{!35, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!36 = !{!34, !31, !28}
end_hunk_1
