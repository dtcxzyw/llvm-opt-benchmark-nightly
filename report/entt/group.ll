Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/group?download=true
inline.NumInlined: 24122
inline.NumDeleted: 8481
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN35GroupNonOwning_Functionalities_Test8TestBodyEv:bb.a
  %49 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %50 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %51 = alloca %"class.std::reverse_iterator", align 8 ; 7 uses
  %52 = alloca %"class.std::reverse_iterator", align 8 ; 8 uses
  %53 = alloca %"class.testing::Message", align 8 ; 7 uses
  %54 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %59 = alloca %"class.testing::Message", align 8 ; 7 uses
  %60 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %61 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %62 = alloca %"class.testing::Message", align 8 ; 7 uses
  %63 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %64 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %65 = alloca %"class.testing::Message", align 8 ; 7 uses
  %66 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %67 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %68 = alloca %"class.testing::Message", align 8 ; 7 uses
  %69 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %70 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.m = alloca i8, align 1                       ; 5 uses
  %71 = alloca %"class.testing::Message", align 8 ; 7 uses
  %72 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %73 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %74 = alloca %"class.testing::Message", align 8 ; 7 uses
  %75 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %76 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %77 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %78 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %79 = alloca %"class.testing::Message", align 8 ; 7 uses
  %80 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %81 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %82 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %83 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %84 = alloca %"class.testing::Message", align 8 ; 7 uses
  %85 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %86 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %87 = alloca %"class.std::reverse_iterator", align 8 ; 6 uses
  %88 = alloca %"class.std::reverse_iterator", align 8 ; 6 uses
  %89 = alloca %"class.testing::Message", align 8 ; 7 uses
  %90 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %91 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %92 = alloca %"class.std::reverse_iterator", align 8 ; 7 uses
  %93 = alloca %"class.std::reverse_iterator", align 8 ; 8 uses
  %94 = alloca %"class.testing::Message", align 8 ; 7 uses
  %95 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %96 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %97 = alloca %"class.testing::Message", align 8 ; 7 uses
  %98 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %100 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %101 = alloca %"class.testing::Message", align 8 ; 7 uses
  %102 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %103 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %104 = alloca %"class.testing::Message", align 8 ; 7 uses
  %105 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %106 = alloca %"class.testing::AssertionResult", align 8 ; 5 uses
  %107 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %108 = alloca %"class.testing::Message", align 8 ; 7 uses
  %109 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %111 = alloca %"class.testing::AssertionResult", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(336) %6, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.r = invoke ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE5groupIJEJicEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIT_S1_SaINSt12remove_constIS8_E4typeEEE4typeEEEENS_5get_tIJDpNS7_IT0_S1_SaINS9_ISI_E4typeEEE4typeEEEENS_9exclude_tIJDpNS7_IT1_S1_SaINS9_ISR_E4typeEEE4typeEEEEEENSH_IJDpSI_EEENSQ_IJDpSR_EEE(ptr noundef nonnull align 8 dereferenceable(336) %6)
          to label %bb.b unwind label %bb.p       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !279
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !280  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 4294967295
  %i.ab = and i64 %i.aa, 3014973966
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.07.in.i.i.i = phi ptr [ %i.ac, %bb.b ], [ %i.af, %bb.d ]
  %.07.i.i.i = load i64, ptr %.07.in.i.i.i, align 8, !tbaa !281 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.07.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %.07.i.i.i ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !282
  %i.ai = icmp eq i32 %i.ah, -1279993330
  br i1 %i.ai, label %_ZNK4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.loopexit.i, label %bb.c, !llvm.loop !0

bb.e:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !286 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ae to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.an
  br label %_ZNK4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.i

_ZNK4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.loopexit.i: ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 144
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !286
  br label %_ZNK4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.i

_ZNK4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.i: ; preds = %_ZNK4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.loopexit.i, %bb.e
  %i.ap = phi ptr [ %i.ak, %bb.e ], [ %.pre.i, %_ZNK4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.loopexit.i ]
  %.sroa.0.1.i.i.i = phi ptr [ %i.ao, %bb.e ], [ %i.af, %_ZNK4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.loopexit.i ] ; 3 uses
  %i.aq = icmp eq ptr %.sroa.0.1.i.i.i, %i.ap
  br i1 %i.aq, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE15group_if_existsIJEJKiKcEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIKT_S1_SaINSt12remove_constISB_E4typeEEE4typeEEEENS_5get_tIJDpNS9_IKT0_S1_SaINSC_ISM_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IKT1_S1_SaINSC_ISW_E4typeEEE4typeEEEEEENSK_IJDpSL_EEENSU_IJDpSV_EEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !291, !noalias !885 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !292, !noalias !885 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE15group_if_existsIJEJKiKcEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIKT_S1_SaINSt12remove_constISB_E4typeEEE4typeEEEENS_5get_tIJDpNS9_IKT0_S1_SaINSC_ISM_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IKT1_S1_SaINSC_ISW_E4typeEEE4typeEEEEEENSK_IJDpSL_EEENSU_IJDpSV_EEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 7 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !293, !noalias !885
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !282, !noalias !885
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !282, !noalias !885
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4, !noalias !885 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.av, align 8, !tbaa !295
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !296
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !265
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28, !inline_history !1
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !265
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28, !inline_history !1
  br label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE15group_if_existsIJEJKiKcEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIKT_S1_SaINSt12remove_constISB_E4typeEEE4typeEEEENS_5get_tIJDpNS9_IKT0_S1_SaINSC_ISM_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IKT1_S1_SaINSC_ISW_E4typeEEE4typeEEEEEENSK_IJDpSL_EEENSU_IJDpSV_EEE.exit

bb.l:                                             ; preds = %bb.j
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !293
  %.not.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.av, align 8, !tbaa !282
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bm = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi i32 [ %i.bc, %bb.m ], [ %i.bm, %bb.n ]
  %i.bn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bn, label %bb.o, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE15group_if_existsIJEJKiKcEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIKT_S1_SaINSt12remove_constISB_E4typeEEE4typeEEEENS_5get_tIJDpNS9_IKT0_S1_SaINSC_ISM_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IKT1_S1_SaINSC_ISW_E4typeEEE4typeEEEEEENSK_IJDpSL_EEENSU_IJDpSV_EEE.exit, !prof !297

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28
  br label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE15group_if_existsIJEJKiKcEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIKT_S1_SaINSt12remove_constISB_E4typeEEE4typeEEEENS_5get_tIJDpNS9_IKT0_S1_SaINSC_ISM_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IKT1_S1_SaINSC_ISW_E4typeEEE4typeEEEEEENSK_IJDpSL_EEENSU_IJDpSV_EEE.exit

_ZNK4entt14basic_registryINS_6entityESaIS1_EE15group_if_existsIJEJKiKcEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIKT_S1_SaINSt12remove_constISB_E4typeEEE4typeEEEENS_5get_tIJDpNS9_IKT0_S1_SaINSC_ISM_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IKT1_S1_SaINSC_ISW_E4typeEEE4typeEEEEEENSK_IJDpSL_EEENSU_IJDpSV_EEE.exit: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k, %bb.f, %_ZNK4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.i
  %.sroa.06.1.i = phi ptr [ %i.as, %bb.f ], [ %i.as, %bb.o ], [ %i.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %i.as, %bb.k ], [ null, %_ZNK4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.i ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.not.i = icmp eq ptr %i.r, null                ; 2 uses
  br i1 %.not.i, label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5emptyEv.exit.thread, label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5emptyEv.exit

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5emptyEv.exit: ; preds = %_ZNK4entt14basic_registryINS_6entityESaIS1_EE15group_if_existsIJEJKiKcEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIKT_S1_SaINSt12remove_constISB_E4typeEEE4typeEEEENS_5get_tIJDpNS9_IKT0_S1_SaINSC_ISM_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IKT1_S1_SaINSC_ISW_E4typeEEE4typeEEEEEENSK_IJDpSL_EEENSU_IJDpSV_EEE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !298
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !298
  %i.bs = icmp eq ptr %i.bp, %i.br                ; 2 uses
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %7, align 8, !tbaa !308
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !309
  br i1 %i.bs, label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5emptyEv.exit.thread, label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ov

bb.q:                                             ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bw = load ptr, ptr %10, align 8, !tbaa !313
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 22, ptr noundef %i.bw)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #28
  %i.bx = load ptr, ptr %10, align 8, !tbaa !313  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !293
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.cc = load ptr, ptr %8, align 8, !tbaa !315   ; 3 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !265
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(128) %i.cc) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !316 ; 4 uses
  %.not.i.i443 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i443, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !313 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.v
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !293
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.os

bb.w:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit449

bb.x:                                             ; preds = %bb.r
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

bb.y:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.t
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.z ], [ %i.co, %bb.y ] ; 2 uses
  %i.cq = load ptr, ptr %10, align 8, !tbaa !313  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444: ; preds = %bb.aa
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !293
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.x ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444 ], [ %.pn, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.cv = load ptr, ptr %8, align 8, !tbaa !315   ; 3 uses
  %.not.i.i447 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i447, label %_ZN7testing7MessageD2Ev.exit449, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i448

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i448: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !265
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(128) %i.cv) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit449

