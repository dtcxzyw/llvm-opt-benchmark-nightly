inline.NumInlined: 357
inline.NumDeleted: 123
begin_hunk_0_@_ZN6Assimp11AMFImporter16ParseNode_VolumeERN4pugi8xml_nodeE:bb.a
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn31.pn
}

declare void @_ZN6Assimp11AMFImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind writable sret(%"class.pugi::xml_object_range") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11AMFImporter16ParseNode_VertexERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %3 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #15 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 13, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.g, align 8
  store i8 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.i, ptr %i.j, align 8
  store ptr %i.i, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %i.k, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV9AMFVertex, i64 16), ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.l = tail call ptr @_ZNK4pugi8xml_node5childEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4)
  store ptr %i.l, ptr %2, align 8
  %i.m = tail call noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.m, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp11AMFImporter22ParseHelper_Node_EnterEP18AMFNodeElementBase(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.a)
  %i.n = call noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN6Assimp11AMFImporter15ParseNode_ColorERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.o = call ptr @_ZNK4pugi8xml_node5childEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5)
  store ptr %i.o, ptr %3, align 8
  %i.p = call noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %i.p, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @_ZN6Assimp11AMFImporter21ParseNode_CoordinatesERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @_ZN6Assimp11AMFImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN6Assimp11AMFImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %i.n, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.a, %bb.e
  %i.q = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.a, ptr %i.t, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r) #16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.a, ptr %i.z, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN6Assimp11AMFImporter15ParseNode_ColorERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11AMFImporter21ParseNode_CoordinatesERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_text", align 8    ; 4 uses
  %3 = alloca %"class.pugi::xml_text", align 8    ; 4 uses
  %4 = alloca %"class.pugi::xml_text", align 8    ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %6 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %7 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #15 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.e, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.k, ptr %i.l, align 8
  store ptr %i.k, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV14AMFCoordinates, i64 16), ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store <3 x float> zeroinitializer, ptr %i.n, align 8
  tail call void @_ZN6Assimp11AMFImporter22ParseHelper_Node_EnterEP18AMFNodeElementBase(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.q = load <2 x ptr>, ptr %5, align 16
  store <2 x ptr> %i.q, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = load <2 x ptr>, ptr %i.r, align 16
  store <2 x ptr> %i.s, ptr %7, align 16
  %i.t = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN6Assimp11AMFImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  br label %bb.m

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.x = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 4 uses
  %i.y = icmp uge ptr %i.x, inttoptr (i64 65 to ptr)
  %i.z = icmp ule ptr %i.x, inttoptr (i64 90 to ptr)
  %or.cond.i = and i1 %i.y, %i.z
  %.idx.i = select i1 %or.cond.i, i64 32, i64 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i ; 3 uses
  store ptr %i.u, ptr %8, align 8
  %i.ab = icmp eq ptr %i.x, null
  br i1 %i.ab, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #17
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.ac, ptr %i.a, align 8
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %8, align 8
  %i.af = load i64, ptr %i.a, align 8
  store i64 %i.af, ptr %i.u, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.d
  %i.ag = phi ptr [ %i.ae, %.noexc.i ], [ %i.u, %bb.d ] ; 2 uses
  switch i64 %i.ac, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.aa, align 1
  store i8 %i.ah, ptr %i.ag, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ai = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ai, ptr %i.v, align 8
  %i.aj = load ptr, ptr %8, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.al = load i64, ptr %i.v, align 8
  %cond = icmp eq i64 %i.al, 1
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE14getValueAsRealERS2_Rf.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.g
  %i.am = load ptr, ptr %8, align 8               ; 3 uses
  %lhsc = load i8, ptr %i.am, align 1
  %i.an = icmp eq i8 %lhsc, 120
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread46

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ao = invoke noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  br i1 %i.ao, label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE14getValueAsRealERS2_Rf.exit, label %bb.h

bb.h:                                             ; preds = %.noexc24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ap = invoke ptr @_ZNK4pugi8xml_node4textEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc25 unwind label %bb.i

.noexc25:                                         ; preds = %bb.h
  store ptr %i.ap, ptr %4, align 8
  %i.aq = invoke noundef float @_ZNK4pugi8xml_text8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %4, float noundef 0.000000e+00)
          to label %.noexc26 unwind label %bb.i

.noexc26:                                         ; preds = %.noexc25
  store float %i.aq, ptr %i.n, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE14getValueAsRealERS2_Rf.exit

bb.i:                                             ; preds = %.noexc38, %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread, %.noexc31, %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread, %.noexc25, %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %8, align 8               ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.u
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.au = load i64, ptr %i.u, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %i.ar

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread46: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %lhsc55 = load i8, ptr %i.am, align 1
  %i.aw = icmp eq i8 %lhsc55, 121
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread47

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread46
  %i.ax = invoke noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc30 unwind label %bb.i

.noexc30:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread
  br i1 %i.ax, label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE14getValueAsRealERS2_Rf.exit, label %bb.j

