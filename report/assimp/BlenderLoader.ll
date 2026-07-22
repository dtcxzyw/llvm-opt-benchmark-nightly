inline.NumInlined: 3761
inline.NumDeleted: 1782
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EED2Ev:bb.a
_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #27
  br label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EED2Ev.exit

_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #27
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i, !llvm.loop !79

_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #27
  br label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EED2Ev.exit

_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender14ConversionDataC2ERKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(232) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, i8 0, i64 208, i1 false)
  invoke void @_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 0)
          to label %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EEC2Ev.exit unwind label %bb.b

_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EEC2Ev.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false)
  store ptr %1, ptr %i.h, align 8
  ret void

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN6Assimp7Blender9TempArrayISt6vector9aiTextureED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.j) #25
  tail call void @_ZN6Assimp7Blender9TempArrayISt6vector10aiMaterialED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #25
  tail call void @_ZN6Assimp7Blender9TempArrayISt6vector7aiLightED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #25
  tail call void @_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  tail call void @_ZN6Assimp7Blender9TempArrayISt6vector6aiMeshED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #25
  tail call void @_ZNSt3setIPKN6Assimp7Blender6ObjectENS1_13ObjectCompareESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #25
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #27
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i, !llvm.loop !44

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i: ; preds = %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #27
  br label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15BlenderImporter14BuildMaterialsERNS_7Blender14ConversionDataE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.aiString, align 4           ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.aiString, align 4           ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %struct.aiColor3D, align 8          ; 11 uses
  %6 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ne ptr %i.k, null
  %.neg.i.i = sext i1 %i.r to i64
  %i.s = add nsw i64 %i.q, %.neg.i.i
  %i.t = shl nsw i64 %i.s, 5
  %i.u = load ptr, ptr %i.h, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  %i.ab = add nsw i64 %i.t, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.i, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = add nsw i64 %i.ab, %i.ai                ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, 1152921504606846975
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp ult i64 %i.ar, %i.aj
  br i1 %i.as, label %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ap                    ; 3 uses
  %i.ax = shl nuw nsw i64 %i.aj, 3
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #26 ; 4 uses
  %i.az = icmp sgt i64 %i.aw, 0
  br i1 %i.az, label %bb.d, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.an, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.an, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #27
  br label %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ay, ptr %i.g, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store ptr %i.ba, ptr %i.at, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aj
  store ptr %i.bb, ptr %i.al, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE13_M_deallocateEPS1_m.exit.i
  tail call void @_ZN6Assimp15BlenderImporter20BuildDefaultMaterialERNS_7Blender14ConversionDataE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(336) %1)
  %i.bc = load ptr, ptr %i.i, align 8, !noalias !83 ; 2 uses
  %i.bd = load ptr, ptr %i.h, align 8, !noalias !86 ; 2 uses
  %.not7984 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not7984, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit
  %i.be = load ptr, ptr %i.l, align 8, !noalias !83
  %i.bf = load ptr, ptr %i.ac, align 8, !noalias !83
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit
  %.sroa.14.087 = phi ptr [ %i.be, %.preheader.lr.ph ], [ %.sroa.14.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit ] ; 2 uses
  %.sroa.11.086 = phi ptr [ %i.bf, %.preheader.lr.ph ], [ %.sroa.11.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit ] ; 2 uses
  %.sroa.076.085 = phi ptr [ %i.bc, %.preheader.lr.ph ], [ %.sroa.076.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit ] ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.bg, i8 0, i64 76, i1 false)
  %i.bq = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 15 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %bb.f unwind label %bb.s

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit, %_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit
  ret void

bb.f:                                             ; preds = %.preheader
  %i.br = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bs = load ptr, ptr %i.al, align 8
  %.not.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.bq, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bh, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bu, ptr %i.bh, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.bv = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 6 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.i, label %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #28
  unreachable