_ZN7testing7MessageD2Ev.exit449:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i448, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, %bb.w
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.w ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i448 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ov

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5emptyEv.exit.thread: ; preds = %_ZNK4entt14basic_registryINS_6entityESaIS1_EE15group_if_existsIJEJKiKcEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIKT_S1_SaINSt12remove_constISB_E4typeEEE4typeEEEENS_5get_tIJDpNS9_IKT0_S1_SaINSC_ISM_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IKT1_S1_SaINSC_ISW_E4typeEEE4typeEEEEEENSK_IJDpSL_EEENSU_IJDpSV_EEE.exit, %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5emptyEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.da = invoke noundef i32 @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEE8generateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.cz)
          to label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit unwind label %bb.ab ; 5 uses

_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit: ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5emptyEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 49, ptr %i.a, align 1, !tbaa !293
  %i.db = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %6, i32 noundef -1471413475)
          to label %.noexc unwind label %.loopexit.split-lp993 ; 4 uses

.noexc:                                           ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit
  %i.dc = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJcEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.db, i32 noundef %i.da, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.noexc456 unwind label %.loopexit.split-lp993 ; 0 uses

.noexc456:                                        ; preds = %.noexc
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 112 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 104
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !343
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 120
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !344 ; 2 uses
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !345 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.dh, %i.di
  br i1 %.not5.i.i.i, label %.loopexit997, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.noexc456
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc457, %.lr.ph.preheader.i.i.i
  %.06.i.i.i = phi i64 [ %i.dn, %.noexc457 ], [ %i.dm, %.lr.ph.preheader.i.i.i ]
  %i.dn = add i64 %.06.i.i.i, -1                  ; 3 uses
  %i.do = load ptr, ptr %i.dd, align 8, !tbaa !345
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dn ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !347
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !348
  invoke void %i.dr(ptr noundef %i.ds, ptr noundef nonnull align 8 dereferenceable(336) %i.df, i32 noundef %i.da)
          to label %.noexc457 unwind label %.loopexit992, !inline_history !3

.noexc457:                                        ; preds = %.lr.ph.i.i.i
  %.not.i.i.i455 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i455, label %.loopexit997, label %.lr.ph.i.i.i, !llvm.loop !4

.loopexit997:                                     ; preds = %.noexc457, %.noexc456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
end_hunk_0
begin_hunk_1_@_ZN35GroupNonOwning_Functionalities_Test8TestBodyEv:bb.a

bb.et:                                            ; preds = %bb.ep
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614

bb.eu:                                            ; preds = %bb.eq
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %bb.er
  %i.rr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #28
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.pn291 = phi { ptr, i32 } [ %i.rr, %bb.ev ], [ %i.rq, %bb.eu ] ; 2 uses
  %i.rs = load ptr, ptr %34, align 8, !tbaa !313  ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612: ; preds = %bb.ew
  %i.rv = load i64, ptr %i.rt, align 8, !tbaa !293
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612, %bb.et
  %.pn291.pn = phi { ptr, i32 } [ %i.rp, %bb.et ], [ %.pn291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612 ], [ %.pn291, %bb.ew ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  %i.rx = load ptr, ptr %32, align 8, !tbaa !315  ; 3 uses
  %.not.i.i615 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i615, label %_ZN7testing7MessageD2Ev.exit617, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !265
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8
  call void %i.sa(ptr noundef nonnull align 8 dereferenceable(128) %i.rx) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit617

_ZN7testing7MessageD2Ev.exit617:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, %bb.es
  %.pn291.pn.pn = phi { ptr, i32 } [ %i.ro, %bb.es ], [ %.pn291.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614 ], [ %.pn291.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %bb.ez

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i618: ; preds = %bb.dv
  %i.sb = load i64, ptr %i.pi, align 8, !tbaa !293
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.pl, i64 noundef %i.sc) #29
  br label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit626

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit626: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i618
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  %i.sd = load ptr, ptr %i.fi, align 8, !tbaa !362 ; 2 uses
  %i.se = load ptr, ptr %i.fg, align 8, !tbaa !363 ; 2 uses
  %i.sf = ptrtoint ptr %i.sd to i64
  %i.sg = ptrtoint ptr %i.se to i64
  %i.sh = sub i64 %i.sf, %i.sg
  %i.si = ashr exact i64 %i.sh, 2
  store ptr %i.fg, ptr %36, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.si, ptr %i.sj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  store ptr %i.fg, ptr %37, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 0, ptr %i.sk, align 8
  %i.sl = icmp eq ptr %i.sd, %i.se
  br i1 %i.sl, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit626
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %35)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal19sparse_set_iteratorISt6vectorINS2_6entityESaIS6_EEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit unwind label %bb.fa

bb.ey:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit626
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIN4entt8internal19sparse_set_iteratorISt6vectorINS2_6entityESaIS6_EEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_SC_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %35, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull @.str.342)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal19sparse_set_iteratorISt6vectorINS2_6entityESaIS6_EEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit unwind label %bb.fa

_ZN7testing8internal11CmpHelperNEIN4entt8internal19sparse_set_iteratorISt6vectorINS2_6entityESaIS6_EEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit: ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  %i.sm = load i8, ptr %35, align 8, !tbaa !308, !range !364, !noundef !365
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %bb.fk, label %bb.fb

bb.ez:                                            ; preds = %bb.em, %bb.en, %bb.ei, %_ZN7testing7MessageD2Ev.exit617, %bb.dx
  %.pn291.pn.pn.pn = phi { ptr, i32 } [ %.pn291.pn.pn, %_ZN7testing7MessageD2Ev.exit617 ], [ %i.qo, %bb.ei ], [ %i.pr, %bb.dx ], [ %i.qx, %bb.em ], [ %.pn287, %bb.en ]
  %i.so = load ptr, ptr %30, align 8, !tbaa !313  ; 2 uses
  %i.sp = icmp eq ptr %i.so, %i.pi
  br i1 %i.sp, label %_ZN7testing8internal14TrueWithStringD2Ev.exit634, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i632

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i632: ; preds = %bb.ez
  %i.sq = load i64, ptr %i.pi, align 8, !tbaa !293
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.sr) #29
  br label %_ZN7testing8internal14TrueWithStringD2Ev.exit634

_ZN7testing8internal14TrueWithStringD2Ev.exit634: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i632
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %bb.ou

bb.fa:                                            ; preds = %bb.ey, %bb.ex
  %i.ss = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %bb.fn

bb.fb:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal19sparse_set_iteratorISt6vectorINS2_6entityESaIS6_EEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.fc unwind label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  %i.st = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i635 = icmp eq ptr %i.su, null
  br i1 %.not.i.i.i635, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !313
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.fd, %bb.fc
  %i.sw = phi ptr [ %i.sv, %bb.fd ], [ @.str.300, %bb.fc ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %39, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 37, ptr noundef %i.sw)
          to label %bb.fe unwind label %bb.fh

bb.fe:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.ff unwind label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  %i.sx = load ptr, ptr %38, align 8, !tbaa !315  ; 3 uses
  %.not.i.i636 = icmp eq ptr %i.sx, null
  br i1 %.not.i.i636, label %_ZN7testing7MessageD2Ev.exit638, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i637

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i637: ; preds = %bb.ff
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !265
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8
  call void %i.ta(ptr noundef nonnull align 8 dereferenceable(128) %i.sx) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit638

_ZN7testing7MessageD2Ev.exit638:                  ; preds = %bb.ff, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i637
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %.critedge419

bb.fg:                                            ; preds = %bb.fb
  %i.tb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit641

bb.fh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fe
  %i.td = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #28
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.pn296 = phi { ptr, i32 } [ %i.td, %bb.fi ], [ %i.tc, %bb.fh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  %i.te = load ptr, ptr %38, align 8, !tbaa !315  ; 3 uses
  %.not.i.i639 = icmp eq ptr %i.te, null
  br i1 %.not.i.i639, label %_ZN7testing7MessageD2Ev.exit641, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i640

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i640: ; preds = %bb.fj
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !265
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = load ptr, ptr %i.tg, align 8
  call void %i.th(ptr noundef nonnull align 8 dereferenceable(128) %i.te) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit641

_ZN7testing7MessageD2Ev.exit641:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i640, %bb.fj, %bb.fg
  %.pn296.pn = phi { ptr, i32 } [ %i.tb, %bb.fg ], [ %.pn296, %bb.fj ], [ %.pn296, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i640 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #28
  br label %bb.fn

bb.fk:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal19sparse_set_iteratorISt6vectorINS2_6entityESaIS6_EEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  %.not.i642 = icmp ne ptr %.sroa.06.1.i, null    ; 6 uses
  br i1 %.not.i642, label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit647, label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit647.thread

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit647.thread: ; preds = %bb.fk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  br label %bb.fm

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit647: ; preds = %bb.fk
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 64 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 72
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !362 ; 2 uses
  %i.tm = load ptr, ptr %i.tj, align 8, !tbaa !363 ; 2 uses
  %i.tn = ptrtoint ptr %i.tl to i64
  %i.to = ptrtoint ptr %i.tm to i64
  %i.tp = sub i64 %i.tn, %i.to
  %i.tq = ashr exact i64 %i.tp, 2
  store ptr %i.tj, ptr %41, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 %i.tq, ptr %i.tr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 64 ; 5 uses
  store ptr %i.ts, ptr %42, align 8
  %i.tt = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 0, ptr %i.tt, align 8
  %i.tu = icmp eq ptr %i.tl, %i.tm
  br i1 %i.tu, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit647
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %40)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal19sparse_set_iteratorISt6vectorINS2_6entityESaIS6_EEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit654 unwind label %bb.fo

bb.fm:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit647.thread, %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit647
  %spec.select.i6491176 = phi ptr [ null, %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit647.thread ], [ %i.ts, %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit647 ]
  %i.tv = phi ptr [ %i.ti, %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit647.thread ], [ %i.ts, %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit647 ]
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIN4entt8internal19sparse_set_iteratorISt6vectorINS2_6entityESaIS6_EEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_SC_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %40, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull @.str.342)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal19sparse_set_iteratorISt6vectorINS2_6entityESaIS6_EEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit654 unwind label %bb.fo

