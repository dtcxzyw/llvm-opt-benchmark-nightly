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
  %10 = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store ptr %i.ac, ptr %i.aa, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.i
  %.sroa.8.0 = phi float [ 0.000000e+00, %bb.i ], [ %.sroa.8.0.copyload18, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.am = phi <2 x float> [ zeroinitializer, %bb.i ], [ %i.ak, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.an = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.i ], [ %10, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
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
  %i.az = phi <3 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.o ], [ %i.ay, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45 ] ; 10 uses
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
  %i.bn = load float, ptr %6, align 8
  %i.bo = load <2 x float>, ptr %i.e, align 4     ; 2 uses
  %i.bp = load float, ptr %i.f, align 8
  %i.bq = load <2 x float>, ptr %4, align 8       ; 4 uses
  %i.br = shufflevector <2 x float> %i.bo, <2 x float> %i.bq, <4 x i32> <i32 0, i32 2, i32 1, i32 1>
  %11 = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x float> <float 1.000000e+00, float poison, float 0.000000e+00, float 1.000000e+00>, <4 x float> %11, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.bt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> zeroinitializer, <4 x float> %i.bs) ; 6 uses
  %i.bu = call noundef float @cosf(float noundef %.sroa.8.0) #19 ; 4 uses
  %i.bv = call noundef float @sinf(float noundef %.sroa.8.0) #19 ; 2 uses
  %12 = fsub float 1.000000e+00, %i.bu            ; 2 uses
  %i.bw = extractelement <4 x float> %i.an, i64 3
  %13 = insertelement <2 x float> poison, float %12, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fmul <2 x float> %i.am, %14               ; 3 uses
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.bx = extractelement <2 x float> %15, i64 0
  %17 = extractelement <2 x float> %i.am, i64 0
  %i.by = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %i.am, %i.bz           ; 2 uses
  %18 = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.cb = fneg <2 x float> %i.ca
  %19 = fmul float %i.bw, %12
  %20 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.cc = insertelement <4 x float> %20, float %19, i64 3
  %21 = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cd = insertelement <4 x float> %18, float %i.bu, i64 3
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %22 = shufflevector <4 x float> %i.ce, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %23 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %21, <4 x float> %22) ; 7 uses
  %24 = extractelement <4 x float> %23, i64 1     ; 2 uses
  %25 = extractelement <4 x float> %23, i64 0     ; 3 uses
  %26 = extractelement <4 x float> %23, i64 3     ; 3 uses
  %27 = extractelement <4 x float> %i.bt, i64 0   ; 2 uses
  %28 = extractelement <3 x float> %i.az, i64 2   ; 3 uses
  %i.cf = extractelement <3 x float> %i.az, i64 1
  %29 = fmul float %25, 0.000000e+00
  %i.cg = call noundef float @cosf(float noundef %.sroa.11.0) #19 ; 4 uses
  %i.ch = call noundef float @sinf(float noundef %.sroa.11.0) #19 ; 2 uses
  %i.ci = fsub float 1.000000e+00, %i.cg          ; 2 uses
  %30 = shufflevector <3 x float> %i.az, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %31 = shufflevector <4 x float> %23, <4 x float> %30, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %32 = insertelement <2 x float> poison, float %i.ci, i64 0
  %33 = shufflevector <3 x float> %i.az, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %34 = shufflevector <2 x float> %32, <2 x float> poison, <4 x i32> zeroinitializer
  %35 = fmul <4 x float> %33, %34                 ; 3 uses
  %36 = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %35, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %37 = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x float> %37, %i.ck             ; 3 uses
  %38 = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %39 = fneg <2 x float> %i.cl
  %40 = shufflevector <3 x float> %i.az, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %41 = shufflevector <2 x float> %39, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %42 = extractelement <4 x float> %35, i64 1
  %43 = extractelement <2 x float> %i.cl, i64 1
  %i.cm = fmul float %28, %i.ci
  %44 = load float, ptr %5, align 8               ; 4 uses
  %45 = load float, ptr %i.c, align 4             ; 3 uses
  %i.cn = load float, ptr %i.d, align 8           ; 4 uses
  %i.co = fneg float %.sroa.11.0                  ; 2 uses
  %i.cp = call noundef float @cosf(float noundef %i.co) #19 ; 4 uses
  %i.cq = call noundef float @sinf(float noundef %i.co) #19 ; 2 uses
  %i.cr = fsub float 1.000000e+00, %i.cp
  %46 = fmul float %i.cf, %i.cq                   ; 2 uses
  %47 = shufflevector <4 x float> %i.an, <4 x float> %30, <4 x i32> <i32 3, i32 6, i32 6, i32 4>
  %48 = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.cs = insertelement <4 x float> %48, float %i.ch, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cq, i64 2
  %49 = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.cu = fmul <4 x float> %47, %49               ; 5 uses
  %i.cv = fneg <4 x float> %i.cu                  ; 4 uses
  %50 = shufflevector <4 x float> %i.cv, <4 x float> %i.cu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %51 = insertelement <4 x float> %50, float %i.bu, i64 2
  %52 = shufflevector <4 x float> %51, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %i.an, <4 x float> %52) ; 5 uses
  %53 = extractelement <4 x float> %i.cw, i64 1   ; 2 uses
  %54 = extractelement <4 x float> %i.cw, i64 3   ; 4 uses
  %55 = call float @llvm.fmuladd.f32(float %54, float 0.000000e+00, float %29)
  %56 = insertelement <4 x float> poison, float %55, i64 0
  %57 = insertelement <4 x float> %56, float %i.cg, i64 1
  %58 = shufflevector <4 x float> %57, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %59 = shufflevector <4 x float> %58, <4 x float> %38, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %60 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %36, <4 x float> %31, <4 x float> %59) ; 6 uses
  %61 = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %62 = insertelement <4 x float> %61, float %i.cg, i64 1
  %63 = shufflevector <4 x float> %62, <4 x float> %41, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %64 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %40, <4 x float> %63) ; 7 uses
  %65 = extractelement <4 x float> %64, i64 0
  %66 = extractelement <4 x float> %60, i64 1     ; 2 uses
  %67 = extractelement <4 x float> %64, i64 2     ; 2 uses
  %i.cx = extractelement <4 x float> %60, i64 2   ; 2 uses
  %68 = extractelement <4 x float> %64, i64 3     ; 3 uses
  %i.cy = extractelement <4 x float> %60, i64 3   ; 4 uses
  %69 = fneg float %46
  %i.cz = load float, ptr %i.b, align 8           ; 4 uses
  %i.da = load float, ptr %i.a, align 4           ; 2 uses
  %70 = fmul float %i.da, 0.000000e+00            ; 2 uses
  %71 = extractelement <2 x float> %i.bq, i64 0   ; 2 uses
  %72 = fadd float %71, %70
  %i.db = call float @llvm.fmuladd.f32(float %71, float 0.000000e+00, float %70) ; 2 uses
  %73 = fadd float %i.cz, %i.db
  %74 = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.dc = insertelement <4 x float> poison, float %i.db, i64 0
  %i.dd = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.cn, i64 0
  %75 = fmul float %27, %53
  %i.de = fmul <4 x float> %i.bt, %23
  %76 = extractelement <4 x float> %i.de, i64 0
  %77 = extractelement <4 x float> %i.bt, i64 2   ; 4 uses
  %i.df = extractelement <4 x float> %i.bt, i64 3 ; 2 uses
  %78 = fmul float %77, %25
  %79 = fmul float %77, 0.000000e+00
  %80 = call float @llvm.fmuladd.f32(float %77, float 0.000000e+00, float %79)
  %i.dg = call float @llvm.fmuladd.f32(float %i.df, float 0.000000e+00, float %80)
  %81 = fmul float %27, 0.000000e+00
  %i.dh = call float @llvm.fmuladd.f32(float %42, float %28, float %43) ; 3 uses
  %82 = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %83 = insertelement <2 x float> %82, float %i.bn, i64 0 ; 3 uses
  %84 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %83, <2 x float> zeroinitializer, <2 x float> zeroinitializer) ; 4 uses
  %85 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %83, <2 x float> zeroinitializer, <2 x float> <float 1.000000e+00, float 0.000000e+00>) ; 2 uses
  %86 = insertelement <2 x float> poison, float %i.cz, i64 0
  %87 = shufflevector <2 x float> %86, <2 x float> poison, <2 x i32> zeroinitializer
  %88 = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 2, i32 1> ; 2 uses
  %89 = insertelement <2 x float> %88, float %72, i64 0
  %90 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %87, <2 x float> zeroinitializer, <2 x float> %89)
  %91 = fadd <2 x float> %83, %90                 ; 3 uses
  %i.di = extractelement <2 x float> %84, i64 0   ; 6 uses
  %92 = fmul float %i.di, %53
  %93 = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 3, i32 0> ; 2 uses
  %94 = shufflevector <2 x float> %84, <2 x float> %93, <2 x i32> <i32 0, i32 3>
  %95 = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %96 = fmul <2 x float> %94, %95
  %97 = fmul float %i.di, %25
  %98 = extractelement <2 x float> %85, i64 0     ; 3 uses
  %i.dj = call float @llvm.fmuladd.f32(float %54, float %98, float %97)
  %i.dk = call float @llvm.fmuladd.f32(float %26, float %i.di, float %i.dj)
  %99 = extractelement <2 x float> %91, i64 0     ; 3 uses
  %i.dl = call float @llvm.fmuladd.f32(float %99, float 0.000000e+00, float %i.dk) ; 4 uses
  %i.dm = fmul float %i.di, 0.000000e+00
  %100 = call float @llvm.fmuladd.f32(float %98, float 0.000000e+00, float %i.dm)
  %i.dn = call float @llvm.fmuladd.f32(float %i.di, float 0.000000e+00, float %100)
  %101 = fadd float %i.dn, %99                    ; 4 uses
  %102 = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %103 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %102, <2 x float> %85, <2 x float> %96)
  %104 = shufflevector <4 x float> %23, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %105 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %104, <2 x float> %84, <2 x float> %103)
  %106 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %91, <2 x float> zeroinitializer, <2 x float> %105) ; 3 uses
  %107 = shufflevector <2 x float> %106, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %108 = extractelement <2 x float> %84, i64 1    ; 6 uses
  %109 = call float @llvm.fmuladd.f32(float %54, float %108, float %76)
  %110 = call float @llvm.fmuladd.f32(float %26, float %108, float %109)
  %111 = extractelement <2 x float> %91, i64 1    ; 3 uses
  %112 = call float @llvm.fmuladd.f32(float %111, float 0.000000e+00, float %110) ; 4 uses
  %113 = call float @llvm.fmuladd.f32(float %108, float 0.000000e+00, float %81)
  %114 = call float @llvm.fmuladd.f32(float %108, float 0.000000e+00, float %113)
  %115 = fadd float %114, %111                    ; 4 uses
  %116 = extractelement <2 x float> %106, i64 0   ; 2 uses
  %117 = fmul float %116, 0.000000e+00
  %118 = extractelement <2 x float> %106, i64 1   ; 2 uses
  %119 = fmul float %118, 0.000000e+00
  %120 = insertelement <4 x float> %74, float %i.dl, i64 1
  %i.do = insertelement <4 x float> %120, float %112, i64 3
  %i.dp = insertelement <4 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float poison>, float %101, i64 1
  %i.dq = insertelement <4 x float> %i.dp, float %115, i64 3
  %121 = fmul float %65, %116
  %122 = shufflevector <4 x float> %64, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %123 = fmul <4 x float> %122, %107              ; 4 uses
  %124 = fmul float %68, %118
  %125 = fneg float %i.da
  %126 = fneg float %i.cz
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %128 = load ptr, ptr %127, align 8              ; 4 uses
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 76
  %130 = insertelement <3 x float> poison, float %i.cr, i64 0
  %131 = shufflevector <3 x float> %130, <3 x float> poison, <3 x i32> zeroinitializer
  %132 = fmul <3 x float> %i.az, %131             ; 3 uses
  %133 = shufflevector <3 x float> %132, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dr = insertelement <4 x float> poison, float %i.cp, i64 0
  %134 = shufflevector <4 x float> %i.dr, <4 x float> %i.cv, <3 x i32> <i32 0, i32 6, i32 poison>
  %135 = insertelement <3 x float> %134, float %46, i64 2
  %136 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %133, <3 x float> %i.az, <3 x float> %135) ; 4 uses
  %137 = shufflevector <3 x float> %132, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %138 = shufflevector <3 x float> %i.az, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 2>
  %139 = shufflevector <4 x float> %i.cv, <4 x float> %i.cu, <3 x i32> <i32 6, i32 poison, i32 3>
  %140 = insertelement <3 x float> %139, float %i.cp, i64 1
  %141 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %137, <3 x float> %138, <3 x float> %140) ; 4 uses
  %142 = shufflevector <3 x float> %i.az, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %143 = shufflevector <4 x float> %i.cu, <4 x float> poison, <3 x i32> <i32 poison, i32 3, i32 poison>
  %144 = insertelement <3 x float> %143, float %69, i64 0
  %145 = insertelement <3 x float> %144, float %i.cp, i64 2
  %146 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %132, <3 x float> %142, <3 x float> %145) ; 4 uses
  %147 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %125, i64 1 ; 4 uses
  %148 = fneg <2 x float> %i.bq
  %149 = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %148, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.ds = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %126, i64 3 ; 4 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %128, i64 92
  %150 = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %151 = insertelement <2 x float> %88, float 0.000000e+00, i64 1 ; 4 uses
  %152 = fmul <2 x float> %150, %151
  %153 = fmul <2 x float> %95, %151
  %154 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %102, <2 x float> %151, <2 x float> %153)
  %155 = call float @llvm.fmuladd.f32(float %54, float %77, float %78)
  %i.dt = call float @llvm.fmuladd.f32(float %26, float %i.df, float %155)
  %156 = fadd float %i.bp, %73                    ; 2 uses
  %i.du = call float @llvm.fmuladd.f32(float %i.bx, float %17, float %i.bu) ; 3 uses
  %157 = call float @llvm.fmuladd.f32(float %i.du, float %98, float %92)
  %158 = call float @llvm.fmuladd.f32(float %24, float %i.di, float %157)
  %159 = call float @llvm.fmuladd.f32(float %99, float 0.000000e+00, float %158) ; 4 uses
  %i.dv = call float @llvm.fmuladd.f32(float %i.du, float %108, float %75)
  %160 = call float @llvm.fmuladd.f32(float %24, float %108, float %i.dv)
  %i.dw = call float @llvm.fmuladd.f32(float %111, float 0.000000e+00, float %160) ; 4 uses
  %161 = insertelement <2 x float> %93, float 0.000000e+00, i64 1 ; 2 uses
  %162 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %104, <2 x float> %161, <2 x float> %154)
  %163 = fadd float %i.dg, %156                   ; 2 uses
  %164 = insertelement <2 x float> poison, float %i.du, i64 0
  %165 = shufflevector <2 x float> %164, <2 x float> poison, <2 x i32> zeroinitializer
  %166 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %165, <2 x float> %151, <2 x float> %152)
  %167 = shufflevector <4 x float> %23, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %168 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %167, <2 x float> %161, <2 x float> %166)
  %169 = call float @llvm.fmuladd.f32(float %159, float 0.000000e+00, float %117)
  %170 = call float @llvm.fmuladd.f32(float %i.dw, float 0.000000e+00, float %119)
  %i.dx = insertelement <4 x float> %i.dc, float %169, i64 1
  %i.dy = insertelement <4 x float> %i.dx, float %170, i64 3
  %171 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.dy)
  %172 = shufflevector <4 x float> %171, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %173 = fadd <4 x float> %i.dq, %172             ; 4 uses
  %174 = shufflevector <4 x float> %173, <4 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %175 = insertelement <2 x float> %174, float %156, i64 0 ; 3 uses
  %176 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %175, <2 x float> zeroinitializer, <2 x float> %168) ; 5 uses
  %177 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %175, <2 x float> zeroinitializer, <2 x float> %162) ; 5 uses
  %178 = shufflevector <4 x float> %60, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %179 = insertelement <2 x float> %178, float %i.dt, i64 0
  %180 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %175, <2 x float> zeroinitializer, <2 x float> %179) ; 5 uses
  %181 = call float @llvm.fmuladd.f32(float %i.cm, float %28, float %i.cg) ; 4 uses
  %182 = call float @llvm.fmuladd.f32(float %66, float %159, float %121)
  %183 = call float @llvm.fmuladd.f32(float %67, float %i.dl, float %182)
  %184 = call float @llvm.fmuladd.f32(float %101, float 0.000000e+00, float %183) ; 3 uses
  %185 = extractelement <4 x float> %123, i64 1
  %186 = call float @llvm.fmuladd.f32(float %i.cx, float %159, float %185)
  %187 = call float @llvm.fmuladd.f32(float %i.dh, float %i.dl, float %186)
  %188 = call float @llvm.fmuladd.f32(float %101, float 0.000000e+00, float %187) ; 2 uses
  %i.dz = extractelement <4 x float> %123, i64 3
  %189 = call float @llvm.fmuladd.f32(float %i.cy, float %159, float %i.dz)
  %190 = call float @llvm.fmuladd.f32(float %181, float %i.dl, float %189)
  %191 = call float @llvm.fmuladd.f32(float %101, float 0.000000e+00, float %190) ; 4 uses
  %i.ea = extractelement <4 x float> %123, i64 0
  %192 = call float @llvm.fmuladd.f32(float %66, float %i.dw, float %i.ea)
  %193 = call float @llvm.fmuladd.f32(float %67, float %112, float %192)
  %i.eb = call float @llvm.fmuladd.f32(float %115, float 0.000000e+00, float %193) ; 3 uses
  %i.ec = extractelement <4 x float> %123, i64 2
  %194 = call float @llvm.fmuladd.f32(float %i.cx, float %i.dw, float %i.ec)
  %i.ed = call float @llvm.fmuladd.f32(float %i.dh, float %112, float %194)
  %195 = call float @llvm.fmuladd.f32(float %115, float 0.000000e+00, float %i.ed) ; 2 uses
  %196 = call float @llvm.fmuladd.f32(float %i.cy, float %i.dw, float %124)
  %197 = call float @llvm.fmuladd.f32(float %181, float %112, float %196)
  %i.ee = call float @llvm.fmuladd.f32(float %115, float 0.000000e+00, float %197) ; 4 uses
  %i.ef = extractelement <2 x float> %177, i64 0
  %198 = fmul float %68, %i.ef
  %i.eg = extractelement <2 x float> %176, i64 0
  %i.eh = call float @llvm.fmuladd.f32(float %i.cy, float %i.eg, float %198)
  %i.ei = extractelement <2 x float> %180, i64 0
  %i.ej = call float @llvm.fmuladd.f32(float %181, float %i.ei, float %i.eh)
  %199 = call float @llvm.fmuladd.f32(float %163, float 0.000000e+00, float %i.ej) ; 4 uses
  %200 = shufflevector <4 x float> %64, <4 x float> poison, <2 x i32> zeroinitializer
  %201 = fmul <2 x float> %200, %177
  %202 = shufflevector <4 x float> %60, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %203 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %202, <2 x float> %176, <2 x float> %201)
  %204 = shufflevector <4 x float> %64, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %205 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %204, <2 x float> %180, <2 x float> %203)
  %206 = insertelement <2 x float> %174, float %163, i64 0 ; 3 uses
  %207 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %206, <2 x float> zeroinitializer, <2 x float> %205) ; 4 uses
  %208 = shufflevector <4 x float> %64, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %209 = fmul <2 x float> %208, %177
  %210 = shufflevector <4 x float> %60, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %211 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %210, <2 x float> %176, <2 x float> %209)
  %212 = insertelement <2 x float> poison, float %i.dh, i64 0
  %213 = shufflevector <2 x float> %212, <2 x float> poison, <2 x i32> zeroinitializer
  %214 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %213, <2 x float> %180, <2 x float> %211)
  %215 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %206, <2 x float> zeroinitializer, <2 x float> %214) ; 2 uses
  %216 = extractelement <2 x float> %177, i64 1
  %217 = fmul float %68, %216
  %i.ek = extractelement <2 x float> %176, i64 1
  %i.el = call float @llvm.fmuladd.f32(float %i.cy, float %i.ek, float %217)
  %218 = fmul <2 x float> %177, zeroinitializer
  %219 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %176, <2 x float> zeroinitializer, <2 x float> %218)
  %220 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %180, <2 x float> zeroinitializer, <2 x float> %219)
  %221 = fadd <2 x float> %206, %220              ; 5 uses
  %222 = fmul float %188, 0.000000e+00            ; 2 uses
  %i.em = call float @llvm.fmuladd.f32(float %44, float %184, float %222)
  %223 = fmul float %45, %188
  %224 = call float @llvm.fmuladd.f32(float %184, float 0.000000e+00, float %223)
  %225 = call float @llvm.fmuladd.f32(float %191, float 0.000000e+00, float %224)
  %i.en = extractelement <4 x float> %173, i64 1  ; 3 uses
  %i.eo = call float @llvm.fmuladd.f32(float %i.en, float 0.000000e+00, float %225) ; 2 uses
  %226 = call float @llvm.fmuladd.f32(float %184, float 0.000000e+00, float %222) ; 2 uses
  %i.ep = call float @llvm.fmuladd.f32(float %i.cn, float %191, float %226)
  %227 = call float @llvm.fmuladd.f32(float %i.en, float 0.000000e+00, float %i.ep) ; 2 uses
  %i.eq = call float @llvm.fmuladd.f32(float %191, float 0.000000e+00, float %226)
  %228 = fadd float %i.en, %i.eq                  ; 2 uses
  %i.er = fmul float %195, 0.000000e+00           ; 2 uses
  %i.es = call float @llvm.fmuladd.f32(float %44, float %i.eb, float %i.er)
  %229 = insertelement <4 x float> poison, float %181, i64 0
  %230 = insertelement <4 x float> %229, float %191, i64 1
  %231 = shufflevector <2 x float> %180, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %232 = shufflevector <4 x float> %230, <4 x float> %231, <4 x i32> <i32 0, i32 1, i32 5, i32 poison> ; 2 uses
  %i.et = insertelement <4 x float> %232, float %i.ee, i64 3
  %233 = shufflevector <4 x float> %232, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 0, i32 7>
  %234 = insertelement <4 x float> poison, float %i.el, i64 0
  %235 = insertelement <4 x float> %234, float %i.em, i64 1
  %i.eu = insertelement <4 x float> %235, float %i.es, i64 3
  %236 = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %233, <4 x float> %236)
  %237 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %173, <4 x float> zeroinitializer, <4 x float> %i.ev) ; 4 uses
  %i.ew = fmul float %45, %195
  %238 = call float @llvm.fmuladd.f32(float %i.eb, float 0.000000e+00, float %i.ew)
  %239 = call float @llvm.fmuladd.f32(float %i.ee, float 0.000000e+00, float %238)
  %i.ex = extractelement <4 x float> %173, i64 3  ; 3 uses
  %i.ey = call float @llvm.fmuladd.f32(float %i.ex, float 0.000000e+00, float %239) ; 2 uses
  %240 = call float @llvm.fmuladd.f32(float %i.eb, float 0.000000e+00, float %i.er) ; 2 uses
  %i.ez = call float @llvm.fmuladd.f32(float %i.cn, float %i.ee, float %240)
  %i.fa = call float @llvm.fmuladd.f32(float %i.ex, float 0.000000e+00, float %i.ez) ; 2 uses
  %241 = call float @llvm.fmuladd.f32(float %i.ee, float 0.000000e+00, float %240)
  %242 = fadd float %i.ex, %241                   ; 2 uses
  %243 = fmul <2 x float> %215, zeroinitializer   ; 3 uses
  %244 = extractelement <2 x float> %207, i64 0
  %i.fb = extractelement <2 x float> %243, i64 0
  %i.fc = call float @llvm.fmuladd.f32(float %44, float %244, float %i.fb)
  %i.fd = call float @llvm.fmuladd.f32(float %199, float 0.000000e+00, float %i.fc)
  %245 = extractelement <2 x float> %221, i64 0   ; 2 uses
  %246 = call float @llvm.fmuladd.f32(float %245, float 0.000000e+00, float %i.fd) ; 2 uses
  %247 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %44, i64 1
  %248 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %247, <2 x float> %207, <2 x float> %243) ; 2 uses
  %249 = extractelement <2 x float> %248, i64 0
  %250 = call float @llvm.fmuladd.f32(float %199, float 0.000000e+00, float %249)
  %i.fe = fadd float %245, %250                   ; 2 uses
  %251 = shufflevector <4 x float> %237, <4 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %252 = insertelement <2 x float> %251, float %i.cn, i64 0
  %253 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %199, i64 0
  %254 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %252, <2 x float> %253, <2 x float> %248)
  %255 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %221, <2 x float> zeroinitializer, <2 x float> %254) ; 3 uses
  %i.ff = extractelement <2 x float> %207, i64 1
  %256 = extractelement <2 x float> %221, i64 1
  %i.fg = extractelement <2 x float> %243, i64 1
  %257 = call float @llvm.fmuladd.f32(float %i.ff, float 0.000000e+00, float %i.fg)
  %258 = fmul float %i.eo, 0.000000e+00
  %259 = fmul float %i.ey, 0.000000e+00
  %260 = insertelement <4 x float> poison, float %257, i64 0
  %261 = insertelement <4 x float> %260, float %258, i64 1
  %262 = insertelement <4 x float> %261, float %259, i64 3
  %263 = shufflevector <4 x float> %262, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %264 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %237, <4 x float> %263) ; 2 uses
  %265 = extractelement <4 x float> %264, i64 2
  %266 = fadd float %256, %265                    ; 2 uses
  %267 = shufflevector <2 x float> %221, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %268 = insertelement <4 x float> %267, float %227, i64 1
  %269 = insertelement <4 x float> %268, float %246, i64 2
  %270 = insertelement <4 x float> %269, float %i.fa, i64 3
  %271 = insertelement <2 x float> poison, float %45, i64 0
  %272 = shufflevector <2 x float> %271, <2 x float> poison, <2 x i32> zeroinitializer
  %273 = fmul <2 x float> %272, %215
  %274 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %207, <2 x float> zeroinitializer, <2 x float> %273)
  %275 = insertelement <2 x float> %251, float %199, i64 0
  %276 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %275, <2 x float> zeroinitializer, <2 x float> %274)
  %277 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %221, <2 x float> zeroinitializer, <2 x float> %276) ; 3 uses
  %278 = fmul <2 x float> %277, zeroinitializer
  %279 = shufflevector <2 x float> %278, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %280 = shufflevector <4 x float> %264, <4 x float> %279, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %281 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %270, <4 x float> zeroinitializer, <4 x float> %280) ; 5 uses
  %282 = extractelement <4 x float> %281, i64 1
  %283 = fadd float %228, %282
  %284 = extractelement <4 x float> %281, i64 3
  %285 = fadd float %242, %284
  %i.fh = insertelement <3 x float> poison, float %i.eo, i64 0
  %286 = shufflevector <3 x float> %i.fh, <3 x float> poison, <3 x i32> zeroinitializer
  %287 = fmul <3 x float> %141, %286
  %i.fi = shufflevector <4 x float> %237, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %288 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %136, <3 x float> %i.fi, <3 x float> %287)
  %i.fj = insertelement <3 x float> poison, float %227, i64 0
  %i.fk = shufflevector <3 x float> %i.fj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fl = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %146, <3 x float> %i.fk, <3 x float> %288)
  %289 = insertelement <3 x float> poison, float %228, i64 0
  %290 = shufflevector <3 x float> %289, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fm = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %290, <3 x float> zeroinitializer, <3 x float> %i.fl) ; 6 uses
  %291 = extractelement <3 x float> %i.fm, i64 0
  %i.fn = insertelement <3 x float> poison, float %i.ey, i64 0
  %i.fo = shufflevector <3 x float> %i.fn, <3 x float> poison, <3 x i32> zeroinitializer
  %292 = fmul <3 x float> %141, %i.fo
  %293 = shufflevector <4 x float> %237, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %294 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %136, <3 x float> %293, <3 x float> %292)
  %295 = insertelement <3 x float> poison, float %i.fa, i64 0
  %296 = shufflevector <3 x float> %295, <3 x float> poison, <3 x i32> zeroinitializer
  %297 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %146, <3 x float> %296, <3 x float> %294)
  %298 = insertelement <3 x float> poison, float %242, i64 0
  %299 = shufflevector <3 x float> %298, <3 x float> poison, <3 x i32> zeroinitializer
  %300 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %299, <3 x float> zeroinitializer, <3 x float> %297) ; 6 uses
  %301 = extractelement <3 x float> %300, i64 0
  %302 = shufflevector <3 x float> %i.fm, <3 x float> %300, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.fp = shufflevector <2 x float> %255, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %303 = shufflevector <4 x float> %i.fp, <4 x float> %302, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %304 = shufflevector <3 x float> %i.fm, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %305 = shufflevector <4 x float> %281, <4 x float> %304, <4 x i32> <i32 2, i32 poison, i32 5, i32 poison>
  %306 = shufflevector <4 x float> %305, <4 x float> %279, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %307 = shufflevector <3 x float> %300, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %308 = shufflevector <4 x float> %306, <4 x float> %307, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %309 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %303, <4 x float> zeroinitializer, <4 x float> %308) ; 4 uses
  %310 = extractelement <4 x float> %309, i64 0
  %311 = fadd float %i.fe, %310
  %312 = extractelement <4 x float> %281, i64 0
  %313 = extractelement <4 x float> %309, i64 1
  %314 = call float @llvm.fmuladd.f32(float %312, float 0.000000e+00, float %313)
  %315 = fadd float %266, %314
  %i.fq = shufflevector <3 x float> %i.fm, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fr = fmul <2 x float> %i.fq, %147            ; 2 uses
  %316 = extractelement <2 x float> %i.fr, i64 0
  %317 = fadd float %291, %316
  %i.fs = shufflevector <3 x float> %i.fm, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ft = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %149, <2 x float> %i.fs, <2 x float> %i.fr)
  %i.fu = shufflevector <3 x float> %i.fm, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fv = insertelement <4 x float> poison, float %317, i64 0
  %318 = shufflevector <4 x float> %i.fv, <4 x float> %309, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %319 = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %320 = shufflevector <4 x float> %318, <4 x float> %319, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %321 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.fu, <4 x float> %320)
  %322 = insertelement <4 x float> poison, float %283, i64 0
  %323 = shufflevector <4 x float> %322, <4 x float> poison, <4 x i32> zeroinitializer
  %324 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %323, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %321)
  store <4 x float> %324, ptr %129, align 4
  %325 = shufflevector <3 x float> %300, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %326 = fmul <2 x float> %325, %147              ; 2 uses
  %327 = extractelement <2 x float> %326, i64 0
  %328 = fadd float %301, %327
  %329 = shufflevector <3 x float> %300, <3 x float> poison, <2 x i32> zeroinitializer
  %330 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %149, <2 x float> %329, <2 x float> %326)
  %331 = shufflevector <3 x float> %300, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fw = insertelement <4 x float> poison, float %328, i64 0
  %332 = shufflevector <4 x float> %i.fw, <4 x float> %309, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %333 = shufflevector <2 x float> %330, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %334 = shufflevector <4 x float> %332, <4 x float> %333, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %335 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %331, <4 x float> %334)
  %336 = insertelement <4 x float> poison, float %285, i64 0
  %337 = shufflevector <4 x float> %336, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %337, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %335)
  store <4 x float> %i.fx, ptr %.sroa.57.0..sroa_idx, align 4
  %.sroa.110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %128, i64 108
  %338 = shufflevector <2 x float> %277, <2 x float> poison, <3 x i32> zeroinitializer
  %339 = fmul <3 x float> %141, %338
  %340 = insertelement <3 x float> poison, float %246, i64 0
  %341 = shufflevector <3 x float> %340, <3 x float> poison, <3 x i32> zeroinitializer
  %342 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %136, <3 x float> %341, <3 x float> %339)
  %343 = shufflevector <2 x float> %255, <2 x float> poison, <3 x i32> zeroinitializer
  %344 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %146, <3 x float> %343, <3 x float> %342)
  %345 = insertelement <3 x float> poison, float %i.fe, i64 0
  %346 = shufflevector <3 x float> %345, <3 x float> poison, <3 x i32> zeroinitializer
  %347 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %346, <3 x float> zeroinitializer, <3 x float> %344) ; 5 uses
  %348 = extractelement <3 x float> %347, i64 1
  %349 = extractelement <3 x float> %347, i64 0   ; 2 uses
  %350 = call float @llvm.fmuladd.f32(float %349, float 0.000000e+00, float %348)
  %351 = shufflevector <3 x float> %347, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %352 = fmul <2 x float> %351, %147              ; 2 uses
  %353 = extractelement <2 x float> %352, i64 0
  %354 = fadd float %349, %353
  %i.fy = shufflevector <3 x float> %347, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %149, <2 x float> %i.fy, <2 x float> %352)
  %i.ga = shufflevector <3 x float> %347, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %355 = insertelement <4 x float> poison, float %354, i64 0
  %356 = insertelement <4 x float> %355, float %350, i64 1
  %i.gb = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x float> %356, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.ga, <4 x float> %i.gc)
  %i.ge = insertelement <4 x float> poison, float %311, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gd)
  store <4 x float> %i.gg, ptr %.sroa.110.0..sroa_idx, align 4
  %.sroa.163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %128, i64 124
  %357 = shufflevector <2 x float> %277, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.gh = fmul <3 x float> %141, %357
  %358 = shufflevector <2 x float> %255, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.gi = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %136, <3 x float> %358, <3 x float> %i.gh)
  %i.gj = shufflevector <4 x float> %281, <4 x float> poison, <3 x i32> zeroinitializer
  %i.gk = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %146, <3 x float> %i.gj, <3 x float> %i.gi)
  %i.gl = insertelement <3 x float> poison, float %266, i64 0
  %i.gm = shufflevector <3 x float> %i.gl, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gn = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gm, <3 x float> zeroinitializer, <3 x float> %i.gk) ; 5 uses
  %i.go = extractelement <3 x float> %i.gn, i64 1
  %i.gp = extractelement <3 x float> %i.gn, i64 0 ; 2 uses
  %i.gq = call float @llvm.fmuladd.f32(float %i.gp, float 0.000000e+00, float %i.go)
  %i.gr = shufflevector <3 x float> %i.gn, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gs = fmul <2 x float> %i.gr, %147            ; 2 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 0
  %i.gu = fadd float %i.gp, %i.gt
  %i.gv = shufflevector <3 x float> %i.gn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %149, <2 x float> %i.gv, <2 x float> %i.gs)
  %i.gx = shufflevector <3 x float> %i.gn, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gy = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.gz = insertelement <4 x float> %i.gy, float %i.gq, i64 1
  %i.ha = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hb = shufflevector <4 x float> %i.gz, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.gx, <4 x float> %i.hb)
  %359 = insertelement <4 x float> poison, float %315, i64 0
  %360 = shufflevector <4 x float> %359, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %360, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.hc)
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
