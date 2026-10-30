Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestBinPacker?download=true
inline.NumInlined: 2273
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_:bb.a
  %7 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 4 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.f, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -8 ; 5 uses
  %.not12.i = icmp eq ptr %i.g, %.sroa.0.0.copyload.i2.i
  br i1 %.not12.i, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %.pre14.i = load ptr, ptr %i.g, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %i.h = phi ptr [ %.pre14.i, %.lr.ph.i ], [ %i.z, %bb.g ]
  %.sroa.07.013.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.i, %bb.g ] ; 6 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.07.013.i, i64 -8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val.i.i = load i32, ptr %i.k, align 8, !tbaa !41 ; 3 uses
  %i.l = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i = load i32, ptr %i.l, align 8, !tbaa !41
  %i.m = icmp slt i32 %.val.i.i, %.val1.i.i
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %.sroa.07.013.i to i64
  %i.o = sub i64 %i.a, %i.n                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %.sroa.07.013.i, i64 %i.o, i1 false), !tbaa !52, !noalias !133
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %bb.e
  store ptr %i.j, ptr %i.g, align 8, !tbaa !52
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %.sroa.07.013.i, align 8, !tbaa !52 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val2.i7.i.i = load i32, ptr %i.r, align 8, !tbaa !41
  %i.s = icmp slt i32 %.val.i.i, %.val2.i7.i.i
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.t = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.q, %bb.f ]
  %.pn8.i.i = phi ptr [ %.sroa.02.0.i.i, %.lr.ph.i.i ], [ %.sroa.07.013.i, %bb.f ] ; 2 uses
  %.sroa.02.0.i.i = getelementptr inbounds nuw i8, ptr %.pn8.i.i, i64 8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.pn8.i.i, i64 -8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !52
  %i.v = load ptr, ptr %.sroa.02.0.i.i, align 8, !tbaa !52 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val2.i.i.i = load i32, ptr %i.w, align 8, !tbaa !41
  %i.x = icmp slt i32 %.val.i.i, %.val2.i.i.i
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i, !llvm.loop !6

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.pre-phi.i.i = phi ptr [ %.sroa.07.013.i, %bb.f ], [ %.sroa.02.0.i.i, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds i8, ptr %.pre-phi.i.i, i64 -8
  store ptr %i.j, ptr %i.y, align 8, !tbaa !52
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i
  %i.z = phi ptr [ %i.j, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i ]
  %.not.i = icmp eq ptr %i.i, %.sroa.0.0.copyload.i2.i
  br i1 %.not.i, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit, label %bb.d, !llvm.loop !7

bb.h:                                             ; preds = %bb.a
  %i.aa = lshr i64 %i.d, 1
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ab
  store i64 %i.a, ptr %2, align 8, !tbaa !55
  %i.ad = ptrtoint ptr %i.ac to i64               ; 5 uses
  store i64 %i.ad, ptr %3, align 8, !tbaa !55
  call fastcc void @_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_(ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3)
  store i64 %i.ad, ptr %4, align 8, !tbaa !55
  %i.ae = load i64, ptr %1, align 8, !tbaa !55
  store i64 %i.ae, ptr %5, align 8, !tbaa !55
  call fastcc void @_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_(ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5)
  %i.af = load i64, ptr %0, align 8, !tbaa !55    ; 2 uses
  store i64 %i.af, ptr %6, align 8, !tbaa !55
  %i.ag = load i64, ptr %1, align 8, !tbaa !55    ; 2 uses
  store i64 %i.ag, ptr %7, align 8, !tbaa !55
  %i.ah = sub i64 %i.af, %i.ad
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = sub i64 %i.ad, %i.ag
  %i.ak = ashr exact i64 %i.aj, 3
  call fastcc void @_ZSt22__merge_without_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_(ptr noundef align 8 dead_on_return %6, i64 %i.ad, ptr noundef align 8 dead_on_return %7, i64 noundef %i.ai, i64 noundef %i.ak)
  br label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit: ; preds = %bb.g, %bb.c, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt29__stable_sort_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_lNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_T2_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %6 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %7 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %8 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %9 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %10 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %11 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %12 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %13 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 4 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.g ; 2 uses
  %i.i = icmp sgt i64 %i.f, %3
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %8, align 8, !tbaa !55
  %i.j = ptrtoint ptr %i.h to i64                 ; 5 uses
  store i64 %i.j, ptr %9, align 8, !tbaa !55
  call fastcc void @_ZSt29__stable_sort_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_lNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_T2_(ptr noundef align 8 dead_on_return %8, ptr noundef align 8 dead_on_return %9, ptr noundef %2, i64 noundef %3)
  store i64 %i.j, ptr %10, align 8, !tbaa !55
  %i.k = load i64, ptr %1, align 8, !tbaa !55
  store i64 %i.k, ptr %11, align 8, !tbaa !55
  call fastcc void @_ZSt29__stable_sort_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_lNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_T2_(ptr noundef align 8 dead_on_return %10, ptr noundef align 8 dead_on_return %11, ptr noundef %2, i64 noundef %3)
  %i.l = load i64, ptr %0, align 8, !tbaa !55     ; 2 uses
  store i64 %i.l, ptr %12, align 8, !tbaa !55
  %i.m = load i64, ptr %1, align 8, !tbaa !55     ; 2 uses
  store i64 %i.m, ptr %13, align 8, !tbaa !55
  %i.n = sub i64 %i.l, %i.j
  %i.o = ashr exact i64 %i.n, 3
  %i.p = sub i64 %i.j, %i.m
  %i.q = ashr exact i64 %i.p, 3
  call fastcc void @_ZSt23__merge_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElS5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_S14_T2_(ptr noundef align 8 dead_on_return %12, i64 %i.j, ptr noundef align 8 dead_on_return %13, i64 noundef %i.o, i64 noundef %i.q, ptr noundef %2, i64 noundef %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %i.h to i64                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.a, ptr %4, align 8, !tbaa !55
  store i64 %i.r, ptr %5, align 8, !tbaa !55
  call fastcc void @_ZSt24__merge_sort_with_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_(ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef %2)
  store i64 %i.r, ptr %6, align 8, !tbaa !55
  store i64 %i.b, ptr %7, align 8, !tbaa !55
  call fastcc void @_ZSt24__merge_sort_with_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_(ptr noundef align 8 dead_on_return %6, ptr noundef align 8 dead_on_return %7, ptr noundef %2)
  %i.s = sub i64 %i.r, %i.b
  %i.t = ashr exact i64 %i.s, 3
  tail call fastcc void @_ZSt16__merge_adaptiveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElS5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_T2_(i64 %i.a, i64 %i.r, i64 %i.b, i64 noundef %i.f, i64 noundef %i.t, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt24__merge_sort_with_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %1, ptr noundef %2) unnamed_addr #11 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 4 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 7 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 48
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i
  %i.g = phi i64 [ %i.cm, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i ], [ %i.a, %bb.a ] ; 7 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 8 uses
  %.ptr37.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 13 uses
  %.pre14.i.i = load ptr, ptr %.ptr37.i, align 8, !tbaa !52
  %.ptr.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 7 uses
  %i.i = load ptr, ptr %.ptr.i, align 8, !tbaa !52 ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i.i.i = load i32, ptr %i.j, align 8, !tbaa !41 ; 2 uses
  %i.k = getelementptr i8, ptr %.pre14.i.i, i64 8
  %.val1.i.i.i = load i32, ptr %i.k, align 8, !tbaa !41 ; 2 uses
  %i.l = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  br i1 %i.l, label %bb.b, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.a

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = ptrtoint ptr %.ptr37.i to i64
  %i.n = sub i64 %i.g, %i.m                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.ptr.i, ptr nonnull align 8 %.ptr37.i, i64 %i.n, i1 false), !tbaa !52, !noalias !212
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %bb.b
  store ptr %i.i, ptr %.ptr37.i, align 8, !tbaa !52
  br label %bb.c

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.a: ; preds = %.lr.ph.i.i
  %3 = getelementptr inbounds i8, ptr %i.h, i64 -16
  store ptr %i.i, ptr %3, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.a, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i
  %.val1.i.i.i.1 = phi i32 [ %.val.i.i.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i ], [ %.val1.i.i.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.a ]
  %.ptr.i.1 = getelementptr inbounds i8, ptr %i.h, i64 -24 ; 7 uses
  %i.p = load ptr, ptr %.ptr.i.1, align 8, !tbaa !52 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val.i.i.i.1 = load i32, ptr %i.q, align 8, !tbaa !41 ; 4 uses
  %i.r = icmp slt i32 %.val.i.i.i.1, %.val1.i.i.i.1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %.ptr.i, align 8, !tbaa !52 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val2.i7.i.i.i.1 = load i32, ptr %i.t, align 8, !tbaa !41
  %i.u = icmp slt i32 %.val.i.i.i.1, %.val2.i7.i.i.i.1
  br i1 %i.u, label %.lr.ph.i.i.i.1, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.d, %.lr.ph.i.i.i.1
  %i.v = phi ptr [ %i.x, %.lr.ph.i.i.i.1 ], [ %i.s, %bb.d ]
  %.pn8.i.i.i.1 = phi ptr [ %.sroa.02.0.i.i.i.1, %.lr.ph.i.i.i.1 ], [ %.ptr.i, %bb.d ] ; 2 uses
  %.sroa.02.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.1, i64 8 ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %.pn8.i.i.i.1, i64 -8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !52
  %i.x = load ptr, ptr %.sroa.02.0.i.i.i.1, align 8, !tbaa !52 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val2.i.i.i.i.1 = load i32, ptr %i.y, align 8, !tbaa !41
  %i.z = icmp slt i32 %.val.i.i.i.1, %.val2.i.i.i.i.1
  br i1 %i.z, label %.lr.ph.i.i.i.1, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1, !llvm.loop !6

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.1, %bb.d
  %.pre-phi.i.i.i.1 = phi ptr [ %.ptr.i, %bb.d ], [ %.sroa.02.0.i.i.i.1, %.lr.ph.i.i.i.1 ]
  %i.aa = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.1, i64 -8
  store ptr %i.p, ptr %i.aa, align 8, !tbaa !52
  %.pre.i.i.1 = load ptr, ptr %.ptr37.i, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr i8, ptr %.pre.i.i.1, i64 8
  %.val1.i.i.i.2.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = ptrtoint ptr %.ptr.i to i64
  %i.ac = sub i64 %i.g, %i.ab                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.preheader.i.i.1, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1

.lr.ph.i.i.i.i.i.preheader.i.i.1:                 ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.ptr.i.1, ptr nonnull align 8 %.ptr.i, i64 %i.ac, i1 false), !tbaa !52, !noalias !212
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.1, %bb.e
  store ptr %i.p, ptr %.ptr37.i, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1
  %.val1.i.i.i.2 = phi i32 [ %.val.i.i.i.1, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1 ], [ %.val1.i.i.i.2.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1 ]
  %.ptr.i.2 = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 7 uses
  %i.ae = load ptr, ptr %.ptr.i.2, align 8, !tbaa !52 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val.i.i.i.2 = load i32, ptr %i.af, align 8, !tbaa !41 ; 4 uses
  %i.ag = icmp slt i32 %.val.i.i.i.2, %.val1.i.i.i.2
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %.ptr.i.1, align 8, !tbaa !52 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val2.i7.i.i.i.2 = load i32, ptr %i.ai, align 8, !tbaa !41
  %i.aj = icmp slt i32 %.val.i.i.i.2, %.val2.i7.i.i.i.2
  br i1 %i.aj, label %.lr.ph.i.i.i.2, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.g, %.lr.ph.i.i.i.2
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i.2 ], [ %i.ah, %bb.g ]
  %.pn8.i.i.i.2 = phi ptr [ %.sroa.02.0.i.i.i.2, %.lr.ph.i.i.i.2 ], [ %.ptr.i.1, %bb.g ] ; 2 uses
  %.sroa.02.0.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.2, i64 8 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %.pn8.i.i.i.2, i64 -8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !52
  %i.am = load ptr, ptr %.sroa.02.0.i.i.i.2, align 8, !tbaa !52 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val2.i.i.i.i.2 = load i32, ptr %i.an, align 8, !tbaa !41
  %i.ao = icmp slt i32 %.val.i.i.i.2, %.val2.i.i.i.i.2
  br i1 %i.ao, label %.lr.ph.i.i.i.2, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2, !llvm.loop !6

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2: ; preds = %.lr.ph.i.i.i.2, %bb.g
  %.pre-phi.i.i.i.2 = phi ptr [ %.ptr.i.1, %bb.g ], [ %.sroa.02.0.i.i.i.2, %.lr.ph.i.i.i.2 ]
  %i.ap = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.2, i64 -8
  store ptr %i.ae, ptr %i.ap, align 8, !tbaa !52
  %.pre.i.i.2 = load ptr, ptr %.ptr37.i, align 8, !tbaa !52
  %.phi.trans.insert67 = getelementptr i8, ptr %.pre.i.i.2, i64 8
  %.val1.i.i.i.3.pre = load i32, ptr %.phi.trans.insert67, align 8, !tbaa !41
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = ptrtoint ptr %.ptr.i.1 to i64
  %i.ar = sub i64 %i.g, %i.aq                     ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.preheader.i.i.2, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2

