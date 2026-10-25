Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InterpolatingCompilationDatabase?download=true
inline.NumInlined: 1807
inline.NumDeleted: 847
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_:bb.a

.thread.i.i19.i.i.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i.i, %.thread.i.i.i.i.i
  %i.ah = icmp ult i64 %.sroa.24.0.copyload.i.i.i, %.sroa.26.0.copyload.i.i
  br i1 %i.ah, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefEmENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i

_ZN4llvmltENS_9StringRefES0_.exit20.i.i.i:        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i.i
  %i.ai = icmp slt i32 %.fr.i.i14.i.i.i, 0
  br i1 %i.ai, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefEmENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefEmENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit20.i.i.i, %.thread.i.i19.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.al = icmp ult i64 %.sroa.6.0.copyload.i, %i.ak
  br i1 %i.al, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefEmENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefEmENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefEmENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i, %.thread.i.i.thread.i.i.i, %.thread.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, i64 16, i1 false), !tbaa.struct !53
  %i.am = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 16
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !50
  br label %bb.c, !llvm.loop !5

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %.thread.i.i19.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefEmENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i
  store ptr %.sroa.05.0.copyload.i.i, ptr %.sroa.08.0.i, align 8, !tbaa !47
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 8
  store i64 %.sroa.26.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.ap, align 8, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.021, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !259

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5clang7tooling19CompilationDatabaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not6.i = icmp eq i32 %i.d, 0
  br i1 %.not6.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.h = ptrtoint ptr %.07.i to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %sum.shift.i = lshr i64 %i.j, 10
  %i.k = trunc i64 %sum.shift.i to i32
  %i.l = and i32 %i.k, 33554431
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.l, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.m to i64
  %i.n = shl nuw nsw i64 4096, %.sroa.speculated.i.i
  %i.o = load ptr, ptr %.07.i, align 8, !tbaa !88
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.o, i64 noundef %i.n, i64 noundef 16) #19
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.f
  br i1 %.not.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit, label %.lr.ph.i, !llvm.loop !260

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not10.i = icmp eq i32 %i.t, 0
  br i1 %.not10.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit, label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit, %.lr.ph.i1
  %.011.i = phi ptr [ %i.z, %.lr.ph.i1 ], [ %i.r, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit ] ; 3 uses
  %i.w = load ptr, ptr %.011.i, align 8, !tbaa !262
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !263
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.y, i64 noundef 16) #19
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i, i64 16 ; 2 uses
  %.not.i2 = icmp eq ptr %i.z, %i.v
  br i1 %.not.i2, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit, label %.lr.ph.i1

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit: ; preds = %.lr.ph.i1
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !25
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit
  %i.aa = phi ptr [ %.pre, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit ], [ %i.r, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit
  tail call void @free(ptr noundef %i.aa) #19
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit, %bb.b
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #19
  br label %_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit

_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit, %bb.c
  ret void
}

declare noundef i64 @_ZNK4llvm3sys4path16reverse_iteratormiERKS2_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_ZNK5clang7tooling12_GLOBAL__N_19FileIndex11indexLookupILb1EEEN4llvm8ArrayRefISt4pairINS4_9StringRefEmEEES7_S9_(ptr nofree readonly captures(none) %0, i64 %1, ptr %2, i64 %3) unnamed_addr #13 align 2 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZSt11equal_rangeIPKSt4pairIN4llvm9StringRefEmES2_N5clang7tooling12_GLOBAL__N_14LessILb1EEEES0_IT_SB_ESB_SB_RKT0_T1_.exit, label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %bb.c
  %.01326.i.i = phi i64 [ %.2.i.i, %bb.c ], [ %3, %bb.a ] ; 3 uses
  %.025.i.i = phi ptr [ %.1.i.i, %bb.c ], [ %2, %bb.a ] ; 4 uses
  %i.a = lshr i64 %.01326.i.i, 1                  ; 5 uses
  %.idx27 = mul nuw nsw i64 %i.a, 24              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 %.idx27 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i, i64 %1) ; 3 uses
  %i.c = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.c, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.a, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8 ; 2 uses
  %i.d = tail call i32 @memcmp(ptr noundef readonly %.sroa.0.0.copyload.i.i.i, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i.i.i) #22
  %.fr.i.i.i.i.i.i = freeze i32 %i.d              ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.thread18.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.thread.i.i.a

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.a: ; preds = %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.not.i.i.i.i = icmp ugt i64 %1, %.sroa.2.0.copyload.i.i.i
  br i1 %.not.i.i.i.i, label %bb.b, label %.critedge.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.thread18.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %.not.i.i19.i.i = icmp ugt i64 %1, %.sroa.2.0.copyload.i.i.i
  br i1 %.not.i.i19.i.i, label %bb.b, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i24.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.thread.i.i.a: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.e = icmp slt i32 %.fr.i.i.i.i.i.i, 0
  br i1 %i.e, label %bb.b, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i24.i.i