_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #26 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.by ; 2 uses
  store ptr %i.bq, ptr %i.ch, align 8
  %i.ci = icmp sgt i64 %i.by, 0
  br i1 %i.ci, label %bb.j, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr align 8 %i.bv, i64 %i.by, i1 false)
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.by) #27
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.cg, ptr %i.g, align 8
  store ptr %i.cj, ptr %i.bh, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.ck, ptr %i.al, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.g, %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.cl = load ptr, ptr %.sroa.076.085, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 34 ; 3 uses
  store ptr %i.bi, ptr %4, align 8
  %i.cn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cm) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 %i.cn, ptr %i.d, align 8
  %i.co = icmp ugt i64 %i.cn, 15
  br i1 %i.co, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit
  %i.cp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.cp, ptr %4, align 8
  %i.cq = load i64, ptr %i.d, align 8
  store i64 %i.cq, ptr %i.bi, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit
  %i.cr = phi ptr [ %i.cp, %.noexc.i ], [ %i.bi, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  switch i64 %i.cn, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.cs = load i8, ptr %i.cm, align 1
  store i8 %i.cs, ptr %i.cr, align 1
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr nonnull align 1 %i.cm, i64 %i.cn, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.ct = load i64, ptr %i.d, align 8             ; 2 uses
  store i64 %i.ct, ptr %i.bj, align 8
  %i.cu = load ptr, ptr %4, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.cw = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.cx = trunc i64 %i.cw to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bk, i8 0, i64 1024, i1 false)
  %i.cy = and i64 %i.cw, 4294966272
  %.not.i54 = icmp eq i64 %i.cy, 0
  %spec.select.i = select i1 %.not.i54, i32 %i.cx, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %3, align 4
  %i.cz = load ptr, ptr %4, align 8               ; 3 uses
  %i.da = zext i32 %spec.select.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 1 %i.cz, i64 %i.da, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.da
  store i8 0, ptr %i.db, align 1
  %i.dc = icmp eq ptr %i.cz, %i.bi
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.n
  %i.dd = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.dd)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.de = load i64, ptr %i.bi, align 8
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.df) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.dg = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %3, ptr noundef nonnull @.str.64, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dh = load ptr, ptr %.sroa.076.085, align 8   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1064
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1072
  %i.dk = load float, ptr %i.dj, align 8
  %i.dl = load <2 x float>, ptr %i.di, align 8
  store <2 x float> %i.dl, ptr %5, align 8
  store float %i.dk, ptr %i.bl, align 8
  %i.dm = load ptr, ptr %.sroa.076.085, align 8   ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1064
  %i.do = load float, ptr %i.dn, align 8
  %i.dp = fcmp une float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 1068
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = fcmp une float %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 1072
  %i.du = load float, ptr %i.dt, align 8
  %i.dv = fcmp une float %i.du, 0.000000e+00
  br i1 %i.dv, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dw = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.dx = load ptr, ptr %.sroa.076.085, align 8   ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1116
  %i.dz = load float, ptr %i.dy, align 4          ; 3 uses
  %i.ea = fcmp une float %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 1064
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 1072
  %i.ed = load float, ptr %i.ec, align 8
  %i.ee = fmul float %i.dz, %i.ed
  %7 = load <2 x float>, ptr %i.eb, align 8
  %8 = insertelement <2 x float> poison, float %i.dz, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = fmul <2 x float> %9, %7
  store <2 x float> %10, ptr %6, align 8
  store float %i.ee, ptr %i.bm, align 8
  %i.ef = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %6, i32 noundef 12, ptr noundef nonnull @.str.66, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.pre = load ptr, ptr %.sroa.076.085, align 8
  br label %bb.t