.lr.ph.i.i.i.i.i.preheader.i.i.2:                 ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.ptr.i.2, ptr nonnull align 8 %.ptr.i.1, i64 %i.ar, i1 false), !tbaa !52, !noalias !212
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.2, %bb.h
  store ptr %i.ae, ptr %.ptr37.i, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2
  %.val1.i.i.i.3 = phi i32 [ %.val.i.i.i.2, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2 ], [ %.val1.i.i.i.3.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2 ]
  %.ptr.i.3 = getelementptr inbounds i8, ptr %i.h, i64 -40 ; 7 uses
  %i.at = load ptr, ptr %.ptr.i.3, align 8, !tbaa !52 ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val.i.i.i.3 = load i32, ptr %i.au, align 8, !tbaa !41 ; 4 uses
  %i.av = icmp slt i32 %.val.i.i.i.3, %.val1.i.i.i.3
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %.ptr.i.2, align 8, !tbaa !52 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val2.i7.i.i.i.3 = load i32, ptr %i.ax, align 8, !tbaa !41
  %i.ay = icmp slt i32 %.val.i.i.i.3, %.val2.i7.i.i.i.3
  br i1 %i.ay, label %.lr.ph.i.i.i.3, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.j, %.lr.ph.i.i.i.3
  %i.az = phi ptr [ %i.bb, %.lr.ph.i.i.i.3 ], [ %i.aw, %bb.j ]
  %.pn8.i.i.i.3 = phi ptr [ %.sroa.02.0.i.i.i.3, %.lr.ph.i.i.i.3 ], [ %.ptr.i.2, %bb.j ] ; 2 uses
  %.sroa.02.0.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.3, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.pn8.i.i.i.3, i64 -8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !52
  %i.bb = load ptr, ptr %.sroa.02.0.i.i.i.3, align 8, !tbaa !52 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.val2.i.i.i.i.3 = load i32, ptr %i.bc, align 8, !tbaa !41
  %i.bd = icmp slt i32 %.val.i.i.i.3, %.val2.i.i.i.i.3
  br i1 %i.bd, label %.lr.ph.i.i.i.3, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3, !llvm.loop !6

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3: ; preds = %.lr.ph.i.i.i.3, %bb.j
  %.pre-phi.i.i.i.3 = phi ptr [ %.ptr.i.2, %bb.j ], [ %.sroa.02.0.i.i.i.3, %.lr.ph.i.i.i.3 ]
  %i.be = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.3, i64 -8
  store ptr %i.at, ptr %i.be, align 8, !tbaa !52
  %.pre.i.i.3 = load ptr, ptr %.ptr37.i, align 8, !tbaa !52
  %.phi.trans.insert69 = getelementptr i8, ptr %.pre.i.i.3, i64 8
  %.val1.i.i.i.4.pre = load i32, ptr %.phi.trans.insert69, align 8, !tbaa !41
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bf = ptrtoint ptr %.ptr.i.2 to i64
  %i.bg = sub i64 %i.g, %i.bf                     ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.preheader.i.i.3, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3

