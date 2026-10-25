Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfReader?download=true
inline.NumInlined: 6348
inline.NumDeleted: 2998
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZSt16__introsort_loopIPSt4pairIN4llvm10sampleprof10FunctionIdEmElN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_T1_:bb.a
  tail call void @_ZSt13__adjust_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull byval(%"struct.std::pair.115") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.t = icmp sgt i64 %i.r, 24
  br i1 %i.t, label %bb.d, label %_ZSt14__partial_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_T0_.exit, !llvm.loop !1016

.lr.ph37:                                         ; preds = %.lr.ph, %bb.b
  %.0172336 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %.02435 = phi ptr [ %i.z, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.ab, %bb.b ], [ %i.c, %.lr.ph ]
  %i.v = add nsw i64 %.0172336, -1                ; 3 uses
  %i.w = udiv i64 %i.u, 48
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %.02435, i64 -24
  tail call void @_ZSt22__move_median_to_firstIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_SC_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.x, ptr noundef nonnull %i.y)
  %i.z = tail call noundef ptr @_ZSt21__unguarded_partitionIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEET_SC_SC_SC_T0_(ptr noundef nonnull %i.e, ptr noundef %.02435, ptr noundef %0) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPSt4pairIN4llvm10sampleprof10FunctionIdEmElN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_T1_(ptr noundef %i.z, ptr noundef %.02435, i64 noundef %i.v)
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.a                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 384
  br i1 %i.ac, label %bb.b, label %_ZSt14__partial_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_T0_.exit, !llvm.loop !1014

_ZSt14__partial_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_T0_.exit: ; preds = %.lr.ph37, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  tail call void @_ZSt16__insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_(ptr noundef %0, ptr noundef nonnull %i.e)
  %.not7.i = icmp eq ptr %i.e, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i
  %.08.i = phi ptr [ %i.ab, %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i ], [ %i.e, %bb.b ] ; 6 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.08.i, align 8
  %.sroa.0.0.copyload.fr.i.i = freeze ptr %.sroa.0.0.copyload.i.i ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.fr.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %.split17.us.i.i, label %.split17.i.i

.split17.us.i.i:                                  ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i
  %.09.us.i.i = phi ptr [ %.0.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i ], [ %.08.i, %.lr.ph.i ] ; 7 uses
  %.0.us.i.i = getelementptr inbounds i8, ptr %.09.us.i.i, i64 -24 ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %.09.us.i.i, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !269  ; 3 uses
  %.not.i.i.us.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i, %i.g
  br i1 %.not.i.i.us.i.i, label %bb.c, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split17.us.i.i
  %i.h = icmp ugt i64 %.sroa.6.0.copyload.i.i, %i.g
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

bb.c:                                             ; preds = %.split17.us.i.i
  %i.i = load ptr, ptr %.0.us.i.i, align 8, !tbaa !188
  %i.j = getelementptr inbounds i8, ptr %.09.us.i.i, i64 -16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62
  %i.l = icmp ne ptr %i.i, null
  %i.m = icmp ult i64 %.sroa.5.0.copyload.i.i, %i.k
  %or.cond.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i: ; preds = %bb.c, %.split.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.us.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.us.i.i, i64 16, i1 false), !tbaa.struct !145
  %i.n = getelementptr inbounds nuw i8, ptr %.09.us.i.i, i64 16
  store i64 %i.g, ptr %i.n, align 8, !tbaa !269
  br label %.split17.us.i.i, !llvm.loop !22

.split17.i.i:                                     ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i
  %.09.i.i = phi ptr [ %.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i ], [ %.08.i, %.lr.ph.i ] ; 9 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.09.i.i, i64 -24 ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.09.i.i, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !269  ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i, %i.p
  br i1 %.not.i.i.i.i, label %bb.d, label %.split.i.i

.split.i.i:                                       ; preds = %.split17.i.i
  %i.q = icmp ugt i64 %.sroa.6.0.copyload.i.i, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

bb.d:                                             ; preds = %.split17.i.i
  %i.r = load ptr, ptr %.0.i.i, align 8, !tbaa !188 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.09.i.i, i64 -16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !62   ; 2 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %.sroa.5.0.copyload.i.i)
  %i.v = icmp eq ptr %.sroa.0.0.copyload.fr.i.i, %i.r
  br i1 %i.v, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.w = tail call i32 @memcmp(ptr noundef nonnull %.sroa.0.0.copyload.fr.i.i, ptr noundef nonnull %i.r, i64 noundef %i.u) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i, %bb.d
  %i.x = icmp ult i64 %.sroa.5.0.copyload.i.i, %i.t
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %.split.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 16, i1 false), !tbaa.struct !145
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  store i64 %i.p, ptr %i.z, align 8, !tbaa !269
  br label %.split17.i.i, !llvm.loop !22

_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %bb.e, %.split.i.i, %bb.c, %.split.us.i.i
  %.us-phi.i.i = phi ptr [ %.09.us.i.i, %bb.c ], [ %.09.us.i.i, %.split.us.i.i ], [ %.09.i.i, %.split.i.i ], [ %.09.i.i, %bb.e ], [ %.09.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i ], [ %.09.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i ] ; 3 uses
  store ptr %.sroa.0.0.copyload.fr.i.i, ptr %.us-phi.i.i, align 8, !tbaa !136
  %.sroa.5.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.aa, align 8, !tbaa !269
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i, label %_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit, label %.lr.ph.i, !llvm.loop !1017

bb.f:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1)
  br label %_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit

_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i, %bb.b, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"struct.std::pair.115") align 8 %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit
  %.037 = phi i64 [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.037, 1                         ; 3 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = getelementptr [24 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !269  ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !269  ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = icmp ugt i64 %i.i, %i.k
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %i.g, i64 24
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !188  ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !188  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = getelementptr i8, ptr %i.g, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !62   ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !62   ; 3 uses
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.s)
  %i.u = icmp eq ptr %i.n, %i.o
  br i1 %i.u, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i.i.i.i, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.e
  %i.v = tail call i32 @memcmp(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i64 noundef %i.t) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.c
  %i.w = icmp eq i64 %i.s, %i.r
  br i1 %i.w, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i
  %i.x = icmp ult i64 %i.s, %i.r
  %i.y = select i1 %i.x, i32 -1, i32 1
  br label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i

_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i: ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.e, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.v, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i ], [ 0, %bb.e ], [ -2147483648, %bb.d ]
  %i.z = icmp slt i32 %.0.i.i.i.i, 0
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit: ; preds = %bb.b, %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i
  %.0.i.i = phi i1 [ %i.l, %bb.b ], [ %i.z, %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i ]
  %i.aa = or disjoint i64 %i.d, 1
  %spec.select = select i1 %.0.i.i, i64 %i.aa, i64 %i.e ; 4 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %.037 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false), !tbaa.struct !145
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !269
  %i.ag = icmp slt i64 %spec.select, %i.b
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !1018

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit ] ; 5 uses
  %i.ah = and i64 %2, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.aj = add nsw i64 %2, -2
  %i.ak = ashr exact i64 %i.aj, 1
  %i.al = icmp eq i64 %.0.lcssa, %i.ak
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = shl nsw i64 %.0.lcssa, 1
  %i.an = or disjoint i64 %i.am, 1                ; 2 uses
  %i.ao = getelementptr inbounds [24 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 16, i1 false), !tbaa.struct !145
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !269
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge
  %.127 = phi i64 [ %i.an, %bb.h ], [ %.0.lcssa, %bb.g ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.034.0.copyload = load ptr, ptr %3, align 8
  %.fr.i = freeze ptr %.sroa.034.0.copyload       ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %i.at = icmp sgt i64 %.127, %1
  br i1 %i.at, label %.lr.ph.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.i
  %.0.in18.i = add nsw i64 %.127, -1
  %.019.i = sdiv i64 %.0.in18.i, 2                ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %.fr.i, null
  br i1 %.not9.i.i.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i
  %.021.us.i = phi i64 [ %.0.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i ], [ %.019.i, %.lr.ph.i ] ; 5 uses
  %.01320.us.i = phi i64 [ %.021.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i ], [ %.127, %.lr.ph.i ] ; 4 uses
  %i.au = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.us.i ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !269 ; 3 uses
  %.not.i.i.us.i = icmp eq i64 %i.aw, %.sroa.3.0.copyload
  br i1 %.not.i.i.us.i, label %bb.j, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  %i.ax = icmp ugt i64 %i.aw, %.sroa.3.0.copyload
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !188
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i: ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !62
  %i.bc = icmp ult i64 %i.bb, %.sroa.2.0.copyload
  br i1 %i.bc, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, %.split.us.i
  %i.bd = getelementptr inbounds [24 x i8], ptr %0, i64 %.01320.us.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 16, i1 false), !tbaa.struct !145
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.aw, ptr %i.be, align 8, !tbaa !269
  %.0.in.us.i = add nsw i64 %.021.us.i, -1
  %.0.us.i = sdiv i64 %.0.in.us.i, 2
  %i.bf = icmp sgt i64 %.021.us.i, %1
  br i1 %i.bf, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !1019

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i
  %.021.i = phi i64 [ %.0.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i ], [ %.019.i, %.lr.ph.i ] ; 5 uses
  %.01320.i = phi i64 [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i ], [ %.127, %.lr.ph.i ] ; 4 uses
  %i.bg = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !269 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.bi, %.sroa.3.0.copyload
  br i1 %.not.i.i.i, label %bb.k, label %.split.i

.split.i:                                         ; preds = %.lr.ph.split.i
  %i.bj = icmp ugt i64 %i.bi, %.sroa.3.0.copyload
  br i1 %i.bj, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !188 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !62 ; 2 uses
  %i.bn = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload, i64 %i.bm)
  %i.bo = icmp eq ptr %i.bk, %.fr.i
  br i1 %i.bo, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bp = tail call i32 @memcmp(ptr noundef nonnull %i.bk, ptr noundef nonnull %.fr.i, i64 noundef %i.bn) #28 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i.i28, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.k
  %i.bq = icmp ult i64 %i.bm, %.sroa.2.0.copyload
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i
  %i.br = icmp slt i32 %i.bp, 0
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %bb.l, %.split.i
  %i.bs = getelementptr inbounds [24 x i8], ptr %0, i64 %.01320.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 16, i1 false), !tbaa.struct !145
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.bi, ptr %i.bt, align 8, !tbaa !269
  %.0.in.i = add nsw i64 %.021.i, -1
  %.0.i = sdiv i64 %.0.in.i, 2
  %i.bu = icmp sgt i64 %.021.i, %1
  br i1 %i.bu, label %.lr.ph.split.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !1019

_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit: ; preds = %.split.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, %.split.us.i, %bb.j, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i, %bb.i
  %.013.lcssa.i = phi i64 [ %.127, %bb.i ], [ %.021.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i ], [ %.01320.us.i, %.split.us.i ], [ %.01320.us.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i ], [ %.01320.us.i, %bb.j ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i ], [ %.01320.i, %.split.i ], [ %.01320.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ %.01320.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i ]
  %i.bv = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.lcssa.i ; 3 uses
  store ptr %.fr.i, ptr %i.bv, align 8, !tbaa !136
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx31, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %.sroa.3.0.copyload, ptr %i.bw, align 8, !tbaa !269
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %5 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %6 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %7 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %8 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %9 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !269  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !269  ; 6 uses
  %.not.i.i = icmp eq i64 %i.b, %i.d
  br i1 %.not.i.i, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread64, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !188    ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !188    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !62   ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !62   ; 2 uses
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.k)
  %i.m = icmp eq ptr %i.f, %i.g
  br i1 %i.m, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread64, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.d
  %i.n = tail call i32 @memcmp(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef %i.l) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.b
  %i.o = icmp ult i64 %i.k, %i.j
