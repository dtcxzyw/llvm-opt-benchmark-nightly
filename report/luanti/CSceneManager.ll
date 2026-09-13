Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CSceneManager?download=true
inline.NumInlined: 1657
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EE17_M_realloc_insertIJRPNS0_10ISceneNodeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
_ZNSt12_Vector_baseIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !104
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !149
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !105
  ret void

bb.e:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %_ZNKSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = tail call ptr @__cxa_begin_catch(ptr %i.bj) #33 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #32
  invoke void @__cxa_rethrow() #35
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.bh

bb.h:                                             ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #36
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE17_M_realloc_insertIJRPNS0_10ISceneNodeERN4core8vector3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !102    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #35
  unreachable

_ZNKSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !115    ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !165
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.s, align 8, !tbaa !166
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef nonnull align 4 dereferenceable(64) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(218) %i.r)
          to label %bb.c unwind label %bb.f, !inline_history !265

bb.c:                                             ; preds = %_ZNKSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 4      ; 3 uses
  %i.z = extractelement <4 x float> %i.y, i64 2
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.y, i64 0
  %i.aa = load float, ptr %3, align 4, !tbaa !139
  %i.ab = fsub float %.sroa.0.0.vec.extract.i, %i.aa ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.y, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !140
  %i.ae = fsub float %.sroa.0.4.vec.extract.i, %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !141
  %i.ah = fsub float %i.z, %i.ag                  ; 2 uses
  %i.ai = fmul float %i.ae, %i.ae
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.ai)
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.aj)
  store float %i.ak, ptr %i.s, align 8, !tbaa !166
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !178, !alias.scope !273
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !269

_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.am, %.lr.ph.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.ap, %.lr.ph.i.i.i28 ], [ %i.an, %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.ao, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i29, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i30, i64 16, i1 false), !tbaa.struct !178, !alias.scope !274
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !269

_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.an, %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ap, %.lr.ph.i.i.i28 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !103
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #32
  br label %_ZNSt12_Vector_baseIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !102
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !163
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !103
  ret void

bb.e:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNKSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #33 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #32
  invoke void @__cxa_rethrow() #35
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.av