bb.b:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.thread.i.i.a, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.thread18.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = xor i64 %i.a, -1
  %i.h = add nsw i64 %.01326.i.i, %i.g
  br label %bb.c

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i24.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.thread.i.i.a, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.thread18.i.i
  %i.i = tail call i32 @memcmp(ptr noundef readonly %0, ptr noundef readonly %.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i) #22
  %.fr.i.i.i.i26.i.i = freeze i32 %i.i
  %i.j = icmp slt i32 %.fr.i.i.i.i26.i.i, 0
  br i1 %i.j, label %bb.c, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i24.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.a
  %.not26 = icmp eq i64 %i.a, 0
  br i1 %.not26, label %_ZSt13__lower_boundIPKSt4pairIN4llvm9StringRefEmES2_N9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEEET_SF_SF_RKT0_T1_.exit.i.i, label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %.critedge.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i
  %.05.i.i.i = phi i64 [ %.1.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i ], [ %i.a, %.critedge.i.i ] ; 2 uses
  %.0114.i.i.i = phi ptr [ %.112.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i ], [ %.025.i.i, %.critedge.i.i ] ; 2 uses
  %i.k = lshr i64 %.05.i.i.i, 1                   ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.0114.i.i.i, i64 %i.k ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i, i64 %1) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.m, label %.thread.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 @memcmp(ptr noundef readonly %.sroa.0.0.copyload.i.i.i.i, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.n            ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.not.i.i.i.i.i = icmp ugt i64 %1, %.sroa.2.0.copyload.i.i.i.i
  %spec.select.i.i.i.i.i = sext i1 %.not.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ]
  %i.o = icmp slt i32 %.1.i.i.i.i.i.i.i, 0        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = xor i64 %i.k, -1
  %i.r = add nsw i64 %.05.i.i.i, %i.q
  %.112.i.i.i = select i1 %i.o, ptr %i.p, ptr %.0114.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.k  ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt13__lower_boundIPKSt4pairIN4llvm9StringRefEmES2_N9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEEET_SF_SF_RKT0_T1_.exit.i.i, !llvm.loop !264

_ZSt13__lower_boundIPKSt4pairIN4llvm9StringRefEmES2_N9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEEET_SF_SF_RKT0_T1_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i, %.critedge.i.i
  %.011.lcssa.i.i.i = phi ptr [ %.025.i.i, %.critedge.i.i ], [ %.112.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i ] ; 2 uses
  %.idx = mul nuw nsw i64 %.01326.i.i, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = add nuw nsw i64 %.idx27, 24
  %gepdiff = sub nsw i64 %.idx, %i.u              ; 2 uses
  %i.v = icmp sgt i64 %gepdiff, 0
  br i1 %i.v, label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i38.i.i, label %_ZSt11equal_rangeIPKSt4pairIN4llvm9StringRefEmES2_N5clang7tooling12_GLOBAL__N_14LessILb1EEEES0_IT_SB_ESB_SB_RKT0_T1_.exit

_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i38.i.i: ; preds = %_ZSt13__lower_boundIPKSt4pairIN4llvm9StringRefEmES2_N9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEEET_SF_SF_RKT0_T1_.exit.i.i
  %i.w = udiv exact i64 %gepdiff, 24
  br label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i39.i.i