.lr.ph.i.i.i.i.i.preheader.i.i.3:                 ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.ptr.i.3, ptr nonnull align 8 %.ptr.i.2, i64 %i.bg, i1 false), !tbaa !52, !noalias !212
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.3, %bb.k
  store ptr %i.at, ptr %.ptr37.i, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3
  %.val1.i.i.i.4 = phi i32 [ %.val.i.i.i.3, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3 ], [ %.val1.i.i.i.4.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3 ]
  %.ptr.i.4 = getelementptr inbounds i8, ptr %i.h, i64 -48 ; 7 uses
  %i.bi = load ptr, ptr %.ptr.i.4, align 8, !tbaa !52 ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %.val.i.i.i.4 = load i32, ptr %i.bj, align 8, !tbaa !41 ; 4 uses
  %i.bk = icmp slt i32 %.val.i.i.i.4, %.val1.i.i.i.4
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %.ptr.i.3, align 8, !tbaa !52 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %.val2.i7.i.i.i.4 = load i32, ptr %i.bm, align 8, !tbaa !41
  %i.bn = icmp slt i32 %.val.i.i.i.4, %.val2.i7.i.i.i.4
  br i1 %i.bn, label %.lr.ph.i.i.i.4, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %bb.m, %.lr.ph.i.i.i.4
  %i.bo = phi ptr [ %i.bq, %.lr.ph.i.i.i.4 ], [ %i.bl, %bb.m ]
  %.pn8.i.i.i.4 = phi ptr [ %.sroa.02.0.i.i.i.4, %.lr.ph.i.i.i.4 ], [ %.ptr.i.3, %bb.m ] ; 2 uses
  %.sroa.02.0.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.4, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.pn8.i.i.i.4, i64 -8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !52
  %i.bq = load ptr, ptr %.sroa.02.0.i.i.i.4, align 8, !tbaa !52 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %.val2.i.i.i.i.4 = load i32, ptr %i.br, align 8, !tbaa !41
  %i.bs = icmp slt i32 %.val.i.i.i.4, %.val2.i.i.i.i.4
  br i1 %i.bs, label %.lr.ph.i.i.i.4, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4, !llvm.loop !6

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4: ; preds = %.lr.ph.i.i.i.4, %bb.m
  %.pre-phi.i.i.i.4 = phi ptr [ %.ptr.i.3, %bb.m ], [ %.sroa.02.0.i.i.i.4, %.lr.ph.i.i.i.4 ]
  %i.bt = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.4, i64 -8
  store ptr %i.bi, ptr %i.bt, align 8, !tbaa !52
  %.pre.i.i.4 = load ptr, ptr %.ptr37.i, align 8, !tbaa !52
  %.phi.trans.insert71 = getelementptr i8, ptr %.pre.i.i.4, i64 8
  %.val1.i.i.i.5.pre = load i32, ptr %.phi.trans.insert71, align 8, !tbaa !41
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bu = ptrtoint ptr %.ptr.i.3 to i64
  %i.bv = sub i64 %i.g, %i.bu                     ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.preheader.i.i.4, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4

