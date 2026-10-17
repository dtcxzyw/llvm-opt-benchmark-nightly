Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/statepropagatordata?download=true
inline.NumInlined: 2313
inline.NumDeleted: 1217
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt10unique_ptrIN3gmx19StatePropagatorData26ReferenceTemperatureHelperESt14default_deleteIS2_EED2Ev:bb.a
  br label %_ZNKSt14default_deleteIN3gmx19StatePropagatorData26ReferenceTemperatureHelperEEclEPS2_.exit

_ZNKSt14default_deleteIN3gmx19StatePropagatorData26ReferenceTemperatureHelperEEclEPS2_.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #37
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN3gmx19StatePropagatorData26ReferenceTemperatureHelperEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3gmx12ForceBuffersD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137)) unnamed_addr #11

declare void @_ZN3gmx20HostAllocationPolicyC2ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5), i32 noundef, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #36
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 4 dereferenceable(5), ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx19StatePropagatorData26ReferenceTemperatureHelperC2EPK10t_inputrecPS0_PK9t_mdatoms(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.b = load i32, ptr %i.a, align 8, !tbaa !522  ; 3 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !332
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !523  ; 2 uses
  %i.f = sext i32 %i.b to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.f, 2                     ; 6 uses
  %i.g = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #35
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !329
  br label %bb.f

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #39
          to label %.noexc4.i unwind label %bb.e  ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i
  store ptr %i.j, ptr %i.c, align 8, !tbaa !328
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.l, align 8, !tbaa !329
  %i.m = icmp samesign ugt i64 %.idx, 4
  br i1 %i.m, label %bb.c, label %bb.d, !prof !524

bb.c:                                             ; preds = %.noexc4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.e, i64 %.idx, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4.i
  %i.n = load float, ptr %i.e, align 4, !tbaa !138
  store float %i.n, ptr %i.j, align 4, !tbaa !138
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !328  ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i5.i, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %.thread.i.i
  %i.q = phi ptr [ %i.k, %bb.c ], [ %i.h, %.thread.i.i ], [ %i.k, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !525
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load i32, ptr %0, align 8, !tbaa !332    ; 3 uses
  %i.u = sext i32 %i.t to i64                     ; 3 uses
  %i.v = icmp slt i32 %i.t, 0
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #35
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.w = shl nuw nsw i64 %i.u, 2
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #39
          to label %.noexc10 unwind label %bb.i   ; 4 uses

.noexc10:                                         ; preds = %bb.h
  store ptr %i.x, ptr %i.s, align 8, !tbaa !328
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.y, ptr %i.z, align 8, !tbaa !329
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !138
  %i.aa = getelementptr i8, ptr %i.x, i64 4       ; 3 uses
  %i.ab = add nsw i64 %i.u, -1                    ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc10
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ab, 2  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !138
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc10
  %.0.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aa, %.noexc10 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !525
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %i.af, align 8, !tbaa !333
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %i.ag, align 8, !tbaa !334
  ret void

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !328 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i11, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.i, %bb.e
  %.sink21 = phi ptr [ %i.p, %bb.e ], [ %i.ai, %bb.i ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.ah, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !329
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %.sink21 to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink21, i64 noundef %i.an) #37
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.ah, %bb.i ], [ %.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !324  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !117  ; 7 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !323
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !117  ; 5 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZNK3gmx20HostAllocationPolicy6mallocEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g) #21 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !336
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %.not8.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not8.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S6_EEEEPS2_mT_SE_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit.i, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.05.09.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.010.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.05.09.i.i, i64 12, i1 false), !tbaa.struct !124
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12
  %.not.i6.i = icmp eq ptr %i.s, %i.c
  br i1 %.not.i6.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S6_EEEEPS2_mT_SE_.exit, label %.lr.ph.i.i, !llvm.loop !526

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S6_EEEEPS2_mT_SE_.exit: ; preds = %.lr.ph.i.i, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit.i
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !117  ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S6_EEEEPS2_mT_SE_.exit
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.u) #21
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S6_EEEEPS2_mT_SE_.exit, %bb.e
  store ptr %i.p, ptr %i.h, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store ptr %i.v, ptr %i.i, align 8, !tbaa !323
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IPS4_SB_EEET0_T_SG_SF_.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !324
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.m                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.g
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.g, 12
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !123

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.d, i64 %i.g, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IPS4_SB_EEET0_T_SG_SF_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.g, 12
  br i1 %i.ab, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IPS4_SB_EEET0_T_SG_SF_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !124
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IPS4_SB_EEET0_T_SG_SF_.exit

bb.k:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.z, 12
  br i1 %i.ac, label %bb.l, label %bb.m, !prof !123

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.d, i64 %i.z, i1 false)
  br label %_ZSt4copyIPN3gmx11BasicVectorIfEES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = icmp eq i64 %i.z, 12
  br i1 %i.ad, label %bb.n, label %_ZSt4copyIPN3gmx11BasicVectorIfEES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !124
  br label %_ZSt4copyIPN3gmx11BasicVectorIfEES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN3gmx11BasicVectorIfEES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !324 ; 2 uses
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !324 ; 2 uses
  %.not10.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not10.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IPS4_SB_EEET0_T_SG_SF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPN3gmx11BasicVectorIfEES3_ET0_T_S5_S4_.exit, %.lr.ph.i
  %.012.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.af, %_ZSt4copyIPN3gmx11BasicVectorIfEES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0911.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.ak, %_ZSt4copyIPN3gmx11BasicVectorIfEES3_ET0_T_S5_S4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i, i64 12, i1 false), !tbaa.struct !124
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i, i64 12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %.not.i25 = icmp eq ptr %i.am, %i.al
  br i1 %.not.i25, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IPS4_SB_EEET0_T_SG_SF_.exit, label %.lr.ph.i, !llvm.loop !527

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IPS4_SB_EEET0_T_SG_SF_.exit: ; preds = %.lr.ph.i, %_ZSt4copyIPN3gmx11BasicVectorIfEES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS2_m.exit
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !324
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IPS4_SB_EEET0_T_SG_SF_.exit, %bb.a
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind
declare noundef ptr @_ZNK3gmx20HostAllocationPolicy6mallocEm(ptr noundef nonnull align 4 dereferenceable(5), i64 noundef) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 768614336404564650
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !323
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 12
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !324
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g
  %i.o = mul nuw nsw i64 %1, 12
  %i.p = tail call noundef ptr @_ZNK3gmx20HostAllocationPolicy6mallocEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o) #21 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !336
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit: ; preds = %bb.d
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !117  ; 3 uses
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !324  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !124, !alias.scope !531
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exitthread-pre-split: ; preds = %.lr.ph.i.i.i
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !117
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exitthread-pre-split, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit
  %i.w = phi ptr [ %.pr, %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exitthread-pre-split ], [ %i.s, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_M_allocateEm.exit ] ; 2 uses
  %.not.i8 = icmp eq ptr %i.w, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.w) #21
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit, %bb.f
  store ptr %i.p, ptr %i.b, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.x, ptr %i.k, align 8, !tbaa !324
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %1
  store ptr %i.y, ptr %i.c, align 8, !tbaa !323
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !324  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !117  ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 12                  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !323
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.e
  %i.m = sdiv exact i64 %i.l, 12                  ; 2 uses
  %i.n = icmp ult i64 %i.h, 768614336404564651
end_hunk_0
