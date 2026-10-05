Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DImporter_Group?download=true
inline.NumInlined: 283
inline.NumDeleted: 129
begin_hunk_0_@_ZN6Assimp11X3DImporter15startReadSwitchERN4pugi8xml_nodeE:bb.a
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
  %6 = alloca %class.aiVector3t, align 8          ; 8 uses
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
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  store <2 x float> zeroinitializer, ptr %6, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.g, ptr %7, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.h, align 8
  store i8 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.i, ptr %8, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.k = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.a
  store ptr %i.k, ptr %3, align 8
  %i.l = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc35 unwind label %bb.l

.noexc35:                                         ; preds = %.noexc
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc35
  %i.m = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.18)
          to label %.noexc36 unwind label %bb.l   ; 2 uses

.noexc36:                                         ; preds = %bb.b
  %i.n = load i64, ptr %i.j, align 8
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #19
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %i.m, i64 noundef %i.o)
          to label %bb.c unwind label %bb.l       ; 0 uses

bb.c:                                             ; preds = %.noexc35, %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.q = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc39 unwind label %bb.l

.noexc39:                                         ; preds = %bb.c
  store ptr %i.q, ptr %2, align 8
  %i.r = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc40 unwind label %bb.l

.noexc40:                                         ; preds = %.noexc39
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc40
  %i.s = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.18)
          to label %.noexc41 unwind label %bb.l   ; 2 uses

.noexc41:                                         ; preds = %bb.d
  %i.t = load i64, ptr %i.h, align 8
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #19
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef %i.t, ptr noundef nonnull %i.s, i64 noundef %i.u)
          to label %bb.e unwind label %bb.l       ; 0 uses

bb.e:                                             ; preds = %.noexc40, %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.w = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper20getVector3DAttributeERN4pugi8xml_nodeEPKcR10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %bb.f unwind label %bb.l       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.x = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper20getVector3DAttributeERN4pugi8xml_nodeEPKcR10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, ptr noundef nonnull align 4 dereferenceable(12) %5)
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.y = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper20getVector3DAttributeERN4pugi8xml_nodeEPKcR10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(12) %6)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.z = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper22getFloatArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %i.z, label %bb.j, label %_ZNSt6vectorIfSaIfEE5clearEv.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %9, align 8               ; 5 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.not = icmp eq i64 %i.af, 16
  br i1 %.not, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.7)
          to label %.invoke unwind label %bb.n

bb.l:                                             ; preds = %.noexc41, %bb.d, %.noexc39, %bb.c, %.noexc36, %bb.b, %.noexc, %bb.a, %bb.g, %bb.f, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.m:                                             ; preds = %.invoke, %bb.ac, %bb.af, %bb.ad, %bb.aa, %_ZNSt6vectorIfSaIfEE5clearEv.exit, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.n:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #19
  br label %bb.ai

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.sroa.8.0.copyload18 = load float, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ak = load <2 x float>, ptr %i.ac, align 4
  %i.al = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %10 = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store ptr %i.ac, ptr %i.aa, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.i
  %.sroa.8.0 = phi float [ 0.000000e+00, %bb.i ], [ %.sroa.8.0.copyload18, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.am = phi <2 x float> [ zeroinitializer, %bb.i ], [ %i.ak, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.an = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, %bb.i ], [ %10, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ao = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper22getFloatArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  br i1 %i.ao, label %bb.p, label %_ZNSt6vectorIfSaIfEE5clearEv.exit46

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load ptr, ptr %9, align 8               ; 4 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %.not32 = icmp eq i64 %i.au, 16
  br i1 %.not32, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull @.str.9)
          to label %.invoke unwind label %bb.r

.invoke:                                          ; preds = %bb.k, %bb.q
  %i.aw = phi ptr [ %i.av, %bb.q ], [ %i.ag, %bb.k ]
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.av) #19
  br label %bb.ai

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45:      ; preds = %bb.p
  %i.ay = load <3 x float>, ptr %i.ar, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.sroa.11.0.copyload11 = load float, ptr %.sroa.11.0..sroa_idx, align 4
  store ptr %i.ar, ptr %i.ap, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit46

_ZNSt6vectorIfSaIfEE5clearEv.exit46:              ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45, %bb.o
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.o ], [ %.sroa.11.0.copyload11, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45 ] ; 3 uses
  %i.az = phi <3 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.o ], [ %i.ay, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45 ] ; 11 uses
  %i.ba = load i64, ptr %i.h, align 8
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit46
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp eq ptr %i.bd, null                 ; 2 uses
  br i1 %i.be, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6Assimp11X3DImporter23ParseHelper_Group_BeginEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bg = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 0, ptr noundef null)
          to label %bb.w unwind label %bb.u       ; 0 uses