bb.s:                                             ; preds = %.preheader
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 16) #27
  resume { ptr, i32 } %i.eg

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.p
  %i.eh = phi ptr [ %i.dx, %bb.q ], [ %.pre, %bb.r ], [ %i.dm, %bb.p ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1076
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 1084
  %i.ek = load float, ptr %i.ej, align 4
  %i.el = load <2 x float>, ptr %i.ei, align 4
  store <2 x float> %i.el, ptr %5, align 8
  store float %i.ek, ptr %i.bl, align 8
  %i.em = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.en = load ptr, ptr %.sroa.076.085, align 8   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1088
  %i.ep = load i16, ptr %i.eo, align 8            ; 2 uses
  %.not = icmp eq i16 %i.ep, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.eq = sitofp i16 %i.ep to float
  store float %i.eq, ptr %i.e, align 4
  %i.er = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %i.e, i32 noundef 4, ptr noundef nonnull @.str.68, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre90 = load ptr, ptr %.sroa.076.085, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.es = phi ptr [ %.pre90, %bb.u ], [ %i.en, %bb.t ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1092
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 1100
  %i.ev = load float, ptr %i.eu, align 4
  %i.ew = load <2 x float>, ptr %i.et, align 4
  store <2 x float> %i.ew, ptr %5, align 8
  store float %i.ev, ptr %i.bl, align 8
  %i.ex = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.69, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ey = load ptr, ptr %.sroa.076.085, align 8   ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1136
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = and i32 %i.fa, 262144
  %.not53 = icmp eq i32 %i.fb, 0
  br i1 %.not53, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 1120
  %i.fd = load float, ptr %i.fc, align 8
  store float %i.fd, ptr %i.f, align 4
  %i.fe = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %i.f, i32 noundef 4, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre91 = load ptr, ptr %.sroa.076.085, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ff = phi ptr [ %.pre91, %bb.w ], [ %i.ey, %bb.v ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1104
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1112
  %i.fi = load float, ptr %i.fh, align 8
  %i.fj = load <2 x float>, ptr %i.fg, align 8
  store <2 x float> %i.fj, ptr %5, align 8
  store float %i.fi, ptr %i.bl, align 8
  %i.fk = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.aa

bb.y:                                             ; preds = %_ZN6Assimp15BlenderImporter14ResolveTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit
  %i.fl = load ptr, ptr %.sroa.076.085, align 8
  call void @_ZN6Assimp15BlenderImporter14AddBlendParamsEP10aiMaterialPKNS_7Blender8MaterialE(ptr nonnull align 8 poison, ptr noundef %i.bq, ptr noundef %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %.sroa.11.086
  br i1 %i.fn, label %bb.z, label %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit

bb.z:                                             ; preds = %bb.y
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.14.087, i64 8 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 512
  br label %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit

_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit: ; preds = %bb.y, %bb.z
  %.sroa.076.1 = phi ptr [ %i.fp, %bb.z ], [ %i.fm, %bb.y ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %i.fq, %bb.z ], [ %.sroa.11.086, %bb.y ]
  %.sroa.14.1 = phi ptr [ %i.fo, %bb.z ], [ %.sroa.14.087, %bb.y ]
  %.not79 = icmp eq ptr %.sroa.076.1, %i.bd
  br i1 %.not79, label %._crit_edge, label %.preheader

bb.aa:                                            ; preds = %bb.x, %_ZN6Assimp15BlenderImporter14ResolveTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit
  %.083 = phi i64 [ 0, %bb.x ], [ %i.gq, %_ZN6Assimp15BlenderImporter14ResolveTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit ] ; 2 uses
  %i.fr = load ptr, ptr %.sroa.076.085, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1432
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %.083
  %i.fu = load ptr, ptr %i.ft, align 8            ; 3 uses
  %.not80 = icmp eq ptr %i.fu, null
  br i1 %.not80, label %_ZN6Assimp15BlenderImporter14ResolveTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8            ; 3 uses
  %.not.i55 = icmp eq ptr %i.fw, null
  br i1 %.not.i55, label %_ZN6Assimp15BlenderImporter14ResolveTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1068
  %i.fy = load i32, ptr %i.fx, align 4            ; 2 uses
  %.not15.i = icmp eq i32 %i.fy, 0
  br i1 %.not15.i, label %_ZN6Assimp15BlenderImporter14ResolveTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr @.str.24, ptr %i.c, align 8
  switch i32 %i.fy, label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE8LogErrorIJRA65_KcEEEvDpOT_.exit [
    i32 1, label %bb.ae
    i32 2, label %bb.ae
    i32 3, label %bb.ae
    i32 4, label %bb.ae
    i32 5, label %bb.ae
    i32 6, label %bb.ae
    i32 7, label %bb.ae
    i32 9, label %bb.ae
    i32 11, label %bb.ae
    i32 12, label %bb.ae
    i32 13, label %bb.ae
    i32 10, label %bb.ae
    i32 14, label %bb.ae
    i32 15, label %bb.ae
    i32 8, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %i.fz = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.fz, label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogWarnIJRA49_KcRPS4_EEEvDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ga = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr @.str, ptr %i.b, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA49_S2_RS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(49) @.str.25, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogWarnIJRA49_KcRPS4_EEEvDpOT_.exit.i

_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogWarnIJRA49_KcRPS4_EEEvDpOT_.exit.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bn, i8 0, i64 1024, i1 false)
  %i.gb = load i32, ptr %i.bo, align 8            ; 2 uses
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr %i.bo, align 8
  %i.gd = load ptr, ptr %i.fv, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1068
  %i.gf = load i32, ptr %i.ge, align 4
  %switch.tableidx = add i32 %i.gf, -1            ; 2 uses
  %i.gg = icmp ult i32 %switch.tableidx, 13
  br i1 %i.gg, label %switch.lookup, label %_ZN6Assimp15BlenderImporter18AddSentinelTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit.i

switch.lookup:                                    ; preds = %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogWarnIJRA49_KcRPS4_EEEvDpOT_.exit.i
  %i.gh = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp15BlenderImporter14ResolveTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE, i64 %i.gh
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN6Assimp15BlenderImporter18AddSentinelTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit.i

_ZN6Assimp15BlenderImporter18AddSentinelTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit.i: ; preds = %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogWarnIJRA49_KcRPS4_EEEvDpOT_.exit.i, %switch.lookup
  %.0.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.122, %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogWarnIJRA49_KcRPS4_EEEvDpOT_.exit.i ]
  %i.gi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bn, i64 noundef 1024, ptr noundef nonnull @.str.23, i32 noundef %i.gb, ptr noundef nonnull %.0.i.i.i) #25
  store i32 %i.gi, ptr %2, align 4
  %i.gj = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr %i.bp, align 8
  %i.gl = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %2, ptr noundef nonnull @.str.22, i32 noundef 1, i32 noundef %i.gj) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE8LogErrorIJRA65_KcEEEvDpOT_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 1072
  %i.gn = load ptr, ptr %i.gm, align 8            ; 2 uses
  %.not16.i = icmp eq ptr %i.gn, null
  br i1 %.not16.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.go = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.go, label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE8LogErrorIJRA65_KcEEEvDpOT_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gp = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr @.str, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA65_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.gp, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(65) @.str.26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE8LogErrorIJRA65_KcEEEvDpOT_.exit

bb.aj:                                            ; preds = %bb.ag
  call void @_ZN6Assimp15BlenderImporter12ResolveImageEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexEPKNS3_5ImageERNS3_14ConversionDataE(ptr nonnull readnone align 8 poison, ptr noundef nonnull %i.bq, ptr nonnull readnone poison, ptr noundef nonnull %i.fu, ptr noundef nonnull %i.gn, ptr noundef nonnull align 8 dereferenceable(336) %1)
  br label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE8LogErrorIJRA65_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE8LogErrorIJRA65_KcEEEvDpOT_.exit: ; preds = %bb.ai, %bb.ah, %bb.aj, %_ZN6Assimp15BlenderImporter18AddSentinelTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %_ZN6Assimp15BlenderImporter14ResolveTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit

_ZN6Assimp15BlenderImporter14ResolveTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE8LogErrorIJRA65_KcEEEvDpOT_.exit, %bb.ac, %bb.ab, %bb.aa
  %i.gq = add nuw nsw i64 %.083, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gq, 18
  br i1 %exitcond.not, label %bb.y, label %bb.aa, !llvm.loop !89
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender14ConversionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.c, %i.e
  br i1 %.not7.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.f = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp7Blender9TempArrayISt6vector9aiTextureED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27
  br label %_ZN6Assimp7Blender9TempArrayISt6vector9aiTextureED2Ev.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.sroa.04.08.i = phi ptr [ %i.q, %bb.e ], [ %i.c, %bb.a ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.04.08.i, align 8    ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN9aiTextureD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #27
  br label %_ZN9aiTextureD2Ev.exit.i

_ZN9aiTextureD2Ev.exit.i:                         ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 1064) #27
  br label %bb.e

bb.e:                                             ; preds = %_ZN9aiTextureD2Ev.exit.i, %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.e
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN6Assimp7Blender9TempArrayISt6vector9aiTextureED2Ev.exit: ; preds = %._crit_edge.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
end_hunk_0
begin_hunk_1_@_ZN6Assimp15BlenderImporter11ConvertMeshERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_4MeshERNS1_14ConversionDataERNS1_9TempArrayISt6vector6aiMeshEE:bb.a
  %i.yc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.yc, align 8
  %i.yd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ye = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yd, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ye) #25
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.yc, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i32 16, ptr %i.yf, align 8
  %i.yg = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 4 uses
  store ptr %i.yh, ptr %i.yg, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 0, ptr %i.yi, align 8
  store i8 0, ptr %i.yh, align 8
  %i.yj = load ptr, ptr %6, align 8
  %i.yk = getelementptr i8, ptr %i.yj, i64 -24
  %i.yl = load i64, ptr %i.yk, align 8
  %i.ym = getelementptr inbounds i8, ptr %6, i64 %i.yl
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ym, ptr noundef nonnull %i.yc)
          to label %.noexc589 unwind label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.yn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.yo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.yc) #25
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.pn.pn.i = phi { ptr, i32 } [ %i.yn, %bb.cx ], [ %i.yo, %bb.cy ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.xo) #25
  br label %.body590

