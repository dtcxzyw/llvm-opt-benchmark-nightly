Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/storage?download=true
inline.NumInlined: 52093
inline.NumDeleted: 9229
loop-unroll.NumCompletelyUnrolled: 226
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EE17_M_default_appendEm:bb.a
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !235
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPSt4pairIKiS1_EmS3_ET_S5_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPSt4pairIKiS1_EmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPSt4pairIKiS1_EmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !235
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPSt4pairIKiS1_EmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPSt4pairIKiS1_EmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPSt4pairIKiS1_EmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPSt4pairIKiS1_EmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !231
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPSt4pairIKiS1_ESaIS3_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.230) #30
  unreachable

_ZNKSt6vectorIPSt4pairIKiS1_ESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #31 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !235
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPSt4pairIKiS1_EmS3_ET_S5_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPSt4pairIKiS1_EmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPSt4pairIKiS1_EmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPSt4pairIKiS1_ESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !235
  br label %_ZSt27__uninitialized_default_n_aIPPSt4pairIKiS1_EmS3_ET_S5_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPSt4pairIKiS1_EmS3_ET_S5_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPSt4pairIKiS1_EmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPSt4pairIKiS1_ESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPSt4pairIKiS1_EmS3_ET_S5_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPSt4pairIKiS1_EmS3_ET_S5_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EE13_M_deallocateEPS3_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #33
  br label %_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EE13_M_deallocateEPS3_m.exit36

_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EE13_M_deallocateEPS3_m.exit36: ; preds = %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !232
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !231
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !233
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPSt4pairIKiS1_EmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EE13_M_deallocateEPS3_m.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIPSt4pairIKiS2_ESaIS4_EELb1EE8_S_do_itERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10230  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10230 ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.229) #30
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit

_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EED2Ev.exit.i ; 6 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EE11_M_allocateEm.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 4 uses
  %i.k = icmp samesign ugt i64 %i.f, 8
  br i1 %i.k, label %bb.c, label %bb.d, !prof !343

bb.c:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.a, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit

bb.d:                                             ; preds = %.noexc5.i
  %i.l = icmp eq i64 %i.f, 8
  br i1 %i.l, label %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit.thread, label %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit

_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit.thread: ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !235
  store ptr %i.m, ptr %i.i, align 8, !tbaa !235
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !233
  store ptr %i.i, ptr %0, align 8, !tbaa !232
  store ptr %i.j, ptr %i.b, align 8, !tbaa !231
  store ptr %i.j, ptr %i.n, align 8, !tbaa !233
  br label %bb.e

_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EE11_M_allocateEm.exit.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.09) #29 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EED2Ev.exit unwind label %bb.f

_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit: ; preds = %bb.d, %bb.c, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.h, %.thread.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.012.0 = phi ptr [ null, %.thread.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !233
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !232
  store ptr %.sroa.12.0, ptr %i.b, align 8, !tbaa !231
  store ptr %.sroa.12.0, ptr %i.r, align 8, !tbaa !233
  %.not.i.i.i10 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit.thread, %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit
  %i.t = phi ptr [ %i.o, %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit.thread ], [ %i.s, %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.v) #33
  br label %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EED2Ev.exit

_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EED2Ev.exit:    ; preds = %bb.e, %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit, %_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIPSt4pairIKiS1_ESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit ], [ true, %bb.e ]
  ret i1 %.0

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPSt4pairIKiS1_ESaIS3_EED2Ev.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #34
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_T0_T1_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef nonnull align 8 captures(none) dead_on_return dereferenceable(8) %1, i64 noundef %2) unnamed_addr #23 {
bb.a:
  %3 = alloca %"class.std::reverse_iterator.921", align 8 ; 2 uses
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i24 = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i25 = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i24 to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i25 to i64 ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.preheader, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph49