_ZN7testing8internal11CmpHelperNEIN4entt8internal19sparse_set_iteratorISt6vectorINS2_6entityESaIS6_EEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit654: ; preds = %bb.fl, %bb.fm
  %spec.select.i6491175 = phi ptr [ %i.ts, %bb.fl ], [ %spec.select.i6491176, %bb.fm ]
  %i.tw = phi ptr [ %i.ts, %bb.fl ], [ %i.tv, %bb.fm ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  %i.tx = load i8, ptr %40, align 8, !tbaa !308, !range !364, !noundef !365
  %i.ty = trunc nuw i8 %i.tx to i1
  br i1 %i.ty, label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit, label %bb.fp

bb.fn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit641, %bb.fa
  %.pn296.pn.pn = phi { ptr, i32 } [ %.pn296.pn, %_ZN7testing7MessageD2Ev.exit641 ], [ %i.ss, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.ou

bb.fo:                                            ; preds = %bb.fm, %bb.fl
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %bb.fz

bb.fp:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal19sparse_set_iteratorISt6vectorINS2_6entityESaIS6_EEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit654
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.fq unwind label %bb.fu

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  %i.ua = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i655 = icmp eq ptr %i.ub, null
  br i1 %.not.i.i.i655, label %_ZNK7testing15AssertionResult15failure_messageEv.exit656, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !313
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit656

_ZNK7testing15AssertionResult15failure_messageEv.exit656: ; preds = %bb.fr, %bb.fq
  %i.ud = phi ptr [ %i.uc, %bb.fr ], [ @.str.300, %bb.fq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %44, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 38, ptr noundef %i.ud)
          to label %bb.fs unwind label %bb.fv

bb.fs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit656
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.ft unwind label %bb.fw

bb.ft:                                            ; preds = %bb.fs
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  %i.ue = load ptr, ptr %43, align 8, !tbaa !315  ; 3 uses
  %.not.i.i657 = icmp eq ptr %i.ue, null
  br i1 %.not.i.i657, label %_ZN7testing7MessageD2Ev.exit659, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i658

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i658: ; preds = %bb.ft
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !265
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8
  call void %i.uh(ptr noundef nonnull align 8 dereferenceable(128) %i.ue) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit659

_ZN7testing7MessageD2Ev.exit659:                  ; preds = %bb.ft, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i658
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %40) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %.critedge419

bb.fu:                                            ; preds = %bb.fp
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit662

bb.fv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit656
  %i.uj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fs
  %i.uk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #28
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.pn300 = phi { ptr, i32 } [ %i.uk, %bb.fw ], [ %i.uj, %bb.fv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  %i.ul = load ptr, ptr %43, align 8, !tbaa !315  ; 3 uses
  %.not.i.i660 = icmp eq ptr %i.ul, null
  br i1 %.not.i.i660, label %_ZN7testing7MessageD2Ev.exit662, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i661

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i661: ; preds = %bb.fx
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !265
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load ptr, ptr %i.un, align 8
  call void %i.uo(ptr noundef nonnull align 8 dereferenceable(128) %i.ul) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit662

_ZN7testing7MessageD2Ev.exit662:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i661, %bb.fx, %bb.fu
  %.pn300.pn = phi { ptr, i32 } [ %i.ui, %bb.fu ], [ %.pn300, %bb.fx ], [ %.pn300, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i661 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %40) #28
  br label %bb.fz

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit: ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal19sparse_set_iteratorISt6vectorINS2_6entityESaIS6_EEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit654
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %40) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  store ptr %i.fg, ptr %46, align 8, !tbaa !367, !alias.scope !890
  %.sroa.2.0..sroa_idx.i.i.i.i664 = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i664, align 8, !tbaa !281, !alias.scope !890
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.up = load ptr, ptr %i.fi, align 8, !tbaa !362, !noalias !893
  %i.uq = load ptr, ptr %i.fg, align 8, !tbaa !363, !noalias !893
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = ptrtoint ptr %i.uq to i64
  %i.ut = sub i64 %i.ur, %i.us
  %i.uu = ashr exact i64 %i.ut, 2
  store ptr %i.fg, ptr %47, align 8, !tbaa !367, !alias.scope !894
  %.sroa.2.0..sroa_idx.i.i.i.i667 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %i.uu, ptr %.sroa.2.0..sroa_idx.i.i.i.i667, align 8, !tbaa !281, !alias.scope !894
  invoke void @_ZN7testing8internal11CmpHelperNEISt16reverse_iteratorIN4entt8internal19sparse_set_iteratorISt6vectorINS3_6entityESaIS7_EEEEESB_EENS_15AssertionResultEPKcSE_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %45, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 8 dereferenceable(16) %47)
          to label %bb.fy unwind label %bb.ga

bb.fy:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  %i.uv = load i8, ptr %45, align 8, !tbaa !308, !range !364, !noundef !365
  %i.uw = trunc nuw i8 %i.uv to i1
  br i1 %i.uw, label %bb.gk, label %bb.gb

bb.fz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit662, %bb.fo
  %.pn300.pn.pn = phi { ptr, i32 } [ %.pn300.pn, %_ZN7testing7MessageD2Ev.exit662 ], [ %i.tz, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %bb.ou

bb.ga:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit
  %i.ux = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %bb.go

bb.gb:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %bb.gc unwind label %bb.gg

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #28
  %i.uy = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i668 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i.i668, label %_ZNK7testing15AssertionResult15failure_messageEv.exit669, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !313
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit669

_ZNK7testing15AssertionResult15failure_messageEv.exit669: ; preds = %bb.gd, %bb.gc
  %i.vb = phi ptr [ %i.va, %bb.gd ], [ @.str.300, %bb.gc ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %49, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 39, ptr noundef %i.vb)
          to label %bb.ge unwind label %bb.gh

bb.ge:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit669
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %bb.gf unwind label %bb.gi

bb.gf:                                            ; preds = %bb.ge
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  %i.vc = load ptr, ptr %48, align 8, !tbaa !315  ; 3 uses
  %.not.i.i670 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i670, label %_ZN7testing7MessageD2Ev.exit672, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i671

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i671: ; preds = %bb.gf
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !265
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8
  call void %i.vf(ptr noundef nonnull align 8 dereferenceable(128) %i.vc) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit672

_ZN7testing7MessageD2Ev.exit672:                  ; preds = %bb.gf, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i671
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  br label %.critedge419

bb.gg:                                            ; preds = %bb.gb
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit675

bb.gh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit669
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.gi:                                            ; preds = %bb.ge
  %i.vi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #28
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.pn304 = phi { ptr, i32 } [ %i.vi, %bb.gi ], [ %i.vh, %bb.gh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  %i.vj = load ptr, ptr %48, align 8, !tbaa !315  ; 3 uses
  %.not.i.i673 = icmp eq ptr %i.vj, null
  br i1 %.not.i.i673, label %_ZN7testing7MessageD2Ev.exit675, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i674

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i674: ; preds = %bb.gj
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !265
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8
  call void %i.vm(ptr noundef nonnull align 8 dereferenceable(128) %i.vj) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit675

_ZN7testing7MessageD2Ev.exit675:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i674, %bb.gj, %bb.gg
  %.pn304.pn = phi { ptr, i32 } [ %i.vg, %bb.gg ], [ %.pn304, %bb.gj ], [ %.pn304, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i674 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  br label %bb.go

bb.gk:                                            ; preds = %bb.fy
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #28
  br i1 %.not.i642, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  store ptr %i.tw, ptr %51, align 8, !tbaa !367, !alias.scope !895
  %.sroa.2.0..sroa_idx.i.i.i.i677 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i677, align 8, !tbaa !281, !alias.scope !895
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 72
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !362, !noalias !898
  %i.vp = load ptr, ptr %i.tw, align 8, !tbaa !363, !noalias !898
  %i.vq = ptrtoint ptr %i.vo to i64
  %i.vr = ptrtoint ptr %i.vp to i64
  %i.vs = sub i64 %i.vq, %i.vr
  %i.vt = ashr exact i64 %i.vs, 2
  store ptr %i.tw, ptr %52, align 8, !tbaa !367, !alias.scope !899
  %.sroa.2.0..sroa_idx.i.i.i.i680 = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 %i.vt, ptr %.sroa.2.0..sroa_idx.i.i.i.i680, align 8, !tbaa !281, !alias.scope !899
  br label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit

bb.gm:                                            ; preds = %bb.gk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, i8 0, i64 16, i1 false), !alias.scope !900
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false), !alias.scope !896
  br label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit: ; preds = %bb.gl, %bb.gm
  invoke void @_ZN7testing8internal11CmpHelperNEISt16reverse_iteratorIN4entt8internal19sparse_set_iteratorISt6vectorINS3_6entityESaIS7_EEEEESB_EENS_15AssertionResultEPKcSE_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %50, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(16) %52)
          to label %bb.gn unwind label %bb.gp

