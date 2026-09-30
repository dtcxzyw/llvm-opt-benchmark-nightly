Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/group?download=true
inline.NumInlined: 24122
inline.NumDeleted: 8481
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIjEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm0ELm2ELm0EE9remove_ifES3_EESG_EENS_10connectionERT0_:bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm0ELm2ELm0EE9remove_ifES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !298
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !344
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !344
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit

bb.f:                                             ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIjEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm0ELm2ELm0EE9remove_ifES3_EESG_EEvRT0_.exit
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !345 ; 5 uses
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775792
  br i1 %i.ah, label %bb.g, label %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #32
  unreachable

_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ai = ashr exact i64 %i.ag, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 576460752303423487)
  %i.am = select i1 %i.ak, i64 576460752303423487, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #31 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store ptr %2, ptr %i.ap, align 8, !tbaa !298
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm0ELm2ELm0EE9remove_ifES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_, ptr %.sroa.7.0..sroa_idx7, align 8, !tbaa !298
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.w
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %i.ao, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !480, !alias.scope !3958
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #29
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  store ptr %i.ao, ptr %i.x, align 8, !tbaa !345
  store ptr %i.as, ptr %i.y, align 8, !tbaa !344
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.at, ptr %i.z, align 8, !tbaa !481
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.e, %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  %i.au = load ptr, ptr %1, align 8, !tbaa !728
  store ptr %2, ptr %0, align 8, !tbaa !298
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIjEEEE7releaseITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS8_S9_EELm0ELm2ELm0EE9remove_ifES8_EERSL_EEvT0_S1_EESL_EEvRSN_ENUlPKvS1_E_8__invokeESQ_S1_, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !484
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIjEEEE7releaseITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS8_S9_EELm0ELm2ELm0EE17push_on_constructES8_EERSL_EEvT0_S1_EESL_EEvRSN_ENUlPKvS1_E_8__invokeESQ_S1_(ptr noundef %0, ptr noundef %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !344  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !345    ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not9.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIjEEEE7releaseITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS8_S9_EELm0ELm2ELm0EE17push_on_constructES8_EERSL_EEvT0_S1_EESL_EEvRSN_ENKUlPKvS1_E_clESQ_S1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = ashr exact i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.i, %bb.d ]
  %i.i = add i64 %.010.i.i.i.i, -1                ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !345
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !347
  %i.n = icmp eq ptr %i.m, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm0ELm2ELm0EE17push_on_constructES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, %0
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !480
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !344
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !344
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.h, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIjEEEE7releaseITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS8_S9_EELm0ELm2ELm0EE17push_on_constructES8_EERSL_EEvT0_S1_EESL_EEvRSN_ENKUlPKvS1_E_clESQ_S1_.exit, label %bb.b, !llvm.loop !116

_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIjEEEE7releaseITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS8_S9_EELm0ELm2ELm0EE17push_on_constructES8_EERSL_EEvT0_S1_EESL_EEvRSN_ENKUlPKvS1_E_clESQ_S1_.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIjEEEE7releaseITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS8_S9_EELm0ELm2ELm0EE9remove_ifES8_EERSL_EEvT0_S1_EESL_EEvRSN_ENUlPKvS1_E_8__invokeESQ_S1_(ptr noundef %0, ptr noundef %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !344  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !345    ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not9.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIjEEEE7releaseITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS8_S9_EELm0ELm2ELm0EE9remove_ifES8_EERSL_EEvT0_S1_EESL_EEvRSN_ENKUlPKvS1_E_clESQ_S1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = ashr exact i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.i, %bb.d ]
  %i.i = add i64 %.010.i.i.i.i, -1                ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !345
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !347
  %i.n = icmp eq ptr %i.m, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm0ELm2ELm0EE9remove_ifES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, %0
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !480
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !344
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !344
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.h, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIjEEEE7releaseITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS8_S9_EELm0ELm2ELm0EE9remove_ifES8_EERSL_EEvT0_S1_EESL_EEvRSN_ENKUlPKvS1_E_clESQ_S1_.exit, label %bb.b, !llvm.loop !117

_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIjEEEE7releaseITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS8_S9_EELm0ELm2ELm0EE9remove_ifES8_EERSL_EEvT0_S1_EESL_EEvRSN_ENKUlPKvS1_E_clESQ_S1_.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_T0_T1_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef nonnull align 8 captures(none) dead_on_return dereferenceable(8) %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %3 = alloca %"class.std::reverse_iterator.974", align 8 ; 2 uses
  %4 = alloca %"class.std::reverse_iterator.974", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i23 = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i24 = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i23 to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i24 to i64 ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.preheader, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph61