.noexc589:                                        ; preds = %bb.cw
  invoke void @_ZN15DeadlyErrorBaseC2IJRA26_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.xn, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(26) @.str.86)
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %.noexc589
  %i.yp = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.yp, ptr %6, align 8
  %i.yq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.yr = getelementptr i8, ptr %i.yp, i64 -24
  %i.ys = load i64, ptr %i.yr, align 8
  %i.yt = getelementptr inbounds i8, ptr %6, i64 %i.ys
  store ptr %i.yq, ptr %i.yt, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.yc, align 8
  %i.yu = load ptr, ptr %i.yg, align 8            ; 2 uses
  %i.yv = icmp eq ptr %i.yu, %i.yh
  br i1 %i.yv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.da
  %i.yw = load i64, ptr %i.yh, align 8
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yu, i64 noundef %i.yx) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

bb.db:                                            ; preds = %.noexc589
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #25
  br label %.body590

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.yc, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ye) #25
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.xo) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %i.xn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  invoke void @__cxa_throw(ptr nonnull %i.xn, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %.noexc506 unwind label %bb.dc

.noexc506:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  unreachable

.body590:                                         ; preds = %bb.cz, %bb.db
  %eh.lpad-body591 = phi { ptr, i32 } [ %i.yy, %bb.db ], [ %.pn.pn.i, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @__cxa_free_exception(ptr nonnull %i.xn) #25
  br label %.body

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dd:                                            ; preds = %bb.cu
  %i.za = sext i32 %i.xl to i64
  %i.zb = load ptr, ptr %i.ar, align 8
  %i.zc = getelementptr inbounds nuw [56 x i8], ptr %i.zb, i64 %i.za ; 6 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %i.ze = load float, ptr %i.zd, align 8
  store float %i.ze, ptr %.0406756, align 4
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zc, i64 20
  %i.zg = load float, ptr %i.zf, align 4
  %i.zh = getelementptr inbounds nuw i8, ptr %.0406756, i64 4
  store float %i.zg, ptr %i.zh, align 4
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zc, i64 24
  %i.zj = load float, ptr %i.zi, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %.0406756, i64 8
  store float %i.zj, ptr %i.zk, align 4
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zc, i64 28
  %i.zm = load float, ptr %i.zl, align 4
  store float %i.zm, ptr %.0408755, align 4
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zc, i64 32
  %i.zo = load float, ptr %i.zn, align 8
  %i.zp = getelementptr inbounds nuw i8, ptr %.0408755, i64 4
  store float %i.zo, ptr %i.zp, align 4
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zc, i64 36
  %i.zr = load float, ptr %i.zq, align 4
  %i.zs = getelementptr inbounds nuw i8, ptr %.0408755, i64 8
  store float %i.zr, ptr %i.zs, align 4
  %i.zt = load i32, ptr %i.wp, align 4            ; 2 uses
  %i.zu = add i32 %i.zt, 1
  store i32 %i.zu, ptr %i.wp, align 4
  %i.zv = load ptr, ptr %i.wo, align 8
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %indvars.iv851
  store i32 %i.zt, ptr %i.zw, align 4
  %i.zx = getelementptr inbounds nuw i8, ptr %.0406756, i64 12
  %i.zy = getelementptr inbounds nuw i8, ptr %.0408755, i64 12
  %indvars.iv.next852 = add nuw nsw i64 %indvars.iv851, 1 ; 2 uses
  %i.zz = load i32, ptr %i.wj, align 4            ; 2 uses
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = icmp slt i64 %indvars.iv.next852, %i.aaa
  br i1 %i.aab, label %bb.cu, label %._crit_edge759, !llvm.loop !116

._crit_edge759.thread:                            ; preds = %bb.cr, %._crit_edge759
  br label %bb.de

bb.de:                                            ; preds = %._crit_edge759, %._crit_edge759.thread
  %.sink983 = phi i32 [ 8, %._crit_edge759.thread ], [ 4, %._crit_edge759 ]
  %i.aac = load i32, ptr %i.wb, align 8
  %i.aad = or i32 %i.aac, %.sink983
  store i32 %i.aad, ptr %i.wb, align 8
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 1 ; 2 uses
  %i.aae = load i32, ptr %i.cb, align 8
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = icmp slt i64 %indvars.iv.next855, %i.aaf
  br i1 %i.aag, label %bb.cp, label %._crit_edge762, !llvm.loop !117

._crit_edge767:                                   ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit548, %._crit_edge762
  %i.aah = getelementptr inbounds nuw i8, ptr %3, i64 1120 ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8          ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %3, i64 1128
  %i.aak = load ptr, ptr %i.aaj, align 8          ; 2 uses
  %.not683 = icmp eq ptr %i.aai, %i.aak
  br i1 %.not683, label %bb.eu, label %bb.ev

bb.df:                                            ; preds = %.lr.ph766, %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit548
  %indvars.iv860 = phi i64 [ 0, %.lr.ph766 ], [ %indvars.iv.next861, %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit548 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.aal = load ptr, ptr %i.uu, align 8
  %i.aam = getelementptr inbounds nuw [16 x i8], ptr %i.aal, i64 %indvars.iv860 ; 2 uses
  %i.aan = load ptr, ptr %i.aam, align 8
  store ptr %i.aan, ptr %18, align 8
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aap = load ptr, ptr %i.aao, align 8          ; 3 uses
  store ptr %i.aap, ptr %i.vd, align 8
  %.not.i.i.i509 = icmp eq ptr %i.aap, null
  br i1 %.not.i.i.i509, label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit511, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8 ; 3 uses
  %i.aar = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i510 = icmp eq i8 %i.aar, 0
  br i1 %.not.i.i.i.i510, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aas = load i32, ptr %i.aaq, align 4
  %i.aat = add nsw i32 %i.aas, 1
  store i32 %i.aat, ptr %i.aaq, align 4
  br label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit511

bb.di:                                            ; preds = %bb.dg
  %i.aau = atomicrmw volatile add ptr %i.aaq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit511

_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit511: ; preds = %bb.df, %bb.dh, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store i32 0, ptr %i.ve, align 8
  store ptr null, ptr %i.vf, align 8
  store ptr %i.ve, ptr %i.vg, align 8
  store ptr %i.ve, ptr %i.vh, align 8
  store i64 0, ptr %i.vi, align 8
  br label %bb.dk

bb.dj:                                            ; preds = %bb.ea
  %i.aav = load i64, ptr %i.vi, align 8
  %.not439 = icmp eq i64 %i.aav, 0
  %.pre898 = load ptr, ptr %i.vf, align 8         ; 3 uses
  br i1 %.not439, label %bb.em, label %bb.eb

bb.dk:                                            ; preds = %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit511, %bb.ea
  %indvars.iv857 = phi i64 [ 0, %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit511 ], [ %indvars.iv.next858, %bb.ea ] ; 5 uses
  %i.aaw = load ptr, ptr %18, align 8
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1432
  %i.aay = getelementptr inbounds nuw [16 x i8], ptr %i.aax, i64 %indvars.iv857
  %i.aaz = load ptr, ptr %i.aay, align 8          ; 2 uses
  %.not691 = icmp eq ptr %i.aaz, null
  br i1 %.not691, label %bb.ea, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 56 ; 4 uses
  %i.abb = load i8, ptr %i.aba, align 8
  %.not442 = icmp eq i8 %i.abb, 0
  br i1 %.not442, label %bb.ea, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  store ptr %i.vj, ptr %20, align 8
  %i.abc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aba) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 %i.abc, ptr %i.d, align 8
  %i.abd = icmp ugt i64 %i.abc, 15
  br i1 %i.abd, label %.noexc.i513, label %._crit_edge.i.i512

.noexc.i513:                                      ; preds = %bb.dm
  %i.abe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc514 unwind label %bb.dr ; 2 uses

.noexc514:                                        ; preds = %.noexc.i513
  store ptr %i.abe, ptr %20, align 8
  %i.abf = load i64, ptr %i.d, align 8
  store i64 %i.abf, ptr %i.vj, align 8
  br label %._crit_edge.i.i512

._crit_edge.i.i512:                               ; preds = %.noexc514, %bb.dm
  %i.abg = phi ptr [ %i.abe, %.noexc514 ], [ %i.vj, %bb.dm ] ; 2 uses
  switch i64 %i.abc, label %bb.do [
    i64 1, label %bb.dn
    i64 0, label %bb.dp
  ]

bb.dn:                                            ; preds = %._crit_edge.i.i512
  %i.abh = load i8, ptr %i.aba, align 8
  store i8 %i.abh, ptr %i.abg, align 1
  br label %bb.dp

bb.do:                                            ; preds = %._crit_edge.i.i512
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abg, ptr nonnull align 1 %i.aba, i64 %i.abc, i1 false)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %._crit_edge.i.i512
  %i.abi = load i64, ptr %i.d, align 8            ; 2 uses
  store i64 %i.abi, ptr %i.vk, align 8
  %i.abj = load ptr, ptr %20, align 8
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abi
  store i8 0, ptr %i.abk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.abl = invoke noundef ptr @_ZN6Assimp7Blender22getCustomDataLayerDataERKNS0_10CustomDataENS0_14CustomDataTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %i.vl, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.dq unwind label %bb.ds     ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  %i.abm = load ptr, ptr %20, align 8             ; 2 uses
  %i.abn = icmp eq ptr %i.abm, %i.vj
  br i1 %i.abn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i516: ; preds = %bb.dq
  %i.abo = load i64, ptr %i.vj, align 8
  %i.abp = add i64 %i.abo, 1
  call void @_ZdlPvm(ptr noundef %i.abm, i64 noundef %i.abp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i516
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %.not445 = icmp eq ptr %i.abl, null
  br i1 %.not445, label %bb.ea, label %bb.dt

bb.dr:                                            ; preds = %.noexc.i513
  %i.abq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

bb.ds:                                            ; preds = %bb.dp
  %i.abr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abs = load ptr, ptr %20, align 8             ; 2 uses
  %i.abt = icmp eq ptr %i.abs, %i.vj
  br i1 %i.abt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519: ; preds = %bb.ds
  %i.abu = load i64, ptr %i.vj, align 8
  %i.abv = add i64 %i.abu, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519, %bb.dr
  %.pn443 = phi { ptr, i32 } [ %i.abq, %bb.dr ], [ %i.abr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519 ], [ %i.abr, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.body595

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518
  %i.abw = call ptr @__dynamic_cast(ptr nonnull %i.abl, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender7MLoopUVE, i64 0) #25
  %i.abx = load ptr, ptr %i.vf, align 8           ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.abx, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dt, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.abx, %bb.dt ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ve, %bb.dt ] ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.abz = load i32, ptr %i.aby, align 4
  %i.aca = zext i32 %i.abz to i64
  %i.acb = icmp samesign ugt i64 %indvars.iv857, %i.aca ; 3 uses
  %.19.i.i.i.i = select i1 %i.acb, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.acb, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i522 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i522, label %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !118

_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.acc = icmp eq ptr %.19.i.i.i.i, %i.ve
  br i1 %i.acc, label %.critedge.i, label %bb.du

bb.du:                                            ; preds = %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.acb, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.acd = load i32, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.ace = zext i32 %i.acd to i64
  %i.acf = icmp samesign ult i64 %indvars.iv857, %i.ace
  br i1 %i.acf, label %.critedge.i, label %bb.ea

.critedge.i:                                      ; preds = %bb.du, %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i, %bb.dt
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.du ], [ %.19.i.i.i.i, %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i ], [ %i.ve, %bb.dt ]
  %i.acg = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc594 unwind label %bb.dz ; 5 uses

.noexc594:                                        ; preds = %.critedge.i
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 32 ; 3 uses
  %i.aci = trunc nuw nsw i64 %indvars.iv857 to i32
  store i32 %i.aci, ptr %i.ach, align 8
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 40
  store ptr %i.abw, ptr %i.acj, align 8
  %i.ack = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.ach)
          to label %bb.dv unwind label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.dv:                                            ; preds = %.noexc594
  %i.acl = extractvalue { ptr, ptr } %i.ack, 1    ; 4 uses
  %.not.i592 = icmp eq ptr %i.acl, null
  br i1 %.not.i592, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.acm = extractvalue { ptr, ptr } %i.ack, 0
  %.not.i.i.i593 = icmp ne ptr %i.acm, null
  %i.acn = icmp eq ptr %i.acl, %i.ve
  %or.cond.i.i.i = or i1 %.not.i.i.i593, %i.acn
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acl, i64 32
  %i.acp = load i32, ptr %i.ach, align 8
  %i.acq = load i32, ptr %i.aco, align 4
  %i.acr = icmp ult i32 %i.acp, %i.acq
  br label %.thread.i