bb.gn:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  %i.vu = load i8, ptr %50, align 8, !tbaa !308, !range !364, !noundef !365
  %i.vv = trunc nuw i8 %i.vu to i1
  br i1 %i.vv, label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4sizeEv.exit, label %bb.gq

bb.go:                                            ; preds = %_ZN7testing7MessageD2Ev.exit675, %bb.ga
  %.pn304.pn.pn = phi { ptr, i32 } [ %.pn304.pn, %_ZN7testing7MessageD2Ev.exit675 ], [ %i.ux, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  br label %bb.ou

bb.gp:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit
  %i.vw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  br label %bb.ha

bb.gq:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.gr unwind label %bb.gv

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #28
  %i.vx = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i681 = icmp eq ptr %i.vy, null
  br i1 %.not.i.i.i681, label %_ZNK7testing15AssertionResult15failure_messageEv.exit682, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !313
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit682

_ZNK7testing15AssertionResult15failure_messageEv.exit682: ; preds = %bb.gs, %bb.gr
  %i.wa = phi ptr [ %i.vz, %bb.gs ], [ @.str.300, %bb.gr ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %54, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 40, ptr noundef %i.wa)
          to label %bb.gt unwind label %bb.gw

bb.gt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit682
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.gu unwind label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
  %i.wb = load ptr, ptr %53, align 8, !tbaa !315  ; 3 uses
  %.not.i.i683 = icmp eq ptr %i.wb, null
  br i1 %.not.i.i683, label %_ZN7testing7MessageD2Ev.exit685, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i684

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i684: ; preds = %bb.gu
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !265
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = load ptr, ptr %i.wd, align 8
  call void %i.we(ptr noundef nonnull align 8 dereferenceable(128) %i.wb) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit685

_ZN7testing7MessageD2Ev.exit685:                  ; preds = %bb.gu, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i684
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %50) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  br label %.critedge419

bb.gv:                                            ; preds = %bb.gq
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit688

bb.gw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit682
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.gx:                                            ; preds = %bb.gt
  %i.wh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #28
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.pn308 = phi { ptr, i32 } [ %i.wh, %bb.gx ], [ %i.wg, %bb.gw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
  %i.wi = load ptr, ptr %53, align 8, !tbaa !315  ; 3 uses
  %.not.i.i686 = icmp eq ptr %i.wi, null
  br i1 %.not.i.i686, label %_ZN7testing7MessageD2Ev.exit688, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i687

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i687: ; preds = %bb.gy
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !265
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8
  call void %i.wl(ptr noundef nonnull align 8 dereferenceable(128) %i.wi) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit688

_ZN7testing7MessageD2Ev.exit688:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i687, %bb.gy, %bb.gv
  %.pn308.pn = phi { ptr, i32 } [ %i.wf, %bb.gv ], [ %.pn308, %bb.gy ], [ %.pn308, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i687 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %50) #28
  br label %bb.ha

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4sizeEv.exit: ; preds = %bb.gn
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %50) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.wm = load ptr, ptr %i.fi, align 8, !tbaa !362
  %i.wn = load ptr, ptr %i.fg, align 8, !tbaa !363
  %i.wo = ptrtoint ptr %i.wm to i64
  %i.wp = ptrtoint ptr %i.wn to i64
  %i.wq = sub i64 %i.wo, %i.wp
  %i.wr = ashr exact i64 %i.wq, 2
  store i64 %i.wr, ptr %i.e, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i32 1, ptr %i.f, align 4, !tbaa !282
  invoke void @_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %55, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.gz unwind label %bb.hb

bb.gz:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4sizeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.ws = load i8, ptr %55, align 8, !tbaa !308, !range !364, !noundef !365
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %bb.hl, label %bb.hc

bb.ha:                                            ; preds = %_ZN7testing7MessageD2Ev.exit688, %bb.gp
  %.pn308.pn.pn = phi { ptr, i32 } [ %.pn308.pn, %_ZN7testing7MessageD2Ev.exit688 ], [ %i.vw, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  br label %bb.ou

bb.hb:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4sizeEv.exit
  %i.wu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %bb.hn

bb.hc:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.hd unwind label %bb.hh

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #28
  %i.wv = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i690 = icmp eq ptr %i.ww, null
  br i1 %.not.i.i.i690, label %_ZNK7testing15AssertionResult15failure_messageEv.exit691, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !313
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit691

_ZNK7testing15AssertionResult15failure_messageEv.exit691: ; preds = %bb.he, %bb.hd
  %i.wy = phi ptr [ %i.wx, %bb.he ], [ @.str.300, %bb.hd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %57, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 41, ptr noundef %i.wy)
          to label %bb.hf unwind label %bb.hi

bb.hf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit691
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.hg unwind label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #28
  %i.wz = load ptr, ptr %56, align 8, !tbaa !315  ; 3 uses
  %.not.i.i692 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i692, label %_ZN7testing7MessageD2Ev.exit694, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i693

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i693: ; preds = %bb.hg
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !265
end_hunk_1
begin_hunk_2_@_ZN35GroupNonOwning_Functionalities_Test8TestBodyEv:bb.a
_ZNK7testing15AssertionResult15failure_messageEv.exit785: ; preds = %bb.kn, %bb.km
  %i.afr = phi ptr [ %i.afq, %bb.kn ], [ @.str.300, %bb.km ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %75, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 57, ptr noundef %i.afr)
          to label %bb.ko unwind label %bb.kr

bb.ko:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit785
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull align 8 dereferenceable(8) %74)
          to label %bb.kp unwind label %bb.ks

bb.kp:                                            ; preds = %bb.ko
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %75) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #28
  %i.afs = load ptr, ptr %74, align 8, !tbaa !315 ; 3 uses
  %.not.i.i786 = icmp eq ptr %i.afs, null
  br i1 %.not.i.i786, label %_ZN7testing7MessageD2Ev.exit788, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i787

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i787: ; preds = %bb.kp
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !265
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 8
  %i.afv = load ptr, ptr %i.afu, align 8
  call void %i.afv(ptr noundef nonnull align 8 dereferenceable(128) %i.afs) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit788

_ZN7testing7MessageD2Ev.exit788:                  ; preds = %bb.kp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i787
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %73) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #28
  br label %.critedge419

bb.kq:                                            ; preds = %bb.kl
  %i.afw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit791

bb.kr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit785
  %i.afx = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.ks:                                            ; preds = %bb.ko
  %i.afy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %75) #28
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  %.pn341 = phi { ptr, i32 } [ %i.afy, %bb.ks ], [ %i.afx, %bb.kr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #28
  %i.afz = load ptr, ptr %74, align 8, !tbaa !315 ; 3 uses
  %.not.i.i789 = icmp eq ptr %i.afz, null
  br i1 %.not.i.i789, label %_ZN7testing7MessageD2Ev.exit791, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i790

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i790: ; preds = %bb.kt
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !265
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %i.agc = load ptr, ptr %i.agb, align 8
  call void %i.agc(ptr noundef nonnull align 8 dereferenceable(128) %i.afz) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit791

_ZN7testing7MessageD2Ev.exit791:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i790, %bb.kt, %bb.kq
  %.pn341.pn = phi { ptr, i32 } [ %i.afw, %bb.kq ], [ %.pn341, %bb.kt ], [ %.pn341, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i790 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %73) #28
  br label %bb.kx

bb.ku:                                            ; preds = %bb.kj
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %73) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #28
  invoke void @_ZN4entt14basic_registryINS_6entityESaIS1_EE5eraseIcJEEEvS1_(ptr noundef nonnull align 8 dereferenceable(336) %6, i32 noundef %i.da)
          to label %bb.kv unwind label %bb.ad

bb.kv:                                            ; preds = %bb.ku
  %i.agd = load i32, ptr %i.b, align 4, !tbaa !350
  invoke void @_ZN4entt14basic_registryINS_6entityESaIS1_EE5eraseIcJEEEvS1_(ptr noundef nonnull align 8 dereferenceable(336) %6, i32 noundef %i.agd)
          to label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit797 unwind label %bb.ad

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit797: ; preds = %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #28
  %i.age = load ptr, ptr %i.fi, align 8, !tbaa !362
  %i.agf = load ptr, ptr %i.fg, align 8, !tbaa !363
  %i.agg = ptrtoint ptr %i.age to i64
  %i.agh = ptrtoint ptr %i.agf to i64
  %i.agi = sub i64 %i.agg, %i.agh
  %i.agj = ashr exact i64 %i.agi, 2
  store ptr %i.fg, ptr %77, align 8
  %i.agk = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i64 %i.agj, ptr %i.agk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #28
  store ptr %i.fg, ptr %78, align 8
  %i.agl = getelementptr inbounds nuw i8, ptr %78, i64 8
  store i64 0, ptr %i.agl, align 8
  invoke void @_ZN7testing8internal8EqHelper7CompareIN4entt8internal19sparse_set_iteratorISt6vectorINS3_6entityESaIS7_EEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %76, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull align 8 dereferenceable(16) %78)
          to label %bb.kw unwind label %bb.ky

bb.kw:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit797
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #28
  %i.agm = load i8, ptr %76, align 8, !tbaa !308, !range !364, !noundef !365
  %i.agn = trunc nuw i8 %i.agm to i1
  br i1 %i.agn, label %bb.li, label %bb.kz