.lr.ph.i.i.i.i.i.preheader.i.i.4:                 ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.ptr.i.4, ptr nonnull align 8 %.ptr.i.3, i64 %i.bv, i1 false), !tbaa !52, !noalias !212
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.4, %bb.n
  store ptr %i.bi, ptr %.ptr37.i, align 8, !tbaa !52
end_hunk_0
begin_hunk_1_@_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_
define internal fastcc void @_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %3 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %6 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %7 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 4 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.f, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -8 ; 5 uses
  %.not12.i = icmp eq ptr %i.g, %.sroa.0.0.copyload.i2.i
  br i1 %.not12.i, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %.pre14.i = load ptr, ptr %i.g, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %i.h = phi ptr [ %.pre14.i, %.lr.ph.i ], [ %i.z, %bb.g ]
  %.sroa.07.013.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.i, %bb.g ] ; 6 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.07.013.i, i64 -8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val.i.i = load i32, ptr %i.k, align 8, !tbaa !41 ; 3 uses
  %i.l = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i = load i32, ptr %i.l, align 8, !tbaa !41
  %i.m = icmp slt i32 %.val.i.i, %.val1.i.i
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %.sroa.07.013.i to i64
  %i.o = sub i64 %i.a, %i.n                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %.sroa.07.013.i, i64 %i.o, i1 false), !tbaa !52, !noalias !617
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %bb.e
  store ptr %i.j, ptr %i.g, align 8, !tbaa !52
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %.sroa.07.013.i, align 8, !tbaa !52 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val2.i7.i.i = load i32, ptr %i.r, align 8, !tbaa !41
  %i.s = icmp slt i32 %.val.i.i, %.val2.i7.i.i
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.t = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.q, %bb.f ]
  %.pn8.i.i = phi ptr [ %.sroa.02.0.i.i, %.lr.ph.i.i ], [ %.sroa.07.013.i, %bb.f ] ; 2 uses
  %.sroa.02.0.i.i = getelementptr inbounds nuw i8, ptr %.pn8.i.i, i64 8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.pn8.i.i, i64 -8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !52
  %i.v = load ptr, ptr %.sroa.02.0.i.i, align 8, !tbaa !52 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val2.i.i.i = load i32, ptr %i.w, align 8, !tbaa !41
  %i.x = icmp slt i32 %.val.i.i, %.val2.i.i.i
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i, !llvm.loop !19

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.pre-phi.i.i = phi ptr [ %.sroa.07.013.i, %bb.f ], [ %.sroa.02.0.i.i, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds i8, ptr %.pre-phi.i.i, i64 -8
  store ptr %i.j, ptr %i.y, align 8, !tbaa !52
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i
  %i.z = phi ptr [ %i.j, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i ]
  %.not.i = icmp eq ptr %i.i, %.sroa.0.0.copyload.i2.i
  br i1 %.not.i, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit, label %bb.d, !llvm.loop !20

bb.h:                                             ; preds = %bb.a
  %i.aa = lshr i64 %i.d, 1
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ab
  store i64 %i.a, ptr %2, align 8, !tbaa !55
  %i.ad = ptrtoint ptr %i.ac to i64               ; 5 uses
  store i64 %i.ad, ptr %3, align 8, !tbaa !55
  call fastcc void @_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_(ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3)
  store i64 %i.ad, ptr %4, align 8, !tbaa !55
  %i.ae = load i64, ptr %1, align 8, !tbaa !55
  store i64 %i.ae, ptr %5, align 8, !tbaa !55
  call fastcc void @_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_(ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5)
  %i.af = load i64, ptr %0, align 8, !tbaa !55    ; 2 uses
  store i64 %i.af, ptr %6, align 8, !tbaa !55
  %i.ag = load i64, ptr %1, align 8, !tbaa !55    ; 2 uses
  store i64 %i.ag, ptr %7, align 8, !tbaa !55
  %i.ah = sub i64 %i.af, %i.ad
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = sub i64 %i.ad, %i.ag
  %i.ak = ashr exact i64 %i.aj, 3
  call fastcc void @_ZSt22__merge_without_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_(ptr noundef align 8 dead_on_return %6, i64 %i.ad, ptr noundef align 8 dead_on_return %7, i64 noundef %i.ai, i64 noundef %i.ak)
  br label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit: ; preds = %bb.g, %bb.c, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt29__stable_sort_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_lNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_T2_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %6 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %7 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %8 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %9 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %10 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %11 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %12 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %13 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 4 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.g ; 2 uses
  %i.i = icmp sgt i64 %i.f, %3
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %8, align 8, !tbaa !55
  %i.j = ptrtoint ptr %i.h to i64                 ; 5 uses
  store i64 %i.j, ptr %9, align 8, !tbaa !55
  call fastcc void @_ZSt29__stable_sort_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_lNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_T2_(ptr noundef align 8 dead_on_return %8, ptr noundef align 8 dead_on_return %9, ptr noundef %2, i64 noundef %3)
  store i64 %i.j, ptr %10, align 8, !tbaa !55
  %i.k = load i64, ptr %1, align 8, !tbaa !55
  store i64 %i.k, ptr %11, align 8, !tbaa !55
  call fastcc void @_ZSt29__stable_sort_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_lNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_T2_(ptr noundef align 8 dead_on_return %10, ptr noundef align 8 dead_on_return %11, ptr noundef %2, i64 noundef %3)
  %i.l = load i64, ptr %0, align 8, !tbaa !55     ; 2 uses
  store i64 %i.l, ptr %12, align 8, !tbaa !55
  %i.m = load i64, ptr %1, align 8, !tbaa !55     ; 2 uses
  store i64 %i.m, ptr %13, align 8, !tbaa !55
  %i.n = sub i64 %i.l, %i.j
  %i.o = ashr exact i64 %i.n, 3
  %i.p = sub i64 %i.j, %i.m
  %i.q = ashr exact i64 %i.p, 3
  call fastcc void @_ZSt23__merge_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElS5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_S14_T2_(ptr noundef align 8 dead_on_return %12, i64 %i.j, ptr noundef align 8 dead_on_return %13, i64 noundef %i.o, i64 noundef %i.q, ptr noundef %2, i64 noundef %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %i.h to i64                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.a, ptr %4, align 8, !tbaa !55
  store i64 %i.r, ptr %5, align 8, !tbaa !55
  call fastcc void @_ZSt24__merge_sort_with_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_(ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef %2)
  store i64 %i.r, ptr %6, align 8, !tbaa !55
  store i64 %i.b, ptr %7, align 8, !tbaa !55
  call fastcc void @_ZSt24__merge_sort_with_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_(ptr noundef align 8 dead_on_return %6, ptr noundef align 8 dead_on_return %7, ptr noundef %2)
  %i.s = sub i64 %i.r, %i.b
  %i.t = ashr exact i64 %i.s, 3
  tail call fastcc void @_ZSt16__merge_adaptiveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElS5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_T2_(i64 %i.a, i64 %i.r, i64 %i.b, i64 noundef %i.f, i64 noundef %i.t, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt24__merge_sort_with_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %1, ptr noundef %2) unnamed_addr #11 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 4 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 7 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 48
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i
  %i.g = phi i64 [ %i.cm, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i ], [ %i.a, %bb.a ] ; 7 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 8 uses
  %.ptr37.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 13 uses
  %.pre14.i.i = load ptr, ptr %.ptr37.i, align 8, !tbaa !52
  %.ptr.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 7 uses
  %i.i = load ptr, ptr %.ptr.i, align 8, !tbaa !52 ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i.i.i = load i32, ptr %i.j, align 8, !tbaa !41 ; 2 uses
  %i.k = getelementptr i8, ptr %.pre14.i.i, i64 8
  %.val1.i.i.i = load i32, ptr %i.k, align 8, !tbaa !41 ; 2 uses
  %i.l = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  br i1 %i.l, label %bb.b, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.a

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = ptrtoint ptr %.ptr37.i to i64
  %i.n = sub i64 %i.g, %i.m                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.ptr.i, ptr nonnull align 8 %.ptr37.i, i64 %i.n, i1 false), !tbaa !52, !noalias !696
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %bb.b
  store ptr %i.i, ptr %.ptr37.i, align 8, !tbaa !52
  br label %bb.c

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.a: ; preds = %.lr.ph.i.i
  %3 = getelementptr inbounds i8, ptr %i.h, i64 -16
  store ptr %i.i, ptr %3, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.a, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i
  %.val1.i.i.i.1 = phi i32 [ %.val.i.i.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i ], [ %.val1.i.i.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.a ]
  %.ptr.i.1 = getelementptr inbounds i8, ptr %i.h, i64 -24 ; 7 uses
  %i.p = load ptr, ptr %.ptr.i.1, align 8, !tbaa !52 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val.i.i.i.1 = load i32, ptr %i.q, align 8, !tbaa !41 ; 4 uses
  %i.r = icmp slt i32 %.val.i.i.i.1, %.val1.i.i.i.1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %.ptr.i, align 8, !tbaa !52 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val2.i7.i.i.i.1 = load i32, ptr %i.t, align 8, !tbaa !41
  %i.u = icmp slt i32 %.val.i.i.i.1, %.val2.i7.i.i.i.1
  br i1 %i.u, label %.lr.ph.i.i.i.1, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.d, %.lr.ph.i.i.i.1
  %i.v = phi ptr [ %i.x, %.lr.ph.i.i.i.1 ], [ %i.s, %bb.d ]
  %.pn8.i.i.i.1 = phi ptr [ %.sroa.02.0.i.i.i.1, %.lr.ph.i.i.i.1 ], [ %.ptr.i, %bb.d ] ; 2 uses
  %.sroa.02.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.1, i64 8 ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %.pn8.i.i.i.1, i64 -8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !52
  %i.x = load ptr, ptr %.sroa.02.0.i.i.i.1, align 8, !tbaa !52 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val2.i.i.i.i.1 = load i32, ptr %i.y, align 8, !tbaa !41
  %i.z = icmp slt i32 %.val.i.i.i.1, %.val2.i.i.i.i.1
  br i1 %i.z, label %.lr.ph.i.i.i.1, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1, !llvm.loop !19

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.1, %bb.d
  %.pre-phi.i.i.i.1 = phi ptr [ %.ptr.i, %bb.d ], [ %.sroa.02.0.i.i.i.1, %.lr.ph.i.i.i.1 ]
  %i.aa = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.1, i64 -8
  store ptr %i.p, ptr %i.aa, align 8, !tbaa !52
  %.pre.i.i.1 = load ptr, ptr %.ptr37.i, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr i8, ptr %.pre.i.i.1, i64 8
  %.val1.i.i.i.2.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = ptrtoint ptr %.ptr.i to i64
  %i.ac = sub i64 %i.g, %i.ab                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.preheader.i.i.1, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1

.lr.ph.i.i.i.i.i.preheader.i.i.1:                 ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.ptr.i.1, ptr nonnull align 8 %.ptr.i, i64 %i.ac, i1 false), !tbaa !52, !noalias !696
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.1, %bb.e
  store ptr %i.p, ptr %.ptr37.i, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1
  %.val1.i.i.i.2 = phi i32 [ %.val.i.i.i.1, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1 ], [ %.val1.i.i.i.2.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1 ]
  %.ptr.i.2 = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 7 uses
  %i.ae = load ptr, ptr %.ptr.i.2, align 8, !tbaa !52 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val.i.i.i.2 = load i32, ptr %i.af, align 8, !tbaa !41 ; 4 uses
  %i.ag = icmp slt i32 %.val.i.i.i.2, %.val1.i.i.i.2
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %.ptr.i.1, align 8, !tbaa !52 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val2.i7.i.i.i.2 = load i32, ptr %i.ai, align 8, !tbaa !41
  %i.aj = icmp slt i32 %.val.i.i.i.2, %.val2.i7.i.i.i.2
  br i1 %i.aj, label %.lr.ph.i.i.i.2, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.g, %.lr.ph.i.i.i.2
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i.2 ], [ %i.ah, %bb.g ]
  %.pn8.i.i.i.2 = phi ptr [ %.sroa.02.0.i.i.i.2, %.lr.ph.i.i.i.2 ], [ %.ptr.i.1, %bb.g ] ; 2 uses
  %.sroa.02.0.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.2, i64 8 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %.pn8.i.i.i.2, i64 -8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !52
  %i.am = load ptr, ptr %.sroa.02.0.i.i.i.2, align 8, !tbaa !52 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val2.i.i.i.i.2 = load i32, ptr %i.an, align 8, !tbaa !41
  %i.ao = icmp slt i32 %.val.i.i.i.2, %.val2.i.i.i.i.2
  br i1 %i.ao, label %.lr.ph.i.i.i.2, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2, !llvm.loop !19

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2: ; preds = %.lr.ph.i.i.i.2, %bb.g
  %.pre-phi.i.i.i.2 = phi ptr [ %.ptr.i.1, %bb.g ], [ %.sroa.02.0.i.i.i.2, %.lr.ph.i.i.i.2 ]
  %i.ap = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.2, i64 -8
  store ptr %i.ae, ptr %i.ap, align 8, !tbaa !52
  %.pre.i.i.2 = load ptr, ptr %.ptr37.i, align 8, !tbaa !52
  %.phi.trans.insert67 = getelementptr i8, ptr %.pre.i.i.2, i64 8
  %.val1.i.i.i.3.pre = load i32, ptr %.phi.trans.insert67, align 8, !tbaa !41
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = ptrtoint ptr %.ptr.i.1 to i64
  %i.ar = sub i64 %i.g, %i.aq                     ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.preheader.i.i.2, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2