.lr.ph:                                           ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit"
  %i.f = icmp eq i64 %i.eu, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph49, !llvm.loop !10231

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa46 = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.fv, %.lr.ph ] ; 2 uses
  %.lcssa44 = phi i64 [ %i.a, %.lr.ph.preheader ], [ %i.fw, %.lr.ph ] ; 3 uses
  %i.g = inttoptr i64 %.lcssa46 to ptr
  %i.h = inttoptr i64 %.lcssa44 to ptr            ; 28 uses
  %i.i = sub i64 %.lcssa44, %.lcssa46
  %.fr.i.i.i = freeze i64 %i.i                    ; 3 uses
  %i.j = ashr i64 %.fr.i.i.i, 2                   ; 4 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.l = add nsw i64 %i.j, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 4 uses
  %i.p = and i64 %.fr.i.i.i, 4
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %bb.b
  %5 = or disjoint i64 %i.l, 1
  %i.r = sub nsw i64 1, %i.j
  %i.s = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = sub nsw i64 0, %i.m
  %i.v = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.b, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"
  %.08.us.i.i.i = phi i64 [ %i.be, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i" ], [ %i.m, %bb.b ] ; 6 uses
  %i.x = sub i64 0, %.08.us.i.i.i                 ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198 ; 2 uses
  %i.ab = icmp slt i64 %.08.us.i.i.i, %i.o
  br i1 %i.ab, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.032.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.08.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.ac = shl i64 %.032.i.us.i.i.i, 1             ; 4 uses
  %i.ad = add i64 %i.ac, 2
  %i.ae = sub nuw nsw i64 -2, %i.ac
  %i.af = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ae
  %i.ag = or disjoint i64 %i.ac, 1
  %i.ah = xor i64 %i.ac, -1
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %.val.i.i.us.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !198
  %.val1.i.i.us.i.i.i = load i32, ptr %i.ak, align 4, !tbaa !198
  %i.al = icmp ult i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.al, i64 %i.ag, i64 %i.ad ; 4 uses
  %i.am = sub i64 0, %spec.select.i.us.i.i.i
  %i.an = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !198
  %i.aq = sub i64 0, %.032.i.us.i.i.i
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -4
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !198
  %i.at = icmp slt i64 %spec.select.i.us.i.i.i, %i.o
  br i1 %i.at, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !10232

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.097.i.i.us.i.i.i = phi i64 [ %.08.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 2 uses
  %.08.in.i.i.us.i.i.i = add nsw i64 %.097.i.i.us.i.i.i, -1
  %.08.i.i.us.i.i.i = sdiv i64 %.08.in.i.i.us.i.i.i, 2 ; 3 uses
  %i.au = sub nsw i64 0, %.08.i.i.us.i.i.i        ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -4
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.aw, align 4, !tbaa !198 ; 2 uses
  %i.ax = icmp ult i32 %.val.i.i.i.us.i.i.i, %i.aa
  %i.ay = sub nsw i64 0, %.097.i.i.us.i.i.i       ; 2 uses
  br i1 %i.ax, label %bb.c, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.az = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4
  store i32 %.val.i.i.i.us.i.i.i, ptr %i.ba, align 4, !tbaa !198
  %i.bb = icmp sgt i64 %.08.i.i.us.i.i.i, %.08.us.i.i.i
  br i1 %i.bb, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", !llvm.loop !10233

"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.x, %.split.us.i.i.i ], [ %i.au, %bb.c ], [ %i.ay, %.lr.ph.i.i.us.i.i.i ]
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %.pre-phi.i.i
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  store i32 %i.aa, ptr %i.bd, align 4, !tbaa !198
  %.not.us.i.i.i = icmp eq i64 %.08.us.i.i.i, 0
  %i.be = add nsw i64 %.08.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i", label %.split.us.i.i.i, !llvm.loop !10234

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.cq, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i" ], [ %i.m, %.split.preheader.i.i.i ] ; 8 uses
  %i.bf = sub i64 0, %.08.i.i.i
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !198 ; 2 uses
  %i.bj = icmp slt i64 %.08.i.i.i, %i.o
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.032.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.bk = shl i64 %.032.i.i.i.i, 1                ; 4 uses
  %i.bl = add i64 %i.bk, 2
  %i.bm = sub nuw nsw i64 -2, %i.bk
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bm
  %i.bo = or disjoint i64 %i.bk, 1
  %i.bp = xor i64 %i.bk, -1
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 -4
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %.val.i.i.i.i.i = load i32, ptr %i.br, align 4, !tbaa !198
  %.val1.i.i.i.i.i = load i32, ptr %i.bs, align 4, !tbaa !198
  %i.bt = icmp ult i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.bt, i64 %i.bo, i64 %i.bl ; 4 uses
  %i.bu = sub i64 0, %spec.select.i.i.i.i
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !198
  %i.by = sub i64 0, %.032.i.i.i.i
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4
  store i32 %i.bx, ptr %i.ca, align 4, !tbaa !198
  %i.cb = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !10232

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.cc = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  br i1 %i.cc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cd = load i32, ptr %i.t, align 4, !tbaa !198
  store i32 %i.cd, ptr %i.w, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.122.i.i.i.i = phi i64 [ %5, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ce = icmp sgt i64 %.122.i.i.i.i, %.08.i.i.i
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.097.i.i.i.i.i = phi i64 [ %.08.i.i.i.i.i, %bb.f ], [ %.122.i.i.i.i, %bb.e ] ; 3 uses
  %.08.in.i.i.i.i.i = add nsw i64 %.097.i.i.i.i.i, -1
  %.08.i.i.i.i.i = sdiv i64 %.08.in.i.i.i.i.i, 2  ; 4 uses
  %i.cf = sub nsw i64 0, %.08.i.i.i.i.i
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %.val.i.i.i.i.i.i = load i32, ptr %i.ch, align 4, !tbaa !198 ; 2 uses
  %i.ci = icmp ult i32 %.val.i.i.i.i.i.i, %i.bi
  br i1 %i.ci, label %bb.f, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cj = sub nsw i64 0, %.097.i.i.i.i.i
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -4
  store i32 %.val.i.i.i.i.i.i, ptr %i.cl, align 4, !tbaa !198
  %i.cm = icmp sgt i64 %.08.i.i.i.i.i, %.08.i.i.i
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !10233

"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.09.lcssa.i.i.i.i.i = phi i64 [ %.122.i.i.i.i, %bb.e ], [ %.097.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i, %bb.f ]
  %i.cn = sub nsw i64 0, %.09.lcssa.i.i.i.i.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  store i32 %i.bi, ptr %i.cp, align 4, !tbaa !198
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.cq = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i", label %.split.i.i.i, !llvm.loop !10234

"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i": ; preds = %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.lr.ph._crit_edge
  %i.cr = icmp sgt i64 %.fr.i.i.i, 4
  br i1 %i.cr, label %.lr.ph.i3.preheader.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.i3.preheader.i:                            ; preds = %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i"
  %i.cs = getelementptr inbounds i8, ptr %i.h, i64 -4
  br label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", %.lr.ph.i3.preheader.i
  %.sroa.0.0.copyload.i2.i5.i.i = phi ptr [ %i.ct, %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i" ], [ %i.g, %.lr.ph.i3.preheader.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i2.i5.i.i, i64 4 ; 2 uses
  %.cast.i.i = ptrtoint ptr %i.ct to i64
  %i.cu = load i32, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !198 ; 2 uses
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !198
  store i32 %i.cv, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !198
  %i.cw = sub i64 %.lcssa44, %.cast.i.i           ; 3 uses
  %i.cx = ashr exact i64 %i.cw, 2                 ; 3 uses
  %i.cy = add nsw i64 %i.cx, -1
  %i.cz = lshr i64 %i.cy, 1
  %i.da = icmp sgt i64 %i.cx, 2
  br i1 %i.da, label %.lr.ph.i.i.i12.i, label %._crit_edge.i.i.i4.i

.lr.ph.i.i.i12.i:                                 ; preds = %.lr.ph.i3.i, %.lr.ph.i.i.i12.i
  %.032.i.i.i13.i = phi i64 [ %spec.select.i.i.i16.i, %.lr.ph.i.i.i12.i ], [ 0, %.lr.ph.i3.i ] ; 2 uses
  %i.db = shl i64 %.032.i.i.i13.i, 1              ; 4 uses
  %i.dc = add i64 %i.db, 2
  %i.dd = sub nuw nsw i64 -2, %i.db
  %i.de = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dd
  %i.df = or disjoint i64 %i.db, 1
  %i.dg = xor i64 %i.db, -1
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dg
  %i.di = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 -4
  %.val.i.i.i.i14.i = load i32, ptr %i.di, align 4, !tbaa !198
  %.val1.i.i.i.i15.i = load i32, ptr %i.dj, align 4, !tbaa !198
  %i.dk = icmp ult i32 %.val.i.i.i.i14.i, %.val1.i.i.i.i15.i
  %spec.select.i.i.i16.i = select i1 %i.dk, i64 %i.df, i64 %i.dc ; 4 uses
  %i.dl = sub i64 0, %spec.select.i.i.i16.i
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !198
  %i.dp = sub i64 0, %.032.i.i.i13.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.do, ptr %i.dr, align 4, !tbaa !198
  %i.ds = icmp slt i64 %spec.select.i.i.i16.i, %i.cz
  br i1 %i.ds, label %.lr.ph.i.i.i12.i, label %._crit_edge.i.i.i4.i, !llvm.loop !10232

._crit_edge.i.i.i4.i:                             ; preds = %.lr.ph.i.i.i12.i, %.lr.ph.i3.i
  %.0.lcssa.i.i.i5.i = phi i64 [ 0, %.lr.ph.i3.i ], [ %spec.select.i.i.i16.i, %.lr.ph.i.i.i12.i ] ; 5 uses
  %i.dt = and i64 %i.cw, 4
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i4.i
  %i.dv = add nsw i64 %i.cx, -2
  %i.dw = ashr exact i64 %i.dv, 1
  %i.dx = icmp eq i64 %.0.lcssa.i.i.i5.i, %i.dw
  br i1 %i.dx, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.dy = shl nuw nsw i64 %.0.lcssa.i.i.i5.i, 1   ; 2 uses
  %i.dz = or disjoint i64 %i.dy, 1
  %i.ea = xor i64 %i.dy, -1
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ea
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !198
  %i.ee = sub nsw i64 0, %.0.lcssa.i.i.i5.i
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ee
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -4
  store i32 %i.ed, ptr %i.eg, align 4, !tbaa !198
  br label %.lr.ph.i.i.i.i7.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i4.i
  %.not.i.i6.i = icmp eq i64 %.0.lcssa.i.i.i5.i, 0
  br i1 %.not.i.i6.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i7.i.preheader

.lr.ph.i.i.i.i7.i.preheader:                      ; preds = %bb.h, %.thread.i.i.i
  %.097.i.i.i.i8.i.ph = phi i64 [ %.0.lcssa.i.i.i5.i, %bb.h ], [ %i.dz, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i7.i

.lr.ph.i.i.i.i7.i:                                ; preds = %.lr.ph.i.i.i.i7.i.preheader, %bb.i
  %.097.i.i.i.i8.i = phi i64 [ %.08.i.i45.i.i.i, %bb.i ], [ %.097.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i7.i.preheader ] ; 3 uses
  %.08.in.i.i.i.i9.i = add nsw i64 %.097.i.i.i.i8.i, -1
  %.08.i.i45.i.i.i = lshr i64 %.08.in.i.i.i.i9.i, 1 ; 3 uses
  %i.eh = sub nsw i64 0, %.08.i.i45.i.i.i
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -4
  %.val.i.i.i.i.i10.i = load i32, ptr %i.ej, align 4, !tbaa !198 ; 2 uses
  %i.ek = icmp ult i32 %.val.i.i.i.i.i10.i, %i.cu
  br i1 %i.ek, label %bb.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i7.i
  %i.el = sub nsw i64 0, %.097.i.i.i.i8.i
  %i.em = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.el
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -4
  store i32 %.val.i.i.i.i.i10.i, ptr %i.en, align 4, !tbaa !198
  %.not6.i.i.i = icmp eq i64 %.08.i.i45.i.i.i, 0
  br i1 %.not6.i.i.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i7.i, !llvm.loop !10233

"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i7.i, %bb.h
  %.09.lcssa.i.i.i.i11.i = phi i64 [ 0, %bb.h ], [ %.097.i.i.i.i8.i, %.lr.ph.i.i.i.i7.i ], [ 0, %bb.i ]
  %i.eo = sub nsw i64 0, %.09.lcssa.i.i.i.i11.i
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.eo
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -4
  store i32 %i.cu, ptr %i.eq, align 4, !tbaa !198
  %i.er = icmp sgt i64 %i.cw, 4
  br i1 %i.er, label %.lr.ph.i3.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !10235

.lr.ph49:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02648 = phi i64 [ %i.eu, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.es = phi i64 [ %i.fw, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.et = phi i64 [ %i.fv, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.eu = add nsw i64 %.02648, -1                 ; 3 uses
  %i.ev = inttoptr i64 %i.es to ptr               ; 3 uses
  %i.ew = inttoptr i64 %i.et to ptr               ; 4 uses
  %i.ex = sub i64 %i.es, %i.et
  %i.ey = ashr exact i64 %i.ex, 2
  %.neg.i = sdiv i64 %i.ey, -2
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %.neg.i
  %i.fa = getelementptr inbounds i8, ptr %i.ev, i64 -4 ; 12 uses
  %i.fb = getelementptr inbounds i8, ptr %i.ev, i64 -8 ; 3 uses
  %i.fc = getelementptr inbounds i8, ptr %i.ez, i64 -4 ; 3 uses
  %.val.i.i.i10 = load i32, ptr %i.fb, align 4, !tbaa !198, !noalias !10243 ; 5 uses
  %.val1.i.i.i11 = load i32, ptr %i.fc, align 4, !tbaa !198, !noalias !10243 ; 5 uses
  %i.fd = icmp ult i32 %.val.i.i.i10, %.val1.i.i.i11
  %.val1.i11.i.i = load i32, ptr %i.ew, align 4, !tbaa !198, !noalias !10243 ; 6 uses
  br i1 %i.fd, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph49
  %i.fe = icmp ult i32 %.val1.i.i.i11, %.val1.i11.i.i
  br i1 %i.fe, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ff = load i32, ptr %i.fa, align 4, !tbaa !198, !noalias !10243
  store i32 %.val1.i.i.i11, ptr %i.fa, align 4, !tbaa !198, !noalias !10243
  store i32 %i.ff, ptr %i.fc, align 4, !tbaa !198, !noalias !10243
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.fg = icmp ult i32 %.val.i.i.i10, %.val1.i11.i.i
  %i.fh = load i32, ptr %i.fa, align 4, !tbaa !198, !noalias !10243 ; 2 uses
  br i1 %i.fg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.val1.i11.i.i, ptr %i.fa, align 4, !tbaa !198, !noalias !10243
  store i32 %i.fh, ptr %i.ew, align 4, !tbaa !198, !noalias !10243
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %.val.i.i.i10, ptr %i.fa, align 4, !tbaa !198, !noalias !10243
  store i32 %i.fh, ptr %i.fb, align 4, !tbaa !198, !noalias !10243
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph49
  %i.fi = icmp ult i32 %.val.i.i.i10, %.val1.i11.i.i
  br i1 %i.fi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fj = load i32, ptr %i.fa, align 4, !tbaa !198, !noalias !10243
  store i32 %.val.i.i.i10, ptr %i.fa, align 4, !tbaa !198, !noalias !10243
  store i32 %i.fj, ptr %i.fb, align 4, !tbaa !198, !noalias !10243
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.fk = icmp ult i32 %.val1.i.i.i11, %.val1.i11.i.i
  %i.fl = load i32, ptr %i.fa, align 4, !tbaa !198, !noalias !10243 ; 2 uses
  br i1 %i.fk, label %bb.r, label %bb.s
end_hunk_0
