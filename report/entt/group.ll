Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/group?download=true
inline.NumInlined: 24122
inline.NumDeleted: 8481
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE20insert_or_do_nothingIjJRS1_INS2_13group_handlerINS_16basic_sparse_setINS_6entityESaISG_EEELm2ELm0ELm0EEEEEEEDaOT_DpOT0_:bb.a
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !646 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 5                 ; 2 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = load ptr, ptr %0, align 8, !tbaa !280   ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.k
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !281
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !279
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = uitofp i64 %i.bd to float
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !654
  %i.bh = fmul float %i.bg, %i.be
  %i.bi = fptoui float %i.bh to i64
  %i.bj = icmp ugt i64 %i.av, %i.bi
  br i1 %i.bj, label %bb.k, label %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE18rehash_if_requiredEv.exit

bb.k:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEERS6_DpOT_.exit
  %i.bk = ashr exact i64 %i.bc, 2
  call void @_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %i.bk)
  %.pre22 = load ptr, ptr %i.m, align 8, !tbaa !646 ; 2 uses
  %.pre23 = load ptr, ptr %i.z, align 8, !tbaa !286
  %.pre24 = ptrtoint ptr %.pre23 to i64
  %.pre25 = ptrtoint ptr %.pre22 to i64
  %.pre27 = sub i64 %.pre24, %.pre25
  br label %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE18rehash_if_requiredEv.exit

