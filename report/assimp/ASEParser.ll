inline.NumInlined: 2106
inline.NumDeleted: 832
begin_hunk_0_@_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28: ; preds = %_ZNSt15__new_allocatorIN6Assimp3ASE6CameraEE9constructIS2_JRA8_KcEEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not10.i.i.i = icmp eq ptr %i.e, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ] ; 4 uses
  call void @_ZN6Assimp3ASE8BaseNodeC2EOS1_(ptr noundef nonnull align 8 dereferenceable(356) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(356) %.0911.i.i.i) #27
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 340
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bz, ptr noundef nonnull align 4 dereferenceable(16) %i.ca, i64 16, i1 false), !alias.scope !160
  call void @_ZN6Assimp3ASE8BaseNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(356) %.0911.i.i.i) #27
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 360 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 360 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cb, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !164

_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28
  %.0.lcssa.i.i.i = phi ptr [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ], [ %i.cc, %.lr.ph.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 360 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.d
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.ch, %.lr.ph.i.i.i31 ], [ %i.cd, %_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  %.0911.i.i.i33 = phi ptr [ %i.cg, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  call void @_ZN6Assimp3ASE8BaseNodeC2EOS1_(ptr noundef nonnull align 8 dereferenceable(356) %.012.i.i.i32, ptr noundef nonnull align 8 dereferenceable(356) %.0911.i.i.i33) #27
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 340
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %i.cf, i64 16, i1 false), !alias.scope !165
  call void @_ZN6Assimp3ASE8BaseNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(356) %.0911.i.i.i33) #27
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 360 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 360 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.cg, %i.d
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !164

_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.cd, %_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ch, %.lr.ph.i.i.i31 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.e, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6Assimp3ASE6CameraESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.g
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.cl) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3ASE6CameraESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3ASE6CameraESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.j
  store ptr %i.s, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.c, align 8
  %i.cm = getelementptr inbounds nuw [360 x i8], ptr %i.s, i64 %i.n
  store ptr %i.cm, ptr %i.ci, align 8
  ret void

_ZSt8_DestroyIPN6Assimp3ASE6CameraES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6Assimp3ASE8BaseNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.t) #27
  br label %_ZNSt12_Vector_baseIN6Assimp3ASE6CameraESaIS2_EE13_M_deallocateEPS2_m.exit39

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3ASE6CameraESaIS2_EE13_M_deallocateEPS2_m.exit39
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZSt8_DestroyIPN6Assimp3ASE6CameraES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = mul nuw nsw i64 %i.n, 360
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.co) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3ASE6CameraESaIS2_EE13_M_deallocateEPS2_m.exit39

_ZNSt12_Vector_baseIN6Assimp3ASE6CameraESaIS2_EE13_M_deallocateEPS2_m.exit39: ; preds = %_ZSt8_DestroyIPN6Assimp3ASE6CameraES2_EvT_S4_RSaIT0_E.exit, %_ZSt8_DestroyIPN6Assimp3ASE6CameraES2_EvT_S4_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #29
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.cn

bb.m:                                             ; preds = %bb.k
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #31
  unreachable

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3ASE6CameraESaIS2_EE13_M_deallocateEPS2_m.exit39
  unreachable
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #29
  unreachable

_ZNKSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.r = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !172, !noalias !169
  store <2 x ptr> %i.r, ptr %.012.i.i.i, align 8, !alias.scope !169, !noalias !172
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !172, !noalias !169
  store ptr %i.u, ptr %i.s, align 8, !alias.scope !169, !noalias !172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !172, !noalias !169
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !58

