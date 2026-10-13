Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 181
loop-unroll.NumUnrolled: 278
begin_hunk_0_@_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_:bb.a
  %i.s = load i64, ptr %i.r, align 8, !tbaa !197
  %i.t = sub i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8, !tbaa !197
  br label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b, %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !645  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE10_S_destroyIS9_S7_EEDTcldtfp_7destroyfp0_EERT_PT0_i.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i
  %i.w = load i64, ptr %i.v, align 8, !tbaa !197
  %i.x = add nsw i64 %i.w, -1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !197
  br label %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE10_S_destroyIS9_S7_EEDTcldtfp_7destroyfp0_EERT_PT0_i.exit

_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE10_S_destroyIS9_S7_EEDTcldtfp_7destroyfp0_EERT_PT0_i.exit: ; preds = %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISt24scoped_allocator_adaptorINS0_18container_internal17CountingAllocatorISt6vectorIiNS5_IiEEEEEJEELb0EE15DestroyElementsERSA_PS8_m(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not5 = icmp eq i64 %2, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_.exit
  %.06 = phi i64 [ %2, %.lr.ph ], [ %i.b, %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_.exit ]
  %i.b = add i64 %.06, -1                         ; 3 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.b ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !643  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !641  ; 2 uses
  %i.h = ptrtoaddr ptr %i.e to i64
  %i.i = ptrtoaddr ptr %i.g to i64
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !618  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !197
  %reass.sub = sub i64 %i.i, %i.h
  %i.l = add i64 %reass.sub, -4
  %i.m = lshr i64 %i.l, 2
  %i.n = xor i64 %i.m, -1
  %i.o = add i64 %.promoted.i.i.i.i.i.i.i.i, %i.n
  store i64 %i.o, ptr %i.k, align 8, !tbaa !197
  br label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !642
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.e to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.t) #39
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !617  ; 3 uses
  %.not.i.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i1.i.i.i.i.i.i.i, label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.u, align 8, !tbaa !197
  %i.w = sub i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 8, !tbaa !197
  br label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i.i
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !645  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !197
  %i.z = add nsw i64 %i.y, -1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !197
  br label %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_.exit

_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_.exit: ; preds = %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i.i, %bb.e
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !119
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISt24scoped_allocator_adaptorINS0_18container_internal17CountingAllocatorISt6vectorIiNS5_IiEEEEEJEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !647  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISt24scoped_allocator_adaptorINS0_18container_internal17CountingAllocatorISt6vectorIiNS5_IiEEEEEJEELb0EE10DeallocateERSA_PS8_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197  ; 2 uses
  %i.e = mul i64 %i.d, 40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.e) #39
  %i.f = load ptr, ptr %0, align 8, !tbaa !648    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISt24scoped_allocator_adaptorINS0_18container_internal17CountingAllocatorISt6vectorIiNS5_IiEEEEEJEELb0EE10DeallocateERSA_PS8_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg.i.i.i.i.i = mul i64 %i.d, -40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !197
  %i.h = add i64 %i.g, %.neg.i.i.i.i.i
  store i64 %i.h, ptr %i.f, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISt24scoped_allocator_adaptorINS0_18container_internal17CountingAllocatorISt6vectorIiNS5_IiEEEEEJEELb0EE10DeallocateERSA_PS8_m.exit

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISt24scoped_allocator_adaptorINS0_18container_internal17CountingAllocatorISt6vectorIiNS5_IiEEEEEJEELb0EE10DeallocateERSA_PS8_m.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEC2EOS5_RKS4_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !628
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !239
  %i.c = load <2 x ptr>, ptr %2, align 8
  %i.d = icmp eq <2 x ptr> %i.b, %i.c             ; 2 uses
  %i.e = extractelement <2 x i1> %i.d, i64 0
  %i.f = extractelement <2 x i1> %i.d, i64 1
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !233
  store <2 x ptr> %i.j, ptr %i.a, align 8, !tbaa !233
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !642
  store ptr %i.l, ptr %i.i, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !233  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !233  ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp ugt i64 %i.s, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i.i, label %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, !prof !212

.noexc.i.i.i.i:                                   ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #41
          to label %.noexc13 unwind label %bb.g   ; 11 uses