bb.h:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #36
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.scene::CSceneManager::DefaultNodeEntry", align 8 ; 4 uses
  %4 = alloca %"struct.scene::CSceneManager::DefaultNodeEntry", align 8 ; 4 uses
  %5 = alloca %"struct.scene::CSceneManager::DefaultNodeEntry", align 8 ; 4 uses
  %6 = alloca %"struct.scene::CSceneManager::DefaultNodeEntry", align 8 ; 4 uses
  %7 = alloca %"struct.scene::CSceneManager::DefaultNodeEntry", align 8 ; 4 uses
  %8 = alloca %"struct.scene::CSceneManager::DefaultNodeEntry", align 8 ; 4 uses
  %9 = alloca %"struct.scene::CSceneManager::DefaultNodeEntry", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i18 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i18, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.j = icmp eq i64 %i.ce, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !275

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i21.lcssa = phi i64 [ %.fr.i18, %.lr.ph ], [ %.fr.i, %bb.b ] ; 2 uses
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i21.lcssa, 4               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i21.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.09.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.as, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.u, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !170 ; 2 uses
  %i.v = icmp slt i64 %.09.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.037.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.037.i.i.i, 1                   ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !152
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !152
  %i.af = icmp ult i64 %i.ac, %i.ae
  %spec.select.i.i.i = select i1 %i.af, i64 %i.z, i64 %i.x ; 4 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ah = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !177
  %i.ai = icmp slt i64 %spec.select.i.i.i, %i.o
  br i1 %i.ai, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !276

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.09.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i, %i.m
  %or.cond.i.i = select i1 %i.q, i1 %i.aj, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !177
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i.i.i, %.09.i.i
  br i1 %i.ak, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e, %bb.f
  %.019.i.i.i.i = phi i64 [ %.0920.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !152
  %i.ao = icmp ult i64 %i.an, %.sroa.4.0.copyload.i.i
  br i1 %i.ao, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !177
  %i.aq = icmp sgt i64 %.0920.i.i.i.i, %.09.i.i
  br i1 %i.aq, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !277

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i11, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0920.i.i.i.i, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i11 ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store ptr %.sroa.02.0.copyload.i.i, ptr %i.ar, align 8, !tbaa !115
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i, align 8, !tbaa !170
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.as = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !278

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.at, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i ], [ %storemerge19.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !170 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !177
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.a                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 4                 ; 3 uses
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = lshr i64 %i.ax, 1
  %i.az = icmp sgt i64 %i.aw, 2
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ba = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.bb = add i64 %i.ba, 2                        ; 2 uses
  %i.bc = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bb
  %i.bd = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.be = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !152
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !152
  %i.bj = icmp ult i64 %i.bg, %i.bi
  %spec.select.i.i.i.i = select i1 %i.bj, i64 %i.bd, i64 %i.bb ; 4 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bl = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !177
  %i.bm = icmp slt i64 %spec.select.i.i.i.i, %i.ay
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !276

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bn = and i64 %i.av, 16
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bp = add nsw i64 %i.aw, -2
  %i.bq = ashr exact i64 %i.bp, 1
  %i.br = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bq
  br i1 %i.br, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bs = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bt = or disjoint i64 %i.bs, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !177
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bt, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i78.i.i.i, %bb.i ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i78.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i78.i.i.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !152
  %i.bz = icmp ult i64 %i.by, %.sroa.4.0.copyload.i.i.i
  br i1 %i.bz, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ca = getelementptr inbounds [16 x i8], ptr %0, i64 %.019.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !177
  %.not9.i.i.i = icmp eq i64 %.0920.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !277

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.cb = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store ptr %.sroa.02.0.copyload.i.i.i, ptr %i.cb, align 8, !tbaa !115
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !170
  %i.cc = icmp sgt i64 %i.av, 16
  br i1 %i.cc, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !279

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1941 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02040 = phi i64 [ %i.ce, %bb.b ], [ %2, %.lr.ph ]
  %i.cd = phi i64 [ %i.dd, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ce = add nsw i64 %.02040, -1                 ; 3 uses
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cf ; 5 uses
  %i.ch = getelementptr inbounds i8, ptr %storemerge1941, i64 -16 ; 4 uses
  %i.ci = load i64, ptr %i.g, align 8, !tbaa !152 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !152 ; 3 uses
  %i.cl = icmp ult i64 %i.ci, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %storemerge1941, i64 -8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !152 ; 4 uses
  br i1 %i.cl, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.co = icmp ult i64 %i.ck, %i.cn
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !177
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cp = icmp ult i64 %i.ci, %i.cn
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !177
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !177
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph42
  %i.cq = icmp ult i64 %i.ci, %i.cn
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !177
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cr = icmp ult i64 %i.ck, %i.cn
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !177
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !177
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cw, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1941, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %i.cs = load i64, ptr %i.h, align 8, !tbaa !152 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %i.cw, %bb.t ] ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !152
  %i.cv = icmp ult i64 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.cv, label %bb.t, label %.preheader.i.i, !llvm.loop !280

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !152
  %i.cz = icmp ult i64 %i.cs, %i.cy
  br i1 %i.cz, label %.preheader.i.i, label %bb.u, !llvm.loop !281

bb.u:                                             ; preds = %.preheader.i.i
  %i.da = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.da, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false), !tbaa.struct !177
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !282

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1941, i64 noundef %i.ce)
  %i.db = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dc = sub i64 %i.db, %i.a
  %.fr.i = freeze i64 %i.dc                       ; 2 uses
  %i.dd = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.de = icmp sgt i64 %i.dd, 16
  br i1 %i.de, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !275

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.scene::CSceneManager::DefaultNodeEntry", align 8 ; 4 uses
  %3 = alloca %"struct.scene::CSceneManager::DefaultNodeEntry", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.018.i.add, %bb.g ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !152  ; 4 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !152
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i.ptr, i64 16, i1 false), !tbaa.struct !177
  %i.j = icmp samesign ugt i64 %.sroa.0.018.i.idx, 16
  br i1 %i.j, label %bb.d, label %bb.e, !prof !179

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !177
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.0.018.i.ptr, align 8, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !152
  %i.n = icmp ult i64 %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.07.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.07.010.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false), !tbaa.struct !177
  %i.o = getelementptr inbounds i8, ptr %.sroa.07.010.i.i, i64 -24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !152
  %i.q = icmp ult i64 %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !283

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.07.0.lcssa.i.i, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx5.i.i, align 8, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !284

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not4.i = icmp eq ptr %i.r, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8
  %.sroa.0.05.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i7 = load ptr, ptr %.sroa.0.05.i, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !170 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !152
  %i.u = icmp ult i64 %.sroa.4.0.copyload.i.i, %i.t
  br i1 %i.u, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i12
  %.sroa.07.010.i.i13 = phi ptr [ %.sroa.0.0.i.i14, %.lr.ph.i.i12 ], [ %.sroa.0.05.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.0.0.i.i14 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i13, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.010.i.i13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i14, i64 16, i1 false), !tbaa.struct !177
  %i.v = getelementptr inbounds i8, ptr %.sroa.07.010.i.i13, i64 -24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !152
  %i.x = icmp ult i64 %.sroa.4.0.copyload.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8, !llvm.loop !283

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8: ; preds = %.lr.ph.i.i12, %.lr.ph.i6
  %.sroa.07.0.lcssa.i.i9 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i14, %.lr.ph.i.i12 ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i7, ptr %.sroa.07.0.lcssa.i.i9, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx5.i.i10 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i9, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx5.i.i10, align 8, !tbaa !170
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16 ; 2 uses
  %.not.i11 = icmp eq ptr %i.y, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6, !llvm.loop !285