end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_SC_T0_:bb.a
  %i.ap = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ap, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i34 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i34, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread76, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not9.i.i.i.i.i35 = icmp eq ptr %i.aj, null
  br i1 %.not9.i.i.i.i.i35, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i36

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i36: ; preds = %bb.j
  %i.aq = tail call i32 @memcmp(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, i64 noundef %i.ao) #28 ; 2 uses
  %.not.i.i.i.i37 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i37, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i36, %bb.h
  %i.ar = icmp ult i64 %i.an, %i.am
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread76, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i36
  %i.as = icmp slt i32 %i.aq, 0
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread76, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread76: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40, %bb.i, %.split72, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !62
  %i.av = load i64, ptr %i.q, align 8, !tbaa !62
  store i64 %i.av, ptr %i.at, align 8, !tbaa !62
  store i64 %i.au, ptr %i.q, align 8, !tbaa !62
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread: ; preds = %bb.j, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40, %.split72, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !62
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !62
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !62
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread: ; preds = %bb.d, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !269 ; 4 uses
  %.not.i.i42 = icmp eq i64 %i.b, %i.ba
  br i1 %.not.i.i42, label %bb.k, label %.split78

.split78:                                         ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread
  %i.bb = icmp ugt i64 %i.b, %i.ba
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread
  %i.bc = load ptr, ptr %1, align 8, !tbaa !188   ; 3 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !188   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !62 ; 2 uses
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !62 ; 2 uses
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bh)
  %i.bj = icmp eq ptr %i.bc, %i.bd
  br i1 %i.bj, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i50, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i44 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i44, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not9.i.i.i.i.i45 = icmp eq ptr %i.bd, null
  br i1 %.not9.i.i.i.i.i45, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i46

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i46: ; preds = %bb.m
  %i.bk = tail call i32 @memcmp(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, i64 noundef %i.bi) #28 ; 2 uses
  %.not.i.i.i.i47 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i47, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i50, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i50: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i46, %bb.k
  %i.bl = icmp ult i64 %i.bh, %i.bg
  br i1 %i.bl, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i46
  %i.bm = icmp slt i32 %i.bk, 0
  br i1 %i.bm, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i50, %bb.l, %.split78, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !62
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !62
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !62
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread: ; preds = %bb.m, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i50, %.split78, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51
  %.not.i.i52 = icmp eq i64 %i.d, %i.ba
  br i1 %.not.i.i52, label %bb.n, label %.split84

.split84:                                         ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread
  %i.bq = icmp ugt i64 %i.d, %i.ba
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread
  %i.br = load ptr, ptr %2, align 8, !tbaa !188   ; 3 uses
  %i.bs = load ptr, ptr %3, align 8, !tbaa !188   ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !62 ; 2 uses
  %i.bw = load i64, ptr %i.bt, align 8, !tbaa !62 ; 2 uses
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bw)
  %i.by = icmp eq ptr %i.br, %i.bs
  br i1 %i.by, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i.i54 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i54, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not9.i.i.i.i.i55 = icmp eq ptr %i.bs, null
  br i1 %.not9.i.i.i.i.i55, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i56

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i56: ; preds = %bb.p
  %i.bz = tail call i32 @memcmp(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bs, i64 noundef %i.bx) #28 ; 2 uses
  %.not.i.i.i.i57 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.i.i57, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i56, %bb.n
  %i.ca = icmp ult i64 %i.bw, %i.bv
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i56
  %i.cb = icmp slt i32 %i.bz, 0
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60, %bb.o, %.split84, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !62
  %i.ce = load i64, ptr %i.az, align 8, !tbaa !62
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !62
  store i64 %i.cd, ptr %i.az, align 8, !tbaa !62
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread: ; preds = %bb.p, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60, %.split84, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !62
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !62
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !62
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !62
  br label %bb.q

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit31.thread70, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread76
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt21__unguarded_partitionIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEET_SC_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.013 = phi ptr [ %1, %bb.a ], [ %.114, %bb.k ]
  %.0 = phi ptr [ %0, %bb.a ], [ %i.aj, %bb.k ]
  %i.c = load i64, ptr %i.a, align 8, !tbaa !269  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, %bb.b
  %.1 = phi ptr [ %.0, %bb.b ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread ] ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !269  ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, %i.c
  br i1 %.not.i.i, label %bb.d, label %.split

.split:                                           ; preds = %bb.c
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit, %.split
  %i.g = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  br label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.1, align 8, !tbaa !188   ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !188    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.k = load i64, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.l = load i64, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l)
  %i.n = icmp eq ptr %i.h, %i.i
  br i1 %i.n, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i.i.i.i, label %.preheader, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.f
  %i.o = tail call i32 @memcmp(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.m) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.d
  %i.p = icmp ult i64 %i.l, %i.k
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %bb.e, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 24
  br label %bb.c, !llvm.loop !1020

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %.013.pn = phi ptr [ %.013, %.preheader ], [ %.114, %.backedge.backedge ] ; 4 uses
  %.114 = getelementptr inbounds i8, ptr %.013.pn, i64 -24 ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %.013.pn, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !269  ; 2 uses
  %.not.i.i15 = icmp eq i64 %i.c, %i.t
  br i1 %.not.i.i15, label %bb.g, label %.split26

.split26:                                         ; preds = %.backedge
  %i.u = icmp ugt i64 %i.c, %i.t
  br i1 %i.u, label %.backedge.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread

bb.g:                                             ; preds = %.backedge
  %i.v = load ptr, ptr %2, align 8, !tbaa !188    ; 3 uses
  %i.w = load ptr, ptr %.114, align 8, !tbaa !188 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.013.pn, i64 -16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !62   ; 2 uses
  %i.z = load i64, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.z)
  %i.ab = icmp eq ptr %i.v, %i.w
  br i1 %i.ab, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i.i17 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i17, label %.backedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not9.i.i.i.i.i18 = icmp eq ptr %i.w, null
  br i1 %.not9.i.i.i.i.i18, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i19

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i19: ; preds = %bb.i
  %i.ac = tail call i32 @memcmp(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i64 noundef %i.aa) #28 ; 2 uses
  %.not.i.i.i.i20 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i20, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i19, %bb.g
  %i.ad = icmp ult i64 %i.z, %i.y
  br i1 %i.ad, label %.backedge.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread

.backedge.backedge:                               ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23, %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24, %.split26
  br label %.backedge, !llvm.loop !1021

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i19
  %i.ae = icmp slt i32 %i.ac, 0
  br i1 %i.ae, label %.backedge.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread: ; preds = %bb.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23, %.split26, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24
  %i.af = icmp ult ptr %.1, %.114
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread
  ret ptr %.1

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread
  %i.ag = getelementptr inbounds i8, ptr %.013.pn, i64 -8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %.1, i64 16, i1 false), !tbaa.struct !145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.1, ptr noundef nonnull align 8 dereferenceable(24) %.114, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.114, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !62
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !62
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !62
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 24
  br label %bb.b, !llvm.loop !1022
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.0 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.022 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not23 = icmp eq ptr %.022, %1
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.025 = phi ptr [ %.022, %.lr.ph ], [ %.0, %bb.i ] ; 9 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.025, %bb.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.pn24, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !269  ; 8 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !269  ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, %i.g
  br i1 %.not.i.i, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread19, label %.split._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread_crit_edge

.split._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread_crit_edge: ; preds = %.split
  %.sroa.0.0.copyload.i.pre = load ptr, ptr %.025, align 8
  %.sroa.5.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pn24, i64 32
  %.sroa.5.0.copyload.i.pre = load i64, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %.025, align 8, !tbaa !188 ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !188    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn24, i64 32
  %i.l = load i64, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !62   ; 5 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m)
  %i.o = icmp eq ptr %i.i, %i.j
  br i1 %i.o, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not9.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.e
  %i.p = tail call i32 @memcmp(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i64 noundef %i.n) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.c
  %i.q = icmp ult i64 %i.m, %i.l
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread19, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread19, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread19: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %bb.d, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.025, i64 16, i1 false)
  %i.s = ptrtoint ptr %.025 to i64
  %i.t = sub i64 %i.s, %i.d                       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIN4llvm10sampleprof10FunctionIdEmES5_ET0_T_S7_S6_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread19
  %i.v = getelementptr inbounds nuw i8, ptr %.pn24, i64 48
  %i.w = udiv exact i64 %i.t, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.w, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.v, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.025, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 16, i1 false), !tbaa.struct !145
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !62
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !397, !alias.scope !1192
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !397, !alias.scope !1192
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !397, !alias.scope !1192
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !397, !alias.scope !1191
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !397, !alias.scope !1192
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1182

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ai = add i64 %i.d, -8
  %i.aj = sub i64 %i.ai, %i.m                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = and i64 %i.aj, -8                       ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %bound0 = icmp ult ptr %i.ah, %i.aq
  %bound1 = icmp ult ptr %1, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec42, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.au = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %i.av = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !397, !alias.scope !1195
  %wide.load48 = load <2 x i64>, ptr %i.av, align 8, !tbaa !397, !alias.scope !1195
  %i.aw = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !397, !alias.scope !1196, !noalias !1197
  store <2 x i64> %wide.load48, ptr %i.aw, align 8, !tbaa !397, !alias.scope !1196, !noalias !1197
  %i.ax = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !397, !alias.scope !1195
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !397, !alias.scope !1195
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ay, label %middle.block50, label %vector.body43, !llvm.loop !1189

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.al, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !397, !alias.scope !1194
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !397, !alias.scope !1193
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !397, !alias.scope !1194
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1190

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.as, %middle.block50 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !441
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #25
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !442
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !440
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !441
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #26 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !228
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !145
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.e, i8 0, i64 184, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !211
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.f, ptr %i.h, align 8, !tbaa !212
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.i, ptr %i.j, align 8, !tbaa !211
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store ptr %i.i, ptr %i.k, align 8, !tbaa !212
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !214
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.l, ptr %i.n, align 8, !tbaa !211
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %i.l, ptr %i.o, align 8, !tbaa !212
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 5 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.u
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !188  ; 3 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !188  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !62  ; 3 uses
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !62  ; 3 uses
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ab)
  %i.ad = icmp eq ptr %i.w, %i.x
  br i1 %i.ad, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not9.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ae = tail call i32 @memcmp(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i64 noundef %i.ac) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.c
  %i.af = icmp eq i64 %i.ab, %i.aa
  br i1 %i.af, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i
  %i.ag = icmp ult i64 %i.ab, %i.aa
  %i.ah = select i1 %i.ag, i32 -1, i32 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i: ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.e, %bb.d
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.f ], [ %i.ae, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ 0, %bb.e ], [ -2147483648, %bb.d ]
  %i.ai = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, %bb.b
  %i.aj = phi i1 [ %i.ai, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !233
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !233
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !214
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef %i.ao), !inline_history !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !214
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef %i.ar), !inline_history !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !214
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef %i.au), !inline_history !26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 272) #25, !inline_history !28
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.g
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.r, %bb.g ]
  ret ptr %.sroa.09.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !233
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !224  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !188  ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !188    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !62   ; 2 uses
  %i.m = load i64, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m)
  %i.o = icmp eq ptr %i.h, %i.i
  br i1 %i.o, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i: ; preds = %bb.e
  %i.p = tail call i32 @memcmp(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.n) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i, %bb.c
  %i.q = icmp ult i64 %i.m, %i.l
  br i1 %i.q, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread: ; preds = %bb.e, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit, %bb.b
  %i.s = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0
  %i.u = extractvalue { ptr, ptr } %i.s, 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %2, align 8, !tbaa !188    ; 10 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !188  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !62  ; 4 uses
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !62  ; 8 uses
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ab) ; 2 uses
  %i.ad = icmp eq ptr %i.w, %i.x
  br i1 %i.ad, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i10, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not9.i.i.i.i11 = icmp eq ptr %i.x, null
  br i1 %.not9.i.i.i.i11, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i12

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i12: ; preds = %bb.h
  %i.ae = tail call i32 @memcmp(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i64 noundef %i.ac) #28 ; 2 uses
  %.not.i.i.i13 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i13, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15.thread, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15: ; preds = %bb.f
  %i.af = icmp ult i64 %i.ab, %i.aa
  br i1 %i.af, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i29

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15.thread: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i12
  %i.ag = icmp ult i64 %i.ab, %i.aa
  br i1 %i.ag, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i12
  %i.ah = icmp slt i32 %i.ae, 0
  br i1 %i.ah, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15.thread, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15, %bb.g, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !224 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !188 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !62 ; 2 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ap)
  %i.ar = icmp eq ptr %i.an, %i.w
  br i1 %i.ar, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i17 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i17, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not9.i.i.i.i18 = icmp eq ptr %i.w, null
  br i1 %.not9.i.i.i.i18, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i19

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i19: ; preds = %bb.k
  %i.as = tail call i32 @memcmp(ptr noundef nonnull %i.an, ptr noundef nonnull %i.w, i64 noundef %i.aq) #28 ; 2 uses
  %.not.i.i.i20 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i20, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i19, %bb.i
  %i.at = icmp ult i64 %i.ap, %i.ab
  br i1 %i.at, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread71, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i19
  %i.au = icmp slt i32 %i.as, 0
  br i1 %i.au, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread71, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread71: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22, %bb.j, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !432
  %i.ax = icmp eq ptr %i.aw, null                 ; 2 uses
  %spec.select = select i1 %i.ax, ptr null, ptr %1
  %spec.select92 = select i1 %i.ax, ptr %i.al, ptr %1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread: ; preds = %bb.k, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23
  %i.ay = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15.thread, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16
  %i.bb = tail call i32 @memcmp(ptr noundef nonnull %i.x, ptr noundef nonnull %i.w, i64 noundef %i.ac) #28 ; 2 uses
  %.not.i.i.i27 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i27, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i29, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i29: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26
  %i.bc = icmp ult i64 %i.aa, %i.ab
  br i1 %i.bc, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26
  %i.bd = icmp slt i32 %i.bb, 0
  br i1 %i.bd, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i29, %bb.h, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !224 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %1
  br i1 %i.bg, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %bb.l