bb.j:                                             ; preds = %.noexc30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ay = invoke ptr @_ZNK4pugi8xml_node4textEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc31 unwind label %bb.i

.noexc31:                                         ; preds = %bb.j
  store ptr %i.ay, ptr %3, align 8
  %i.az = invoke noundef float @_ZNK4pugi8xml_text8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef 0.000000e+00)
          to label %.noexc32 unwind label %bb.i

.noexc32:                                         ; preds = %.noexc31
  store float %i.az, ptr %i.o, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE14getValueAsRealERS2_Rf.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread47: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread46
  %lhsc56 = load i8, ptr %i.am, align 1
  %i.ba = icmp eq i8 %lhsc56, 122
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread, label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE14getValueAsRealERS2_Rf.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread47
  %i.bb = invoke noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc37 unwind label %bb.i

.noexc37:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread
  br i1 %i.bb, label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE14getValueAsRealERS2_Rf.exit, label %bb.k

bb.k:                                             ; preds = %.noexc37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.bc = invoke ptr @_ZNK4pugi8xml_node4textEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc38 unwind label %bb.i

.noexc38:                                         ; preds = %bb.k
  store ptr %i.bc, ptr %2, align 8
  %i.bd = invoke noundef float @_ZNK4pugi8xml_text8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %2, float noundef 0.000000e+00)
          to label %.noexc39 unwind label %bb.i

.noexc39:                                         ; preds = %.noexc38
  store float %i.bd, ptr %i.p, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE14getValueAsRealERS2_Rf.exit

_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE14getValueAsRealERS2_Rf.exit: ; preds = %bb.g, %.noexc39, %.noexc37, %.noexc32, %.noexc30, %.noexc26, %.noexc24, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread47
  %i.be = load ptr, ptr %8, align 8               ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.u
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE14getValueAsRealERS2_Rf.exit
  %i.bg = load i64, ptr %i.u, align 8
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE14getValueAsRealERS2_Rf.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.bi = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  %i.bj = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  br i1 %i.bj, label %bb.c, label %._crit_edge

bb.l:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #15 ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 2, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i64 0, ptr %i.br, align 8
  store i8 0, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store ptr %i.bl, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 56 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  store ptr %i.bt, ptr %i.bu, align 8
  store ptr %i.bt, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  store i64 0, ptr %i.bv, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV14AMFCoordinates, i64 16), ptr %i.bn, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store <3 x float> zeroinitializer, ptr %i.bw, align 8
  %i.bx = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.bn, ptr %i.by, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.bm) #16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 72 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bz, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.0 = phi ptr [ null, %bb.l ], [ %i.c, %._crit_edge ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cd = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %.0, ptr %i.ce, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.cc) #16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cf, align 8
  ret void
}

declare ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN6Assimp11AMFImporter25Throw_MoreThanOnceDefinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11AMFImporter18ParseNode_TriangleERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %4 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %5 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #15 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 10, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.h, align 8
  store i8 0, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.j, ptr %i.k, align 8
  store ptr %i.j, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %i.l, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV11AMFTriangle, i64 16), ptr %i.b, align 8
  %i.m = tail call noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.m, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp11AMFImporter22ParseHelper_Node_EnterEP18AMFNodeElementBase(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.n, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.p = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.p, ptr %4, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load <2 x ptr>, ptr %i.q, align 16
  store <2 x ptr> %i.r, ptr %5, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.c
  %.025 = phi i1 [ false, %bb.c ], [ %.126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ] ; 10 uses
  %i.x = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.x, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  invoke void @_ZN6Assimp11AMFImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
          to label %bb.ag unwind label %bb.ah

bb.g:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.i:                                             ; preds = %bb.e
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.j unwind label %bb.u       ; 6 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ab = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.k unwind label %bb.v       ; 4 uses

bb.k:                                             ; preds = %bb.j
  store ptr %i.s, ptr %6, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.ad, ptr %i.a, align 8
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.m
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc40 unwind label %.loopexit ; 2 uses

.noexc40:                                         ; preds = %.noexc.i
  store ptr %i.af, ptr %6, align 8
  %i.ag = load i64, ptr %i.a, align 8
  store i64 %i.ag, ptr %i.s, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc40, %bb.m
  %i.ah = phi ptr [ %i.af, %.noexc40 ], [ %i.s, %bb.m ] ; 2 uses
  switch i64 %i.ad, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.ab, align 1
  store i8 %i.ai, ptr %i.ah, align 1
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ab, i64 %i.ad, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.aj, ptr %i.t, align 8
  %i.ak = load ptr, ptr %6, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 0, ptr %i.al, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.am = load i64, ptr %i.t, align 8             ; 4 uses
  switch i64 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread73 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.p
  %i.an = load ptr, ptr %6, align 8               ; 2 uses
  %i.ao = load i32, ptr %i.an, align 1
  %i.ap = xor i32 %i.ao, 1869377379
  %i.aq = getelementptr i8, ptr %i.an, i64 4
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = xor i32 %i.as, 114
  %i.au = or i32 %i.ap, %i.at
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
end_hunk_0