bb.h:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.preheader.i15

.preheader.i15:                                   ; preds = %bb.h
  %.sroa.0.015.i16 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not16.i17 = icmp eq ptr %.sroa.0.015.i16, %1
  br i1 %.not16.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.preheader.i15
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i18
  %.sroa.0.018.i19 = phi ptr [ %.sroa.0.015.i16, %.lr.ph.i18 ], [ %.sroa.0.0.i25, %bb.o ] ; 7 uses
  %.pn17.i20 = phi ptr [ %0, %.lr.ph.i18 ], [ %.sroa.0.018.i19, %bb.o ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn17.i20, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !152 ; 4 uses
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !152
  %i.ae = icmp ult i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i19, i64 16, i1 false), !tbaa.struct !177
  %i.af = ptrtoint ptr %.sroa.0.018.i19 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 3 uses
  %i.ah = ashr exact i64 %i.ag, 4                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %bb.l, !prof !179

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn17.i20, i64 32
  %i.ak = sub nsw i64 0, %i.ah
  %i.al = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30

bb.l:                                             ; preds = %bb.j
  %i.am = icmp eq i64 %i.ag, 16
  br i1 %i.am, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.pn17.i20, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !177
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.03.0.copyload.i.i21 = load ptr, ptr %.sroa.0.018.i19, align 8, !tbaa !115
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn17.i20, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !152
  %i.aq = icmp ult i64 %i.ac, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22