bb.l:                                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread
  %i.bh = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !188 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !62 ; 2 uses
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.ab)
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_:bb.a
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !62
  %i.v = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.v, %bb.b ], [ %i.ad, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.w = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !197
  %i.aa = and i32 %.0.i7, 31                      ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  %i.ad = add i32 %.0.i7, 1
  br i1 %i.ac, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1224

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !145
  %i.ag = shl nuw i32 1, %i.aa
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !197
  %i.ai = or i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !197
  %i.aj = add i32 %.0.i19, -1
  %i.ak = and i32 %i.aj, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1225

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1226

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !312
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.al = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !314
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !314
  %i.ap = icmp eq i32 %i.al, 0
  br i1 %i.ap, label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.aq = load ptr, ptr %1, align 8, !tbaa !313
  %i.ar = zext i32 %i.al to i64                   ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = add nuw nsw i64 %i.ar, 31
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741820
  %i.aw = add nuw nsw i64 %i.av, %i.as
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aq, i64 noundef %i.aw, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm28ItaniumManglingCanonicalizerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() local_unnamed_addr #4

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !448, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !448, !range !45, !noundef !46
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !45
  %i.j = load i8, ptr %i.d, align 8, !range !45
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10sampleprof15FunctionSamplesELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !79
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !48
  %i.g = load i32, ptr %i.a, align 8, !tbaa !79
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !79
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #26 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !228
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !145
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.e, i8 0, i64 184, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !211
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.f, ptr %i.h, align 8, !tbaa !212
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.i, ptr %i.j, align 8, !tbaa !211
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store ptr %i.i, ptr %i.k, align 8, !tbaa !212
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !214
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.l, ptr %i.n, align 8, !tbaa !211
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %i.l, ptr %i.o, align 8, !tbaa !212
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 5 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.u
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !188  ; 3 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !188  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !62  ; 3 uses
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !62  ; 3 uses
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ab)
  %i.ad = icmp eq ptr %i.w, %i.x
  br i1 %i.ad, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not9.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ae = tail call i32 @memcmp(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i64 noundef %i.ac) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.c
  %i.af = icmp eq i64 %i.ab, %i.aa
  br i1 %i.af, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i
  %i.ag = icmp ult i64 %i.ab, %i.aa
  %i.ah = select i1 %i.ag, i32 -1, i32 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i: ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.e, %bb.d
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.f ], [ %i.ae, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ 0, %bb.e ], [ -2147483648, %bb.d ]
  %i.ai = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, %bb.b
  %i.aj = phi i1 [ %i.ai, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !233
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !233
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !214
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef %i.ao), !inline_history !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !214
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef %i.ar), !inline_history !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !214
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef %i.au), !inline_history !26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 272) #25, !inline_history !28
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.g
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.r, %bb.g ]
  ret ptr %.sroa.09.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN4llvm10sampleprof10FunctionIdEmSt4lessIS2_ESaISt4pairIKS2_mEEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.563", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.434", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not14.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !188
  %.fr.i.i.i = freeze ptr %i.d                    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !62   ; 5 uses
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %.fr.i.i.i, null
  br i1 %.not9.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i
  %.016.us.i.i.i = phi ptr [ %.1.us.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i ], [ %i.b, %.lr.ph.i.i.i ] ; 5 uses
  %.0815.us.i.i.i = phi ptr [ %.19.us.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i ], [ %i.c, %.lr.ph.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !188
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62
  %i.l = icmp ult i64 %i.k, %i.f                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.l, i64 24, i64 16
  %spec.select22.i.i.i = select i1 %i.l, ptr %.0815.us.i.i.i, ptr %.016.us.i.i.i
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i, %.lr.ph.split.us.i.i.i
  %.sink.i.i.i = phi i64 [ %spec.select.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i ], [ 16, %.lr.ph.split.us.i.i.i ]
  %.19.us.i.i.i = phi ptr [ %spec.select22.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i ], [ %.016.us.i.i.i, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i, i64 %.sink.i.i.i
  %.1.us.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !224 ; 2 uses
  %.not.us.i.i.i = icmp eq ptr %.1.us.i.i.i, null
  br i1 %.not.us.i.i.i, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdEmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit, label %.lr.ph.split.us.i.i.i, !llvm.loop !8

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i
  %.016.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i ], [ %i.b, %.lr.ph.i.i.i ] ; 5 uses
  %.0815.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i ], [ %i.c, %.lr.ph.i.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !188  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !62   ; 2 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.q)
  %i.s = icmp eq ptr %i.o, %.fr.i.i.i
  br i1 %i.s, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.t = tail call i32 @memcmp(ptr noundef nonnull %i.o, ptr noundef nonnull %.fr.i.i.i, i64 noundef %i.r) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.u = icmp ult i64 %i.q, %i.f
  br i1 %i.u, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i
  %i.v = icmp slt i32 %i.t, 0
  br i1 %i.v, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %bb.b
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i
  %.sink21.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i ], [ 16, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0815.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i ], [ %.016.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i ], [ %.016.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 %.sink21.i.i.i
  %.1.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdEmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !8

_ZNSt3mapIN4llvm10sampleprof10FunctionIdEmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit: ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i
  %.08.lcssa.i.i.i = phi ptr [ %.19.us.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i ] ; 10 uses
  %i.x = icmp eq ptr %.08.lcssa.i.i.i, %i.c
  br i1 %i.x, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4llvm10sampleprof10FunctionIdEmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !188  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.f)
  %i.ad = icmp eq ptr %.fr.i.i.i, %i.z
  br i1 %i.ad, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq ptr %.fr.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not9.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i: ; preds = %bb.e
  %i.ae = tail call i32 @memcmp(ptr noundef nonnull %.fr.i.i.i, ptr noundef nonnull %i.z, i64 noundef %i.ac) #28 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i4, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i, %bb.c
  %i.af = icmp ult i64 %i.f, %i.ab
  br i1 %i.af, label %.critedge, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i
  %i.ag = icmp slt i32 %i.ae, 0
  br i1 %i.ag, label %.critedge, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread

.critedge:                                        ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, %bb.d, %bb.a, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdEmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %i.c, %bb.a ], [ %.08.lcssa.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit ], [ %.08.lcssa.i.i.i, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdEmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit ], [ %.08.lcssa.i.i.i, %bb.d ], [ %.08.lcssa.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %1, ptr %2, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ah = call ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread: ; preds = %bb.e, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, %.critedge, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit
  %.sroa.07.0 = phi ptr [ %i.ah, %.critedge ], [ %.08.lcssa.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit ], [ %.08.lcssa.i.i.i, %bb.e ], [ %.08.lcssa.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 48
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !228
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !145
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.e, align 8, !tbaa !450
  %i.f = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !188  ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !188  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !62   ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !62   ; 3 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q)
  %i.s = icmp eq ptr %i.l, %i.m
  br i1 %i.s, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.t = tail call i32 @memcmp(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef %i.r) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.c
  %i.u = icmp eq i64 %i.q, %i.p
  br i1 %i.u, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i
  %i.v = icmp ult i64 %i.q, %i.p
  %i.w = select i1 %i.v, i32 -1, i32 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i: ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.e, %bb.d
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.f ], [ %i.t, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ 0, %bb.e ], [ -2147483648, %bb.d ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, %bb.b
  %i.y = phi i1 [ %i.x, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !233
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !233
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #25
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.g
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.g ]
  ret ptr %.sroa.09.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !233
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !224  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !188  ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !188    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !62   ; 2 uses
  %i.m = load i64, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m)
  %i.o = icmp eq ptr %i.h, %i.i
  br i1 %i.o, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i: ; preds = %bb.e
  %i.p = tail call i32 @memcmp(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.n) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i, %bb.c
  %i.q = icmp ult i64 %i.m, %i.l
  br i1 %i.q, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread: ; preds = %bb.e, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit, %bb.b
  %i.s = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0
  %i.u = extractvalue { ptr, ptr } %i.s, 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %2, align 8, !tbaa !188    ; 10 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !188  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !62  ; 4 uses
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !62  ; 8 uses
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ab) ; 2 uses
  %i.ad = icmp eq ptr %i.w, %i.x
  br i1 %i.ad, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i10, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not9.i.i.i.i11 = icmp eq ptr %i.x, null
  br i1 %.not9.i.i.i.i11, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i12

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i12: ; preds = %bb.h
  %i.ae = tail call i32 @memcmp(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i64 noundef %i.ac) #28 ; 2 uses
  %.not.i.i.i13 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i13, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15.thread, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15: ; preds = %bb.f
  %i.af = icmp ult i64 %i.ab, %i.aa
  br i1 %i.af, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i29

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15.thread: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i12
  %i.ag = icmp ult i64 %i.ab, %i.aa
  br i1 %i.ag, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i12
  %i.ah = icmp slt i32 %i.ae, 0
  br i1 %i.ah, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15.thread, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15, %bb.g, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !224 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !188 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !62 ; 2 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ap)
  %i.ar = icmp eq ptr %i.an, %i.w
  br i1 %i.ar, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i17 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i17, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not9.i.i.i.i18 = icmp eq ptr %i.w, null
  br i1 %.not9.i.i.i.i18, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i19

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i19: ; preds = %bb.k
  %i.as = tail call i32 @memcmp(ptr noundef nonnull %i.an, ptr noundef nonnull %i.w, i64 noundef %i.aq) #28 ; 2 uses
  %.not.i.i.i20 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i20, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i19, %bb.i
  %i.at = icmp ult i64 %i.ap, %i.ab
  br i1 %i.at, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread71, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i19
  %i.au = icmp slt i32 %i.as, 0
  br i1 %i.au, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread71, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread71: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22, %bb.j, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !432
  %i.ax = icmp eq ptr %i.aw, null                 ; 2 uses
  %spec.select = select i1 %i.ax, ptr null, ptr %1
  %spec.select92 = select i1 %i.ax, ptr %i.al, ptr %1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread: ; preds = %bb.k, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23
  %i.ay = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15.thread, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16
  %i.bb = tail call i32 @memcmp(ptr noundef nonnull %i.x, ptr noundef nonnull %i.w, i64 noundef %i.ac) #28 ; 2 uses
  %.not.i.i.i27 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i27, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i29, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i29: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26
  %i.bc = icmp ult i64 %i.aa, %i.ab
  br i1 %i.bc, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26
  %i.bd = icmp slt i32 %i.bb, 0
  br i1 %i.bd, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i29, %bb.h, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !224 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %1
  br i1 %i.bg, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %bb.l