.thread.i:                                        ; preds = %bb.dx, %bb.dw
  %i.acs = phi i1 [ %i.acr, %bb.dx ], [ true, %bb.dw ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.acs, ptr noundef nonnull %i.acg, ptr noundef nonnull %i.acl, ptr noundef nonnull align 8 dereferenceable(32) %i.ve) #25
  %i.act = load i64, ptr %i.vi, align 8
  %i.acu = add i64 %i.act, 1
  store i64 %i.acu, ptr %i.vi, align 8
  br label %bb.ea

_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc594
  %i.acv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.acg, i64 noundef 48) #27
  br label %.body595

bb.dy:                                            ; preds = %bb.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.acg, i64 noundef 48) #27
  br label %bb.ea

bb.dz:                                            ; preds = %.critedge.i
  %i.acw = landingpad { ptr, i32 }
          cleanup
  br label %.body595

bb.ea:                                            ; preds = %.thread.i, %bb.dy, %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, %bb.dk, %bb.dl
  %indvars.iv.next858 = add nuw nsw i64 %indvars.iv857, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next858, 18
  br i1 %exitcond.not, label %bb.dj, label %bb.dk, !llvm.loop !119

bb.eb:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.acx = trunc nuw i64 %indvars.iv860 to i32
  store i32 %i.acx, ptr %21, align 8, !alias.scope !120
  store i32 0, ptr %i.vm, align 8, !alias.scope !120
  store ptr null, ptr %i.vn, align 8, !alias.scope !120
  store ptr %i.vm, ptr %i.vo, align 8, !alias.scope !120
  store ptr %i.vm, ptr %i.vp, align 8, !alias.scope !120
  store i64 0, ptr %i.vq, align 8, !alias.scope !120
  %.not.i.i.i.i526 = icmp eq ptr %.pre898, null
  br i1 %.not.i.i.i.i526, label %_ZSt9make_pairIRjRSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS6_EEEES9_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSF_INSG_IT0_E4typeEE6__typeEEOSH_OSM_.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !120
  store ptr %i.vr, ptr %7, align 8, !noalias !120
  %i.acy = invoke noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE7_M_copyILb0ENSD_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS7_ESI_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.vr, ptr noundef nonnull %.pre898, ptr noundef nonnull %i.vm, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc.i.i.i.i unwind label %bb.ej ; 4 uses

