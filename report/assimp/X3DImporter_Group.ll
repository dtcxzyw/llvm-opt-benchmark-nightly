inline.NumInlined: 283
inline.NumDeleted: 129
begin_hunk_0_@_ZN6Assimp11X3DImporter15startReadSwitchERN4pugi8xml_nodeE:bb.a
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.e = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  store ptr %i.e, ptr %4, align 8
  %i.f = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc10 unwind label %bb.i

.noexc10:                                         ; preds = %.noexc
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc10
  %i.g = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.18)
          to label %.noexc11 unwind label %bb.i   ; 2 uses

.noexc11:                                         ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #19
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.i       ; 0 uses

bb.c:                                             ; preds = %.noexc10, %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.k = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.c
  store ptr %i.k, ptr %3, align 8
  %i.l = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc15 unwind label %bb.i

.noexc15:                                         ; preds = %.noexc14
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc15
  %i.m = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.18)
          to label %.noexc16 unwind label %bb.i   ; 2 uses

.noexc16:                                         ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #19
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %i.m, i64 noundef %i.o)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %.noexc15, %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.q = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2)
          to label %.noexc20 unwind label %bb.i

.noexc20:                                         ; preds = %bb.e
  store ptr %i.q, ptr %2, align 8
  %i.r = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc21 unwind label %bb.i