_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.ad, %.lr.ph.i.i.i16 ], [ %i.x, %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  %.0911.i.i.i18 = phi ptr [ %i.ac, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i18, align 8, !alias.scope !177, !noalias !174
  store <2 x ptr> %i.y, ptr %.012.i.i.i17, align 8, !alias.scope !174, !noalias !177
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !177, !noalias !174
  store ptr %i.ab, ptr %i.z, align 8, !alias.scope !174, !noalias !177
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !177, !noalias !174
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 24 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !58

_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.x, %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ad, %.lr.ph.i.i.i16 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseIN6Assimp3ASE10BoneVertexESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ah) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3ASE10BoneVertexESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3ASE10BoneVertexESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ai, ptr %i.ae, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE17_M_realloc_insertIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseIN6Assimp3ASE4BoneESaIS2_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #29
  unreachable

_ZNSt12_Vector_baseIN6Assimp3ASE4BoneESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %10 = shl nuw nsw i64 %7, 5                     ; 2 uses
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #32 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.m, ptr %i.a, align 8
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN6Assimp3ASE4BoneESaIS2_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.o, ptr %i.i, align 8
  %i.p = load i64, ptr %i.a, align 8
  store i64 %i.p, ptr %i.j, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt12_Vector_baseIN6Assimp3ASE4BoneESaIS2_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseIN6Assimp3ASE4BoneESaIS2_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.k, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.s = load i64, ptr %i.a, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %11, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !alias.scope !179, !noalias !182
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !182, !noalias !179 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !182, !noalias !179 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !184
  br label %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !alias.scope !179, !noalias !182
  %i.ae = load i64, ptr %i.y, align 8, !alias.scope !182, !noalias !179
  store i64 %i.ae, ptr %i.w, align 8, !alias.scope !179, !noalias !182
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !182, !noalias !179
  br label %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !alias.scope !179, !noalias !182
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !alias.scope !182, !noalias !179
  store i64 0, ptr %i.ag, align 8, !alias.scope !182, !noalias !179
  store i8 0, ptr %i.y, align 8, !alias.scope !182, !noalias !179
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !185

_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %11, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ak, %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i28, align 8, !alias.scope !186, !noalias !189
  %i.am = load ptr, ptr %.0911.i.i.i29, align 8, !alias.scope !189, !noalias !186 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !189, !noalias !186 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !191
  br label %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i28, align 8, !alias.scope !186, !noalias !189
  %i.at = load i64, ptr %i.an, align 8, !alias.scope !189, !noalias !186
  store i64 %i.at, ptr %i.al, align 8, !alias.scope !186, !noalias !189
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !alias.scope !189, !noalias !186
  br label %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !alias.scope !186, !noalias !189
  store ptr %i.an, ptr %.0911.i.i.i29, align 8, !alias.scope !189, !noalias !186
  store i64 0, ptr %i.av, align 8, !alias.scope !189, !noalias !186
  store i8 0, ptr %i.an, align 8, !alias.scope !189, !noalias !186
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !185

_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ay, %_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6Assimp3ASE4BoneESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bc) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3ASE4BoneESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3ASE4BoneESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.h
  store ptr %11, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %7
  store ptr %i.bd, ptr %i.az, align 8
  ret void

bb.i:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #27 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %10) #28
  invoke void @__cxa_rethrow() #29
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.be

bb.l:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #31
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(736) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::vector<Assimp::ASE::Material>::_Temporary_value", align 8 ; 15 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 736
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i8 0, ptr %i.i, align 8
  call void @_ZN6Assimp3ASE8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(736) %i.i, ptr noundef nonnull align 8 dereferenceable(736) %3)
  %i.j = load ptr, ptr %i.c, align 8              ; 12 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = sdiv exact i64 %i.m, 736                 ; 2 uses
  %i.o = icmp ugt i64 %i.n, %2
  br i1 %i.o, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %.idx = mul i64 %2, -736                        ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 %.idx ; 3 uses
  %.not12.i.i.i.i.i = icmp eq i64 %.idx, 0
  br i1 %.not12.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6Assimp3ASE8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt10_ConstructIN6Assimp3ASE8MaterialEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt10_ConstructIN6Assimp3ASE8MaterialEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.j, %bb.d ] ; 8 uses
  %.sroa.08.013.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt10_ConstructIN6Assimp3ASE8MaterialEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %bb.d ] ; 7 uses
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(736) %.014.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(736) %.sroa.08.013.i.i.i.i.i)
          to label %_ZSt10_ConstructIN6Assimp3ASE8MaterialEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #31
  unreachable

_ZSt10_ConstructIN6Assimp3ASE8MaterialEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3ASE8MaterialE, i64 16), ptr %.014.i.i.i.i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 696
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i.i, i64 696 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  store ptr %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 704
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i.i, i64 704
  %i.x = load ptr, ptr %i.w, align 8
  store ptr %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 712
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i.i, i64 712
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %i.y, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 720
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i.i, i64 720 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 728
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i.i, i64 728
  %i.ag = load i8, ptr %i.af, align 8, !range !32, !noundef !33
  store i8 %i.ag, ptr %i.ae, align 8
  store ptr null, ptr %i.ac, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i.i, i64 736 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 736
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6Assimp3ASE8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !192