.noexc.i.i.i.i:                                   ; preds = %bb.ec, %.noexc.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ada, %.noexc.i.i.i.i ], [ %i.acy, %bb.ec ] ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 16
  %i.ada = load ptr, ptr %i.acz, align 8          ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ada, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i, label %.noexc.i.i.i.i, !llvm.loop !123

_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.vo, align 8, !alias.scope !120
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i = phi ptr [ %i.acy, %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i ], [ %i.adc, %bb.ed ] ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i, i64 24
  %i.adc = load ptr, ptr %i.adb, align 8          ; 2 uses
  %.not.i.i8.i.i.i.i.i.i = icmp eq ptr %i.adc, null
  br i1 %.not.i.i8.i.i.i.i.i.i, label %bb.ee, label %bb.ed, !llvm.loop !124

bb.ee:                                            ; preds = %bb.ed
  store ptr %.0.i.i7.i.i.i.i.i.i, ptr %i.vp, align 8, !alias.scope !120
  %i.add = load i64, ptr %i.vi, align 8, !noalias !120
  store i64 %i.add, ptr %i.vq, align 8, !alias.scope !120
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !120
  store ptr %i.acy, ptr %i.vn, align 8, !alias.scope !120
  br label %_ZSt9make_pairIRjRSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS6_EEEES9_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSF_INSG_IT0_E4typeEE6__typeEEOSH_OSM_.exit

_ZSt9make_pairIRjRSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS6_EEEES9_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSF_INSG_IT0_E4typeEE6__typeEEOSH_OSM_.exit: ; preds = %bb.ee, %bb.eb
  %i.ade = phi ptr [ %i.acy, %bb.ee ], [ null, %bb.eb ]
  %i.adf = load ptr, ptr %i.uq, align 8           ; 2 uses
  %.not10.i.i.i.i528 = icmp eq ptr %i.adf, null
  br i1 %.not10.i.i.i.i528, label %.critedge.i541, label %.lr.ph.i.i.i.i529

.lr.ph.i.i.i.i529:                                ; preds = %_ZSt9make_pairIRjRSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS6_EEEES9_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSF_INSG_IT0_E4typeEE6__typeEEOSH_OSM_.exit
  %i.adg = load i32, ptr %21, align 8             ; 2 uses
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.lr.ph.i.i.i.i529
end_hunk_1
