Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestBinPacker?download=true
inline.NumInlined: 2273
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZSt22__merge_without_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_:bb.a
  %i.n = icmp slt i32 %.val.i, %.val1.i
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.j, align 8, !tbaa !52
  store ptr %i.k, ptr %i.g, align 8, !tbaa !52
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.o = icmp sgt i64 %2, %3
  br i1 %i.o, label %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit29

_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.p = inttoptr i64 %i.e to ptr
  %i.q = sdiv i64 %2, 2                           ; 2 uses
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %1, align 8, !tbaa !55
  %i.u = sub i64 %.0.val, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i, label %_ZSt13__lower_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Iter_comp_valIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit

_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i: ; preds = %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.val6.pre9.i = load ptr, ptr %i.x, align 8, !tbaa !52, !noalias !266
  %i.y = getelementptr i8, ptr %.val6.pre9.i, i64 8
  %.val6.val.i = load i32, ptr %i.y, align 8, !tbaa !41, !noalias !266
  br label %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i
  %i.z = phi i64 [ %i.am, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.0.val, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ]
  %i.aa = phi i64 [ %i.an, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.0.val, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %.08.i = phi i64 [ %.1.i, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.v, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %i.ab = lshr i64 %.08.i, 1                      ; 3 uses
  %i.ac = inttoptr i64 %i.aa to ptr
  %i.ad = sub nsw i64 0, %i.ab
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52, !noalias !266
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i.i = load i32, ptr %i.ah, align 8, !tbaa !41, !noalias !266
  %i.ai = icmp slt i32 %.val.i.i, %.val6.val.i    ; 3 uses
  %i.aj = xor i64 %i.ab, -1
  %i.ak = add nsw i64 %.08.i, %i.aj
  %i.al = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.am = select i1 %i.ai, i64 %i.al, i64 %i.z    ; 2 uses
  %i.an = select i1 %i.ai, i64 %i.al, i64 %i.aa
  %.1.i = select i1 %i.ai, i64 %i.ak, i64 %i.ab   ; 2 uses
  %i.ao = icmp sgt i64 %.1.i, 0
  br i1 %i.ao, label %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Iter_comp_valIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit, !llvm.loop !11

_ZSt13__lower_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Iter_comp_valIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit: ; preds = %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ap = phi i64 [ %.0.val, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.am, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.aq = sub i64 %.0.val, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = ptrtoint ptr %i.s to i64
  br label %bb.f

_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit29: ; preds = %bb.e
  %i.at = inttoptr i64 %.0.val to ptr
  %i.au = sdiv i64 %3, 2                          ; 2 uses
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.av ; 2 uses
  %i.ax = sub i64 %i.e, %.0.val
  %i.ay = ashr exact i64 %i.ax, 3                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i30, label %_ZSt13__upper_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit

_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i30: ; preds = %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit29
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %.val.pre9.i = load ptr, ptr %i.ba, align 8, !tbaa !52, !noalias !267
  %i.bb = getelementptr i8, ptr %.val.pre9.i, i64 8
  %.val.val.i = load i32, ptr %i.bb, align 8, !tbaa !41, !noalias !267
  br label %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i31

_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i31: ; preds = %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i31, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i30
  %i.bc = phi i64 [ %i.bp, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i31 ], [ %i.e, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i30 ]
  %i.bd = phi i64 [ %i.bq, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i31 ], [ %i.e, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i30 ] ; 2 uses
  %.08.i32 = phi i64 [ %.1.i35, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i31 ], [ %i.ay, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i30 ] ; 2 uses
  %i.be = lshr i64 %.08.i32, 1                    ; 3 uses
  %i.bf = inttoptr i64 %i.bd to ptr
  %i.bg = sub nsw i64 0, %i.be
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52, !noalias !267
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %.val2.i.i = load i32, ptr %i.bk, align 8, !tbaa !41, !noalias !267
  %i.bl = icmp slt i32 %.val.val.i, %.val2.i.i    ; 3 uses
  %i.bm = xor i64 %i.be, -1
  %i.bn = add nsw i64 %.08.i32, %i.bm
  %i.bo = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bp = select i1 %i.bl, i64 %i.bc, i64 %i.bo   ; 2 uses
  %i.bq = select i1 %i.bl, i64 %i.bd, i64 %i.bo
  %.1.i35 = select i1 %i.bl, i64 %i.be, i64 %i.bn ; 2 uses
  %i.br = icmp sgt i64 %.1.i35, 0
  br i1 %i.br, label %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i31, label %_ZSt13__upper_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit, !llvm.loop !12

_ZSt13__upper_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit: ; preds = %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i31, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit29
  %i.bs = phi i64 [ %i.e, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit29 ], [ %i.bp, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i31 ] ; 2 uses
  %i.bt = sub i64 %i.e, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3
  %i.bv = ptrtoint ptr %i.aw to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit, %_ZSt13__lower_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Iter_comp_valIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit
  %.sroa.015.0 = phi i64 [ %i.ap, %_ZSt13__lower_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Iter_comp_valIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit ], [ %i.bv, %_ZSt13__upper_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit ] ; 2 uses
  %.sroa.020.0 = phi i64 [ %i.as, %_ZSt13__lower_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Iter_comp_valIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit ], [ %i.bs, %_ZSt13__upper_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit ] ; 2 uses
  %.020 = phi i64 [ %i.ar, %_ZSt13__lower_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Iter_comp_valIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit ], [ %i.au, %_ZSt13__upper_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.q, %_ZSt13__lower_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Iter_comp_valIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit ], [ %i.bu, %_ZSt13__upper_boundISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES4_NS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET_S13_S13_RKT0_T1_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.020.0, ptr %4, align 8, !tbaa !55, !noalias !268
  store i64 %.0.val, ptr %5, align 8, !tbaa !55, !noalias !268
  store i64 %.sroa.015.0, ptr %6, align 8, !tbaa !55, !noalias !268
  call void @_ZNSt3_V28__rotateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS5_SaIS5_EEEEEEET_SC_SC_SC_St26random_access_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %7, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bw = load i64, ptr %0, align 8, !tbaa !55
  store i64 %i.bw, ptr %8, align 8, !tbaa !55
  %i.bx = load i64, ptr %7, align 8, !tbaa !55
  store i64 %i.bx, ptr %9, align 8, !tbaa !55
  call fastcc void @_ZSt22__merge_without_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_(ptr noundef align 8 dead_on_return %8, i64 %.sroa.020.0, ptr noundef align 8 dead_on_return %9, i64 noundef %.0, i64 noundef %.020)
  %i.by = load i64, ptr %7, align 8, !tbaa !55
  store i64 %i.by, ptr %10, align 8, !tbaa !55
  %i.bz = load i64, ptr %1, align 8, !tbaa !55
  store i64 %i.bz, ptr %11, align 8, !tbaa !55
  %i.ca = sub nsw i64 %2, %.0
  %i.cb = sub nsw i64 %3, %.020
  call fastcc void @_ZSt22__merge_without_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_(ptr noundef align 8 dead_on_return %10, i64 %.sroa.015.0, ptr noundef align 8 dead_on_return %11, i64 noundef %i.ca, i64 noundef %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3_V28__rotateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS5_SaIS5_EEEEEEET_SC_SC_SC_St26random_access_iterator_tag(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8 ; 5 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %2, align 8 ; 5 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.c = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %3, align 8, !tbaa !55
  store i64 %i.d, ptr %0, align 8, !tbaa !55
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i15 = load ptr, ptr %3, align 8, !tbaa !55 ; 2 uses
  %i.e = icmp eq ptr %.sroa.0.0.copyload.i.i15, %.sroa.0.0.copyload.i2.i
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.b, ptr %0, align 8, !tbaa !55
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %.sroa.0.0.copyload.i.i15 to i64 ; 2 uses
  %i.g = sub i64 %i.b, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = sub i64 %i.b, %i.c
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %i.k = sub nsw i64 %i.h, %i.j
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %.lr.ph.i, label %bb.f

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.sroa.063.0 = phi ptr [ %i.o, %.lr.ph.i ], [ %.sroa.0.0.copyload.i2.i, %bb.e ]
  %i.m = phi ptr [ %i.n, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i, %bb.e ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.063.0, i64 -8 ; 3 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !52, !noalias !307
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !52, !noalias !307
  store ptr %i.q, ptr %i.n, align 8, !tbaa !52, !noalias !307
  store ptr %i.p, ptr %i.o, align 8, !tbaa !52, !noalias !307
  %.not.i = icmp eq ptr %i.n, %.sroa.0.0.copyload.i2.i
  br i1 %.not.i, label %_ZSt11swap_rangesISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i, !llvm.loop !271

_ZSt11swap_rangesISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i
  store i64 %i.c, ptr %0, align 8, !tbaa !55
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.r = sub i64 %i.c, %i.f
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.t
  store ptr %i.u, ptr %0, align 8, !tbaa !55, !alias.scope !308
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %bb.f
  %.sroa.047.0 = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.f ], [ %.sroa.047.0.be, %.backedge ] ; 20 uses
  %.087 = phi i64 [ %i.j, %bb.f ], [ %.087.be, %.backedge ] ; 17 uses
  %.086 = phi i64 [ %i.h, %bb.f ], [ %.086.be, %.backedge ] ; 11 uses
  %i.v = sub nsw i64 %.086, %.087                 ; 11 uses
  %i.w = icmp slt i64 %.087, %i.v
  br i1 %i.w, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %.087, 1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  %.neg = mul i64 %.086, -8                       ; 2 uses
  %i.aa = getelementptr i8, ptr %.sroa.047.0, i64 %.neg ; 2 uses
  %gepdiff89 = sub nuw nsw i64 -8, %.neg          ; 2 uses
  %i.ab = ashr exact i64 %gepdiff89, 3            ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.ad = mul nsw i64 %i.ab, -8
  %scevgep120 = getelementptr i8, ptr %.sroa.047.0, i64 %i.ad
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep120, ptr align 8 %i.aa, i64 %gepdiff89, i1 false), !tbaa !52, !noalias !309
  br label %_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !52
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.ae = icmp sgt i64 %i.v, 0
  br i1 %i.ae, label %.lr.ph101.preheader, label %._crit_edge102

.lr.ph101.preheader:                              ; preds = %bb.j
  %i.af = sub i64 0, %.087
  %i.ag = getelementptr [8 x i8], ptr %.sroa.047.0, i64 %i.af ; 5 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph101.preheader167, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph101.preheader
  %i.ah = sub i64 %.087, %.086
  %i.ai = shl i64 %i.ah, 3
  %scevgep136 = getelementptr i8, ptr %.sroa.047.0, i64 %i.ai
  %i.aj = mul i64 %.086, -8
  %scevgep137 = getelementptr i8, ptr %.sroa.047.0, i64 %i.aj
  %bound0 = icmp ult ptr %scevgep136, %i.ag
  %bound1 = icmp ult ptr %scevgep137, %.sroa.047.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph101.preheader167, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 9223372036854775804      ; 4 uses
  %i.ak = mul i64 %n.vec, -8                      ; 2 uses
  %i.al = getelementptr i8, ptr %.sroa.047.0, i64 %i.ak ; 2 uses
  %i.am = getelementptr i8, ptr %i.ag, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.047.0, i64 %i.an ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.ag, i64 %i.an ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !52, !alias.scope !310, !noalias !311
  %wide.load139 = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !52, !alias.scope !310, !noalias !311
  %i.aq = getelementptr inbounds i8, ptr %next.gep138, i64 -16 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %next.gep138, i64 -32 ; 2 uses
  %wide.load140 = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !52, !alias.scope !311
  %wide.load141 = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !52, !alias.scope !311
  store <2 x ptr> %wide.load140, ptr %i.ao, align 8, !tbaa !52, !alias.scope !310, !noalias !311
  store <2 x ptr> %wide.load141, ptr %i.ap, align 8, !tbaa !52, !alias.scope !310, !noalias !311
  store <2 x ptr> %wide.load, ptr %i.aq, align 8, !tbaa !52, !alias.scope !311
  store <2 x ptr> %wide.load139, ptr %i.ar, align 8, !tbaa !52, !alias.scope !311
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge102, label %.lr.ph101.preheader167

.lr.ph101.preheader167:                           ; preds = %vector.memcheck, %.lr.ph101.preheader, %middle.block
  %.0999.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph101.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.047.198.ph = phi ptr [ %.sroa.047.0, %vector.memcheck ], [ %.sroa.047.0, %.lr.ph101.preheader ], [ %i.al, %middle.block ] ; 2 uses
  %.sroa.040.097.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph101.preheader ], [ %i.am, %middle.block ] ; 2 uses
  %xtraiter174 = and i64 %i.v, 3                  ; 2 uses
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.lr.ph101.prol.loopexit, label %.lr.ph101.prol

.lr.ph101.prol:                                   ; preds = %.lr.ph101.preheader167, %.lr.ph101.prol
  %.0999.prol = phi i64 [ %i.ax, %.lr.ph101.prol ], [ %.0999.ph, %.lr.ph101.preheader167 ]
  %.sroa.047.198.prol = phi ptr [ %i.at, %.lr.ph101.prol ], [ %.sroa.047.198.ph, %.lr.ph101.preheader167 ]
  %.sroa.040.097.prol = phi ptr [ %i.au, %.lr.ph101.prol ], [ %.sroa.040.097.ph, %.lr.ph101.preheader167 ]
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph101.prol ], [ 0, %.lr.ph101.preheader167 ]
  %i.at = getelementptr inbounds i8, ptr %.sroa.047.198.prol, i64 -8 ; 5 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.040.097.prol, i64 -8 ; 4 uses
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !52
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !52
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !52
  store ptr %i.av, ptr %i.au, align 8, !tbaa !52
  %i.ax = add nuw nsw i64 %.0999.prol, 1          ; 2 uses
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph101.prol.loopexit, label %.lr.ph101.prol, !llvm.loop !288

.lr.ph101.prol.loopexit:                          ; preds = %.lr.ph101.prol, %.lr.ph101.preheader167
  %.lcssa.unr = phi ptr [ poison, %.lr.ph101.preheader167 ], [ %i.at, %.lr.ph101.prol ]
  %.0999.unr = phi i64 [ %.0999.ph, %.lr.ph101.preheader167 ], [ %i.ax, %.lr.ph101.prol ]
  %.sroa.047.198.unr = phi ptr [ %.sroa.047.198.ph, %.lr.ph101.preheader167 ], [ %i.at, %.lr.ph101.prol ]
  %.sroa.040.097.unr = phi ptr [ %.sroa.040.097.ph, %.lr.ph101.preheader167 ], [ %i.au, %.lr.ph101.prol ]
  %i.ay = sub i64 %.0999.ph, %.086
  %i.az = add i64 %i.ay, %.087
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %.lr.ph101.prol.loopexit, %.lr.ph101, %middle.block, %bb.j
  %.sroa.047.1.lcssa = phi ptr [ %.sroa.047.0, %bb.j ], [ %i.al, %middle.block ], [ %.lcssa.unr, %.lr.ph101.prol.loopexit ], [ %i.bo, %.lr.ph101 ]
  %i.bb = srem i64 %.086, %.087                   ; 2 uses
  %.not12 = icmp eq i64 %i.bb, 0
  br i1 %.not12, label %.critedge, label %bb.k

.lr.ph101:                                        ; preds = %.lr.ph101.prol.loopexit, %.lr.ph101
  %.0999 = phi i64 [ %i.bs, %.lr.ph101 ], [ %.0999.unr, %.lr.ph101.prol.loopexit ]
  %.sroa.047.198 = phi ptr [ %i.bo, %.lr.ph101 ], [ %.sroa.047.198.unr, %.lr.ph101.prol.loopexit ] ; 4 uses
  %.sroa.040.097 = phi ptr [ %i.bp, %.lr.ph101 ], [ %.sroa.040.097.unr, %.lr.ph101.prol.loopexit ] ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.047.198, i64 -8 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.040.097, i64 -8 ; 2 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !52
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !52
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !52
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !52
  %i.bg = getelementptr inbounds i8, ptr %.sroa.047.198, i64 -16 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.sroa.040.097, i64 -16 ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !52
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !52
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !52
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !52
  %i.bk = getelementptr inbounds i8, ptr %.sroa.047.198, i64 -24 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.sroa.040.097, i64 -24 ; 2 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !52
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !52
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !52
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !52
  %i.bo = getelementptr inbounds i8, ptr %.sroa.047.198, i64 -32 ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.040.097, i64 -32 ; 3 uses
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !52
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !52
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !52
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !52
  %i.bs = add nuw nsw i64 %.0999, 4               ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %i.bs, %i.v
  br i1 %exitcond109.not.3, label %._crit_edge102, label %.lr.ph101, !llvm.loop !289

bb.k:                                             ; preds = %._crit_edge102
  %i.bt = sub nsw i64 %.087, %i.bb
  br label %.backedge

bb.l:                                             ; preds = %bb.g
  %i.bu = icmp eq i64 %i.v, 1
  %i.bv = sub i64 0, %.086
  %i.bw = getelementptr [8 x i8], ptr %.sroa.047.0, i64 %i.bv ; 8 uses
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !52
  %.idx.neg = shl i64 %.086, 3
  %gepdiff = add i64 %.idx.neg, -8                ; 2 uses
  %i.by = icmp sgt i64 %gepdiff, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i24.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i24.preheader:                     ; preds = %bb.m
  %scevgep = getelementptr i8, ptr %.sroa.047.0, i64 8
  %i.bz = mul i64 %.086, -8
  %scevgep116 = getelementptr i8, ptr %scevgep, i64 %i.bz
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %scevgep116, i64 %gepdiff, i1 false), !tbaa !52, !noalias !312
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i24.preheader, %bb.m
  %i.ca = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -8
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !52
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.cb = getelementptr [8 x i8], ptr %i.bw, i64 %i.v ; 6 uses
  %i.cc = icmp sgt i64 %.087, 0
  br i1 %i.cc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check150 = icmp ult i64 %.087, 6
  br i1 %min.iters.check150, label %.lr.ph.preheader168, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.preheader
  %i.cd = sub i64 %.087, %.086
  %i.ce = shl i64 %i.cd, 3
  %scevgep145 = getelementptr i8, ptr %.sroa.047.0, i64 %i.ce
  %bound0146 = icmp ult ptr %i.cb, %scevgep145
  %bound1147 = icmp ult ptr %i.bw, %.sroa.047.0
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.preheader168, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck144
  %n.vec152 = and i64 %.087, 9223372036854775804  ; 4 uses
  %i.cf = shl i64 %n.vec152, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bw, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cb, i64 %i.cf
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next161, %vector.body153 ] ; 2 uses
  %i.ci = shl i64 %index154, 3                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.bw, i64 %i.ci ; 3 uses
  %next.gep156 = getelementptr i8, ptr %i.cb, i64 %i.ci ; 3 uses
  %i.cj = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load157 = load <2 x ptr>, ptr %next.gep156, align 8, !tbaa !52, !alias.scope !313, !noalias !314
  %wide.load158 = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !52, !alias.scope !313, !noalias !314
  %i.ck = getelementptr i8, ptr %next.gep155, i64 16 ; 2 uses
  %wide.load159 = load <2 x ptr>, ptr %next.gep155, align 8, !tbaa !52, !alias.scope !314
  %wide.load160 = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !52, !alias.scope !314
  store <2 x ptr> %wide.load159, ptr %next.gep156, align 8, !tbaa !52, !alias.scope !313, !noalias !314
  store <2 x ptr> %wide.load160, ptr %i.cj, align 8, !tbaa !52, !alias.scope !313, !noalias !314
  store <2 x ptr> %wide.load157, ptr %next.gep155, align 8, !tbaa !52, !alias.scope !314
  store <2 x ptr> %wide.load158, ptr %i.ck, align 8, !tbaa !52, !alias.scope !314
  %index.next161 = add nuw i64 %index154, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next161, %n.vec152
  br i1 %i.cl, label %middle.block162, label %vector.body153, !llvm.loop !303

middle.block162:                                  ; preds = %vector.body153
  %cmp.n163 = icmp eq i64 %.087, %n.vec152
  br i1 %cmp.n163, label %._crit_edge, label %.lr.ph.preheader168

.lr.ph.preheader168:                              ; preds = %vector.memcheck144, %.lr.ph.preheader, %middle.block162
  %.096.ph = phi i64 [ 0, %vector.memcheck144 ], [ 0, %.lr.ph.preheader ], [ %n.vec152, %middle.block162 ] ; 3 uses
  %.sroa.029.095.ph = phi ptr [ %i.bw, %vector.memcheck144 ], [ %i.bw, %.lr.ph.preheader ], [ %i.cg, %middle.block162 ] ; 2 uses
  %.sroa.047.294.ph = phi ptr [ %i.cb, %vector.memcheck144 ], [ %i.cb, %.lr.ph.preheader ], [ %i.ch, %middle.block162 ] ; 2 uses
  %xtraiter = and i64 %.087, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader168, %.lr.ph.prol
  %.096.prol = phi i64 [ %i.cq, %.lr.ph.prol ], [ %.096.ph, %.lr.ph.preheader168 ]
  %.sroa.029.095.prol = phi ptr [ %i.cn, %.lr.ph.prol ], [ %.sroa.029.095.ph, %.lr.ph.preheader168 ] ; 3 uses
  %.sroa.047.294.prol = phi ptr [ %i.cm, %.lr.ph.prol ], [ %.sroa.047.294.ph, %.lr.ph.preheader168 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader168 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.047.294.prol, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.029.095.prol, i64 8 ; 2 uses
  %i.co = load ptr, ptr %.sroa.047.294.prol, align 8, !tbaa !52
  %i.cp = load ptr, ptr %.sroa.029.095.prol, align 8, !tbaa !52
  store ptr %i.cp, ptr %.sroa.047.294.prol, align 8, !tbaa !52
  store ptr %i.co, ptr %.sroa.029.095.prol, align 8, !tbaa !52
  %i.cq = add nuw nsw i64 %.096.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !304

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader168
  %.096.unr = phi i64 [ %.096.ph, %.lr.ph.preheader168 ], [ %i.cq, %.lr.ph.prol ]
  %.sroa.029.095.unr = phi ptr [ %.sroa.029.095.ph, %.lr.ph.preheader168 ], [ %i.cn, %.lr.ph.prol ]
  %.sroa.047.294.unr = phi ptr [ %.sroa.047.294.ph, %.lr.ph.preheader168 ], [ %i.cm, %.lr.ph.prol ]
  %i.cr = sub nsw i64 %.096.ph, %.087
  %i.cs = icmp ugt i64 %i.cr, -4
  br i1 %i.cs, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block162, %bb.n
  %.sroa.047.2.lcssa = phi ptr [ %i.cb, %bb.n ], [ %.sroa.047.0, %middle.block162 ], [ %.sroa.047.0, %.lr.ph ], [ %.sroa.047.0, %.lr.ph.prol.loopexit ]
  %i.ct = srem i64 %.086, %i.v                    ; 2 uses
  %.not = icmp eq i64 %i.ct, 0
  br i1 %.not, label %.critedge, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.k
  %.sroa.047.0.be = phi ptr [ %.sroa.047.1.lcssa, %bb.k ], [ %.sroa.047.2.lcssa, %._crit_edge ]
  %.087.be = phi i64 [ %i.bt, %bb.k ], [ %i.ct, %._crit_edge ]
  %.086.be = phi i64 [ %.087, %bb.k ], [ %i.v, %._crit_edge ]
  br label %bb.g, !llvm.loop !305

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.096 = phi i64 [ %i.dk, %.lr.ph ], [ %.096.unr, %.lr.ph.prol.loopexit ]
  %.sroa.029.095 = phi ptr [ %i.dh, %.lr.ph ], [ %.sroa.029.095.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.sroa.047.294 = phi ptr [ %i.dg, %.lr.ph ], [ %.sroa.047.294.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.047.294, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.029.095, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %.sroa.047.294, align 8, !tbaa !52
  %i.cx = load ptr, ptr %.sroa.029.095, align 8, !tbaa !52
  store ptr %i.cx, ptr %.sroa.047.294, align 8, !tbaa !52
  store ptr %i.cw, ptr %.sroa.029.095, align 8, !tbaa !52
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.047.294, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.029.095, i64 16 ; 2 uses
end_hunk_0