_ZSt22__uninitialized_move_aIPN6Assimp3ASE8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit: ; preds = %_ZSt10_ConstructIN6Assimp3ASE8MaterialEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZSt22__uninitialized_move_aIPN6Assimp3ASE8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_move_aIPN6Assimp3ASE8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPN6Assimp3ASE8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, %bb.d
  %i.aj = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPN6Assimp3ASE8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit ], [ %i.j, %bb.d ]
  %i.ak = getelementptr inbounds nuw [736 x i8], ptr %i.aj, i64 %2
  store ptr %i.ak, ptr %i.c, align 8
  %i.al = ptrtoint ptr %i.p to i64
  %i.am = sub i64 %i.al, %i.l                     ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN6Assimp3ASE8MaterialES3_ET0_T_S5_S4_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt22__uninitialized_move_aIPN6Assimp3ASE8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ao = udiv exact i64 %i.am, 736
  br label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %_ZN6Assimp3ASE8MaterialaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.bp, %_ZN6Assimp3ASE8MaterialaSEOS1_.exit.i.i.i.i.i ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i = phi ptr [ %i.aq, %_ZN6Assimp3ASE8MaterialaSEOS1_.exit.i.i.i.i.i ], [ %i.j, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %.079.i.i.i.i.i = phi ptr [ %i.ap, %_ZN6Assimp3ASE8MaterialaSEOS1_.exit.i.i.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.ap = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -736
  %i.aq = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -736
  %i.ar = icmp eq ptr %.0610.i.i.i.i.i, %.079.i.i.i.i.i
  br i1 %i.ar, label %_ZN6Assimp3ASE8MaterialaSEOS1_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i69
  %i.as = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -40 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -40 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -32 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.as, align 8
  store ptr %i.az, ptr %i.at, align 8
  %i.ba = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -32
  %i.bb = load ptr, ptr %i.ba, align 8
  store ptr %i.bb, ptr %i.av, align 8
  %i.bc = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -24
  %i.bd = load ptr, ptr %i.bc, align 8
  store ptr %i.bd, ptr %i.ax, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6Assimp3ASE8MaterialEEEvT_S6_(ptr noundef %i.au, ptr noundef %i.aw)
          to label %_ZSt8_DestroyIPN6Assimp3ASE8MaterialES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i unwind label %bb.h, !inline_history !79

_ZSt8_DestroyIPN6Assimp3ASE8MaterialES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EEaSEOS4_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3ASE8MaterialES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = ptrtoint ptr %i.au to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bg) #28, !inline_history !80
  br label %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EEaSEOS4_.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #31, !inline_history !80
  unreachable

_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZSt8_DestroyIPN6Assimp3ASE8MaterialES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -16
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -8
  %i.bn = load i8, ptr %i.bm, align 8, !range !32, !noundef !33
  %i.bo = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -8
  store i8 %i.bn, ptr %i.bo, align 8
  store ptr null, ptr %i.bj, align 8
  br label %_ZN6Assimp3ASE8MaterialaSEOS1_.exit.i.i.i.i.i

_ZN6Assimp3ASE8MaterialaSEOS1_.exit.i.i.i.i.i:    ; preds = %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EEaSEOS4_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i69
  %i.bp = add nsw i64 %.011.i.i.i.i.i, -1
  %i.bq = icmp sgt i64 %.011.i.i.i.i.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPN6Assimp3ASE8MaterialES3_ET0_T_S5_S4_.exit, !llvm.loop !193

_ZSt13move_backwardIPN6Assimp3ASE8MaterialES3_ET0_T_S5_S4_.exit: ; preds = %_ZN6Assimp3ASE8MaterialaSEOS1_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPN6Assimp3ASE8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.idx126 = mul nuw nsw i64 %2, 736
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %.idx126
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 704
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 728
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 736
  br label %bb.i

bb.i:                                             ; preds = %_ZN6Assimp3ASE8MaterialaSERKS1_.exit.i.i.i, %_ZSt13move_backwardIPN6Assimp3ASE8MaterialES3_ET0_T_S5_S4_.exit
  %.06.i.i.i = phi ptr [ %1, %_ZSt13move_backwardIPN6Assimp3ASE8MaterialES3_ET0_T_S5_S4_.exit ], [ %i.cc, %_ZN6Assimp3ASE8MaterialaSERKS1_.exit.i.i.i ] ; 5 uses
  %i.bv = icmp eq ptr %.06.i.i.i, %i.i
  br i1 %i.bv, label %_ZN6Assimp3ASE8MaterialaSERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 696
  %i.bx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %bb.j
  %i.by = load ptr, ptr %i.bt, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 720
end_hunk_0