bb.w:                                             ; preds = %bb.v
  br i1 %i.be, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.bh = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.y unwind label %bb.u

bb.y:                                             ; preds = %bb.x
  br i1 %i.bh, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.ag unwind label %bb.u

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit46
  invoke void @_ZN6Assimp11X3DImporter23ParseHelper_Group_BeginEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.m

bb.ab:                                            ; preds = %bb.aa
  %i.bi = load i64, ptr %i.j, align 8
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ad unwind label %bb.m

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bn = load float, ptr %6, align 8             ; 3 uses
  %i.bo = load <2 x float>, ptr %i.e, align 4     ; 2 uses
  %i.bp = load float, ptr %i.f, align 8
  %i.bq = load <2 x float>, ptr %4, align 8       ; 4 uses
  %11 = extractelement <2 x float> %i.bq, i64 0
  %12 = extractelement <2 x float> %i.bo, i64 0   ; 2 uses
  %i.br = shufflevector <2 x float> %i.bo, <2 x float> %i.bq, <4 x i32> <i32 0, i32 2, i32 1, i32 1>
  %13 = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bs = shufflevector <4 x float> <float 1.000000e+00, float poison, float 0.000000e+00, float 1.000000e+00>, <4 x float> %13, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.bt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> zeroinitializer, <4 x float> %i.bs) ; 7 uses
  %14 = extractelement <4 x float> %i.bt, i64 1
  %i.bu = call noundef float @cosf(float noundef %.sroa.8.0) #19 ; 4 uses
  %i.bv = call noundef float @sinf(float noundef %.sroa.8.0) #19 ; 2 uses
  %i.bw = extractelement <4 x float> %i.an, i64 2 ; 5 uses
  %15 = fmul float %i.bw, %i.bv                   ; 2 uses
  %16 = extractelement <2 x float> %i.am, i64 0
  %i.bx = extractelement <2 x float> %i.am, i64 1
  %17 = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.by = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %17, %i.bz             ; 3 uses
  %18 = extractelement <2 x float> %i.ca, i64 0
  %i.cb = fneg <2 x float> %i.ca
  %i.cc = insertelement <4 x float> poison, float %15, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %i.bu, i64 1
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x float> %i.cd, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cf = extractelement <2 x float> %i.ca, i64 1
  %i.cg = call noundef float @cosf(float noundef %.sroa.11.0) #19 ; 3 uses
  %i.ch = call noundef float @sinf(float noundef %.sroa.11.0) #19
  %i.ci = fsub float 1.000000e+00, %i.cg          ; 2 uses
  %20 = extractelement <3 x float> %i.az, i64 0
  %21 = extractelement <3 x float> %i.az, i64 2   ; 2 uses
  %22 = extractelement <3 x float> %i.az, i64 1
  %23 = shufflevector <3 x float> %i.az, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %24 = insertelement <4 x float> poison, float %i.cg, i64 0 ; 2 uses
  %25 = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cj = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x float> %25, %i.ck             ; 2 uses
  %26 = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %27 = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> zeroinitializer
  %28 = shufflevector <3 x float> %i.az, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.cm = fmul float %21, %i.ci
  %i.cn = load float, ptr %i.d, align 8           ; 2 uses
  %i.co = fneg float %.sroa.11.0                  ; 2 uses
  %i.cp = call noundef float @cosf(float noundef %i.co) #19 ; 4 uses
  %i.cq = call noundef float @sinf(float noundef %i.co) #19 ; 3 uses
  %i.cr = fsub float 1.000000e+00, %i.cp
  %29 = shufflevector <3 x float> %i.az, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.cs = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.cq, i64 1
  %30 = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cu = fmul <4 x float> %29, %30               ; 4 uses
  %i.cv = fneg <4 x float> %i.cu                  ; 3 uses
  %31 = shufflevector <4 x float> %24, <4 x float> %i.cv, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %32 = shufflevector <4 x float> %31, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 5, i32 6>
  %i.cw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %23, <4 x float> %32) ; 4 uses
  %33 = shufflevector <4 x float> %24, <4 x float> %i.cv, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %34 = shufflevector <4 x float> %33, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %35 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %28, <4 x float> %34) ; 4 uses
  %36 = fmul float %22, %i.cq                     ; 2 uses
  %37 = fmul float %20, %i.cq                     ; 2 uses
  %38 = fneg float %37
  %39 = fneg float %36
  %40 = load float, ptr %i.a, align 4             ; 2 uses
  %41 = fsub float 1.000000e+00, %i.bu            ; 2 uses
  %42 = insertelement <2 x float> poison, float %41, i64 0
  %43 = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %44 = shufflevector <2 x float> %42, <2 x float> poison, <4 x i32> zeroinitializer
  %45 = fmul <4 x float> %43, %44                 ; 3 uses
  %i.cx = extractelement <4 x float> %45, i64 0   ; 3 uses
  %46 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %45, <4 x float> %i.an, <4 x float> %19) ; 4 uses
  %i.cy = extractelement <4 x float> %45, i64 1
  %i.cz = load float, ptr %5, align 8             ; 4 uses
  %i.da = load float, ptr %i.c, align 4           ; 3 uses
  %47 = load float, ptr %i.b, align 8             ; 5 uses
  %i.db = call float @llvm.fmuladd.f32(float %i.bn, float 0.000000e+00, float 1.000000e+00)
  %48 = call float @llvm.fmuladd.f32(float %i.bn, float 0.000000e+00, float 0.000000e+00) ; 4 uses
  %49 = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.dc = insertelement <4 x float> %49, float %40, i64 0
  %i.dd = insertelement <4 x float> %i.dc, float %48, i64 1
  %i.de = fmul <4 x float> %i.dd, zeroinitializer ; 2 uses
  %i.df = extractelement <4 x float> %i.de, i64 0
  %50 = fadd float %11, %i.df
  %i.dg = call float @llvm.fmuladd.f32(float %47, float 0.000000e+00, float %50)
  %51 = fadd float %i.bn, %i.dg                   ; 2 uses
  %i.dh = call float @llvm.fmuladd.f32(float %12, float 0.000000e+00, float 0.000000e+00) ; 3 uses
  %52 = call float @llvm.fmuladd.f32(float %47, float 0.000000e+00, float %14)
  %53 = fadd float %12, %52                       ; 2 uses
  %54 = shufflevector <4 x float> %13, <4 x float> %i.bt, <4 x i32> <i32 0, i32 poison, i32 poison, i32 6>
  %55 = insertelement <4 x float> %54, float %i.db, i64 1
  %56 = insertelement <4 x float> %55, float %i.dh, i64 2 ; 2 uses
  %57 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %56, <4 x float> zeroinitializer, <4 x float> %i.de) ; 2 uses
  %i.di = extractelement <4 x float> %57, i64 0
  %58 = fadd float %47, %i.di
  %59 = fadd float %i.bp, %58                     ; 2 uses
  %60 = fneg float %15
  %i.dj = call float @llvm.fmuladd.f32(float %i.cx, float %16, float %i.bu)
  %i.dk = call float @llvm.fmuladd.f32(float %i.cx, float %i.bx, float %60)
  %61 = call float @llvm.fmuladd.f32(float %i.cx, float %i.bw, float %18)
  %i.dl = call float @llvm.fmuladd.f32(float %i.cy, float %i.bw, float %i.cf)
  %i.dm = fmul float %i.bw, %41
  %i.dn = call float @llvm.fmuladd.f32(float %i.dm, float %i.bw, float %i.bu)
  %62 = insertelement <4 x float> %i.bt, float %47, i64 0
  %63 = insertelement <4 x float> %62, float %48, i64 1
  %64 = insertelement <4 x float> %63, float %i.dh, i64 2
  %65 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %64, <4 x float> zeroinitializer, <4 x float> %57)
  %66 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %51, i64 1
  %67 = insertelement <4 x float> %66, float %53, i64 2
  %68 = insertelement <4 x float> %67, float %59, i64 3
  %69 = fadd <4 x float> %65, %68                 ; 6 uses
  %70 = shufflevector <4 x float> %i.bt, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 poison, i32 0, i32 2>
  %71 = insertelement <4 x float> %70, float %48, i64 1 ; 3 uses
  %72 = shufflevector <4 x float> %46, <4 x float> poison, <4 x i32> zeroinitializer
  %73 = fmul <4 x float> %71, %72
  %74 = insertelement <4 x float> poison, float %i.dj, i64 0
  %75 = shufflevector <4 x float> %74, <4 x float> poison, <4 x i32> zeroinitializer
  %76 = shufflevector <4 x float> %i.bt, <4 x float> %56, <4 x i32> <i32 poison, i32 5, i32 6, i32 2>
  %77 = insertelement <4 x float> %76, float 0.000000e+00, i64 0 ; 3 uses
  %78 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %75, <4 x float> %77, <4 x float> %73)
  %79 = shufflevector <4 x float> %46, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.do = insertelement <4 x float> %i.bt, float 0.000000e+00, i64 0
  %i.dp = insertelement <4 x float> %i.do, float %48, i64 1
  %i.dq = insertelement <4 x float> %i.dp, float %i.dh, i64 2 ; 3 uses
  %80 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %79, <4 x float> %i.dq, <4 x float> %78)
  %81 = insertelement <4 x float> %69, float %51, i64 1
  %i.dr = insertelement <4 x float> %81, float %53, i64 2
  %82 = insertelement <4 x float> %i.dr, float %59, i64 3 ; 3 uses
  %83 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %82, <4 x float> zeroinitializer, <4 x float> %80) ; 7 uses
  %84 = shufflevector <4 x float> %46, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %85 = fmul <4 x float> %71, %84
  %86 = insertelement <4 x float> poison, float %i.dk, i64 0
  %87 = shufflevector <4 x float> %86, <4 x float> poison, <4 x i32> zeroinitializer
  %88 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %87, <4 x float> %77, <4 x float> %85)
  %89 = insertelement <4 x float> poison, float %i.dl, i64 0
  %90 = shufflevector <4 x float> %89, <4 x float> poison, <4 x i32> zeroinitializer
  %91 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %90, <4 x float> %i.dq, <4 x float> %88)
  %92 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %82, <4 x float> zeroinitializer, <4 x float> %91) ; 6 uses
  %93 = shufflevector <4 x float> %46, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %94 = fmul <4 x float> %71, %93
  %95 = insertelement <4 x float> poison, float %61, i64 0
  %96 = shufflevector <4 x float> %95, <4 x float> poison, <4 x i32> zeroinitializer
  %97 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %96, <4 x float> %77, <4 x float> %94)
  %i.ds = insertelement <4 x float> poison, float %i.dn, i64 0
  %98 = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %99 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %98, <4 x float> %i.dq, <4 x float> %97)
  %100 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %82, <4 x float> zeroinitializer, <4 x float> %99) ; 7 uses
  %101 = call float @llvm.fmuladd.f32(float %i.cm, float %21, float %i.cg)
  %102 = extractelement <4 x float> %92, i64 1
  %103 = fmul float %102, 0.000000e+00
  %104 = extractelement <4 x float> %83, i64 1
  %i.dt = call float @llvm.fmuladd.f32(float %104, float 0.000000e+00, float %103)
  %105 = extractelement <4 x float> %100, i64 1
  %i.du = call float @llvm.fmuladd.f32(float %105, float 0.000000e+00, float %i.dt)
  %106 = extractelement <4 x float> %92, i64 2
  %107 = fmul float %106, 0.000000e+00
  %108 = extractelement <4 x float> %83, i64 2
  %i.dv = call float @llvm.fmuladd.f32(float %108, float 0.000000e+00, float %107)
  %109 = extractelement <4 x float> %100, i64 2
  %i.dw = call float @llvm.fmuladd.f32(float %109, float 0.000000e+00, float %i.dv)
  %110 = extractelement <4 x float> %83, i64 3
  %111 = extractelement <4 x float> %100, i64 3
  %112 = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %113 = fmul <4 x float> %112, %92
  %114 = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer
  %115 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %114, <4 x float> %83, <4 x float> %113)
  %116 = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %117 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %116, <4 x float> %100, <4 x float> %115)
  %118 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %69, <4 x float> zeroinitializer, <4 x float> %117) ; 6 uses
  %i.dx = insertelement <4 x float> %69, float -0.000000e+00, i64 0
  %i.dy = insertelement <4 x float> %118, float %i.du, i64 1
  %119 = insertelement <4 x float> %i.dy, float %i.dw, i64 2
  %120 = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> zeroinitializer
  %121 = fmul <4 x float> %120, %92
  %122 = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %123 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %122, <4 x float> %83, <4 x float> %121)
  %124 = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %125 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %124, <4 x float> %100, <4 x float> %123)
  %126 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %69, <4 x float> zeroinitializer, <4 x float> %125) ; 4 uses
  %127 = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %128 = fmul <4 x float> %127, %92
  %129 = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %130 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %129, <4 x float> %83, <4 x float> %128)
  %131 = insertelement <4 x float> poison, float %101, i64 0
  %132 = shufflevector <4 x float> %131, <4 x float> poison, <4 x i32> zeroinitializer
  %133 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %132, <4 x float> %100, <4 x float> %130)
  %134 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %69, <4 x float> zeroinitializer, <4 x float> %133) ; 6 uses
  %i.dz = extractelement <4 x float> %83, i64 0
  %135 = extractelement <4 x float> %100, i64 0
  %136 = extractelement <4 x float> %69, i64 0
  %137 = fmul <4 x float> %126, zeroinitializer   ; 5 uses
  %i.ea = extractelement <4 x float> %118, i64 1  ; 2 uses
  %138 = extractelement <4 x float> %137, i64 1
  %i.eb = call float @llvm.fmuladd.f32(float %i.cz, float %i.ea, float %138)
  %i.ec = extractelement <4 x float> %134, i64 1  ; 3 uses
  %i.ed = call float @llvm.fmuladd.f32(float %i.ec, float 0.000000e+00, float %i.eb)
  %139 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.cz, i64 0
  %140 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %139, <4 x float> %118, <4 x float> %137) ; 4 uses
  %141 = extractelement <4 x float> %140, i64 1
  %i.ee = call float @llvm.fmuladd.f32(float %i.ec, float 0.000000e+00, float %141)
  %i.ef = extractelement <4 x float> %118, i64 2  ; 2 uses
  %i.eg = extractelement <4 x float> %137, i64 2
  %i.eh = call float @llvm.fmuladd.f32(float %i.cz, float %i.ef, float %i.eg)
  %i.ei = extractelement <4 x float> %134, i64 2  ; 3 uses
  %i.ej = call float @llvm.fmuladd.f32(float %i.ei, float 0.000000e+00, float %i.eh)
  %142 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.da, i64 2
  %143 = shufflevector <4 x float> %142, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %144 = shufflevector <4 x float> %92, <4 x float> %126, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  %145 = fmul <4 x float> %143, %144              ; 4 uses
  %146 = extractelement <4 x float> %145, i64 0
  %147 = call float @llvm.fmuladd.f32(float %110, float 0.000000e+00, float %146)
  %148 = call float @llvm.fmuladd.f32(float %111, float 0.000000e+00, float %147)
  %149 = insertelement <4 x float> %119, float %148, i64 3
  %150 = fadd <4 x float> %i.dx, %149             ; 5 uses
  %151 = extractelement <4 x float> %145, i64 1
  %152 = call float @llvm.fmuladd.f32(float %i.dz, float 0.000000e+00, float %151)
  %153 = call float @llvm.fmuladd.f32(float %135, float 0.000000e+00, float %152)
  %154 = fadd float %136, %153                    ; 4 uses
  %155 = extractelement <4 x float> %150, i64 1   ; 2 uses
  %156 = call float @llvm.fmuladd.f32(float %155, float 0.000000e+00, float %i.ed) ; 2 uses
  %157 = extractelement <4 x float> %145, i64 2
  %158 = call float @llvm.fmuladd.f32(float %i.ea, float 0.000000e+00, float %157)
  %159 = call float @llvm.fmuladd.f32(float %i.ec, float 0.000000e+00, float %158)
  %160 = fadd float %155, %i.ee                   ; 2 uses
  %i.ek = extractelement <4 x float> %150, i64 2  ; 2 uses
  %i.el = call float @llvm.fmuladd.f32(float %i.ek, float 0.000000e+00, float %i.ej) ; 2 uses
  %161 = extractelement <4 x float> %145, i64 3
  %162 = call float @llvm.fmuladd.f32(float %i.ef, float 0.000000e+00, float %161)
  %163 = call float @llvm.fmuladd.f32(float %i.ei, float 0.000000e+00, float %162)
  %164 = extractelement <4 x float> %140, i64 2
  %i.em = call float @llvm.fmuladd.f32(float %i.ei, float 0.000000e+00, float %164)
  %165 = fadd float %i.ek, %i.em                  ; 2 uses
  %166 = extractelement <4 x float> %118, i64 3   ; 2 uses
  %i.en = extractelement <4 x float> %137, i64 3
  %i.eo = call float @llvm.fmuladd.f32(float %i.cz, float %166, float %i.en)
  %167 = extractelement <4 x float> %134, i64 3   ; 3 uses
  %i.ep = call float @llvm.fmuladd.f32(float %167, float 0.000000e+00, float %i.eo)
  %168 = extractelement <4 x float> %150, i64 3   ; 2 uses
  %i.eq = call float @llvm.fmuladd.f32(float %168, float 0.000000e+00, float %i.ep) ; 2 uses
  %169 = extractelement <4 x float> %126, i64 3
  %i.er = fmul float %i.da, %169
  %i.es = call float @llvm.fmuladd.f32(float %166, float 0.000000e+00, float %i.er)
  %170 = call float @llvm.fmuladd.f32(float %167, float 0.000000e+00, float %i.es)
  %171 = extractelement <4 x float> %140, i64 3
  %172 = call float @llvm.fmuladd.f32(float %167, float 0.000000e+00, float %171)
  %173 = fadd float %168, %172                    ; 2 uses
  %i.et = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cn, i64 0
  %174 = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %175 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %134, <4 x float> %174, <4 x float> %140)
  %i.eu = insertelement <4 x float> %150, float %154, i64 0
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> zeroinitializer, <4 x float> %175) ; 5 uses
  %176 = extractelement <4 x float> %126, i64 0
  %i.ew = fmul float %i.da, %176
  %i.ex = extractelement <4 x float> %118, i64 0
  %i.ey = call float @llvm.fmuladd.f32(float %i.ex, float 0.000000e+00, float %i.ew)
  %177 = extractelement <4 x float> %134, i64 0   ; 2 uses
  %i.ez = call float @llvm.fmuladd.f32(float %177, float 0.000000e+00, float %i.ey)
  %i.fa = call float @llvm.fmuladd.f32(float %154, float 0.000000e+00, float %i.ez) ; 2 uses
  %178 = insertelement <4 x float> %137, float %159, i64 1
  %179 = insertelement <4 x float> %178, float %163, i64 2
  %180 = insertelement <4 x float> %179, float %170, i64 3
  %181 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %150, <4 x float> zeroinitializer, <4 x float> %180) ; 5 uses
  %i.fb = extractelement <4 x float> %181, i64 0
  %i.fc = call float @llvm.fmuladd.f32(float %i.cn, float %177, float %i.fb)
  %i.fd = call float @llvm.fmuladd.f32(float %154, float 0.000000e+00, float %i.fc) ; 2 uses
  %182 = fmul <4 x float> %181, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %183 = insertelement <4 x float> %134, float %156, i64 1
  %184 = insertelement <4 x float> %183, float %i.el, i64 2
  %185 = insertelement <4 x float> %184, float %i.eq, i64 3
  %186 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %185, <4 x float> zeroinitializer, <4 x float> %182) ; 2 uses
  %187 = extractelement <4 x float> %186, i64 0
  %i.fe = fadd float %154, %187                   ; 2 uses
  %188 = fmul float %i.fa, 0.000000e+00
  %189 = insertelement <4 x float> %186, float %188, i64 0
  %190 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> zeroinitializer, <4 x float> %189) ; 4 uses
  %i.ff = extractelement <4 x float> %190, i64 1
  %191 = fadd float %160, %i.ff
  %i.fg = extractelement <4 x float> %190, i64 2
  %192 = fadd float %165, %i.fg
  %193 = extractelement <4 x float> %190, i64 3
  %194 = fadd float %173, %193
  %195 = fneg float %40
  %196 = fneg float %47
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %198 = load ptr, ptr %197, align 8              ; 4 uses
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 76
  %200 = insertelement <3 x float> poison, float %i.cr, i64 0
  %201 = shufflevector <3 x float> %200, <3 x float> poison, <3 x i32> zeroinitializer
  %202 = fmul <3 x float> %i.az, %201             ; 3 uses
  %203 = shufflevector <3 x float> %202, <3 x float> poison, <3 x i32> zeroinitializer
  %204 = shufflevector <4 x float> %i.cv, <4 x float> poison, <3 x i32> <i32 poison, i32 3, i32 poison>
  %205 = insertelement <3 x float> %204, float %i.cp, i64 0
  %206 = insertelement <3 x float> %205, float %36, i64 2
  %207 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %203, <3 x float> %i.az, <3 x float> %206) ; 4 uses
  %208 = shufflevector <3 x float> %202, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %209 = shufflevector <3 x float> %i.az, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 2>
  %210 = shufflevector <4 x float> %i.cu, <4 x float> poison, <3 x i32> <i32 3, i32 poison, i32 poison>
  %211 = insertelement <3 x float> %210, float %i.cp, i64 1
  %212 = insertelement <3 x float> %211, float %38, i64 2
  %213 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %208, <3 x float> %209, <3 x float> %212) ; 4 uses
  %214 = shufflevector <3 x float> %i.az, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %215 = insertelement <3 x float> poison, float %39, i64 0
  %i.fh = insertelement <3 x float> %215, float %37, i64 1
  %216 = insertelement <3 x float> %i.fh, float %i.cp, i64 2
  %217 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %202, <3 x float> %214, <3 x float> %216) ; 4 uses
  %i.fi = shufflevector <4 x float> %181, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %218 = fmul <3 x float> %213, %i.fi
  %i.fj = insertelement <3 x float> poison, float %156, i64 0
  %i.fk = shufflevector <3 x float> %i.fj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fl = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %207, <3 x float> %i.fk, <3 x float> %218)
  %219 = shufflevector <4 x float> %i.ev, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.fm = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %217, <3 x float> %219, <3 x float> %i.fl)
  %i.fn = insertelement <3 x float> poison, float %160, i64 0
  %i.fo = shufflevector <3 x float> %i.fn, <3 x float> poison, <3 x i32> zeroinitializer
  %220 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fo, <3 x float> zeroinitializer, <3 x float> %i.fm) ; 6 uses
  %221 = shufflevector <3 x float> %220, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %222 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %195, i64 1 ; 4 uses
  %223 = fmul <2 x float> %221, %222              ; 2 uses
  %224 = fneg <2 x float> %i.bq
  %225 = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %224, <2 x i32> <i32 0, i32 2> ; 4 uses
  %226 = shufflevector <3 x float> %220, <3 x float> poison, <2 x i32> zeroinitializer
  %227 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %225, <2 x float> %226, <2 x float> %223)
  %228 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %196, i64 3 ; 4 uses
  %229 = shufflevector <3 x float> %220, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fp = shufflevector <2 x float> %227, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %230 = insertelement <4 x float> poison, float %191, i64 0
  %231 = shufflevector <4 x float> %230, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %198, i64 92
  %232 = shufflevector <4 x float> %181, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %233 = fmul <3 x float> %213, %232
  %234 = insertelement <3 x float> poison, float %i.el, i64 0
  %235 = shufflevector <3 x float> %234, <3 x float> poison, <3 x i32> zeroinitializer
  %236 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %207, <3 x float> %235, <3 x float> %233)
  %237 = shufflevector <4 x float> %i.ev, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %238 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %217, <3 x float> %237, <3 x float> %236)
  %239 = insertelement <3 x float> poison, float %165, i64 0
  %240 = shufflevector <3 x float> %239, <3 x float> poison, <3 x i32> zeroinitializer
  %241 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %240, <3 x float> zeroinitializer, <3 x float> %238) ; 6 uses
  %i.fq = shufflevector <3 x float> %241, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fr = fmul <2 x float> %i.fq, %222            ; 2 uses
  %i.fs = shufflevector <3 x float> %241, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ft = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %225, <2 x float> %i.fs, <2 x float> %i.fr)
  %i.fu = shufflevector <3 x float> %241, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %242 = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fv = insertelement <4 x float> poison, float %192, i64 0
  %243 = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %198, i64 108
  %244 = shufflevector <4 x float> %181, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %245 = fmul <3 x float> %213, %244
  %246 = insertelement <3 x float> poison, float %i.eq, i64 0
  %247 = shufflevector <3 x float> %246, <3 x float> poison, <3 x i32> zeroinitializer
  %248 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %207, <3 x float> %247, <3 x float> %245)
  %249 = shufflevector <4 x float> %i.ev, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %250 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %217, <3 x float> %249, <3 x float> %248)
  %251 = insertelement <3 x float> poison, float %173, i64 0
  %252 = shufflevector <3 x float> %251, <3 x float> poison, <3 x i32> zeroinitializer
  %253 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %252, <3 x float> zeroinitializer, <3 x float> %250) ; 6 uses
  %254 = shufflevector <3 x float> %253, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %255 = shufflevector <3 x float> %253, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %256 = shufflevector <3 x float> %220, <3 x float> %241, <4 x i32> <i32 poison, i32 0, i32 3, i32 poison>
  %i.fw = insertelement <4 x float> %256, float %i.fd, i64 0
  %257 = shufflevector <4 x float> %i.fw, <4 x float> %255, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %258 = shufflevector <3 x float> %220, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %259 = shufflevector <4 x float> %190, <4 x float> %258, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %260 = shufflevector <3 x float> %241, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %261 = shufflevector <4 x float> %259, <4 x float> %260, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %262 = shufflevector <3 x float> %253, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %263 = shufflevector <4 x float> %261, <4 x float> %262, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %257, <4 x float> zeroinitializer, <4 x float> %263) ; 4 uses
  %264 = shufflevector <3 x float> %253, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %265 = fmul <2 x float> %264, %222              ; 2 uses
  %266 = shufflevector <2 x float> %265, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %267 = shufflevector <3 x float> %220, <3 x float> %241, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %268 = insertelement <4 x float> %267, float %i.fe, i64 2
  %269 = shufflevector <4 x float> %268, <4 x float> %254, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %270 = shufflevector <2 x float> %223, <2 x float> %i.fr, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %271 = shufflevector <4 x float> %270, <4 x float> %i.fx, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %272 = shufflevector <4 x float> %271, <4 x float> %266, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %273 = fadd <4 x float> %269, %272              ; 4 uses
  %274 = shufflevector <4 x float> %273, <4 x float> %i.fx, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %275 = shufflevector <4 x float> %274, <4 x float> %i.fp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %276 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %228, <4 x float> %229, <4 x float> %275)
  %277 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %231, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %276)
  store <4 x float> %277, ptr %199, align 4
  %278 = shufflevector <4 x float> %273, <4 x float> %i.fx, <4 x i32> <i32 1, i32 6, i32 poison, i32 poison>
  %279 = shufflevector <4 x float> %278, <4 x float> %242, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %280 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %228, <4 x float> %i.fu, <4 x float> %279)
  %281 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %243, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %280)
  store <4 x float> %281, ptr %.sroa.57.0..sroa_idx, align 4
  %i.fy = shufflevector <3 x float> %253, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %225, <2 x float> %i.fy, <2 x float> %265)
  %i.ga = shufflevector <3 x float> %253, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %282 = shufflevector <4 x float> %273, <4 x float> %i.fx, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.gb = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x float> %282, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %228, <4 x float> %i.ga, <4 x float> %i.gc)
  %i.ge = insertelement <4 x float> poison, float %194, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gd)
  store <4 x float> %i.gg, ptr %.sroa.110.0..sroa_idx, align 4
  %.sroa.163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %198, i64 124
  %283 = insertelement <3 x float> poison, float %i.fa, i64 0
  %284 = shufflevector <3 x float> %283, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gh = fmul <3 x float> %213, %284
  %285 = shufflevector <4 x float> %i.ev, <4 x float> poison, <3 x i32> zeroinitializer
  %i.gi = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %207, <3 x float> %285, <3 x float> %i.gh)
  %286 = insertelement <3 x float> poison, float %i.fd, i64 0
  %i.gj = shufflevector <3 x float> %286, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gk = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %217, <3 x float> %i.gj, <3 x float> %i.gi)
  %i.gl = insertelement <3 x float> poison, float %i.fe, i64 0
  %i.gm = shufflevector <3 x float> %i.gl, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gn = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gm, <3 x float> zeroinitializer, <3 x float> %i.gk) ; 5 uses
  %i.go = extractelement <3 x float> %i.gn, i64 1
  %i.gp = extractelement <3 x float> %i.gn, i64 0 ; 2 uses
  %i.gq = call float @llvm.fmuladd.f32(float %i.gp, float 0.000000e+00, float %i.go)
  %i.gr = shufflevector <3 x float> %i.gn, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gs = fmul <2 x float> %i.gr, %222            ; 2 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 0
  %i.gu = fadd float %i.gp, %i.gt
  %i.gv = shufflevector <3 x float> %i.gn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %225, <2 x float> %i.gv, <2 x float> %i.gs)
  %i.gx = shufflevector <3 x float> %i.gn, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gy = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.gz = insertelement <4 x float> %i.gy, float %i.gq, i64 1
  %i.ha = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hb = shufflevector <4 x float> %i.gz, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %228, <4 x float> %i.gx, <4 x float> %i.hb)
  %287 = shufflevector <4 x float> %273, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %287, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.hc)
  store <4 x float> %i.hd, ptr %.sroa.163.0..sroa_idx, align 4
  %i.he = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ae unwind label %bb.m

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.he, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.ag unwind label %bb.m

bb.ag:                                            ; preds = %bb.w, %bb.y, %bb.z, %bb.ae, %bb.af
  %i.hf = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.hl = load ptr, ptr %8, align 8               ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.i
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.hn = load i64, ptr %i.i, align 8
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.hp = load ptr, ptr %7, align 8               ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.g
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hr = load i64, ptr %i.g, align 8
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.ai:                                            ; preds = %bb.u, %bb.r, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.aj, %bb.n ], [ %i.ax, %bb.r ], [ %i.bf, %bb.u ]
  %i.ht = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i69 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIfSaIfEED2Ev.exit70, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hy) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit70

_ZNSt6vectorIfSaIfEED2Ev.exit70:                  ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit70, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit70 ], [ %i.ah, %bb.l ]
  %i.hz = load ptr, ptr %8, align 8               ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.i
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ak
  %i.ib = load i64, ptr %i.i, align 8
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.id = load ptr, ptr %7, align 8               ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.g
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.if = load i64, ptr %i.g, align 8
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #20
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.b = load ptr, ptr %0, align 8, !noalias !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !9 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !alias.scope !10
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !10
  store i8 0, ptr %i.e, align 8, !alias.scope !10
  %i.g = add i64 %i.d, 44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g)
end_hunk_0