.lr.ph.i.i27:                                     ; preds = %bb.n, %.lr.ph.i.i27
  %.sroa.07.010.i.i28 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i27 ], [ %.sroa.0.018.i19, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i28, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.010.i.i28, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i29, i64 16, i1 false), !tbaa.struct !177
  %i.ar = getelementptr inbounds i8, ptr %.sroa.07.010.i.i28, i64 -24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !152
  %i.at = icmp ult i64 %i.ac, %i.as
  br i1 %i.at, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22, !llvm.loop !283

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22: ; preds = %.lr.ph.i.i27, %bb.n
  %.sroa.07.0.lcssa.i.i23 = phi ptr [ %.sroa.0.018.i19, %bb.n ], [ %.sroa.0.0.i.i29, %.lr.ph.i.i27 ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i21, ptr %.sroa.07.0.lcssa.i.i23, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx5.i.i24 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i23, i64 8
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx5.i.i24, align 8, !tbaa !170
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30
  %.sroa.0.0.i25 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i19, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %.sroa.0.0.i25, %1
  br i1 %.not.i26, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.i, !llvm.loop !284

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8, %.preheader.i15, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager16DefaultNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #29

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.scene::CSceneManager::TransparentNodeEntry", align 8 ; 4 uses
  %4 = alloca %"struct.scene::CSceneManager::TransparentNodeEntry", align 8 ; 4 uses
  %5 = alloca %"struct.scene::CSceneManager::TransparentNodeEntry", align 8 ; 4 uses
  %6 = alloca %"struct.scene::CSceneManager::TransparentNodeEntry", align 8 ; 4 uses
  %7 = alloca %"struct.scene::CSceneManager::TransparentNodeEntry", align 8 ; 4 uses
  %8 = alloca %"struct.scene::CSceneManager::TransparentNodeEntry", align 8 ; 4 uses
  %9 = alloca %"struct.scene::CSceneManager::TransparentNodeEntry", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i18 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i18, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.j = icmp eq i64 %i.ce, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !286

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i21.lcssa = phi i64 [ %.fr.i18, %.lr.ph ], [ %.fr.i, %bb.b ] ; 2 uses
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i21.lcssa, 4               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i21.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.09.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.as, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.u, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !19 ; 2 uses
  %i.v = icmp slt i64 %.09.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.037.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.037.i.i.i, 1                   ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !166
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !166
  %i.af = fcmp ogt float %i.ac, %i.ae
  %spec.select.i.i.i = select i1 %i.af, i64 %i.z, i64 %i.x ; 4 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ah = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %i.ag, i64 12, i1 false), !tbaa.struct !178
  %i.ai = icmp slt i64 %spec.select.i.i.i, %i.o
  br i1 %i.ai, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !287

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.09.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i, %i.m
  %or.cond.i.i = select i1 %i.q, i1 %i.aj, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull align 8 dereferenceable(12) %i.s, i64 12, i1 false), !tbaa.struct !178
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i.i.i, %.09.i.i
  br i1 %i.ak, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e, %bb.f
  %.019.i.i.i.i = phi i64 [ %.0920.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load float, ptr %i.am, align 8, !tbaa !166
  %i.ao = fcmp ogt float %i.an, %.sroa.4.0.copyload.i.i
  br i1 %i.ao, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ap, ptr noundef nonnull align 8 dereferenceable(12) %i.al, i64 12, i1 false), !tbaa.struct !178
  %i.aq = icmp sgt i64 %.0920.i.i.i.i, %.09.i.i
  br i1 %i.aq, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !288

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i11, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0920.i.i.i.i, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i11 ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store ptr %.sroa.02.0.copyload.i.i, ptr %i.ar, align 8, !tbaa !115
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i, align 8, !tbaa !19
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.as = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !289

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.at, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i ], [ %storemerge19.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.at, ptr noundef nonnull align 8 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !178
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.a                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 4                 ; 3 uses
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = lshr i64 %i.ax, 1
  %i.az = icmp sgt i64 %i.aw, 2
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ba = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.bb = add i64 %i.ba, 2                        ; 2 uses
  %i.bc = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bb
  %i.bd = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.be = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !166
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !166
  %i.bj = fcmp ogt float %i.bg, %i.bi
  %spec.select.i.i.i.i = select i1 %i.bj, i64 %i.bd, i64 %i.bb ; 4 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bl = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bl, ptr noundef nonnull align 8 dereferenceable(12) %i.bk, i64 12, i1 false), !tbaa.struct !178
  %i.bm = icmp slt i64 %spec.select.i.i.i.i, %i.ay
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !287

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bn = and i64 %i.av, 16
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bp = add nsw i64 %i.aw, -2
  %i.bq = ashr exact i64 %i.bp, 1
  %i.br = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bq
  br i1 %i.br, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bs = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bt = or disjoint i64 %i.bs, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bv, ptr noundef nonnull align 8 dereferenceable(12) %i.bu, i64 12, i1 false), !tbaa.struct !178
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bt, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i78.i.i.i, %bb.i ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i78.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i78.i.i.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load float, ptr %i.bx, align 8, !tbaa !166
  %i.bz = fcmp ogt float %i.by, %.sroa.4.0.copyload.i.i.i
  br i1 %i.bz, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ca = getelementptr inbounds [16 x i8], ptr %0, i64 %.019.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ca, ptr noundef nonnull align 8 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !178
  %.not9.i.i.i = icmp eq i64 %.0920.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !288

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.cb = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store ptr %.sroa.02.0.copyload.i.i.i, ptr %i.cb, align 8, !tbaa !115
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !19
  %i.cc = icmp sgt i64 %i.av, 16
  br i1 %i.cc, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !290

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1941 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02040 = phi i64 [ %i.ce, %bb.b ], [ %2, %.lr.ph ]
  %i.cd = phi i64 [ %i.dd, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ce = add nsw i64 %.02040, -1                 ; 3 uses
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cf ; 5 uses
  %i.ch = getelementptr inbounds i8, ptr %storemerge1941, i64 -16 ; 4 uses
  %i.ci = load float, ptr %i.g, align 8, !tbaa !166 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !166 ; 3 uses
  %i.cl = fcmp ogt float %i.ci, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %storemerge1941, i64 -8
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !166 ; 4 uses
  br i1 %i.cl, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.co = fcmp ogt float %i.ck, %i.cn
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.cg, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cg, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cp = fcmp ogt float %i.ci, %i.cn
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.ch, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ch, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph42
  %i.cq = fcmp ogt float %i.ci, %i.cn
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cr = fcmp ogt float %i.ck, %i.cn
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.ch, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ch, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.cg, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cg, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cw, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1941, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %i.cs = load float, ptr %i.h, align 8, !tbaa !166 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %i.cw, %bb.t ] ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !166
  %i.cv = fcmp ogt float %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.cv, label %bb.t, label %.preheader.i.i, !llvm.loop !291

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !166
  %i.cz = fcmp ogt float %i.cs, %i.cy
  br i1 %i.cz, label %.preheader.i.i, label %bb.u, !llvm.loop !292