.noexc13:                                         ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i
  %i.v = ptrtoaddr ptr %i.u to i64                ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc13
  %i.x = load i64, ptr %i.w, align 8, !tbaa !197
  %i.y = add i64 %i.x, %i.s
  store i64 %i.y, ptr %i.w, align 8, !tbaa !197
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc13
  store ptr %i.u, ptr %i.a, align 8, !tbaa !643
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.z, align 8, !tbaa !641
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !642
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !233 ; 11 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 4 uses
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !233 ; 4 uses
  %3 = ptrtoaddr ptr %i.ae to i64                 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not12.i.i, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !618 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader, label %.lr.ph.split.i.i

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader: ; preds = %.lr.ph.i.i
  %i.ah = add i64 %3, -4
  %i.ai = sub i64 %i.ah, %i.ad                    ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ai, 44
  %i.al = sub i64 %i.ad, %i.v
  %diff.check37 = icmp ugt i64 %i.al, -32
  %or.cond = or i1 %min.iters.check39, %diff.check37
  br i1 %or.cond, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader54, label %vector.ph40

vector.ph40:                                      ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader
  %n.vec41 = and i64 %i.ak, 9223372036854775800   ; 3 uses
  %i.am = shl i64 %n.vec41, 2                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.u, i64 %i.am   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.am
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next48, %vector.body42 ] ; 2 uses
  %i.ap = shl i64 %index43, 2                     ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.u, i64 %i.ap ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ac, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load46 = load <4 x i32>, ptr %next.gep45, align 4, !tbaa !211
  %wide.load47 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !211
  %i.ar = getelementptr i8, ptr %next.gep44, i64 16
  store <4 x i32> %wide.load46, ptr %next.gep44, align 4, !tbaa !211
  store <4 x i32> %wide.load47, ptr %i.ar, align 4, !tbaa !211
  %index.next48 = add nuw i64 %index43, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next48, %n.vec41
  br i1 %i.as, label %middle.block49, label %vector.body42, !llvm.loop !5145