bb.kx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit791, %bb.kk
  %.pn341.pn.pn = phi { ptr, i32 } [ %.pn341.pn, %_ZN7testing7MessageD2Ev.exit791 ], [ %i.afn, %bb.kk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #28
  br label %bb.ou

bb.ky:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit797
  %i.ago = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #28
  br label %bb.ll

bb.kz:                                            ; preds = %bb.kw
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %79)
          to label %bb.la unwind label %bb.le

bb.la:                                            ; preds = %bb.kz
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #28
  %i.agp = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i802 = icmp eq ptr %i.agq, null
  br i1 %.not.i.i.i802, label %_ZNK7testing15AssertionResult15failure_messageEv.exit803, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !313
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit803

_ZNK7testing15AssertionResult15failure_messageEv.exit803: ; preds = %bb.lb, %bb.la
  %i.ags = phi ptr [ %i.agr, %bb.lb ], [ @.str.300, %bb.la ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %80, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 62, ptr noundef %i.ags)
          to label %bb.lc unwind label %bb.lf

bb.lc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit803
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef nonnull align 8 dereferenceable(8) %79)
          to label %bb.ld unwind label %bb.lg

bb.ld:                                            ; preds = %bb.lc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %80) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28
  %i.agt = load ptr, ptr %79, align 8, !tbaa !315 ; 3 uses
  %.not.i.i804 = icmp eq ptr %i.agt, null
  br i1 %.not.i.i804, label %_ZN7testing7MessageD2Ev.exit806, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i805

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i805: ; preds = %bb.ld
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !265
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  %i.agw = load ptr, ptr %i.agv, align 8
  call void %i.agw(ptr noundef nonnull align 8 dereferenceable(128) %i.agt) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit806

_ZN7testing7MessageD2Ev.exit806:                  ; preds = %bb.ld, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i805
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28
  br label %.critedge419

bb.le:                                            ; preds = %bb.kz
  %i.agx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit809

bb.lf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit803
  %i.agy = landingpad { ptr, i32 }
          cleanup
  br label %bb.lh

bb.lg:                                            ; preds = %bb.lc
  %i.agz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %80) #28
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %.pn345 = phi { ptr, i32 } [ %i.agz, %bb.lg ], [ %i.agy, %bb.lf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28
  %i.aha = load ptr, ptr %79, align 8, !tbaa !315 ; 3 uses
  %.not.i.i807 = icmp eq ptr %i.aha, null
  br i1 %.not.i.i807, label %_ZN7testing7MessageD2Ev.exit809, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i808

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i808: ; preds = %bb.lh
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !265
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  %i.ahd = load ptr, ptr %i.ahc, align 8
  call void %i.ahd(ptr noundef nonnull align 8 dereferenceable(128) %i.aha) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit809

_ZN7testing7MessageD2Ev.exit809:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i808, %bb.lh, %bb.le
  %.pn345.pn = phi { ptr, i32 } [ %i.agx, %bb.le ], [ %.pn345, %bb.lh ], [ %.pn345, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i808 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #28
  br label %bb.ll

bb.li:                                            ; preds = %bb.kw
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #28
  br i1 %.not.i642, label %bb.lj, label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit815

bb.lj:                                            ; preds = %bb.li
  %i.ahe = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 72
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !362
  %i.ahg = load ptr, ptr %i.tw, align 8, !tbaa !363
  %i.ahh = ptrtoint ptr %i.ahf to i64
  %i.ahi = ptrtoint ptr %i.ahg to i64
  %i.ahj = sub i64 %i.ahh, %i.ahi
  %i.ahk = ashr exact i64 %i.ahj, 2
  br label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit815

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit815: ; preds = %bb.li, %bb.lj
  %.sroa.0.0.i811 = phi ptr [ %i.tw, %bb.lj ], [ null, %bb.li ]
  %.sroa.3.0.i812 = phi i64 [ %i.ahk, %bb.lj ], [ 0, %bb.li ]
  store ptr %.sroa.0.0.i811, ptr %82, align 8
  %i.ahl = getelementptr inbounds nuw i8, ptr %82, i64 8
  store i64 %.sroa.3.0.i812, ptr %i.ahl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #28
  store ptr %spec.select.i6491175, ptr %83, align 8
  %i.ahm = getelementptr inbounds nuw i8, ptr %83, i64 8
  store i64 0, ptr %i.ahm, align 8
  invoke void @_ZN7testing8internal8EqHelper7CompareIN4entt8internal19sparse_set_iteratorISt6vectorINS3_6entityESaIS7_EEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %81, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(16) %82, ptr noundef nonnull align 8 dereferenceable(16) %83)
          to label %bb.lk unwind label %bb.lm

bb.lk:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit815
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28
  %i.ahn = load i8, ptr %81, align 8, !tbaa !308, !range !364, !noundef !365
  %i.aho = trunc nuw i8 %i.ahn to i1
  br i1 %i.aho, label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit833, label %bb.ln

bb.ll:                                            ; preds = %_ZN7testing7MessageD2Ev.exit809, %bb.ky
  %.pn345.pn.pn = phi { ptr, i32 } [ %.pn345.pn, %_ZN7testing7MessageD2Ev.exit809 ], [ %i.ago, %bb.ky ]
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28
  br label %bb.ou

bb.lm:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5beginEv.exit815
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28
  br label %bb.lx

bb.ln:                                            ; preds = %bb.lk
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %bb.lo unwind label %bb.ls

bb.lo:                                            ; preds = %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #28
  %i.ahq = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i820 = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i.i820, label %_ZNK7testing15AssertionResult15failure_messageEv.exit821, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !313
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit821

_ZNK7testing15AssertionResult15failure_messageEv.exit821: ; preds = %bb.lp, %bb.lo
  %i.aht = phi ptr [ %i.ahs, %bb.lp ], [ @.str.300, %bb.lo ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %85, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 63, ptr noundef %i.aht)
          to label %bb.lq unwind label %bb.lt

bb.lq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit821
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %bb.lr unwind label %bb.lu

bb.lr:                                            ; preds = %bb.lq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %85) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28
  %i.ahu = load ptr, ptr %84, align 8, !tbaa !315 ; 3 uses
  %.not.i.i822 = icmp eq ptr %i.ahu, null
  br i1 %.not.i.i822, label %_ZN7testing7MessageD2Ev.exit824, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i823

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i823: ; preds = %bb.lr
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !265
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %i.ahx = load ptr, ptr %i.ahw, align 8
  call void %i.ahx(ptr noundef nonnull align 8 dereferenceable(128) %i.ahu) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit824

_ZN7testing7MessageD2Ev.exit824:                  ; preds = %bb.lr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i823
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %81) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  br label %.critedge419

bb.ls:                                            ; preds = %bb.ln
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit827

bb.lt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit821
  %i.ahz = landingpad { ptr, i32 }
          cleanup
  br label %bb.lv

bb.lu:                                            ; preds = %bb.lq
  %i.aia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %85) #28
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %.pn349 = phi { ptr, i32 } [ %i.aia, %bb.lu ], [ %i.ahz, %bb.lt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28
  %i.aib = load ptr, ptr %84, align 8, !tbaa !315 ; 3 uses
  %.not.i.i825 = icmp eq ptr %i.aib, null
  br i1 %.not.i.i825, label %_ZN7testing7MessageD2Ev.exit827, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i826

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i826: ; preds = %bb.lv
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !265
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  %i.aie = load ptr, ptr %i.aid, align 8
  call void %i.aie(ptr noundef nonnull align 8 dereferenceable(128) %i.aib) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit827

_ZN7testing7MessageD2Ev.exit827:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i826, %bb.lv, %bb.ls
  %.pn349.pn = phi { ptr, i32 } [ %i.ahy, %bb.ls ], [ %.pn349, %bb.lv ], [ %.pn349, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i826 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %81) #28
  br label %bb.lx

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit833: ; preds = %bb.lk
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %81) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #28
  store ptr %i.fg, ptr %87, align 8, !tbaa !367, !alias.scope !909
  %.sroa.2.0..sroa_idx.i.i.i.i829 = getelementptr inbounds nuw i8, ptr %87, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i829, align 8, !tbaa !281, !alias.scope !909
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.aif = load ptr, ptr %i.fi, align 8, !tbaa !362, !noalias !912
  %i.aig = load ptr, ptr %i.fg, align 8, !tbaa !363, !noalias !912
  %i.aih = ptrtoint ptr %i.aif to i64
  %i.aii = ptrtoint ptr %i.aig to i64
  %i.aij = sub i64 %i.aih, %i.aii
  %i.aik = ashr exact i64 %i.aij, 2
  store ptr %i.fg, ptr %88, align 8, !tbaa !367, !alias.scope !913
  %.sroa.2.0..sroa_idx.i.i.i.i832 = getelementptr inbounds nuw i8, ptr %88, i64 8
  store i64 %i.aik, ptr %.sroa.2.0..sroa_idx.i.i.i.i832, align 8, !tbaa !281, !alias.scope !913
  invoke void @_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal19sparse_set_iteratorISt6vectorINS4_6entityESaIS8_EEEEESC_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %86, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef nonnull align 8 dereferenceable(16) %88)
          to label %bb.lw unwind label %bb.ly

bb.lw:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit833
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28
  %i.ail = load i8, ptr %86, align 8, !tbaa !308, !range !364, !noundef !365
  %i.aim = trunc nuw i8 %i.ail to i1
  br i1 %i.aim, label %bb.mi, label %bb.lz