bb.u:                                             ; preds = %.preheader.i.i
  %i.da = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.da, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false), !tbaa.struct !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.1.i.i, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !293

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1941, i64 noundef %i.ce)
  %i.db = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dc = sub i64 %i.db, %i.a
  %.fr.i = freeze i64 %i.dc                       ; 2 uses
  %i.dd = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.de = icmp sgt i64 %i.dd, 16
  br i1 %i.de, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !286

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.scene::CSceneManager::TransparentNodeEntry", align 8 ; 4 uses
  %3 = alloca %"struct.scene::CSceneManager::TransparentNodeEntry", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.018.i.add, %bb.g ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 24
  %i.g = load float, ptr %i.f, align 8, !tbaa !166 ; 4 uses
  %i.h = load float, ptr %i.e, align 8, !tbaa !166
  %i.i = fcmp ogt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i.ptr, i64 16, i1 false), !tbaa.struct !178
  %i.j = icmp samesign ugt i64 %.sroa.0.018.i.idx, 16
  br i1 %i.j, label %bb.d, label %bb.e, !prof !179

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !178
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.0.018.i.ptr, align 8, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 8
  %i.m = load float, ptr %i.l, align 8, !tbaa !166
  %i.n = fcmp ogt float %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.07.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.07.010.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.07.010.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.0.i.i, i64 12, i1 false), !tbaa.struct !178
  %i.o = getelementptr inbounds i8, ptr %.sroa.07.010.i.i, i64 -24
  %i.p = load float, ptr %i.o, align 8, !tbaa !166
  %i.q = fcmp ogt float %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !294

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.07.0.lcssa.i.i, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 8
  store float %i.g, ptr %.sroa.4.0..sroa_idx5.i.i, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !295

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not4.i = icmp eq ptr %i.r, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8
  %.sroa.0.05.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i7 = load ptr, ptr %.sroa.0.05.i, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !19 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -8
  %i.t = load float, ptr %i.s, align 8, !tbaa !166
  %i.u = fcmp ogt float %.sroa.4.0.copyload.i.i, %i.t
  br i1 %i.u, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i12
  %.sroa.07.010.i.i13 = phi ptr [ %.sroa.0.0.i.i14, %.lr.ph.i.i12 ], [ %.sroa.0.05.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.0.0.i.i14 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i13, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.07.010.i.i13, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.0.i.i14, i64 12, i1 false), !tbaa.struct !178
  %i.v = getelementptr inbounds i8, ptr %.sroa.07.010.i.i13, i64 -24
  %i.w = load float, ptr %i.v, align 8, !tbaa !166
  %i.x = fcmp ogt float %.sroa.4.0.copyload.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8, !llvm.loop !294

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8: ; preds = %.lr.ph.i.i12, %.lr.ph.i6
  %.sroa.07.0.lcssa.i.i9 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i14, %.lr.ph.i.i12 ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i7, ptr %.sroa.07.0.lcssa.i.i9, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx5.i.i10 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i9, i64 8
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx5.i.i10, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16 ; 2 uses
  %.not.i11 = icmp eq ptr %i.y, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6, !llvm.loop !296