_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i39.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i.i, %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i38.i.i
  %.05.i40.i.i = phi i64 [ %.1.i55.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i.i ], [ %i.w, %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i38.i.i ] ; 2 uses
  %.0114.i41.i.i = phi ptr [ %.112.i54.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i.i ], [ %i.t, %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i38.i.i ] ; 2 uses
  %i.x = lshr i64 %.05.i40.i.i, 1                 ; 3 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.0114.i41.i.i, i64 %i.x ; 3 uses
  %.sroa.2.0..sroa_idx.i.i44.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i.i45.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i44.i.i, align 8 ; 2 uses
  %.sroa.speculated.i.i.i.i46.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i45.i.i, i64 %1) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i46.i.i, 0
  br i1 %i.z, label %.thread.i.i.i.i.i56.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i47.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i47.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i39.i.i
  %.sroa.0.0.copyload.i.i48.i.i = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 @memcmp(ptr noundef readonly %0, ptr noundef readonly %.sroa.0.0.copyload.i.i48.i.i, i64 noundef %.sroa.speculated.i.i.i.i46.i.i) #22
  %.fr.i.i.i.i.i49.i.i = freeze i32 %i.aa         ; 2 uses
  %.not.not.i.i.i.i.i50.i.i = icmp eq i32 %.fr.i.i.i.i.i49.i.i, 0
  %.inv.i.i.i.i.i51.i.i = icmp sgt i32 %.fr.i.i.i.i.i49.i.i, -1
  %spec.select.i.i.i.i.i52.i.i = select i1 %.inv.i.i.i.i.i51.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i50.i.i, label %.thread.i.i.i.i.i56.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i.i

.thread.i.i.i.i.i56.i.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i47.i.i, %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i39.i.i
  %.not.i.i.i57.i.i = icmp ugt i64 %1, %.sroa.2.0.copyload.i.i45.i.i
  %spec.select.i.i.i58.i.i = zext i1 %.not.i.i.i57.i.i to i32
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i.i: ; preds = %.thread.i.i.i.i.i56.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i47.i.i
  %.1.i.i.i.i.i53.i.i = phi i32 [ %spec.select.i.i.i.i.i52.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i47.i.i ], [ %spec.select.i.i.i58.i.i, %.thread.i.i.i.i.i56.i.i ]
  %i.ab = icmp slt i32 %.1.i.i.i.i.i53.i.i, 0     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ad = xor i64 %i.x, -1
  %i.ae = add nsw i64 %.05.i40.i.i, %i.ad
  %.112.i54.i.i = select i1 %i.ab, ptr %.0114.i41.i.i, ptr %i.ac ; 2 uses
  %.1.i55.i.i = select i1 %i.ab, i64 %i.x, i64 %i.ae ; 2 uses
  %i.af = icmp sgt i64 %.1.i55.i.i, 0
  br i1 %i.af, label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i39.i.i, label %_ZSt11equal_rangeIPKSt4pairIN4llvm9StringRefEmES2_N5clang7tooling12_GLOBAL__N_14LessILb1EEEES0_IT_SB_ESB_SB_RKT0_T1_.exit, !llvm.loop !265

bb.c:                                             ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i24.i.i, %bb.b
  %.1.i.i = phi ptr [ %i.f, %bb.b ], [ %.025.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i24.i.i ] ; 3 uses
  %.2.i.i = phi i64 [ %i.h, %bb.b ], [ %i.a, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i24.i.i ] ; 2 uses
  %i.ag = icmp sgt i64 %.2.i.i, 0
  br i1 %i.ag, label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11equal_rangeIPKSt4pairIN4llvm9StringRefEmES2_N5clang7tooling12_GLOBAL__N_14LessILb1EEEES0_IT_SB_ESB_SB_RKT0_T1_.exit, !llvm.loop !266