bb.l:                                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread
  %i.bh = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !188 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !62 ; 2 uses
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.ab)
  %i.bn = icmp eq ptr %i.w, %i.bj
  br i1 %i.bn, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i36, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i31, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit37.thread88, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not9.i.i.i.i32 = icmp eq ptr %i.bj, null
  br i1 %.not9.i.i.i.i32, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit37.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i33

end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_:bb.a
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02738 = load ptr, ptr %i.a, align 8, !tbaa !224 ; 3 uses
  %.not39 = icmp eq ptr %.02738, null
  br i1 %.not39, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !188
  %.fr = freeze ptr %i.c                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.fr, null
  br i1 %.not.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.02740.us = phi ptr [ %.027.us, %.lr.ph.split.us ], [ %.02738, %.lr.ph ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02740.us, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.h = getelementptr inbounds nuw i8, ptr %.02740.us, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !62
  %i.j = icmp ne ptr %i.g, null
  %i.k = icmp ult i64 %i.e, %i.i
  %or.cond = select i1 %i.j, i1 true, i1 %i.k     ; 2 uses
  %.in.us.v = select i1 %or.cond, i64 16, i64 24
  %.in.us = getelementptr inbounds nuw i8, ptr %.02740.us, i64 %.in.us.v
  %.027.us = load ptr, ptr %.in.us, align 8, !tbaa !224 ; 2 uses
  %.not.us = icmp eq ptr %.027.us, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1227

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread30
  %.02740 = phi ptr [ %.027, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread30 ], [ %.02738, %.lr.ph ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.02740, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !188  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02740, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !62   ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.e)
  %i.q = icmp eq ptr %.fr, %i.m
  br i1 %i.q, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %.not9.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i: ; preds = %bb.b
  %i.r = tail call i32 @memcmp(ptr noundef nonnull %.fr, ptr noundef nonnull %i.m, i64 noundef %i.p) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i, %.lr.ph.split
  %i.s = icmp ult i64 %i.e, %i.o
  br i1 %i.s, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread30, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread30, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread: ; preds = %bb.b, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread30

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread30: ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread
  %.sink = phi i64 [ 24, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i ], [ 16, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit ]
  %i.u = phi i1 [ false, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread ], [ true, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i ], [ true, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.02740, i64 %.sink
  %.027 = load ptr, ptr %i.v, align 8, !tbaa !224 ; 2 uses
  %.not = icmp eq ptr %.027, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1227

._crit_edge:                                      ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread30, %.lr.ph.split.us
  %.026.lcssa = phi ptr [ %.02740.us, %.lr.ph.split.us ], [ %.02740, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread30 ] ; 3 uses
  %.0.lcssa = phi i1 [ %or.cond, %.lr.ph.split.us ], [ %i.u, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread30 ]
  br i1 %.0.lcssa, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.026.lcssa51.a = phi ptr [ %.026.lcssa, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !211
  %i.y = icmp eq ptr %.026.lcssa51.a, %i.x
  br i1 %i.y, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread35, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.026.lcssa51.a) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.026.lcssa50 = phi ptr [ %.026.lcssa51.a, %bb.c ], [ %.026.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.012.0 = phi ptr [ %i.z, %bb.c ], [ %.026.lcssa, %._crit_edge ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !188 ; 3 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !188   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !62 ; 2 uses
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !62 ; 2 uses
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.ag)
  %i.ai = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ai, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i5, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread35, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i.i6 = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i.i.i6, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7: ; preds = %bb.f
  %i.aj = tail call i32 @memcmp(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, i64 noundef %i.ah) #28 ; 2 uses
  %.not.i.i.i8 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i8, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7, %bb.d
  %i.ak = icmp ult i64 %i.ag, %i.af
  br i1 %i.ak, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread35, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7
  %i.al = icmp slt i32 %i.aj, 0
  br i1 %i.al, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread35, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread: ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread35

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread35: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10, %bb.e, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11, %._crit_edge.thread, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread
  %.sroa.025.0 = phi ptr [ %.sroa.012.0, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread ], [ null, %._crit_edge.thread ], [ null, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11 ], [ null, %bb.e ], [ null, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10 ]
  %.sroa.4.0 = phi ptr [ null, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11.thread ], [ %.026.lcssa51.a, %._crit_edge.thread ], [ %.026.lcssa50, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit11 ], [ %.026.lcssa50, %bb.e ], [ %.026.lcssa50, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.025.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJS3_IS2_mEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 16, i1 false), !tbaa.struct !145
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62
  store i64 %i.e, ptr %i.c, align 8, !tbaa !450
  %i.f = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !188  ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !188  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !62   ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !62   ; 3 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q)
  %i.s = icmp eq ptr %i.l, %i.m
  br i1 %i.s, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.t = tail call i32 @memcmp(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef %i.r) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.c
  %i.u = icmp eq i64 %i.q, %i.p
  br i1 %i.u, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i
  %i.v = icmp ult i64 %i.q, %i.p
  %i.w = select i1 %i.v, i32 -1, i32 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i: ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.e, %bb.d
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.f ], [ %i.t, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ 0, %bb.e ], [ -2147483648, %bb.d ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, %bb.b
  %i.y = phi i1 [ %i.x, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !233
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !233
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #25
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.g
  %.sroa.07.011 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.g ]
  ret ptr %.sroa.07.011
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8__detail12_Insert_baseIN4llvm9hash_codeESt4pairIKS2_NS1_10sampleprof15FunctionSamplesEESaIS7_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS4_JS6_EEES3_INS_14_Node_iteratorIS7_Lb0ELb1EEEbENS_20_Node_const_iteratorIS7_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(224) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::tuple.597", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.600", align 8    ; 4 uses
  %i.a = load i64, ptr %2, align 8, !tbaa !272    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !203  ; 2 uses
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !206
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !207  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !208  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.k = load i64, ptr %i.j, align 8, !tbaa !205
  %i.l = icmp eq i64 %i.a, %i.k
  %i.m = load i64, ptr %i.i, align 8
  %i.n = icmp eq i64 %i.a, %i.m
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.q = icmp eq i64 %i.a, %i.w
  %i.r = load i64, ptr %i.p, align 8
  %i.s = icmp eq i64 %i.a, %i.r
  %i.t = select i1 %i.q, i1 %i.s, i1 false
  br i1 %i.t, label %_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %.lr.ph.i.i, !llvm.loop !23

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.u, %bb.c ], [ %i.h, %bb.b ]
  %i.u = load ptr, ptr %.020.i.i, align 8, !tbaa !208 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.w = load i64, ptr %i.v, align 8, !tbaa !205  ; 2 uses
  %i.x = urem i64 %i.w, %i.c
  %.not19.i.i = icmp eq i64 %i.x, %i.d
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !23

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.critedge, !llvm.loop !23

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %2, ptr %4, align 8, !tbaa !452, !alias.scope !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %3, ptr %5, align 8, !tbaa !83, !alias.scope !1233
  %i.y = call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4llvm9hash_codeENS3_10sampleprof15FunctionSamplesEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESG_IJOS7_EEEEEPS9_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !203
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !435
  %i.ad = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 noundef %i.aa, i64 noundef %i.ac, i64 noundef 1) #24 ; 2 uses
  %i.ae = extractvalue { i8, i64 } %i.ad, 0
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.ag = extractvalue { i8, i64 } %i.ad, 1
  call void @_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ag)
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !203
  %i.ai = urem i64 %i.a, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.0.i18 = phi i64 [ %i.ai, %bb.e ], [ %i.d, %.critedge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  store i64 %i.a, ptr %i.aj, align 8, !tbaa !205
  %i.ak = load ptr, ptr %0, align 8, !tbaa !206   ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0.i18 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !207 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.am, null
  br i1 %.not.i.i19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !208
  store ptr %i.an, ptr %i.y, align 8, !tbaa !208
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !207
  store ptr %i.y, ptr %i.ao, align 8, !tbaa !208
  br label %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !436
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !208
  store ptr %i.y, ptr %i.ap, align 8, !tbaa !436
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !208 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.ar, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load i64, ptr %i.b, align 8, !tbaa !203
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.au = load i64, ptr %i.at, align 8, !tbaa !205
  %i.av = urem i64 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.av
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !207
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !207
  br label %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.j, %bb.g
  %i.ax = load i64, ptr %i.ab, align 8, !tbaa !435
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.ab, align 8, !tbaa !435
  br label %_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit

_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit: ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.024.0 = phi ptr [ %i.y, %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.h, %bb.b ], [ %i.u, %bb.c ]
  %.sroa.325.0 = phi i8 [ 1, %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.024.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.325.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4llvm9hash_codeENS3_10sampleprof15FunctionSamplesEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESG_IJOS7_EEEEEPS9_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #26 ; 29 uses
  store ptr null, ptr %i.a, align 8, !tbaa !208
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %2, align 8, !tbaa !452
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %3, align 8, !tbaa !83
  %i.f = inttoptr i64 %i.e to ptr                 ; 17 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !62
  store i64 %i.g, ptr %i.b, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.h, ptr noundef nonnull align 8 dereferenceable(224) %i.f, i64 72, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !214  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !213
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.k, ptr %i.n, align 8, !tbaa !214
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !224
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !224
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.i, ptr %i.s, align 8, !tbaa !1234
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !233
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.u, ptr %i.v, align 8, !tbaa !233
  store ptr null, ptr %i.j, align 8, !tbaa !214
  store ptr %i.l, ptr %i.o, align 8, !tbaa !211
  store ptr %i.l, ptr %i.q, align 8, !tbaa !212
  store i64 0, ptr %i.t, align 8, !tbaa !233
  br label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEC2EOSA_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr null, ptr %i.w, align 8, !tbaa !214
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.i, ptr %i.x, align 8, !tbaa !211
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.i, ptr %i.y, align 8, !tbaa !212
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %i.z, align 8, !tbaa !233
  br label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEC2EOSA_.exit.i.i.i
end_hunk_4