.lr.ph:                                           ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit"
  %i.f = icmp eq i64 %i.fd, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph61, !llvm.loop !3959

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa58 = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.gl, %.lr.ph ] ; 2 uses
  %.lcssa56 = phi i64 [ %i.a, %.lr.ph.preheader ], [ %i.gm, %.lr.ph ] ; 3 uses
  %i.g = inttoptr i64 %.lcssa58 to ptr
  %i.h = inttoptr i64 %.lcssa56 to ptr            ; 28 uses
  %i.i = sub i64 %.lcssa56, %.lcssa58
  %.fr.i.i.i = freeze i64 %i.i                    ; 3 uses
  %i.j = ashr i64 %.fr.i.i.i, 2                   ; 4 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.l = add nsw i64 %i.j, -2
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = add nsw i64 %i.j, -1                     ; 2 uses
  %i.o = lshr i64 %i.n, 1                         ; 4 uses
  %i.p = and i64 %.fr.i.i.i, 4
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %bb.b
  %i.r = sub nsw i64 1, %i.j
  %i.s = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = sub nsw i64 0, %i.m
  %i.v = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.b, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"
  %.08.us.i.i.i = phi i64 [ %i.bh, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i" ], [ %i.m, %bb.b ] ; 6 uses
  %i.x = sub i64 0, %.08.us.i.i.i                 ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !350 ; 2 uses
  %i.ab = icmp slt i64 %.08.us.i.i.i, %i.o
  br i1 %i.ab, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !350
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !350
  %i.an = icmp ult i32 %i.ak, %i.am
  %spec.select.i.us.i.i.i = select i1 %i.an, i64 %i.ag, i64 %i.ad ; 4 uses
  %i.ao = sub i64 0, %spec.select.i.us.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !350
  %i.as = sub i64 0, %.032.i.us.i.i.i
  %i.at = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !350
  %i.av = icmp slt i64 %spec.select.i.us.i.i.i, %i.o
  br i1 %i.av, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !3960

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.097.i.i.us.i.i.i = phi i64 [ %.08.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 2 uses
  %.08.in.i.i.us.i.i.i = add nsw i64 %.097.i.i.us.i.i.i, -1
  %.08.i.i.us.i.i.i = sdiv i64 %.08.in.i.i.us.i.i.i, 2 ; 3 uses
  %i.aw = sub nsw i64 0, %.08.i.i.us.i.i.i        ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !350 ; 2 uses
  %i.ba = icmp ult i32 %i.az, %i.aa
  %i.bb = sub nsw i64 0, %.097.i.i.us.i.i.i       ; 2 uses
  br i1 %i.ba, label %bb.c, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  store i32 %i.az, ptr %i.bd, align 4, !tbaa !350
  %i.be = icmp sgt i64 %.08.i.i.us.i.i.i, %.08.us.i.i.i
  br i1 %i.be, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", !llvm.loop !3961

"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.x, %.split.us.i.i.i ], [ %i.aw, %bb.c ], [ %i.bb, %.lr.ph.i.i.us.i.i.i ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.h, i64 %.pre-phi.i.i
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.aa, ptr %i.bg, align 4, !tbaa !350
  %.not.us.i.i.i = icmp eq i64 %.08.us.i.i.i, 0
  %i.bh = add nsw i64 %.08.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i", label %.split.us.i.i.i, !llvm.loop !3962

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.cw, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i" ], [ %i.m, %.split.preheader.i.i.i ] ; 8 uses
  %i.bi = sub i64 0, %.08.i.i.i
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !350 ; 2 uses
  %i.bm = icmp slt i64 %.08.i.i.i, %i.o
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.032.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.bn = shl i64 %.032.i.i.i.i, 1                ; 4 uses
  %i.bo = add i64 %i.bn, 2
  %i.bp = sub nuw nsw i64 -2, %i.bn
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bp
  %i.br = or disjoint i64 %i.bn, 1
  %i.bs = xor i64 %i.bn, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !350
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !350
  %i.by = icmp ult i32 %i.bv, %i.bx
  %spec.select.i.i.i.i = select i1 %i.by, i64 %i.br, i64 %i.bo ; 4 uses
  %i.bz = sub i64 0, %spec.select.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !350
  %i.cd = sub i64 0, %.032.i.i.i.i
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  store i32 %i.cc, ptr %i.cf, align 4, !tbaa !350
  %i.cg = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.cg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3960

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ch = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  br i1 %i.ch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ci = load i32, ptr %i.t, align 4, !tbaa !350
  store i32 %i.ci, ptr %i.w, align 4, !tbaa !350
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.122.i.i.i.i = phi i64 [ %i.n, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cj = icmp sgt i64 %.122.i.i.i.i, %.08.i.i.i
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.097.i.i.i.i.i = phi i64 [ %.08.i.i.i.i.i, %bb.f ], [ %.122.i.i.i.i, %bb.e ] ; 3 uses
  %.08.in.i.i.i.i.i = add nsw i64 %.097.i.i.i.i.i, -1
  %.08.i.i.i.i.i = sdiv i64 %.08.in.i.i.i.i.i, 2  ; 4 uses
  %i.ck = sub nsw i64 0, %.08.i.i.i.i.i
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !350 ; 2 uses
  %i.co = icmp ult i32 %i.cn, %i.bl
  br i1 %i.co, label %bb.f, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cp = sub nsw i64 0, %.097.i.i.i.i.i
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -4
  store i32 %i.cn, ptr %i.cr, align 4, !tbaa !350
  %i.cs = icmp sgt i64 %.08.i.i.i.i.i, %.08.i.i.i
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !3961

"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.09.lcssa.i.i.i.i.i = phi i64 [ %.122.i.i.i.i, %bb.e ], [ %.097.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i, %bb.f ]
  %i.ct = sub nsw i64 0, %.09.lcssa.i.i.i.i.i
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4
  store i32 %i.bl, ptr %i.cv, align 4, !tbaa !350
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.cw = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i", label %.split.i.i.i, !llvm.loop !3962

"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i": ; preds = %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.lr.ph._crit_edge
  %i.cx = icmp sgt i64 %.fr.i.i.i, 4
  br i1 %i.cx, label %.lr.ph.i3.preheader.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.i3.preheader.i:                            ; preds = %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i"
  %i.cy = getelementptr inbounds i8, ptr %i.h, i64 -4
  br label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", %.lr.ph.i3.preheader.i
  %.sroa.0.0.copyload.i2.i5.i.i = phi ptr [ %i.cz, %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i" ], [ %i.g, %.lr.ph.i3.preheader.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i2.i5.i.i, i64 4 ; 2 uses
  %.cast.i.i = ptrtoint ptr %i.cz to i64
  %i.da = load i32, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !350 ; 2 uses
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !350
  store i32 %i.db, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !350
  %i.dc = sub i64 %.lcssa56, %.cast.i.i           ; 3 uses
  %i.dd = ashr exact i64 %i.dc, 2                 ; 3 uses
  %i.de = add nsw i64 %i.dd, -1
  %i.df = lshr i64 %i.de, 1
  %i.dg = icmp sgt i64 %i.dd, 2
  br i1 %i.dg, label %.lr.ph.i.i.i11.i, label %._crit_edge.i.i.i4.i

.lr.ph.i.i.i11.i:                                 ; preds = %.lr.ph.i3.i, %.lr.ph.i.i.i11.i
  %.032.i.i.i12.i = phi i64 [ %spec.select.i.i.i13.i, %.lr.ph.i.i.i11.i ], [ 0, %.lr.ph.i3.i ] ; 2 uses
  %i.dh = shl i64 %.032.i.i.i12.i, 1              ; 4 uses
  %i.di = add i64 %i.dh, 2
  %i.dj = sub nuw nsw i64 -2, %i.dh
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dj
  %i.dl = or disjoint i64 %i.dh, 1
  %i.dm = xor i64 %i.dh, -1
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !350
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !350
  %i.ds = icmp ult i32 %i.dp, %i.dr
  %spec.select.i.i.i13.i = select i1 %i.ds, i64 %i.dl, i64 %i.di ; 4 uses
  %i.dt = sub i64 0, %spec.select.i.i.i13.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !350
  %i.dx = sub i64 0, %.032.i.i.i12.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %i.dw, ptr %i.dz, align 4, !tbaa !350
  %i.ea = icmp slt i64 %spec.select.i.i.i13.i, %i.df
  br i1 %i.ea, label %.lr.ph.i.i.i11.i, label %._crit_edge.i.i.i4.i, !llvm.loop !3960

._crit_edge.i.i.i4.i:                             ; preds = %.lr.ph.i.i.i11.i, %.lr.ph.i3.i
  %.0.lcssa.i.i.i5.i = phi i64 [ 0, %.lr.ph.i3.i ], [ %spec.select.i.i.i13.i, %.lr.ph.i.i.i11.i ] ; 5 uses
  %i.eb = and i64 %i.dc, 4
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i4.i
  %i.ed = add nsw i64 %i.dd, -2
  %i.ee = ashr exact i64 %i.ed, 1
  %i.ef = icmp eq i64 %.0.lcssa.i.i.i5.i, %i.ee
  br i1 %i.ef, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.eg = shl nuw nsw i64 %.0.lcssa.i.i.i5.i, 1   ; 2 uses
  %i.eh = or disjoint i64 %i.eg, 1
  %i.ei = xor i64 %i.eg, -1
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !350
  %i.em = sub nsw i64 0, %.0.lcssa.i.i.i5.i
  %i.en = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -4
  store i32 %i.el, ptr %i.eo, align 4, !tbaa !350
  br label %.lr.ph.i.i.i.i7.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i4.i
  %.not.i.i6.i = icmp eq i64 %.0.lcssa.i.i.i5.i, 0
  br i1 %.not.i.i6.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i7.i.preheader

.lr.ph.i.i.i.i7.i.preheader:                      ; preds = %bb.h, %.thread.i.i.i
  %.097.i.i.i.i8.i.ph = phi i64 [ %.0.lcssa.i.i.i5.i, %bb.h ], [ %i.eh, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i7.i

.lr.ph.i.i.i.i7.i:                                ; preds = %.lr.ph.i.i.i.i7.i.preheader, %bb.i
  %.097.i.i.i.i8.i = phi i64 [ %.08.i.i45.i.i.i, %bb.i ], [ %.097.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i7.i.preheader ] ; 3 uses
  %.08.in.i.i.i.i9.i = add nsw i64 %.097.i.i.i.i8.i, -1
  %.08.i.i45.i.i.i = lshr i64 %.08.in.i.i.i.i9.i, 1 ; 3 uses
  %i.ep = sub nsw i64 0, %.08.i.i45.i.i.i
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !350 ; 2 uses
  %i.et = icmp ult i32 %i.es, %i.da
  br i1 %i.et, label %bb.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i7.i
  %i.eu = sub nsw i64 0, %.097.i.i.i.i8.i
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4
  store i32 %i.es, ptr %i.ew, align 4, !tbaa !350
  %.not6.i.i.i = icmp eq i64 %.08.i.i45.i.i.i, 0
  br i1 %.not6.i.i.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i7.i, !llvm.loop !3961

"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i7.i, %bb.h
  %.09.lcssa.i.i.i.i10.i = phi i64 [ 0, %bb.h ], [ %.097.i.i.i.i8.i, %.lr.ph.i.i.i.i7.i ], [ 0, %bb.i ]
  %i.ex = sub nsw i64 0, %.09.lcssa.i.i.i.i10.i
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ex
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4
  store i32 %i.da, ptr %i.ez, align 4, !tbaa !350
  %i.fa = icmp sgt i64 %i.dc, 4
  br i1 %i.fa, label %.lr.ph.i3.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !3963

.lr.ph61:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02560 = phi i64 [ %i.fd, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.fb = phi i64 [ %i.gm, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.fc = phi i64 [ %i.gl, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.fd = add nsw i64 %.02560, -1                 ; 3 uses
  %i.fe = inttoptr i64 %i.fb to ptr               ; 3 uses
  %i.ff = inttoptr i64 %i.fc to ptr               ; 4 uses
  %i.fg = sub i64 %i.fb, %i.fc
  %i.fh = ashr exact i64 %i.fg, 2
  %.neg.i = sdiv i64 %i.fh, -2
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %.neg.i
  %i.fj = getelementptr inbounds i8, ptr %i.fe, i64 -4 ; 12 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fe, i64 -8 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !350, !noalias !3971 ; 5 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !350, !noalias !3971 ; 5 uses
  %i.fo = icmp ult i32 %i.fl, %i.fn
  %i.fp = load i32, ptr %i.ff, align 4, !tbaa !350, !noalias !3971 ; 6 uses
  br i1 %i.fo, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph61
  %i.fq = icmp ult i32 %i.fn, %i.fp
  br i1 %i.fq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fr = load i32, ptr %i.fj, align 4, !tbaa !350, !noalias !3971
  store i32 %i.fn, ptr %i.fj, align 4, !tbaa !350, !noalias !3971
  store i32 %i.fr, ptr %i.fm, align 4, !tbaa !350, !noalias !3971
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.fs = icmp ult i32 %i.fl, %i.fp
  %i.ft = load i32, ptr %i.fj, align 4, !tbaa !350, !noalias !3971 ; 2 uses
  br i1 %i.fs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.fp, ptr %i.fj, align 4, !tbaa !350, !noalias !3971
  store i32 %i.ft, ptr %i.ff, align 4, !tbaa !350, !noalias !3971
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !350, !noalias !3971
  store i32 %i.ft, ptr %i.fk, align 4, !tbaa !350, !noalias !3971
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph61
  %i.fu = icmp ult i32 %i.fl, %i.fp
  br i1 %i.fu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fv = load i32, ptr %i.fj, align 4, !tbaa !350, !noalias !3971
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !350, !noalias !3971
  store i32 %i.fv, ptr %i.fk, align 4, !tbaa !350, !noalias !3971
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.fw = icmp ult i32 %i.fn, %i.fp
  %i.fx = load i32, ptr %i.fj, align 4, !tbaa !350, !noalias !3971 ; 2 uses
  br i1 %i.fw, label %bb.r, label %bb.s
end_hunk_0
begin_hunk_1_@_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE20insert_or_do_nothingIjJRS1_INS2_13group_handlerINS_16basic_sparse_setINS_6entityESaISG_EEELm1ELm0ELm1EEEEEEEDaOT_DpOT0_:bb.a
  br i1 %i.bj, label %bb.k, label %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE18rehash_if_requiredEv.exit

bb.k:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEERS6_DpOT_.exit
  %i.bk = ashr exact i64 %i.bc, 2
  call void @_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %i.bk)
  %.pre22 = load ptr, ptr %i.m, align 8, !tbaa !646 ; 2 uses
  %.pre23 = load ptr, ptr %i.z, align 8, !tbaa !286
  %.pre24 = ptrtoint ptr %.pre23 to i64
  %.pre25 = ptrtoint ptr %.pre22 to i64
  %.pre27 = sub i64 %.pre24, %.pre25
  br label %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE18rehash_if_requiredEv.exit

_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE18rehash_if_requiredEv.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEERS6_DpOT_.exit, %bb.k
  %.pre-phi28 = phi i64 [ %i.au, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEERS6_DpOT_.exit ], [ %.pre27, %bb.k ]
  %i.bl = phi ptr [ %i.ar, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEERS6_DpOT_.exit ], [ %.pre22, %bb.k ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.pre-phi28
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -32
  br label %bb.l

bb.l:                                             ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE16constrained_findIjEEDaRKT_m.exit, %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE18rehash_if_requiredEv.exit
  %.sroa.012.1 = phi ptr [ %i.bn, %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE18rehash_if_requiredEv.exit ], [ %.sroa.0.1.i, %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE16constrained_findIjEEDaRKT_m.exit ]
  %.sroa.3.1 = phi i8 [ 1, %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE18rehash_if_requiredEv.exit ], [ 0, %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE16constrained_findIjEEDaRKT_m.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.012.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !646    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #32
  unreachable

_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !281
  store i64 %i.r, ptr %i.q, align 8, !tbaa !683
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %4, align 8, !tbaa !373
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %5, align 8, !tbaa !773
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i32, ptr %i.u, align 4, !tbaa !282
  store i32 %i.x, ptr %i.s, align 8, !tbaa !697
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !292 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.w, align 8, !tbaa !298
  store <2 x ptr> %i.ab, ptr %i.y, align 8, !tbaa !298
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEEvRS7_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !293
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !282
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !282
  br label %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEEvRS7_PT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEEvRS7_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEEvRS7_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEEvRS7_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEEvRS7_PT_DpOT0_.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEEvRS7_PT_DpOT0_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4726)
  %i.ah = load i64, ptr %.0911.i.i.i, align 8, !tbaa !683, !alias.scope !4726, !noalias !4725
  store i64 %i.ah, ptr %.012.i.i.i, align 8, !tbaa !683, !alias.scope !4725, !noalias !4726
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !697, !alias.scope !4726, !noalias !4725
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !697, !alias.scope !4725, !noalias !4726
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !tbaa !298, !alias.scope !4726, !noalias !4725
  store ptr null, ptr %i.an, align 8, !tbaa !292, !alias.scope !4726, !noalias !4725
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !298, !alias.scope !4725, !noalias !4726
  store ptr null, ptr %i.am, align 8, !tbaa !291, !alias.scope !4726, !noalias !4725
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !95

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEEvRS7_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm1EEEEEEEEEvRS7_PT_DpOT0_.exit ], [ %i.aq, %.lr.ph.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bb, %.lr.ph.i.i.i30 ], [ %i.ar, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 4 uses
  %.0911.i.i.i32 = phi ptr [ %i.ba, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4728)
  %i.as = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !683, !alias.scope !4728, !noalias !4727
  store i64 %i.as, ptr %.012.i.i.i31, align 8, !tbaa !683, !alias.scope !4727, !noalias !4728
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !697, !alias.scope !4728, !noalias !4727
  store i32 %i.av, ptr %i.at, align 8, !tbaa !697, !alias.scope !4727, !noalias !4728
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 24
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !298, !alias.scope !4728, !noalias !4727
  store ptr null, ptr %i.ay, align 8, !tbaa !292, !alias.scope !4728, !noalias !4727
  store <2 x ptr> %i.az, ptr %i.aw, align 8, !tbaa !298, !alias.scope !4727, !noalias !4728
  store ptr null, ptr %i.ax, align 8, !tbaa !291, !alias.scope !4728, !noalias !4727
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 32 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !95

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ar, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.bb, %.lr.ph.i.i.i30 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit35
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !658
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #29
  br label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !646
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !286
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !658
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_T0_T1_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef nonnull align 8 captures(none) dead_on_return dereferenceable(8) %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %3 = alloca %"class.std::reverse_iterator.974", align 8 ; 2 uses
  %4 = alloca %"class.std::reverse_iterator.974", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i23 = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i24 = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i23 to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i24 to i64 ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.preheader, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph61

.lr.ph:                                           ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit"
  %i.f = icmp eq i64 %i.fd, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph61, !llvm.loop !4729

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa58 = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.gl, %.lr.ph ] ; 2 uses
  %.lcssa56 = phi i64 [ %i.a, %.lr.ph.preheader ], [ %i.gm, %.lr.ph ] ; 3 uses
  %i.g = inttoptr i64 %.lcssa58 to ptr
  %i.h = inttoptr i64 %.lcssa56 to ptr            ; 28 uses
  %i.i = sub i64 %.lcssa56, %.lcssa58
  %.fr.i.i.i = freeze i64 %i.i                    ; 3 uses
  %i.j = ashr i64 %.fr.i.i.i, 2                   ; 4 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.l = add nsw i64 %i.j, -2
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = add nsw i64 %i.j, -1                     ; 2 uses
  %i.o = lshr i64 %i.n, 1                         ; 4 uses
  %i.p = and i64 %.fr.i.i.i, 4
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %bb.b
  %i.r = sub nsw i64 1, %i.j
  %i.s = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = sub nsw i64 0, %i.m
  %i.v = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.b, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"
  %.08.us.i.i.i = phi i64 [ %i.bh, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i" ], [ %i.m, %bb.b ] ; 6 uses
  %i.x = sub i64 0, %.08.us.i.i.i                 ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !350 ; 2 uses
  %i.ab = icmp slt i64 %.08.us.i.i.i, %i.o
  br i1 %i.ab, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !350
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !350
  %i.an = icmp ult i32 %i.ak, %i.am
  %spec.select.i.us.i.i.i = select i1 %i.an, i64 %i.ag, i64 %i.ad ; 4 uses
  %i.ao = sub i64 0, %spec.select.i.us.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !350
  %i.as = sub i64 0, %.032.i.us.i.i.i
  %i.at = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !350
  %i.av = icmp slt i64 %spec.select.i.us.i.i.i, %i.o
  br i1 %i.av, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !4730

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.097.i.i.us.i.i.i = phi i64 [ %.08.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 2 uses
  %.08.in.i.i.us.i.i.i = add nsw i64 %.097.i.i.us.i.i.i, -1
  %.08.i.i.us.i.i.i = sdiv i64 %.08.in.i.i.us.i.i.i, 2 ; 3 uses
  %i.aw = sub nsw i64 0, %.08.i.i.us.i.i.i        ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !350 ; 2 uses
  %i.ba = icmp ult i32 %i.az, %i.aa
  %i.bb = sub nsw i64 0, %.097.i.i.us.i.i.i       ; 2 uses
  br i1 %i.ba, label %bb.c, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  store i32 %i.az, ptr %i.bd, align 4, !tbaa !350
  %i.be = icmp sgt i64 %.08.i.i.us.i.i.i, %.08.us.i.i.i
  br i1 %i.be, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", !llvm.loop !4731

"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.x, %.split.us.i.i.i ], [ %i.aw, %bb.c ], [ %i.bb, %.lr.ph.i.i.us.i.i.i ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.h, i64 %.pre-phi.i.i
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.aa, ptr %i.bg, align 4, !tbaa !350
  %.not.us.i.i.i = icmp eq i64 %.08.us.i.i.i, 0
  %i.bh = add nsw i64 %.08.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i", label %.split.us.i.i.i, !llvm.loop !4732

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.cw, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i" ], [ %i.m, %.split.preheader.i.i.i ] ; 8 uses
  %i.bi = sub i64 0, %.08.i.i.i
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !350 ; 2 uses
  %i.bm = icmp slt i64 %.08.i.i.i, %i.o
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.032.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.bn = shl i64 %.032.i.i.i.i, 1                ; 4 uses
  %i.bo = add i64 %i.bn, 2
  %i.bp = sub nuw nsw i64 -2, %i.bn
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bp
  %i.br = or disjoint i64 %i.bn, 1
  %i.bs = xor i64 %i.bn, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !350
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !350
  %i.by = icmp ult i32 %i.bv, %i.bx
  %spec.select.i.i.i.i = select i1 %i.by, i64 %i.br, i64 %i.bo ; 4 uses
  %i.bz = sub i64 0, %spec.select.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !350
  %i.cd = sub i64 0, %.032.i.i.i.i
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  store i32 %i.cc, ptr %i.cf, align 4, !tbaa !350
  %i.cg = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.cg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4730

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ch = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  br i1 %i.ch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ci = load i32, ptr %i.t, align 4, !tbaa !350
  store i32 %i.ci, ptr %i.w, align 4, !tbaa !350
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.122.i.i.i.i = phi i64 [ %i.n, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cj = icmp sgt i64 %.122.i.i.i.i, %.08.i.i.i
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.097.i.i.i.i.i = phi i64 [ %.08.i.i.i.i.i, %bb.f ], [ %.122.i.i.i.i, %bb.e ] ; 3 uses
  %.08.in.i.i.i.i.i = add nsw i64 %.097.i.i.i.i.i, -1
  %.08.i.i.i.i.i = sdiv i64 %.08.in.i.i.i.i.i, 2  ; 4 uses
  %i.ck = sub nsw i64 0, %.08.i.i.i.i.i
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !350 ; 2 uses
  %i.co = icmp ult i32 %i.cn, %i.bl
  br i1 %i.co, label %bb.f, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cp = sub nsw i64 0, %.097.i.i.i.i.i
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -4
  store i32 %i.cn, ptr %i.cr, align 4, !tbaa !350
  %i.cs = icmp sgt i64 %.08.i.i.i.i.i, %.08.i.i.i
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !4731

"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.09.lcssa.i.i.i.i.i = phi i64 [ %.122.i.i.i.i, %bb.e ], [ %.097.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i, %bb.f ]
  %i.ct = sub nsw i64 0, %.09.lcssa.i.i.i.i.i
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4
  store i32 %i.bl, ptr %i.cv, align 4, !tbaa !350
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.cw = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i", label %.split.i.i.i, !llvm.loop !4732

"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i": ; preds = %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.lr.ph._crit_edge
  %i.cx = icmp sgt i64 %.fr.i.i.i, 4
  br i1 %i.cx, label %.lr.ph.i3.preheader.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.i3.preheader.i:                            ; preds = %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit.i"
  %i.cy = getelementptr inbounds i8, ptr %i.h, i64 -4
  br label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", %.lr.ph.i3.preheader.i
  %.sroa.0.0.copyload.i2.i5.i.i = phi ptr [ %i.cz, %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i" ], [ %i.g, %.lr.ph.i3.preheader.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i2.i5.i.i, i64 4 ; 2 uses
  %.cast.i.i = ptrtoint ptr %i.cz to i64
  %i.da = load i32, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !350 ; 2 uses
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !350
  store i32 %i.db, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !350
  %i.dc = sub i64 %.lcssa56, %.cast.i.i           ; 3 uses
  %i.dd = ashr exact i64 %i.dc, 2                 ; 3 uses
  %i.de = add nsw i64 %i.dd, -1
  %i.df = lshr i64 %i.de, 1
  %i.dg = icmp sgt i64 %i.dd, 2
  br i1 %i.dg, label %.lr.ph.i.i.i11.i, label %._crit_edge.i.i.i4.i

.lr.ph.i.i.i11.i:                                 ; preds = %.lr.ph.i3.i, %.lr.ph.i.i.i11.i
  %.032.i.i.i12.i = phi i64 [ %spec.select.i.i.i13.i, %.lr.ph.i.i.i11.i ], [ 0, %.lr.ph.i3.i ] ; 2 uses
  %i.dh = shl i64 %.032.i.i.i12.i, 1              ; 4 uses
  %i.di = add i64 %i.dh, 2
  %i.dj = sub nuw nsw i64 -2, %i.dh
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dj
  %i.dl = or disjoint i64 %i.dh, 1
  %i.dm = xor i64 %i.dh, -1
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !350
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !350
  %i.ds = icmp ult i32 %i.dp, %i.dr
  %spec.select.i.i.i13.i = select i1 %i.ds, i64 %i.dl, i64 %i.di ; 4 uses
  %i.dt = sub i64 0, %spec.select.i.i.i13.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !350
  %i.dx = sub i64 0, %.032.i.i.i12.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %i.dw, ptr %i.dz, align 4, !tbaa !350
  %i.ea = icmp slt i64 %spec.select.i.i.i13.i, %i.df
  br i1 %i.ea, label %.lr.ph.i.i.i11.i, label %._crit_edge.i.i.i4.i, !llvm.loop !4730

._crit_edge.i.i.i4.i:                             ; preds = %.lr.ph.i.i.i11.i, %.lr.ph.i3.i
  %.0.lcssa.i.i.i5.i = phi i64 [ 0, %.lr.ph.i3.i ], [ %spec.select.i.i.i13.i, %.lr.ph.i.i.i11.i ] ; 5 uses
  %i.eb = and i64 %i.dc, 4
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i4.i
  %i.ed = add nsw i64 %i.dd, -2
  %i.ee = ashr exact i64 %i.ed, 1
  %i.ef = icmp eq i64 %.0.lcssa.i.i.i5.i, %i.ee
  br i1 %i.ef, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.eg = shl nuw nsw i64 %.0.lcssa.i.i.i5.i, 1   ; 2 uses
  %i.eh = or disjoint i64 %i.eg, 1
  %i.ei = xor i64 %i.eg, -1
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !350
  %i.em = sub nsw i64 0, %.0.lcssa.i.i.i5.i
  %i.en = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -4
  store i32 %i.el, ptr %i.eo, align 4, !tbaa !350
  br label %.lr.ph.i.i.i.i7.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i4.i
  %.not.i.i6.i = icmp eq i64 %.0.lcssa.i.i.i5.i, 0
  br i1 %.not.i.i6.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i7.i.preheader

.lr.ph.i.i.i.i7.i.preheader:                      ; preds = %bb.h, %.thread.i.i.i
  %.097.i.i.i.i8.i.ph = phi i64 [ %.0.lcssa.i.i.i5.i, %bb.h ], [ %i.eh, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i7.i

.lr.ph.i.i.i.i7.i:                                ; preds = %.lr.ph.i.i.i.i7.i.preheader, %bb.i
  %.097.i.i.i.i8.i = phi i64 [ %.08.i.i45.i.i.i, %bb.i ], [ %.097.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i7.i.preheader ] ; 3 uses
  %.08.in.i.i.i.i9.i = add nsw i64 %.097.i.i.i.i8.i, -1
  %.08.i.i45.i.i.i = lshr i64 %.08.in.i.i.i.i9.i, 1 ; 3 uses
  %i.ep = sub nsw i64 0, %.08.i.i45.i.i.i
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !350 ; 2 uses
  %i.et = icmp ult i32 %i.es, %i.da
  br i1 %i.et, label %bb.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i7.i
  %i.eu = sub nsw i64 0, %.097.i.i.i.i8.i
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4
  store i32 %i.es, ptr %i.ew, align 4, !tbaa !350
  %.not6.i.i.i = icmp eq i64 %.08.i.i45.i.i.i, 0
  br i1 %.not6.i.i.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i7.i, !llvm.loop !4731

"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i7.i, %bb.h
  %.09.lcssa.i.i.i.i10.i = phi i64 [ 0, %bb.h ], [ %.097.i.i.i.i8.i, %.lr.ph.i.i.i.i7.i ], [ 0, %bb.i ]
  %i.ex = sub nsw i64 0, %.09.lcssa.i.i.i.i10.i
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ex
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4
  store i32 %i.da, ptr %i.ez, align 4, !tbaa !350
  %i.fa = icmp sgt i64 %i.dc, 4
  br i1 %i.fa, label %.lr.ph.i3.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !4733

.lr.ph61:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02560 = phi i64 [ %i.fd, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.fb = phi i64 [ %i.gm, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.fc = phi i64 [ %i.gl, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.fd = add nsw i64 %.02560, -1                 ; 3 uses
  %i.fe = inttoptr i64 %i.fb to ptr               ; 3 uses
  %i.ff = inttoptr i64 %i.fc to ptr               ; 4 uses
  %i.fg = sub i64 %i.fb, %i.fc
  %i.fh = ashr exact i64 %i.fg, 2
  %.neg.i = sdiv i64 %i.fh, -2
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %.neg.i
  %i.fj = getelementptr inbounds i8, ptr %i.fe, i64 -4 ; 12 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fe, i64 -8 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !350, !noalias !4741 ; 5 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !350, !noalias !4741 ; 5 uses
  %i.fo = icmp ult i32 %i.fl, %i.fn
  %i.fp = load i32, ptr %i.ff, align 4, !tbaa !350, !noalias !4741 ; 6 uses
  br i1 %i.fo, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph61
  %i.fq = icmp ult i32 %i.fn, %i.fp
  br i1 %i.fq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fr = load i32, ptr %i.fj, align 4, !tbaa !350, !noalias !4741
  store i32 %i.fn, ptr %i.fj, align 4, !tbaa !350, !noalias !4741
  store i32 %i.fr, ptr %i.fm, align 4, !tbaa !350, !noalias !4741
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.fs = icmp ult i32 %i.fl, %i.fp
  %i.ft = load i32, ptr %i.fj, align 4, !tbaa !350, !noalias !4741 ; 2 uses
  br i1 %i.fs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.fp, ptr %i.fj, align 4, !tbaa !350, !noalias !4741
  store i32 %i.ft, ptr %i.ff, align 4, !tbaa !350, !noalias !4741
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !350, !noalias !4741
  store i32 %i.ft, ptr %i.fk, align 4, !tbaa !350, !noalias !4741
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph61
  %i.fu = icmp ult i32 %i.fl, %i.fp
  br i1 %i.fu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fv = load i32, ptr %i.fj, align 4, !tbaa !350, !noalias !4741
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !350, !noalias !4741
  store i32 %i.fv, ptr %i.fk, align 4, !tbaa !350, !noalias !4741
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN38GroupOwning_SortWithExclusionList_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.fw = icmp ult i32 %i.fn, %i.fp
  %i.fx = load i32, ptr %i.fj, align 4, !tbaa !350, !noalias !4741 ; 2 uses
  br i1 %i.fw, label %bb.r, label %bb.s
end_hunk_1