.lr.ph.i.i.i.i.i.preheader.i.i.2:                 ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.ptr.i.2, ptr nonnull align 8 %.ptr.i.1, i64 %i.ar, i1 false), !tbaa !52, !noalias !696
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.2, %bb.h
  store ptr %i.ae, ptr %.ptr37.i, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2
  %.val1.i.i.i.3 = phi i32 [ %.val.i.i.i.2, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2 ], [ %.val1.i.i.i.3.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2 ]
  %.ptr.i.3 = getelementptr inbounds i8, ptr %i.h, i64 -40 ; 7 uses
  %i.at = load ptr, ptr %.ptr.i.3, align 8, !tbaa !52 ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val.i.i.i.3 = load i32, ptr %i.au, align 8, !tbaa !41 ; 4 uses
  %i.av = icmp slt i32 %.val.i.i.i.3, %.val1.i.i.i.3
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %.ptr.i.2, align 8, !tbaa !52 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val2.i7.i.i.i.3 = load i32, ptr %i.ax, align 8, !tbaa !41
  %i.ay = icmp slt i32 %.val.i.i.i.3, %.val2.i7.i.i.i.3
  br i1 %i.ay, label %.lr.ph.i.i.i.3, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.j, %.lr.ph.i.i.i.3
  %i.az = phi ptr [ %i.bb, %.lr.ph.i.i.i.3 ], [ %i.aw, %bb.j ]
  %.pn8.i.i.i.3 = phi ptr [ %.sroa.02.0.i.i.i.3, %.lr.ph.i.i.i.3 ], [ %.ptr.i.2, %bb.j ] ; 2 uses
  %.sroa.02.0.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.3, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.pn8.i.i.i.3, i64 -8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !52
  %i.bb = load ptr, ptr %.sroa.02.0.i.i.i.3, align 8, !tbaa !52 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.val2.i.i.i.i.3 = load i32, ptr %i.bc, align 8, !tbaa !41
  %i.bd = icmp slt i32 %.val.i.i.i.3, %.val2.i.i.i.i.3
  br i1 %i.bd, label %.lr.ph.i.i.i.3, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3, !llvm.loop !19

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3: ; preds = %.lr.ph.i.i.i.3, %bb.j
  %.pre-phi.i.i.i.3 = phi ptr [ %.ptr.i.2, %bb.j ], [ %.sroa.02.0.i.i.i.3, %.lr.ph.i.i.i.3 ]
  %i.be = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.3, i64 -8
  store ptr %i.at, ptr %i.be, align 8, !tbaa !52
  %.pre.i.i.3 = load ptr, ptr %.ptr37.i, align 8, !tbaa !52
  %.phi.trans.insert69 = getelementptr i8, ptr %.pre.i.i.3, i64 8
  %.val1.i.i.i.4.pre = load i32, ptr %.phi.trans.insert69, align 8, !tbaa !41
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bf = ptrtoint ptr %.ptr.i.2 to i64
  %i.bg = sub i64 %i.g, %i.bf                     ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.preheader.i.i.3, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3