bb.lx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit827, %bb.lm
  %.pn349.pn.pn = phi { ptr, i32 } [ %.pn349.pn, %_ZN7testing7MessageD2Ev.exit827 ], [ %i.ahp, %bb.lm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  br label %bb.ou

bb.ly:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit833
  %i.ain = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28
  br label %bb.mm

bb.lz:                                            ; preds = %bb.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %89)
          to label %bb.ma unwind label %bb.me

bb.ma:                                            ; preds = %bb.lz
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #28
  %i.aio = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i834 = icmp eq ptr %i.aip, null
  br i1 %.not.i.i.i834, label %_ZNK7testing15AssertionResult15failure_messageEv.exit835, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !313
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit835

_ZNK7testing15AssertionResult15failure_messageEv.exit835: ; preds = %bb.mb, %bb.ma
  %i.air = phi ptr [ %i.aiq, %bb.mb ], [ @.str.300, %bb.ma ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %90, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 64, ptr noundef %i.air)
          to label %bb.mc unwind label %bb.mf

bb.mc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit835
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull align 8 dereferenceable(8) %89)
          to label %bb.md unwind label %bb.mg

bb.md:                                            ; preds = %bb.mc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %90) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28
  %i.ais = load ptr, ptr %89, align 8, !tbaa !315 ; 3 uses
  %.not.i.i836 = icmp eq ptr %i.ais, null
  br i1 %.not.i.i836, label %_ZN7testing7MessageD2Ev.exit838, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i837

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i837: ; preds = %bb.md
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !265
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %i.aiv = load ptr, ptr %i.aiu, align 8
  call void %i.aiv(ptr noundef nonnull align 8 dereferenceable(128) %i.ais) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit838

_ZN7testing7MessageD2Ev.exit838:                  ; preds = %bb.md, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i837
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %86) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28
  br label %.critedge419

bb.me:                                            ; preds = %bb.lz
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit841

bb.mf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit835
  %i.aix = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh

bb.mg:                                            ; preds = %bb.mc
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %90) #28
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %.pn353 = phi { ptr, i32 } [ %i.aiy, %bb.mg ], [ %i.aix, %bb.mf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28
  %i.aiz = load ptr, ptr %89, align 8, !tbaa !315 ; 3 uses
  %.not.i.i839 = icmp eq ptr %i.aiz, null
  br i1 %.not.i.i839, label %_ZN7testing7MessageD2Ev.exit841, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i840

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i840: ; preds = %bb.mh
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !265
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  %i.ajc = load ptr, ptr %i.ajb, align 8
  call void %i.ajc(ptr noundef nonnull align 8 dereferenceable(128) %i.aiz) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit841

_ZN7testing7MessageD2Ev.exit841:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i840, %bb.mh, %bb.me
  %.pn353.pn = phi { ptr, i32 } [ %i.aiw, %bb.me ], [ %.pn353, %bb.mh ], [ %.pn353, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i840 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %86) #28
  br label %bb.mm

bb.mi:                                            ; preds = %bb.lw
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %86) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #28
  br i1 %.not.i642, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  store ptr %i.tw, ptr %92, align 8, !tbaa !367, !alias.scope !914
  %.sroa.2.0..sroa_idx.i.i.i.i843 = getelementptr inbounds nuw i8, ptr %92, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i843, align 8, !tbaa !281, !alias.scope !914
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.ajd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 72
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !362, !noalias !917
  %i.ajf = load ptr, ptr %i.tw, align 8, !tbaa !363, !noalias !917
  %i.ajg = ptrtoint ptr %i.aje to i64
  %i.ajh = ptrtoint ptr %i.ajf to i64
  %i.aji = sub i64 %i.ajg, %i.ajh
  %i.ajj = ashr exact i64 %i.aji, 2
  store ptr %i.tw, ptr %93, align 8, !tbaa !367, !alias.scope !918
  %.sroa.2.0..sroa_idx.i.i.i.i846 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store i64 %i.ajj, ptr %.sroa.2.0..sroa_idx.i.i.i.i846, align 8, !tbaa !281, !alias.scope !918
  br label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit847

bb.mk:                                            ; preds = %bb.mi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %92, i8 0, i64 16, i1 false), !alias.scope !919
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %93, i8 0, i64 16, i1 false), !alias.scope !915
  br label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit847

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit847: ; preds = %bb.mj, %bb.mk
  invoke void @_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal19sparse_set_iteratorISt6vectorINS4_6entityESaIS8_EEEEESC_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %91, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(16) %92, ptr noundef nonnull align 8 dereferenceable(16) %93)
          to label %bb.ml unwind label %bb.mn

bb.ml:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit847
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28
  %i.ajk = load i8, ptr %91, align 8, !tbaa !308, !range !364, !noundef !365
  %i.ajl = trunc nuw i8 %i.ajk to i1
  br i1 %i.ajl, label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5emptyEv.exit857, label %bb.mo

bb.mm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit841, %bb.ly
  %.pn353.pn.pn = phi { ptr, i32 } [ %.pn353.pn, %_ZN7testing7MessageD2Ev.exit841 ], [ %i.ain, %bb.ly ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28
  br label %bb.ou

bb.mn:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEKNS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE4rendEv.exit847
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28
  br label %bb.mx

bb.mo:                                            ; preds = %bb.ml
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %94)
          to label %bb.mp unwind label %bb.mt

bb.mp:                                            ; preds = %bb.mo
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #28
  %i.ajn = getelementptr inbounds nuw i8, ptr %91, i64 8
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i848 = icmp eq ptr %i.ajo, null
  br i1 %.not.i.i.i848, label %_ZNK7testing15AssertionResult15failure_messageEv.exit849, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !313
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit849

_ZNK7testing15AssertionResult15failure_messageEv.exit849: ; preds = %bb.mq, %bb.mp
  %i.ajq = phi ptr [ %i.ajp, %bb.mq ], [ @.str.300, %bb.mp ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %95, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 65, ptr noundef %i.ajq)
          to label %bb.mr unwind label %bb.mu

bb.mr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit849
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef nonnull align 8 dereferenceable(8) %94)
          to label %bb.ms unwind label %bb.mv

bb.ms:                                            ; preds = %bb.mr
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %95) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #28
  %i.ajr = load ptr, ptr %94, align 8, !tbaa !315 ; 3 uses
  %.not.i.i850 = icmp eq ptr %i.ajr, null
  br i1 %.not.i.i850, label %_ZN7testing7MessageD2Ev.exit852, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i851

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i851: ; preds = %bb.ms
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !265
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 8
  %i.aju = load ptr, ptr %i.ajt, align 8
  call void %i.aju(ptr noundef nonnull align 8 dereferenceable(128) %i.ajr) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit852

_ZN7testing7MessageD2Ev.exit852:                  ; preds = %bb.ms, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i851
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %91) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28
  br label %.critedge419

bb.mt:                                            ; preds = %bb.mo
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit855

bb.mu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit849
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  br label %bb.mw

bb.mv:                                            ; preds = %bb.mr
  %i.ajx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %95) #28
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %bb.mu
  %.pn357 = phi { ptr, i32 } [ %i.ajx, %bb.mv ], [ %i.ajw, %bb.mu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #28
  %i.ajy = load ptr, ptr %94, align 8, !tbaa !315 ; 3 uses
  %.not.i.i853 = icmp eq ptr %i.ajy, null
  br i1 %.not.i.i853, label %_ZN7testing7MessageD2Ev.exit855, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i854

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i854: ; preds = %bb.mw
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !265
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8
  %i.akb = load ptr, ptr %i.aka, align 8
  call void %i.akb(ptr noundef nonnull align 8 dereferenceable(128) %i.ajy) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit855

_ZN7testing7MessageD2Ev.exit855:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i854, %bb.mw, %bb.mt
  %.pn357.pn = phi { ptr, i32 } [ %i.ajv, %bb.mt ], [ %.pn357, %bb.mw ], [ %.pn357, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i854 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %91) #28
  br label %bb.mx

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5emptyEv.exit857: ; preds = %bb.ml
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %91) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #28
  %i.akc = load ptr, ptr %i.fg, align 8, !tbaa !298
  %i.akd = load ptr, ptr %i.fi, align 8, !tbaa !298
  %i.ake = icmp eq ptr %i.akc, %i.akd             ; 2 uses
  %i.akf = zext i1 %i.ake to i8
  store i8 %i.akf, ptr %96, align 8, !tbaa !308
  %i.akg = getelementptr inbounds nuw i8, ptr %96, i64 8
  store ptr null, ptr %i.akg, align 8, !tbaa !309
  br i1 %i.ake, label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE8capacityEv.exit, label %bb.my

bb.mx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit855, %bb.mn
  %.pn357.pn.pn = phi { ptr, i32 } [ %.pn357.pn, %_ZN7testing7MessageD2Ev.exit855 ], [ %i.ajm, %bb.mn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28
  br label %bb.ou

bb.my:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE5emptyEv.exit857
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %97)
          to label %bb.mz unwind label %bb.nd

bb.mz:                                            ; preds = %bb.my
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %99, ptr noundef nonnull align 8 dereferenceable(16) %96, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.na unwind label %bb.ne

bb.na:                                            ; preds = %bb.mz
  %i.akh = load ptr, ptr %99, align 8, !tbaa !313
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %98, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 66, ptr noundef %i.akh)
          to label %bb.nb unwind label %bb.nf