.noexc21:                                         ; preds = %.noexc20
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc21
  %i.s = invoke noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.noexc21, %bb.f
  %.0 = phi i32 [ -1, %.noexc21 ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.t = load i64, ptr %i.d, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, ptr noundef null)
          to label %bb.p unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.m, %bb.f, %.noexc20, %bb.e, %.noexc16, %bb.d, %.noexc14, %bb.c, %.noexc11, %bb.b, %.noexc, %bb.a, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %bb.g
  invoke void @_ZN6Assimp11X3DImporter23ParseHelper_Group_BeginEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.y = load i64, ptr %i.b, align 8
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.m, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 141
  store i8 1, ptr %i.af, align 1
  %i.ag = load ptr, ptr %i.ad, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  store i32 %.0, ptr %i.ah, align 8
  %i.ai = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  br i1 %i.ai, label %bb.o, label %bb.p

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
  %4 = alloca %class.aiVector3t, align 16         ; 8 uses
  %5 = alloca %class.aiVector3t, align 16         ; 8 uses
  %6 = alloca %class.aiVector3t, align 16         ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::vector", align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <3 x float> zeroinitializer, ptr %4, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <3 x float> splat (float 1.000000e+00), ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <3 x float> zeroinitializer, ptr %6, align 16
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
  call void @__cxa_free_exception(ptr nonnull %i.af) #19
  br label %bb.ai

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
  call void @__cxa_free_exception(ptr nonnull %i.aq) #19
  br label %bb.ai

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
  %i.bk = load float, ptr %4, align 16            ; 4 uses
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
  %i.dt = load float, ptr %5, align 16
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
  %i.gh = call float @llvm.fmuladd.f32(float %i.cm, float %i.fy, float %i.gg)
  %i.gi = fmul float %i.fx, 0.000000e+00
  %i.gj = call float @llvm.fmuladd.f32(float %i.fx, float 0.000000e+00, float %i.gi)
  %i.gk = call float @llvm.fmuladd.f32(float %i.fy, float 0.000000e+00, float %i.gj)
  %i.gl = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.bp, i64 1
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> zeroinitializer, <2 x float> %i.go)
  %i.gq = load <2 x float>, ptr %6, align 16      ; 4 uses
  %i.gr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> zeroinitializer, <2 x float> zeroinitializer) ; 6 uses
  %i.gs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> zeroinitializer, <2 x float> <float 0.000000e+00, float 1.000000e+00>) ; 4 uses
  %i.gt = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> zeroinitializer, <2 x float> <float 1.000000e+00, float 0.000000e+00>) ; 4 uses
  %i.gv = fadd <2 x float> %i.gq, %i.gp           ; 4 uses
  %i.gw = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x float> %i.gs, %i.gx
  %i.gz = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.gu, <2 x float> %i.gy)
  %i.hc = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.gr, <2 x float> %i.hb)
  %i.hf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gv, <2 x float> zeroinitializer, <2 x float> %i.he) ; 4 uses
  %i.hg = extractelement <2 x float> %i.hf, i64 0 ; 2 uses
  %i.hh = fmul float %i.di, %i.hg
  %i.hi = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x float> %i.gs, %i.hj
  %i.hl = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.gu, <2 x float> %i.hk)
  %i.ho = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.gr, <2 x float> %i.hn)
  %i.hr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gv, <2 x float> zeroinitializer, <2 x float> %i.hq) ; 4 uses
  %i.hs = extractelement <2 x float> %i.hr, i64 0 ; 2 uses
  %i.ht = call float @llvm.fmuladd.f32(float %i.da, float %i.hs, float %i.hh)
  %i.hu = fmul float %i.dk, %i.hg
  %i.hv = call float @llvm.fmuladd.f32(float %i.df, float %i.hs, float %i.hu)
  %i.hw = fmul <2 x float> %i.gs, zeroinitializer
  %i.hx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> zeroinitializer, <2 x float> %i.hw)
  %i.hy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> zeroinitializer, <2 x float> %i.hx)
  %i.hz = shufflevector <2 x float> %i.gs, <2 x float> %i.gr, <2 x i32> <i32 1, i32 2>
  %i.ia = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x float> %i.hz, %i.ib
  %i.id = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = shufflevector <2 x float> %i.gr, <2 x float> %i.gu, <2 x i32> <i32 1, i32 2>
  %i.ig = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.if, <2 x float> %i.ic)
  %i.ih = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.gt, <2 x float> %i.ig)
  %i.ik = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.il = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> zeroinitializer, <2 x float> %i.ij) ; 5 uses
  %i.im = fadd <2 x float> %i.hy, %i.gv           ; 2 uses
  %i.in = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.io = extractelement <2 x float> %i.il, i64 0
  %i.ip = fmul <2 x float> %i.hf, zeroinitializer
  %i.iq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> zeroinitializer, <2 x float> %i.ip)
  %i.ir = extractelement <2 x float> %i.il, i64 1
  %i.is = call float @llvm.fmuladd.f32(float %i.dq, float %i.ir, float %i.hv)
  %i.it = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.in, <2 x float> zeroinitializer, <2 x float> %i.iq)
  %i.iu = extractelement <2 x float> %i.hf, i64 1 ; 2 uses
  %i.iv = fmul float %i.di, %i.iu
  %i.iw = extractelement <2 x float> %i.hr, i64 1 ; 2 uses
  %i.ix = call float @llvm.fmuladd.f32(float %i.da, float %i.iw, float %i.iv)
  %i.iy = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.iz = insertelement <2 x float> %i.iy, float %i.ht, i64 1
  %i.ja = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.il, <2 x float> %i.iz)
  %i.jb = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.jc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> zeroinitializer, <2 x float> %i.ja) ; 3 uses
  %i.jd = fmul float %i.dk, %i.iu
  %i.je = call float @llvm.fmuladd.f32(float %i.df, float %i.iw, float %i.jd)
  %i.jf = call float @llvm.fmuladd.f32(float %i.dq, float %i.io, float %i.je)
  %i.jg = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jh = insertelement <2 x float> %i.jg, float %i.is, i64 1
  %i.ji = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> zeroinitializer, <2 x float> %i.jh) ; 2 uses
  %i.jj = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.jk = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jl = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jn = fmul <2 x float> %i.jl, %i.jm
  %i.jo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.jk, <2 x float> %i.jn)
  %i.jp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.il, <2 x float> %i.jo)
  %i.jq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> zeroinitializer, <2 x float> %i.jp) ; 4 uses
  %i.jr = fadd <2 x float> %i.im, %i.it           ; 2 uses
  %i.js = fmul <2 x float> %i.ji, zeroinitializer ; 2 uses
  %i.jt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> zeroinitializer, <2 x float> %i.js) ; 2 uses
  %i.ju = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.jc, <2 x float> %i.js)
  %i.jv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jq, <2 x float> zeroinitializer, <2 x float> %i.ju)
  %i.jw = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.jx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> zeroinitializer, <2 x float> %i.jv) ; 5 uses
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.jz = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kb = fmul <2 x float> %i.ka, %i.ji
  %i.kc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> zeroinitializer, <2 x float> %i.kb)
  %i.kd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jq, <2 x float> zeroinitializer, <2 x float> %i.kc)
  %i.ke = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> zeroinitializer, <2 x float> %i.kd) ; 5 uses
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.kg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.jq, <2 x float> %i.jt)
  %i.kh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> zeroinitializer, <2 x float> %i.kg) ; 5 uses
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.kj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jq, <2 x float> zeroinitializer, <2 x float> %i.jt)
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kl = fadd <2 x float> %i.jr, %i.kk           ; 5 uses
  %i.km = extractelement <2 x float> %i.ke, i64 1
  %i.kn = fmul float %i.fg, %i.km
  %i.ko = extractelement <2 x float> %i.jx, i64 1
  %i.kp = call float @llvm.fmuladd.f32(float %i.fa, float %i.ko, float %i.kn)
  %i.kq = extractelement <2 x float> %i.kh, i64 1
  %i.kr = call float @llvm.fmuladd.f32(float %i.fm, float %i.kq, float %i.kp)
  %i.ks = extractelement <2 x float> %i.kl, i64 0
  %i.kt = call float @llvm.fmuladd.f32(float %i.ks, float 0.000000e+00, float %i.kr) ; 3 uses
  %i.ku = extractelement <2 x float> %i.ke, i64 0
  %i.kv = extractelement <2 x float> %i.jx, i64 0
  %i.kw = extractelement <2 x float> %i.kh, i64 0
  %i.kx = fmul float %i.fg, %i.ku
  %i.ky = call float @llvm.fmuladd.f32(float %i.fa, float %i.kv, float %i.kx)
  %i.kz = call float @llvm.fmuladd.f32(float %i.fm, float %i.kw, float %i.ky)
  %i.la = extractelement <2 x float> %i.kl, i64 1
  %i.lb = call float @llvm.fmuladd.f32(float %i.la, float 0.000000e+00, float %i.kz) ; 3 uses
  %i.lc = fmul <4 x float> %i.fl, %i.kf
  %i.ld = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.jy, <4 x float> %i.lc)
  %i.le = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.ki, <4 x float> %i.ld)
  %i.lf = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.lg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lf, <4 x float> zeroinitializer, <4 x float> %i.le) ; 8 uses
  %i.lh = fmul <2 x float> %i.ke, zeroinitializer
  %i.li = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> zeroinitializer, <2 x float> %i.lh)
  %i.lj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> zeroinitializer, <2 x float> %i.li)
  %i.lk = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ll = fadd <2 x float> %i.kl, %i.lk           ; 4 uses
  %i.lm = shufflevector <4 x float> %i.fl, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ln = shufflevector <4 x float> %i.ff, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.lo = shufflevector <4 x float> %i.fr, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.lp = fmul float %i.kt, 0.000000e+00          ; 2 uses
  %i.lq = extractelement <4 x float> %i.lg, i64 1 ; 2 uses
  %i.lr = fadd float %i.lq, %i.lp
  %i.ls = extractelement <4 x float> %i.lg, i64 0
  %i.lt = call float @llvm.fmuladd.f32(float %i.ls, float 0.000000e+00, float %i.lr)
  %i.lu = extractelement <2 x float> %i.ll, i64 0
  %i.lv = call float @llvm.fmuladd.f32(float %i.lu, float 0.000000e+00, float %i.lt)
  %i.lw = call float @llvm.fmuladd.f32(float %i.lq, float 0.000000e+00, float %i.kt)
  %i.lx = fmul float %i.kt, %i.eh
  %i.ly = fmul float %i.lb, 0.000000e+00          ; 2 uses
  %i.lz = insertelement <4 x float> poison, float %i.lw, i64 0
  %i.ma = insertelement <4 x float> %i.lz, float %i.lp, i64 1
  %i.mb = shufflevector <4 x float> <float -0.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.lg, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.mc = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.md = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.lg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.me = extractelement <4 x float> %i.lg, i64 2
  %i.mf = fmul float %i.lb, %i.eh
  %i.mg = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.eg, i64 1 ; 2 uses
  %i.mh = insertelement <4 x float> poison, float %i.ly, i64 0
  %i.mi = insertelement <4 x float> %i.mh, float %i.mf, i64 1
  %i.mj = shufflevector <4 x float> %i.lg, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7>
  %i.mk = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ml = shufflevector <4 x float> %i.lg, <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 4, i32 2, i32 6, i32 7>
  %i.mm = shufflevector <4 x float> <float -0.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.mc, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  store float %i.lv, ptr %i.ek, align 4
  %.sroa.134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 116
  %i.mn = fadd float %i.bm, %i.bq
  %i.mo = fadd float %i.fw, %i.mn                 ; 4 uses
  %i.mp = fneg float %i.bm                        ; 4 uses
  %i.mq = fadd float %i.br, 1.000000e+00          ; 4 uses
  %i.mr = call float @llvm.fmuladd.f32(float %i.mq, float 0.000000e+00, float %i.cp) ; 4 uses
  %i.ms = call float @llvm.fmuladd.f32(float %i.mq, float 0.000000e+00, float %i.cs) ; 4 uses
  %i.mt = fmul float %i.di, %i.ms
  %i.mu = call float @llvm.fmuladd.f32(float %i.da, float %i.mr, float %i.mt)
  %i.mv = fmul float %i.dk, %i.ms
  %i.mw = call float @llvm.fmuladd.f32(float %i.df, float %i.mr, float %i.mv)
  %i.mx = insertelement <2 x float> poison, float %i.mq, i64 0 ; 2 uses
  %i.my = insertelement <2 x float> %i.mx, float %i.mo, i64 1
  %i.mz = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.na = insertelement <2 x float> %i.mz, float %i.gh, i64 1
  %i.nb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.my, <2 x float> zeroinitializer, <2 x float> %i.na) ; 4 uses
  %i.nc = extractelement <2 x float> %i.nb, i64 0 ; 2 uses
  %i.nd = call float @llvm.fmuladd.f32(float %i.dq, float %i.nc, float %i.mw)
  %i.ne = fmul float %i.dn, %i.ms
  %i.nf = fmul float %i.ms, 0.000000e+00
  %i.ng = call float @llvm.fmuladd.f32(float %i.mr, float 0.000000e+00, float %i.nf)
  %i.nh = call float @llvm.fmuladd.f32(float %i.nc, float 0.000000e+00, float %i.ng)
  %i.ni = call float @llvm.fmuladd.f32(float %i.mo, float 0.000000e+00, float %i.gb) ; 4 uses
  %i.nj = call float @llvm.fmuladd.f32(float %i.mo, float 0.000000e+00, float %i.ge) ; 4 uses
  %i.nk = fadd float %i.gk, %i.mo                 ; 2 uses
  %i.nl = fmul float %i.dk, %i.nj
  %i.nm = call float @llvm.fmuladd.f32(float %i.df, float %i.ni, float %i.nl)
  %i.nn = extractelement <2 x float> %i.nb, i64 1 ; 2 uses
  %i.no = call float @llvm.fmuladd.f32(float %i.dq, float %i.nn, float %i.nm)
  %i.np = insertelement <2 x float> %i.mx, float %i.nk, i64 1 ; 3 uses
  %i.nq = insertelement <2 x float> poison, float %i.nd, i64 0
  %i.nr = insertelement <2 x float> %i.nq, float %i.no, i64 1
  %i.ns = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.np, <2 x float> zeroinitializer, <2 x float> %i.nr) ; 2 uses
  %i.nt = fmul float %i.di, %i.nj
  %i.nu = call float @llvm.fmuladd.f32(float %i.da, float %i.ni, float %i.nt)
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
end_hunk_0