middle.block49:                                   ; preds = %vector.body42
  %cmp.n50 = icmp eq i64 %i.ak, %n.vec41
  br i1 %cmp.n50, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader54

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader54: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader, %middle.block49
  %.014.us.i.i.ph = phi ptr [ %i.u, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader ], [ %i.an, %middle.block49 ]
  %.sroa.010.013.us.i.i.ph = phi ptr [ %i.ac, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader ], [ %i.ao, %middle.block49 ]
  br label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader54, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i
  %.014.us.i.i = phi ptr [ %i.av, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i ], [ %.014.us.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader54 ] ; 2 uses
  %.sroa.010.013.us.i.i = phi ptr [ %i.au, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i ], [ %.sroa.010.013.us.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader54 ] ; 2 uses
  %i.at = load i32, ptr %.sroa.010.013.us.i.i, align 4, !tbaa !211
  store i32 %i.at, ptr %.014.us.i.i, align 4, !tbaa !211
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.013.us.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.014.us.i.i, i64 4 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.au, %i.ae
  br i1 %.not.us.i.i, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i, !llvm.loop !5146

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %.promoted.i.i = load i64, ptr %i.ag, align 8, !tbaa !197 ; 2 uses
  %i.aw = add i64 %3, -4
  %i.ax = sub i64 %i.aw, %i.ad                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 28
  %i.ba = sub i64 %i.ad, %i.v
  %diff.check = icmp ugt i64 %i.ba, -16
  %or.cond53 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond53, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.i
  %n.vec = and i64 %i.az, 9223372036854775804     ; 3 uses
  %i.bb = shl i64 %n.vec, 2                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.u, i64 %i.bb   ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ac, i64 %i.bb
  %i.be = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.be, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi32 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.bf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.bf ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ac, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep33, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep33, align 4, !tbaa !211
  %wide.load34 = load <2 x i32>, ptr %i.bg, align 4, !tbaa !211
  %i.bh = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !211
  store <2 x i32> %wide.load34, ptr %i.bh, align 4, !tbaa !211
  %i.bi = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.bj = add <2 x i64> %vec.phi32, splat (i64 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !5147

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader: ; preds = %.lr.ph.split.i.i, %middle.block
  %.ph = phi i64 [ %.promoted.i.i, %.lr.ph.split.i.i ], [ %i.bl, %middle.block ]
  %.014.i.i.ph = phi ptr [ %i.u, %.lr.ph.split.i.i ], [ %i.bc, %middle.block ]
  %.sroa.010.013.i.i.ph = phi ptr [ %i.ac, %.lr.ph.split.i.i ], [ %i.bd, %middle.block ]
  br label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i
  %i.bm = phi i64 [ %i.bo, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ], [ %.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader ]
  %.014.i.i = phi ptr [ %i.bq, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ], [ %.014.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader ] ; 2 uses
  %.sroa.010.013.i.i = phi ptr [ %i.bp, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ], [ %.sroa.010.013.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader ] ; 2 uses
  %i.bn = load i32, ptr %.sroa.010.013.i.i, align 4, !tbaa !211
  store i32 %i.bn, ptr %.014.i.i, align 4, !tbaa !211
  %i.bo = add nsw i64 %i.bm, 1                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bp, %i.ae
  br i1 %.not.i.i14, label %._crit_edge.split.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i, !llvm.loop !5148

._crit_edge.split.i.i:                            ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i, %middle.block
  %.lcssa31 = phi i64 [ %i.bl, %middle.block ], [ %i.bo, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ]
  %.lcssa30 = phi ptr [ %i.bc, %middle.block ], [ %i.bq, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ]
  store i64 %.lcssa31, ptr %i.ag, align 8, !tbaa !197
  br label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit

_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i, %middle.block49, %._crit_edge.split.i.i, %bb.f
  %.0.lcssa.i.i = phi ptr [ %i.u, %bb.f ], [ %.lcssa30, %._crit_edge.split.i.i ], [ %i.an, %middle.block49 ], [ %i.av, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i ]
  store ptr %.0.lcssa.i.i, ptr %i.z, align 8, !tbaa !641
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !641 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.br, %i.ac
  br i1 %.not.i.i15, label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit
  %i.bs = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !618 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.bt = ptrtoaddr ptr %i.br to i64
  %i.bu = ptrtoaddr ptr %i.ac to i64
  %.promoted.i.i.i = load i64, ptr %i.bs, align 8, !tbaa !197
  %reass.sub = sub i64 %i.bt, %i.bu
  %i.bv = add i64 %reass.sub, -4
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = xor i64 %i.bw, -1
  %i.by = add i64 %.promoted.i.i.i, %i.bx
  store i64 %i.by, ptr %i.bs, align 8, !tbaa !197
  br label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i

_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i: ; preds = %.lr.ph.split.i.i.i, %.lr.ph.i.i.i
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !641
  br label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE5clearEv.exit

bb.g:                                             ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, %.noexc.i.i.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #36
  resume { ptr, i32 } %i.bz

_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE5clearEv.exit: ; preds = %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i, %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !643  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !642
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE13_M_deallocateEPim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #39
  %i.h = load ptr, ptr %0, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE13_M_deallocateEPim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.h, align 8, !tbaa !197
  %i.j = sub i64 %i.i, %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !197
  br label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE13_M_deallocateEPim.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPiS5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !641  ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !643  ; 13 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 6 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775804
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
  unreachable

_ZNKSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 2                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 2305843009213693951)
  %i.m = select i1 %i.k, i64 2305843009213693951, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #41 ; 11 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE12_M_check_lenEmPKc.exit
  %i.s = load i64, ptr %i.r, align 8, !tbaa !197
  %i.t = add i64 %i.s, %i.p
  store i64 %i.t, ptr %i.r, align 8, !tbaa !197
  br label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE12_M_check_lenEmPKc.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i32 0, ptr %i.u, align 4, !tbaa !211
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !618  ; 8 uses
  %.not.i.i.i27 = icmp eq ptr %i.w, null          ; 3 uses
  br i1 %.not.i.i.i27, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.thread

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit: ; preds = %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE11_M_allocateEm.exit
  %.not13.i.i = icmp eq ptr %i.d, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit
  %i.x = add i64 %i.n, -4
  %i.y = sub i64 %i.x, %i.f                       ; 2 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check107 = icmp ult i64 %i.y, 28
  br i1 %min.iters.check107, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader163, label %vector.ph108

vector.ph108:                                     ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader
  %n.vec109 = and i64 %i.aa, 9223372036854775800  ; 3 uses
  %i.ab = shl i64 %n.vec109, 2                    ; 2 uses
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.d, i64 %i.ab
  br label %vector.body110

end_hunk_0