_ZSt11equal_rangeIPKSt4pairIN4llvm9StringRefEmES2_N5clang7tooling12_GLOBAL__N_14LessILb1EEEES0_IT_SB_ESB_SB_RKT0_T1_.exit: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i.i, %bb.a, %_ZSt13__lower_boundIPKSt4pairIN4llvm9StringRefEmES2_N9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEEET_SF_SF_RKT0_T1_.exit.i.i
  %.sroa.3.0.i.i = phi ptr [ %.112.i54.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i.i ], [ %i.t, %_ZSt13__lower_boundIPKSt4pairIN4llvm9StringRefEmES2_N9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEEET_SF_SF_RKT0_T1_.exit.i.i ], [ %2, %bb.a ], [ %.1.i.i, %bb.c ]
  %.sroa.0.0.i.i = phi ptr [ %.011.lcssa.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i.i ], [ %.011.lcssa.i.i.i, %_ZSt13__lower_boundIPKSt4pairIN4llvm9StringRefEmES2_N9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb1EEEEEET_SF_SF_RKT0_T1_.exit.i.i ], [ %2, %bb.a ], [ %.1.i.i, %bb.c ] ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.3.0.i.i to i64
  %i.ai = ptrtoint ptr %.sroa.0.0.i.i to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 24
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.ak, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_ZNK5clang7tooling12_GLOBAL__N_19FileIndex11indexLookupILb0EEEN4llvm8ArrayRefISt4pairINS4_9StringRefEmEEES7_S9_(ptr nofree readonly captures(none) %0, i64 %1, ptr %2, i64 %3) unnamed_addr #13 align 2 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZSt11equal_rangeIPKSt4pairIN4llvm9StringRefEmES2_N5clang7tooling12_GLOBAL__N_14LessILb0EEEES0_IT_SB_ESB_SB_RKT0_T1_.exit, label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.thread21.i.i
  %.01328.i.i = phi i64 [ %.2.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.thread21.i.i ], [ %3, %bb.a ] ; 3 uses
  %.027.i.i = phi ptr [ %.1.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.thread21.i.i ], [ %2, %bb.a ] ; 5 uses
  %i.a = lshr i64 %.01328.i.i, 1                  ; 6 uses
  %.idx28 = mul nuw nsw i64 %i.a, 24              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 %.idx28 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 4 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %.sroa.2.0.copyload.i.i.i) ; 3 uses
  %i.c = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.c, label %.thread.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8 ; 2 uses
  %i.d = tail call i32 @memcmp(ptr noundef readonly %.sroa.0.0.copyload.i.i.i, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22
  %.fr.i.i.i.i.i.i = freeze i32 %i.d              ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.thread.i.i.i.i.thread.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.e = icmp ult i64 %.sroa.2.0.copyload.i.i.i, %1
  br i1 %i.e, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.thread17.i.i, label %.thread.i.i.i.i31.i.i

.thread.i.i.i.i.thread.i.i:                       ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.f = icmp ult i64 %.sroa.2.0.copyload.i.i.i, %1
  br i1 %i.f, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.thread17.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i24.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.g = icmp slt i32 %.fr.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.thread17.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i24.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.thread17.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i, %.thread.i.i.i.i.thread.i.i, %.thread.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = xor i64 %i.a, -1
  %i.j = add nsw i64 %.01328.i.i, %i.i
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.thread21.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i24.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i, %.thread.i.i.i.i.thread.i.i
  %i.k = tail call i32 @memcmp(ptr noundef readonly %0, ptr noundef readonly %.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22
  %.fr.i.i.i.i26.i.i = freeze i32 %i.k            ; 2 uses
  %.not.not.i.i.i.i27.i.i = icmp eq i32 %.fr.i.i.i.i26.i.i, 0
  br i1 %.not.not.i.i.i.i27.i.i, label %.thread.i.i.i.i31.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i

.thread.i.i.i.i31.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i24.i.i, %.thread.i.i.i.i.i.i
  %i.l = icmp ult i64 %1, %.sroa.2.0.copyload.i.i.i
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.thread21.i.i, label %.critedge.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i24.i.i
  %i.m = icmp slt i32 %.fr.i.i.i.i26.i.i, 0
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.thread21.i.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i, %.thread.i.i.i.i31.i.i
  %.not27 = icmp eq i64 %i.a, 0
  br i1 %.not27, label %_ZSt13__lower_boundIPKSt4pairIN4llvm9StringRefEmES2_N9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEEET_SF_SF_RKT0_T1_.exit.i.i, label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %.critedge.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i
  %.05.i.i.i = phi i64 [ %.1.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i ], [ %i.a, %.critedge.i.i ] ; 2 uses
  %.0114.i.i.i = phi ptr [ %.112.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i ], [ %.027.i.i, %.critedge.i.i ] ; 2 uses
  %i.n = lshr i64 %.05.i.i.i, 1                   ; 3 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.0114.i.i.i, i64 %i.n ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %.sroa.2.0.copyload.i.i.i.i) ; 2 uses
  %i.p = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.p, label %.thread.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 @memcmp(ptr noundef readonly %.sroa.0.0.copyload.i.i.i.i, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #22
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.q            ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.r = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, %1
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.thread.i.i.i.i.i.i.i
  %i.s = icmp ult i64 %.sroa.2.0.copyload.i.i.i.i, %1
  %i.t = select i1 %i.s, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i: ; preds = %bb.b, %.thread.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %i.t, %bb.b ], [ 0, %.thread.i.i.i.i.i.i.i ]
  %i.u = icmp slt i32 %.1.i.i.i.i.i.i.i, 0        ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = xor i64 %i.n, -1
  %i.x = add nsw i64 %.05.i.i.i, %i.w
  %.112.i.i.i = select i1 %i.u, ptr %i.v, ptr %.0114.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.u, i64 %i.x, i64 %i.n  ; 2 uses
  %i.y = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.y, label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt13__lower_boundIPKSt4pairIN4llvm9StringRefEmES2_N9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEEET_SF_SF_RKT0_T1_.exit.i.i, !llvm.loop !267

_ZSt13__lower_boundIPKSt4pairIN4llvm9StringRefEmES2_N9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEEET_SF_SF_RKT0_T1_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i, %.critedge.i.i
  %.011.lcssa.i.i.i = phi ptr [ %.027.i.i, %.critedge.i.i ], [ %.112.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIPKSt4pairIN4llvm9StringRefEmEKSB_EEbT_RT0_.exit.i.i.i ] ; 2 uses
  %.idx = mul nuw nsw i64 %.01328.i.i, 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.aa = add nuw nsw i64 %.idx28, 24
  %gepdiff = sub nsw i64 %.idx, %i.aa             ; 2 uses
  %i.ab = icmp sgt i64 %gepdiff, 0
  br i1 %i.ab, label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i36.i.i, label %_ZSt11equal_rangeIPKSt4pairIN4llvm9StringRefEmES2_N5clang7tooling12_GLOBAL__N_14LessILb0EEEES0_IT_SB_ESB_SB_RKT0_T1_.exit

_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i36.i.i: ; preds = %_ZSt13__lower_boundIPKSt4pairIN4llvm9StringRefEmES2_N9__gnu_cxx5__ops14_Iter_comp_valIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEEET_SF_SF_RKT0_T1_.exit.i.i
  %i.ac = udiv exact i64 %gepdiff, 24
  br label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i37.i.i

_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i37.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i.i, %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i36.i.i
  %.05.i38.i.i = phi i64 [ %.1.i53.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i.i ], [ %i.ac, %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i36.i.i ] ; 2 uses
  %.0114.i39.i.i = phi ptr [ %.112.i52.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5clang7tooling12_GLOBAL__N_14LessILb0EEEEclIKN4llvm9StringRefEPKSt4pairISA_mEEEbRT_T0_.exit.i.i.i ], [ %i.z, %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i36.i.i ] ; 2 uses
  %i.ad = lshr i64 %.05.i38.i.i, 1                ; 3 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.0114.i39.i.i, i64 %i.ad ; 3 uses
  %.sroa.2.0..sroa_idx.i.i42.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
end_hunk_0