_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE18rehash_if_requiredEv.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEERS6_DpOT_.exit, %bb.k
  %.pre-phi28 = phi i64 [ %i.au, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEERS6_DpOT_.exit ], [ %.pre27, %bb.k ]
  %i.bl = phi ptr [ %i.ar, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEERS6_DpOT_.exit ], [ %.pre22, %bb.k ]
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
define linkonce_odr hidden void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.v = load i64, ptr %5, align 8, !tbaa !768
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i32, ptr %i.u, align 4, !tbaa !282
  store i32 %i.x, ptr %i.s, align 8, !tbaa !697
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !292 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.w, align 8, !tbaa !298
  store <2 x ptr> %i.ab, ptr %i.y, align 8, !tbaa !298
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !293
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !282
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !282
  br label %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4573)
  %i.ah = load i64, ptr %.0911.i.i.i, align 8, !tbaa !683, !alias.scope !4573, !noalias !4572
  store i64 %i.ah, ptr %.012.i.i.i, align 8, !tbaa !683, !alias.scope !4572, !noalias !4573
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !697, !alias.scope !4573, !noalias !4572
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !697, !alias.scope !4572, !noalias !4573
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !tbaa !298, !alias.scope !4573, !noalias !4572
  store ptr null, ptr %i.an, align 8, !tbaa !292, !alias.scope !4573, !noalias !4572
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !298, !alias.scope !4572, !noalias !4573
  store ptr null, ptr %i.am, align 8, !tbaa !291, !alias.scope !4573, !noalias !4572
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !95

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm2ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit ], [ %i.aq, %.lr.ph.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bb, %.lr.ph.i.i.i30 ], [ %i.ar, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 4 uses
  %.0911.i.i.i32 = phi ptr [ %i.ba, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4575)
  %i.as = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !683, !alias.scope !4575, !noalias !4574
  store i64 %i.as, ptr %.012.i.i.i31, align 8, !tbaa !683, !alias.scope !4574, !noalias !4575
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !697, !alias.scope !4575, !noalias !4574
  store i32 %i.av, ptr %i.at, align 8, !tbaa !697, !alias.scope !4574, !noalias !4575
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 24
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !298, !alias.scope !4575, !noalias !4574
  store ptr null, ptr %i.ay, align 8, !tbaa !292, !alias.scope !4575, !noalias !4574
  store <2 x ptr> %i.az, ptr %i.aw, align 8, !tbaa !298, !alias.scope !4574, !noalias !4575
  store ptr null, ptr %i.ax, align 8, !tbaa !291, !alias.scope !4575, !noalias !4574
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

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE8generateITkSt15output_iteratorIT_EPS1_EEvS6_S6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !362
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !363
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not13 = icmp eq ptr %1, %2
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.014 = phi ptr [ %i.x, %bb.b ], [ %1, %bb.a ]  ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !450  ; 2 uses
  %.not9 = icmp eq i64 %i.j, %i.h
  br i1 %.not9, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph
  %.not1017 = icmp eq ptr %.014, %2
  br i1 %.not1017, label %._crit_edge, label %.lr.ph19

.lr.ph19:                                         ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !363
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.j
  %i.p = load i32, ptr %i.o, align 4, !tbaa !350
  %i.q = tail call { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.p, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !363
  %i.u = getelementptr [4 x i8], ptr %i.t, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !350
  store i32 %i.w, ptr %.014, align 4, !tbaa !350
  %i.x = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.x, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4576

bb.c:                                             ; preds = %.lr.ph19, %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit
  %.118 = phi ptr [ %.014, %.lr.ph19 ], [ %i.bk, %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit ] ; 2 uses
  %i.y = load i64, ptr %i.k, align 8, !tbaa !655  ; 3 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.z, 1048575                   ; 3 uses
  %i.ab = icmp ne i32 %i.aa, 1048575
  %i.ac = zext i1 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac                     ; 2 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !398
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !370 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = and i64 %i.y, 1048575                   ; 2 uses
  %i.al = lshr i64 %i.ak, 12                      ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %.lr.ph.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.an = phi i64 [ %i.bb, %bb.d ], [ %i.al, %bb.c ]
  %i.ao = phi i64 [ %i.ba, %bb.d ], [ %i.ak, %bb.c ]
  %.05.i = phi i32 [ %i.aw, %bb.d ], [ %i.aa, %bb.c ] ; 3 uses
  %storemerge4.i = phi i64 [ %i.az, %bb.d ], [ %i.ad, %bb.c ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.an
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !298 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i: ; preds = %.lr.ph.i
  %i.ar = and i64 %i.ao, 4095
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !350
  %.not.i = icmp ugt i32 %i.at, -1048577
  %i.au = icmp eq i32 %.05.i, 1048575
  %or.cond.i = or i1 %i.au, %.not.i
  br i1 %or.cond.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i
  %i.av = trunc i64 %storemerge4.i to i32
  %i.aw = and i32 %i.av, 1048575                  ; 3 uses
  %i.ax = icmp ne i32 %i.aw, 1048575
  %i.ay = zext i1 %i.ax to i64
  %i.az = add i64 %storemerge4.i, %i.ay           ; 2 uses
  %i.ba = and i64 %storemerge4.i, 1048575         ; 2 uses
  %i.bb = lshr i64 %i.ba, 12                      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.aj
  br i1 %i.bc, label %.lr.ph.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit, !llvm.loop !73

_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit: ; preds = %.lr.ph.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i, %bb.d, %bb.c
  %storemerge.lcssa.i = phi i64 [ %i.ad, %bb.c ], [ %storemerge4.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i ], [ %i.az, %bb.d ], [ %storemerge4.i, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.aa, %bb.c ], [ %.05.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i ], [ %i.aw, %bb.d ], [ %.05.i, %.lr.ph.i ]
  store i64 %storemerge.lcssa.i, ptr %i.k, align 8, !tbaa !655
  %i.bd = tail call { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.0.lcssa.i, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !363
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !350
  store i32 %i.bj, ptr %.118, align 4, !tbaa !350
  %i.bk = getelementptr inbounds nuw i8, ptr %.118, i64 4 ; 2 uses
  %.not10 = icmp eq ptr %i.bk, %2
  br i1 %.not10, label %._crit_edge, label %bb.c, !llvm.loop !4577

._crit_edge:                                      ; preds = %bb.b, %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit, %bb.a, %.critedge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_T0_T1_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef nonnull align 8 captures(none) dead_on_return dereferenceable(8) %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.974", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.974", align 8 ; 5 uses
  %6 = alloca %"class.std::reverse_iterator.974", align 8 ; 2 uses
  %7 = alloca %"class.std::reverse_iterator.974", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i20 = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i21 = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i20 to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i21 to i64 ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.preheader, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph51

.lr.ph:                                           ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit"
  %i.f = icmp eq i64 %i.ac, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph51, !llvm.loop !4578

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa48 = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.fc, %.lr.ph ] ; 2 uses
  %.lcssa46 = phi i64 [ %i.a, %.lr.ph.preheader ], [ %i.fd, %.lr.ph ] ; 5 uses
  %i.g = inttoptr i64 %.lcssa48 to ptr
  %i.h = inttoptr i64 %.lcssa46 to ptr            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.i = sub i64 %.lcssa46, %.lcssa48             ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %"_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.l = add nsw i64 %i.j, -2
  %i.m = lshr i64 %i.l, 1
  store i64 %.lcssa46, ptr %5, align 8, !tbaa !298
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i.i.i = phi i64 [ %i.m, %bb.b ], [ %i.r, %bb.c ] ; 4 uses
  %i.n = sub i64 0, %.08.i.i.i
  %i.o = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !350
  call fastcc void @"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %5, i64 noundef %.08.i.i.i, i64 noundef %i.j, i32 noundef %i.q, ptr readonly %3)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.r = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i.thread", label %bb.c, !llvm.loop !4579

"_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i.thread": ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.lr.ph.i1.preheader.i

"_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i": ; preds = %.lr.ph._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.s = icmp sgt i64 %i.i, 4
  br i1 %i.s, label %.lr.ph.i1.preheader.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.i1.preheader.i:                            ; preds = %"_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i.thread", %"_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i"
  %i.t = getelementptr inbounds i8, ptr %i.h, i64 -4
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i, %.lr.ph.i1.preheader.i
  %.sroa.0.0.copyload.i2.i5.i.i = phi ptr [ %i.u, %.lr.ph.i1.i ], [ %i.g, %.lr.ph.i1.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i2.i5.i.i, i64 4 ; 2 uses
  %.cast.i.i = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.v = load i32, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !350
  %i.w = load i32, ptr %i.t, align 4, !tbaa !350
  store i32 %i.w, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !350
  store i64 %.lcssa46, ptr %4, align 8, !tbaa !298
  %i.x = sub i64 %.lcssa46, %.cast.i.i            ; 2 uses
  %i.y = ashr exact i64 %i.x, 2
  call fastcc void @"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.y, i32 noundef %i.v, ptr readonly %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.z = icmp sgt i64 %i.x, 4
  br i1 %i.z, label %.lr.ph.i1.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !4580

.lr.ph51:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02250 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.aa = phi i64 [ %i.fd, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.ab = phi i64 [ %i.fc, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.ac = add nsw i64 %.02250, -1                 ; 3 uses
  %i.ad = inttoptr i64 %i.aa to ptr               ; 3 uses
  %i.ae = inttoptr i64 %i.ab to ptr               ; 4 uses
  %.val6 = load ptr, ptr %3, align 8, !tbaa !531, !noalias !4592, !nonnull !365, !noundef !365
  %i.af = sub i64 %i.aa, %i.ab
  %i.ag = ashr exact i64 %i.af, 2
  %.neg.i = sdiv i64 %i.ag, -2
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %.neg.i
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 12 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !350, !noalias !4593 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !350, !noalias !4593 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !369, !noalias !4594 ; 2 uses
  %i.ap = and i32 %i.ak, 1048575
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = lshr i64 %i.aq, 12
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !370, !noalias !4593 ; 6 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !298, !noalias !4593
  %i.aw = and i64 %i.aq, 4095
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !350, !noalias !4593
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.bc = lshr i64 %i.ba, 10
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !534, !noalias !4593 ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !536, !noalias !4593
  %i.bg = and i64 %i.ba, 1023
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !538, !noalias !4593 ; 3 uses
  %i.bj = and i32 %i.am, 1048575
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = lshr i64 %i.bk, 12
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !298, !noalias !4593
  %i.bo = and i64 %i.bk, 4095
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !350, !noalias !4593
  %i.br = and i32 %i.bq, 1048575
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = lshr i64 %i.bs, 10
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !536, !noalias !4593
  %i.bw = and i64 %i.bs, 1023
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !538, !noalias !4593 ; 3 uses
  %i.bz = icmp slt i32 %i.bi, %i.by
  %i.ca = load i32, ptr %i.ae, align 4, !tbaa !350, !noalias !4593 ; 3 uses
  %i.cb = and i32 %i.ca, 1048575
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = lshr i64 %i.cc, 12
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !298, !noalias !4593
  %i.cg = and i64 %i.cc, 4095
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !350, !noalias !4593
  %i.cj = and i32 %i.ci, 1048575
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = lshr i64 %i.ck, 10
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !536, !noalias !4593
  %i.co = and i64 %i.ck, 1023
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !538, !noalias !4593 ; 4 uses
  br i1 %i.bz, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph51
  %i.cr = icmp slt i32 %i.by, %i.cq
  br i1 %i.cr, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cs = load i32, ptr %i.ai, align 4, !tbaa !350, !noalias !4593
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !350, !noalias !4593
  store i32 %i.cs, ptr %i.al, align 4, !tbaa !350, !noalias !4593
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.f:                                             ; preds = %bb.d
  %i.ct = icmp slt i32 %i.bi, %i.cq
  %i.cu = load i32, ptr %i.ai, align 4, !tbaa !350, !noalias !4593 ; 2 uses
  br i1 %i.ct, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.ca, ptr %i.ai, align 4, !tbaa !350, !noalias !4593
  store i32 %i.cu, ptr %i.ae, align 4, !tbaa !350, !noalias !4593
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.h:                                             ; preds = %bb.f
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !350, !noalias !4593
  store i32 %i.cu, ptr %i.aj, align 4, !tbaa !350, !noalias !4593
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.i:                                             ; preds = %.lr.ph51
  %i.cv = icmp slt i32 %i.bi, %i.cq
  br i1 %i.cv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cw = load i32, ptr %i.ai, align 4, !tbaa !350, !noalias !4593
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !350, !noalias !4593
  store i32 %i.cw, ptr %i.aj, align 4, !tbaa !350, !noalias !4593
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.k:                                             ; preds = %bb.i
  %i.cx = icmp slt i32 %i.by, %i.cq
  %i.cy = load i32, ptr %i.ai, align 4, !tbaa !350, !noalias !4593 ; 2 uses
  br i1 %i.cx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.ca, ptr %i.ai, align 4, !tbaa !350, !noalias !4593
end_hunk_0