bb.nb:                                            ; preds = %bb.na
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %98, ptr noundef nonnull align 8 dereferenceable(8) %97)
          to label %bb.nc unwind label %bb.ng

bb.nc:                                            ; preds = %bb.nb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %98) #28
  %i.aki = load ptr, ptr %99, align 8, !tbaa !313 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 2 uses
  %i.akk = icmp eq ptr %i.aki, %i.akj
  br i1 %i.akk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i858

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i858: ; preds = %bb.nc
  %i.akl = load i64, ptr %i.akj, align 8, !tbaa !293
  %i.akm = add i64 %i.akl, 1
  call void @_ZdlPvm(ptr noundef %i.aki, i64 noundef %i.akm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860: ; preds = %bb.nc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i858
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #28
  %i.akn = load ptr, ptr %97, align 8, !tbaa !315 ; 3 uses
  %.not.i.i861 = icmp eq ptr %i.akn, null
  br i1 %.not.i.i861, label %_ZN7testing7MessageD2Ev.exit863, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i862

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i862: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !265
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 8
  %i.akq = load ptr, ptr %i.akp, align 8
  call void %i.akq(ptr noundef nonnull align 8 dereferenceable(128) %i.akn) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit863

_ZN7testing7MessageD2Ev.exit863:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i862
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %96) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #28
  br label %.critedge419
end_hunk_2
begin_hunk_3_@_ZN35GroupNonOwning_Functionalities_Test8TestBodyEv:bb.a
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %102, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 68, ptr noundef %i.alo)
          to label %bb.nn unwind label %bb.nq

bb.nn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit872
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull align 8 dereferenceable(8) %101)
          to label %bb.no unwind label %bb.nr

bb.no:                                            ; preds = %bb.nn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %102) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #28
  %i.alp = load ptr, ptr %101, align 8, !tbaa !315 ; 3 uses
  %.not.i.i873 = icmp eq ptr %i.alp, null
  br i1 %.not.i.i873, label %_ZN7testing7MessageD2Ev.exit875, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i874

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i874: ; preds = %bb.no
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !265
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 8
  %i.als = load ptr, ptr %i.alr, align 8
  call void %i.als(ptr noundef nonnull align 8 dereferenceable(128) %i.alp) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit875

_ZN7testing7MessageD2Ev.exit875:                  ; preds = %bb.no, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i874
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %100) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #28
  br label %.critedge419

bb.np:                                            ; preds = %bb.nk
  %i.alt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit878

bb.nq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit872
  %i.alu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ns

bb.nr:                                            ; preds = %bb.nn
  %i.alv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %102) #28
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %bb.nq
  %.pn365 = phi { ptr, i32 } [ %i.alv, %bb.nr ], [ %i.alu, %bb.nq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #28
  %i.alw = load ptr, ptr %101, align 8, !tbaa !315 ; 3 uses
  %.not.i.i876 = icmp eq ptr %i.alw, null
  br i1 %.not.i.i876, label %_ZN7testing7MessageD2Ev.exit878, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i877

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i877: ; preds = %bb.ns
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !265
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  %i.alz = load ptr, ptr %i.aly, align 8
  call void %i.alz(ptr noundef nonnull align 8 dereferenceable(128) %i.alw) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit878

_ZN7testing7MessageD2Ev.exit878:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i877, %bb.ns, %bb.np
  %.pn365.pn = phi { ptr, i32 } [ %i.alt, %bb.np ], [ %.pn365, %bb.ns ], [ %.pn365, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i877 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %100) #28
  br label %bb.nv

bb.nt:                                            ; preds = %bb.ni
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %100) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #28
  %i.ama = load ptr, ptr %i.afk, align 8, !tbaa !265
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 80
  %i.amc = load ptr, ptr %i.amb, align 8
  invoke void %i.amc(ptr noundef nonnull align 8 dereferenceable(80) %i.afk)
          to label %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE8capacityEv.exit882 unwind label %bb.ad, !inline_history !884

_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE8capacityEv.exit882: ; preds = %bb.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #28
  %i.amd = load ptr, ptr %i.afk, align 8, !tbaa !265
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 72
  %i.amf = load ptr, ptr %i.ame, align 8
  %i.amg = call noundef i64 %i.amf(ptr noundef nonnull align 8 dereferenceable(80) %i.afk) #28, !inline_history !883
  store i64 %i.amg, ptr %i.p, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #28
  store i32 0, ptr %i.q, align 4, !tbaa !282
  invoke void @_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %103, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
          to label %bb.nu unwind label %bb.nw

bb.nu:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE8capacityEv.exit882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  %i.amh = load i8, ptr %103, align 8, !tbaa !308, !range !364, !noundef !365
  %i.ami = trunc nuw i8 %i.amh to i1
  br i1 %i.ami, label %bb.oh, label %bb.nx

bb.nv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit878, %bb.nj
  %.pn365.pn.pn = phi { ptr, i32 } [ %.pn365.pn, %_ZN7testing7MessageD2Ev.exit878 ], [ %i.alk, %bb.nj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #28
  br label %bb.ou

bb.nw:                                            ; preds = %_ZNK4entt11basic_groupINS_7owned_tIJEEENS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEE8capacityEv.exit882
  %i.amj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  br label %bb.og

bb.nx:                                            ; preds = %bb.nu
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %104)
          to label %bb.ny unwind label %bb.oc

bb.ny:                                            ; preds = %bb.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #28
  %i.amk = getelementptr inbounds nuw i8, ptr %103, i64 8
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i883 = icmp eq ptr %i.aml, null
  br i1 %.not.i.i.i883, label %_ZNK7testing15AssertionResult15failure_messageEv.exit884, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !313
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit884

_ZNK7testing15AssertionResult15failure_messageEv.exit884: ; preds = %bb.nz, %bb.ny
  %i.amn = phi ptr [ %i.amm, %bb.nz ], [ @.str.300, %bb.ny ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %105, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 72, ptr noundef %i.amn)
          to label %bb.oa unwind label %bb.od

bb.oa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit884
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull align 8 dereferenceable(8) %104)
          to label %bb.ob unwind label %bb.oe

bb.ob:                                            ; preds = %bb.oa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %105) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #28
  %i.amo = load ptr, ptr %104, align 8, !tbaa !315 ; 3 uses
  %.not.i.i885 = icmp eq ptr %i.amo, null
  br i1 %.not.i.i885, label %_ZN7testing7MessageD2Ev.exit887, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i886

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i886: ; preds = %bb.ob
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !265
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 8
  %i.amr = load ptr, ptr %i.amq, align 8
  call void %i.amr(ptr noundef nonnull align 8 dereferenceable(128) %i.amo) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit887

_ZN7testing7MessageD2Ev.exit887:                  ; preds = %bb.ob, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i886
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %103) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #28
  br label %.critedge419

bb.oc:                                            ; preds = %bb.nx
  %i.ams = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit890

bb.od:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit884
  %i.amt = landingpad { ptr, i32 }
          cleanup
  br label %bb.of

bb.oe:                                            ; preds = %bb.oa
  %i.amu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %105) #28
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %bb.od
  %.pn369 = phi { ptr, i32 } [ %i.amu, %bb.oe ], [ %i.amt, %bb.od ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #28
  %i.amv = load ptr, ptr %104, align 8, !tbaa !315 ; 3 uses
  %.not.i.i888 = icmp eq ptr %i.amv, null
  br i1 %.not.i.i888, label %_ZN7testing7MessageD2Ev.exit890, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i889

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i889: ; preds = %bb.of
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !265
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 8
  %i.amy = load ptr, ptr %i.amx, align 8
  call void %i.amy(ptr noundef nonnull align 8 dereferenceable(128) %i.amv) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit890

_ZN7testing7MessageD2Ev.exit890:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i889, %bb.of, %bb.oc
  %.pn369.pn = phi { ptr, i32 } [ %i.ams, %bb.oc ], [ %.pn369, %bb.of ], [ %.pn369, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i889 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %103) #28
  br label %bb.og

bb.og:                                            ; preds = %_ZN7testing7MessageD2Ev.exit890, %bb.nw
  %.pn369.pn.pn = phi { ptr, i32 } [ %.pn369.pn, %_ZN7testing7MessageD2Ev.exit890 ], [ %i.amj, %bb.nw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #28
  br label %bb.ou

bb.oh:                                            ; preds = %bb.nu
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %103) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #28
  store i8 1, ptr %106, align 8, !tbaa !308
  %i.amz = getelementptr inbounds nuw i8, ptr %106, i64 8
  store ptr null, ptr %i.amz, align 8, !tbaa !309
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %106) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #28
  %i.ana = zext i1 %.not.i642 to i8
  store i8 %i.ana, ptr %107, align 8, !tbaa !308
  %i.anb = getelementptr inbounds nuw i8, ptr %107, i64 8
  store ptr null, ptr %i.anb, align 8, !tbaa !309
  br i1 %.not.i642, label %.critedge442, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %108)
          to label %bb.oj unwind label %bb.on

bb.oj:                                            ; preds = %bb.oi
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %110, ptr noundef nonnull align 8 dereferenceable(16) %107, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.ok unwind label %bb.oo

bb.ok:                                            ; preds = %bb.oj
  %i.anc = load ptr, ptr %110, align 8, !tbaa !313
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %109, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 77, ptr noundef %i.anc)
          to label %bb.ol unwind label %bb.op