bb.h:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.preheader.i15

.preheader.i15:                                   ; preds = %bb.h
  %.sroa.0.015.i16 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not16.i17 = icmp eq ptr %.sroa.0.015.i16, %1
  br i1 %.not16.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.preheader.i15
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i18
  %.sroa.0.018.i19 = phi ptr [ %.sroa.0.015.i16, %.lr.ph.i18 ], [ %.sroa.0.0.i25, %bb.o ] ; 7 uses
  %.pn17.i20 = phi ptr [ %0, %.lr.ph.i18 ], [ %.sroa.0.018.i19, %bb.o ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn17.i20, i64 24
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !166 ; 4 uses
  %i.ad = load float, ptr %i.aa, align 8, !tbaa !166
  %i.ae = fcmp ogt float %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i19, i64 16, i1 false), !tbaa.struct !178
  %i.af = ptrtoint ptr %.sroa.0.018.i19 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 3 uses
  %i.ah = ashr exact i64 %i.ag, 4                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %bb.l, !prof !179

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn17.i20, i64 32
  %i.ak = sub nsw i64 0, %i.ah
  %i.al = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30

bb.l:                                             ; preds = %bb.j
  %i.am = icmp eq i64 %i.ag, 16
  br i1 %i.am, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.pn17.i20, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.an, ptr noundef nonnull align 8 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !178
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.03.0.copyload.i.i21 = load ptr, ptr %.sroa.0.018.i19, align 8, !tbaa !115
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn17.i20, i64 8
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !166
  %i.aq = fcmp ogt float %i.ac, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22

.lr.ph.i.i27:                                     ; preds = %bb.n, %.lr.ph.i.i27
  %.sroa.07.010.i.i28 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i27 ], [ %.sroa.0.018.i19, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i28, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.07.010.i.i28, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.0.i.i29, i64 12, i1 false), !tbaa.struct !178
  %i.ar = getelementptr inbounds i8, ptr %.sroa.07.010.i.i28, i64 -24
  %i.as = load float, ptr %i.ar, align 8, !tbaa !166
  %i.at = fcmp ogt float %i.ac, %i.as
  br i1 %i.at, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22, !llvm.loop !294

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22: ; preds = %.lr.ph.i.i27, %bb.n
  %.sroa.07.0.lcssa.i.i23 = phi ptr [ %.sroa.0.018.i19, %bb.n ], [ %.sroa.0.0.i.i29, %.lr.ph.i.i27 ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i21, ptr %.sroa.07.0.lcssa.i.i23, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx5.i.i24 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i23, i64 8
  store float %i.ac, ptr %.sroa.4.0..sroa_idx5.i.i24, align 8, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30
  %.sroa.0.0.i25 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i19, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %.sroa.0.0.i25, %1
  br i1 %.not.i26, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.i, !llvm.loop !295

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8, %.preheader.i15, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene13CSceneManager20TransparentNodeEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

end_hunk_0