.lr.ph.i.i.i.i.i.preheader.i.i.3:                 ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.ptr.i.3, ptr nonnull align 8 %.ptr.i.2, i64 %i.bg, i1 false), !tbaa !52, !noalias !696
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.3, %bb.k
  store ptr %i.at, ptr %.ptr37.i, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3
  %.val1.i.i.i.4 = phi i32 [ %.val.i.i.i.3, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3 ], [ %.val1.i.i.i.4.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3 ]
  %.ptr.i.4 = getelementptr inbounds i8, ptr %i.h, i64 -48 ; 7 uses
  %i.bi = load ptr, ptr %.ptr.i.4, align 8, !tbaa !52 ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %.val.i.i.i.4 = load i32, ptr %i.bj, align 8, !tbaa !41 ; 4 uses
  %i.bk = icmp slt i32 %.val.i.i.i.4, %.val1.i.i.i.4
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %.ptr.i.3, align 8, !tbaa !52 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %.val2.i7.i.i.i.4 = load i32, ptr %i.bm, align 8, !tbaa !41
  %i.bn = icmp slt i32 %.val.i.i.i.4, %.val2.i7.i.i.i.4
  br i1 %i.bn, label %.lr.ph.i.i.i.4, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %bb.m, %.lr.ph.i.i.i.4
  %i.bo = phi ptr [ %i.bq, %.lr.ph.i.i.i.4 ], [ %i.bl, %bb.m ]
  %.pn8.i.i.i.4 = phi ptr [ %.sroa.02.0.i.i.i.4, %.lr.ph.i.i.i.4 ], [ %.ptr.i.3, %bb.m ] ; 2 uses
  %.sroa.02.0.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.4, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.pn8.i.i.i.4, i64 -8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !52
  %i.bq = load ptr, ptr %.sroa.02.0.i.i.i.4, align 8, !tbaa !52 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %.val2.i.i.i.i.4 = load i32, ptr %i.br, align 8, !tbaa !41
  %i.bs = icmp slt i32 %.val.i.i.i.4, %.val2.i.i.i.i.4
  br i1 %i.bs, label %.lr.ph.i.i.i.4, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4, !llvm.loop !19

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4: ; preds = %.lr.ph.i.i.i.4, %bb.m
  %.pre-phi.i.i.i.4 = phi ptr [ %.ptr.i.3, %bb.m ], [ %.sroa.02.0.i.i.i.4, %.lr.ph.i.i.i.4 ]
  %i.bt = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.4, i64 -8
  store ptr %i.bi, ptr %i.bt, align 8, !tbaa !52
  %.pre.i.i.4 = load ptr, ptr %.ptr37.i, align 8, !tbaa !52
  %.phi.trans.insert71 = getelementptr i8, ptr %.pre.i.i.4, i64 8
  %.val1.i.i.i.5.pre = load i32, ptr %.phi.trans.insert71, align 8, !tbaa !41
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bu = ptrtoint ptr %.ptr.i.3 to i64
  %i.bv = sub i64 %i.g, %i.bu                     ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.preheader.i.i.4, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4

.lr.ph.i.i.i.i.i.preheader.i.i.4:                 ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.ptr.i.4, ptr nonnull align 8 %.ptr.i.3, i64 %i.bv, i1 false), !tbaa !52, !noalias !696
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.4, %bb.n
  store ptr %i.bi, ptr %.ptr37.i, align 8, !tbaa !52
end_hunk_1