bb.ol:                                            ; preds = %bb.ok
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef nonnull align 8 dereferenceable(8) %108)
          to label %bb.om unwind label %bb.oq

bb.om:                                            ; preds = %bb.ol
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %109) #28
  %i.and = load ptr, ptr %110, align 8, !tbaa !313 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %110, i64 16 ; 2 uses
  %i.anf = icmp eq ptr %i.and, %i.ane
  br i1 %i.anf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit905, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i903

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i903: ; preds = %bb.om
  %i.ang = load i64, ptr %i.ane, align 8, !tbaa !293
  %i.anh = add i64 %i.ang, 1
  call void @_ZdlPvm(ptr noundef %i.and, i64 noundef %i.anh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit905

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit905: ; preds = %bb.om, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i903
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #28
  %i.ani = load ptr, ptr %108, align 8, !tbaa !315 ; 3 uses
  %.not.i.i906 = icmp eq ptr %i.ani, null
  br i1 %.not.i.i906, label %_ZN7testing7MessageD2Ev.exit908, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i907

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i907: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit905
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !265
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 8
  %i.anl = load ptr, ptr %i.ank, align 8
  call void %i.anl(ptr noundef nonnull align 8 dereferenceable(128) %i.ani) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit908

_ZN7testing7MessageD2Ev.exit908:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit905, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i907
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %107) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #28
  br label %.critedge419

bb.on:                                            ; preds = %bb.oi
  %i.anm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.oo:                                            ; preds = %bb.oj
  %i.ann = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911

bb.op:                                            ; preds = %bb.ok
  %i.ano = landingpad { ptr, i32 }
          cleanup
  br label %bb.or

bb.oq:                                            ; preds = %bb.ol
  %i.anp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %109) #28
  br label %bb.or

bb.or:                                            ; preds = %bb.oq, %bb.op
  %.pn377 = phi { ptr, i32 } [ %i.anp, %bb.oq ], [ %i.ano, %bb.op ] ; 2 uses
  %i.anq = load ptr, ptr %110, align 8, !tbaa !313 ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %110, i64 16 ; 2 uses
  %i.ans = icmp eq ptr %i.anq, %i.anr
  br i1 %i.ans, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i909

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i909: ; preds = %bb.or
  %i.ant = load i64, ptr %i.anr, align 8, !tbaa !293
  %i.anu = add i64 %i.ant, 1
  call void @_ZdlPvm(ptr noundef %i.anq, i64 noundef %i.anu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911: ; preds = %bb.or, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i909, %bb.oo
  %.pn377.pn = phi { ptr, i32 } [ %i.ann, %bb.oo ], [ %.pn377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i909 ], [ %.pn377, %bb.or ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #28
  %i.anv = load ptr, ptr %108, align 8, !tbaa !315 ; 3 uses
  %.not.i.i912 = icmp eq ptr %i.anv, null
  br i1 %.not.i.i912, label %bb.ot, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i913

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i913: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !265
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 8
  %i.any = load ptr, ptr %i.anx, align 8
  call void %i.any(ptr noundef nonnull align 8 dereferenceable(128) %i.anv) #28, !inline_history !2
  br label %bb.ot

.critedge442:                                     ; preds = %bb.oh
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %107) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #28
  store i8 1, ptr %111, align 8, !tbaa !308
  %i.anz = getelementptr inbounds nuw i8, ptr %111, i64 8
  store ptr null, ptr %i.anz, align 8, !tbaa !309
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %111) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #28
  br label %.critedge419

.critedge419:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit783, %.critedge442, %_ZN7testing7MessageD2Ev.exit908, %_ZN7testing7MessageD2Ev.exit887, %_ZN7testing7MessageD2Ev.exit875, %_ZN7testing7MessageD2Ev.exit863, %_ZN7testing7MessageD2Ev.exit852, %_ZN7testing7MessageD2Ev.exit838, %_ZN7testing7MessageD2Ev.exit824, %_ZN7testing7MessageD2Ev.exit806, %_ZN7testing7MessageD2Ev.exit788, %_ZN7testing15AssertionResultD2Ev.exit739, %_ZN7testing15AssertionResultD2Ev.exit759, %_ZN7testing7MessageD2Ev.exit714, %_ZN7testing7MessageD2Ev.exit704, %_ZN7testing7MessageD2Ev.exit694, %_ZN7testing7MessageD2Ev.exit685, %_ZN7testing7MessageD2Ev.exit672, %_ZN7testing7MessageD2Ev.exit659, %_ZN7testing7MessageD2Ev.exit638, %_ZN7testing15AssertionResultD2Ev.exit489, %_ZN7testing8internal14TrueWithStringD2Ev.exit611, %_ZN7testing8internal14TrueWithStringD2Ev.exit580, %_ZN7testing8internal14TrueWithStringD2Ev.exit550, %_ZN7testing8internal14TrueWithStringD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.os

bb.os:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %.critedge419
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

bb.ot:                                            ; preds = %bb.on, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i913
  %.pn377.pn.pn = phi { ptr, i32 } [ %i.anm, %bb.on ], [ %.pn377.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911 ], [ %.pn377.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i913 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %107) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #28
  br label %bb.ou

bb.ou:                                            ; preds = %bb.jf, %bb.jv, %bb.ki, %bb.ot, %bb.og, %bb.nv, %_ZN7testing7MessageD2Ev.exit869, %bb.mx, %bb.mm, %bb.lx, %bb.ll, %bb.kx, %bb.im, %bb.ia, %bb.hn, %bb.ha, %bb.go, %bb.fz, %bb.fn, %_ZN7testing8internal14TrueWithStringD2Ev.exit634, %_ZN7testing8internal14TrueWithStringD2Ev.exit594, %_ZN7testing8internal14TrueWithStringD2Ev.exit563, %_ZN7testing8internal14TrueWithStringD2Ev.exit533, %_ZN7testing7MessageD2Ev.exit495, %bb.af, %bb.ae, %bb.ad
  %.pn381.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn377.pn.pn, %bb.ot ], [ %.pn369.pn.pn, %bb.og ], [ %i.fo, %bb.ad ], [ %.pn365.pn.pn, %bb.nv ], [ %.pn361.pn.pn, %_ZN7testing7MessageD2Ev.exit869 ], [ %.pn357.pn.pn, %bb.mx ], [ %.pn353.pn.pn, %bb.mm ], [ %.pn349.pn.pn, %bb.lx ], [ %.pn345.pn.pn, %bb.ll ], [ %.pn341.pn.pn, %bb.kx ], [ %lpad.phi990, %bb.ae ], [ %.pn320.pn.pn, %bb.im ], [ %.pn316.pn.pn, %bb.ia ], [ %.pn312.pn.pn, %bb.hn ], [ %.pn308.pn.pn, %bb.ha ], [ %.pn304.pn.pn, %bb.go ], [ %.pn300.pn.pn, %bb.fz ], [ %.pn296.pn.pn, %bb.fn ], [ %.pn291.pn.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit634 ], [ %.pn278.pn.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit594 ], [ %.pn265.pn.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit563 ], [ %.pn254.pn.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit533 ], [ %.pn244.pn.pn, %_ZN7testing7MessageD2Ev.exit495 ], [ %lpad.phi, %bb.af ], [ %.pn336.pn.pn, %bb.ki ], [ %.pn332.pn.pn, %bb.jv ], [ %.pn326.pn.pn, %bb.jf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.ov

bb.ov:                                            ; preds = %_ZN7testing7MessageD2Ev.exit449, %bb.ou, %bb.ac, %bb.ab, %bb.p
  %.pn381.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.p ], [ %i.fn, %bb.ab ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit449 ], [ %.pn381.pn.pn.pn.pn, %bb.ou ], [ %lpad.phi996, %bb.ac ]
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn381.pn.pn.pn.pn.pn.pn.pn

bb.ow:                                            ; preds = %bb.en, %bb.ei, %bb.dl, %bb.dg, %bb.cj, %bb.ce, %bb.bi, %bb.bd
  %i.aoa = landingpad { ptr, i32 }
          catch ptr null
  %i.aob = extractvalue { ptr, i32 } %i.aoa, 0
  call void @__clang_call_terminate(ptr %i.aob) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE5groupIJEJicEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIT_S1_SaINSt12remove_constIS8_E4typeEEE4typeEEEENS_5get_tIJDpNS7_IT0_S1_SaINS9_ISI_E4typeEEE4typeEEEENS_9exclude_tIJDpNS7_IT1_S1_SaINS9_ISR_E4typeEEE4typeEEEEEENSH_IJDpSI_EEENSQ_IJDpSR_EEE(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple.780", align 8    ; 5 uses
  %2 = alloca %"class.std::shared_ptr.774", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator.37", align 1 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !279
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !280  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, 3014973966
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.in.i.i = phi ptr [ %i.l, %bb.a ], [ %i.o, %bb.c ]
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !281 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.07.i.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !282
  %i.r = icmp eq i32 %i.q, -1279993330
  br i1 %i.r, label %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.loopexit, label %bb.b, !llvm.loop !7

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !286  ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w
  br label %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit

_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.loopexit: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !286
  br label %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit

_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit: ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.loopexit, %bb.d
  %i.y = phi ptr [ %i.t, %bb.d ], [ %.pre, %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE4findERS9_.exit.loopexit ]
end_hunk_3
