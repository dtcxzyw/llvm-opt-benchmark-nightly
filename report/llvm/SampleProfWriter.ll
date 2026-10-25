Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfWriter?download=true
inline.NumInlined: 3859
inline.NumDeleted: 2168
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZSt16__introsort_loopIPSt4pairIN4llvm10sampleprof10FunctionIdEmElN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_T1_:bb.a
  tail call void @_ZSt13__adjust_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull byval(%"struct.std::pair.159") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.t = icmp sgt i64 %i.r, 24
  br i1 %i.t, label %bb.d, label %_ZSt14__partial_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_T0_.exit, !llvm.loop !699

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
  br i1 %i.ac, label %bb.b, label %_ZSt14__partial_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_T0_.exit, !llvm.loop !697

_ZSt14__partial_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_T0_.exit: ; preds = %.lr.ph37, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !282  ; 3 uses
  %.not.i.i.us.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i, %i.g
  br i1 %.not.i.i.us.i.i, label %bb.c, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split17.us.i.i
  %i.h = icmp ugt i64 %.sroa.6.0.copyload.i.i, %i.g
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

bb.c:                                             ; preds = %.split17.us.i.i
  %i.i = load ptr, ptr %.0.us.i.i, align 8, !tbaa !227
  %i.j = getelementptr inbounds i8, ptr %.09.us.i.i, i64 -16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !157
  %i.l = icmp ne ptr %i.i, null
  %i.m = icmp ult i64 %.sroa.5.0.copyload.i.i, %i.k
  %or.cond.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i: ; preds = %bb.c, %.split.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.us.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.us.i.i, i64 16, i1 false), !tbaa.struct !245
  %i.n = getelementptr inbounds nuw i8, ptr %.09.us.i.i, i64 16
  store i64 %i.g, ptr %i.n, align 8, !tbaa !282
  br label %.split17.us.i.i, !llvm.loop !20

.split17.i.i:                                     ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i
  %.09.i.i = phi ptr [ %.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i ], [ %.08.i, %.lr.ph.i ] ; 9 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.09.i.i, i64 -24 ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.09.i.i, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !282  ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i, %i.p
  br i1 %.not.i.i.i.i, label %bb.d, label %.split.i.i

.split.i.i:                                       ; preds = %.split17.i.i
  %i.q = icmp ugt i64 %.sroa.6.0.copyload.i.i, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

bb.d:                                             ; preds = %.split17.i.i
  %i.r = load ptr, ptr %.0.i.i, align 8, !tbaa !227 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.09.i.i, i64 -16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !157  ; 2 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %.sroa.5.0.copyload.i.i)
  %i.v = icmp eq ptr %.sroa.0.0.copyload.fr.i.i, %i.r
  br i1 %i.v, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.w = tail call i32 @memcmp(ptr noundef nonnull %.sroa.0.0.copyload.fr.i.i, ptr noundef nonnull %i.r, i64 noundef %i.u) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i, %bb.d
  %i.x = icmp ult i64 %.sroa.5.0.copyload.i.i, %i.t
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %.split.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 16, i1 false), !tbaa.struct !245
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  store i64 %i.p, ptr %i.z, align 8, !tbaa !282
  br label %.split17.i.i, !llvm.loop !20

_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %bb.e, %.split.i.i, %bb.c, %.split.us.i.i
  %.us-phi.i.i = phi ptr [ %.09.us.i.i, %bb.c ], [ %.09.us.i.i, %.split.us.i.i ], [ %.09.i.i, %.split.i.i ], [ %.09.i.i, %bb.e ], [ %.09.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i ], [ %.09.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i ] ; 3 uses
  store ptr %.sroa.0.0.copyload.fr.i.i, ptr %.us-phi.i.i, align 8, !tbaa !179
  %.sroa.5.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i, align 8, !tbaa !157
  %i.aa = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.aa, align 8, !tbaa !282
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i, label %_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit, label %.lr.ph.i, !llvm.loop !700

bb.f:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1)
  br label %_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit

_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i, %bb.b, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"struct.std::pair.159") align 8 %3) local_unnamed_addr #4 comdat {
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !282  ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !282  ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = icmp ugt i64 %i.i, %i.k
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %i.g, i64 24
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !227  ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !227  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = getelementptr i8, ptr %i.g, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !157  ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !157  ; 3 uses
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
  %i.v = tail call i32 @memcmp(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i64 noundef %i.t) #30 ; 2 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false), !tbaa.struct !245
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !157
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !282
  %i.ag = icmp slt i64 %spec.select, %i.b
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !701

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 16, i1 false), !tbaa.struct !245
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !157
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !282
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
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !282 ; 3 uses
  %.not.i.i.us.i = icmp eq i64 %i.aw, %.sroa.3.0.copyload
  br i1 %.not.i.i.us.i, label %bb.j, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  %i.ax = icmp ugt i64 %i.aw, %.sroa.3.0.copyload
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !227
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i: ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !157
  %i.bc = icmp ult i64 %i.bb, %.sroa.2.0.copyload
  br i1 %i.bc, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, %.split.us.i
  %i.bd = getelementptr inbounds [24 x i8], ptr %0, i64 %.01320.us.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 16, i1 false), !tbaa.struct !245
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.aw, ptr %i.be, align 8, !tbaa !282
  %.0.in.us.i = add nsw i64 %.021.us.i, -1
  %.0.us.i = sdiv i64 %.0.in.us.i, 2
  %i.bf = icmp sgt i64 %.021.us.i, %1
  br i1 %i.bf, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !702

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i
  %.021.i = phi i64 [ %.0.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i ], [ %.019.i, %.lr.ph.i ] ; 5 uses
  %.01320.i = phi i64 [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i ], [ %.127, %.lr.ph.i ] ; 4 uses
  %i.bg = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !282 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.bi, %.sroa.3.0.copyload
  br i1 %.not.i.i.i, label %bb.k, label %.split.i

.split.i:                                         ; preds = %.lr.ph.split.i
  %i.bj = icmp ugt i64 %i.bi, %.sroa.3.0.copyload
  br i1 %i.bj, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !227 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !157 ; 2 uses
  %i.bn = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload, i64 %i.bm)
  %i.bo = icmp eq ptr %i.bk, %.fr.i
  br i1 %i.bo, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bp = tail call i32 @memcmp(ptr noundef nonnull %i.bk, ptr noundef nonnull %.fr.i, i64 noundef %i.bn) #30 ; 2 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 16, i1 false), !tbaa.struct !245
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.bi, ptr %i.bt, align 8, !tbaa !282
  %.0.in.i = add nsw i64 %.021.i, -1
  %.0.i = sdiv i64 %.0.in.i, 2
  %i.bu = icmp sgt i64 %.021.i, %1
  br i1 %i.bu, label %.lr.ph.split.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !702

_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit: ; preds = %.split.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, %.split.us.i, %bb.j, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i, %bb.i
  %.013.lcssa.i = phi i64 [ %.127, %bb.i ], [ %.021.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i ], [ %.01320.us.i, %.split.us.i ], [ %.01320.us.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i ], [ %.01320.us.i, %bb.j ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i ], [ %.01320.i, %.split.i ], [ %.01320.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ %.01320.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i ]
  %i.bv = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.lcssa.i ; 3 uses
  store ptr %.fr.i, ptr %i.bv, align 8, !tbaa !179
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx31, align 8, !tbaa !157
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %.sroa.3.0.copyload, ptr %i.bw, align 8, !tbaa !282
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat {
bb.a:
  %4 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %5 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %6 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %7 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %8 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %9 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !282  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !282  ; 6 uses
  %.not.i.i = icmp eq i64 %i.b, %i.d
  br i1 %.not.i.i, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread64, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !227    ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !227    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !157  ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !157  ; 2 uses
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
  %i.n = tail call i32 @memcmp(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef %i.l) #30 ; 2 uses
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
  %i.aq = tail call i32 @memcmp(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, i64 noundef %i.ao) #30 ; 2 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 16, i1 false), !tbaa.struct !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !245
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !157
  %i.av = load i64, ptr %i.q, align 8, !tbaa !157
  store i64 %i.av, ptr %i.at, align 8, !tbaa !157
  store i64 %i.au, ptr %i.q, align 8, !tbaa !157
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread: ; preds = %bb.j, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40, %.split72, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 16, i1 false), !tbaa.struct !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !245
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !157
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !157
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !157
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !157
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread: ; preds = %bb.d, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !282 ; 4 uses
  %.not.i.i42 = icmp eq i64 %i.b, %i.ba
  br i1 %.not.i.i42, label %bb.k, label %.split78

.split78:                                         ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread
  %i.bb = icmp ugt i64 %i.b, %i.ba
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread
  %i.bc = load ptr, ptr %1, align 8, !tbaa !227   ; 3 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !227   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !157 ; 2 uses
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !157 ; 2 uses
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
  %i.bk = tail call i32 @memcmp(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, i64 noundef %i.bi) #30 ; 2 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 16, i1 false), !tbaa.struct !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !245
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !157
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !157
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !157
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !157
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread: ; preds = %bb.m, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i50, %.split78, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51
  %.not.i.i52 = icmp eq i64 %i.d, %i.ba
  br i1 %.not.i.i52, label %bb.n, label %.split84

.split84:                                         ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread
  %i.bq = icmp ugt i64 %i.d, %i.ba
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread
  %i.br = load ptr, ptr %2, align 8, !tbaa !227   ; 3 uses
  %i.bs = load ptr, ptr %3, align 8, !tbaa !227   ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !157 ; 2 uses
  %i.bw = load i64, ptr %i.bt, align 8, !tbaa !157 ; 2 uses
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
  %i.bz = tail call i32 @memcmp(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bs, i64 noundef %i.bx) #30 ; 2 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 16, i1 false), !tbaa.struct !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !245
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !157
  %i.ce = load i64, ptr %i.az, align 8, !tbaa !157
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !157
  store i64 %i.cd, ptr %i.az, align 8, !tbaa !157
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread: ; preds = %bb.p, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60, %.split84, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 16, i1 false), !tbaa.struct !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !245
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !157
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !157
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !157
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !157
  br label %bb.q

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit31.thread70, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread76
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt21__unguarded_partitionIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEET_SC_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %3 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.013 = phi ptr [ %1, %bb.a ], [ %.114, %bb.k ]
  %.0 = phi ptr [ %0, %bb.a ], [ %i.aj, %bb.k ]
  %i.c = load i64, ptr %i.a, align 8, !tbaa !282  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, %bb.b
  %.1 = phi ptr [ %.0, %bb.b ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread ] ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !282  ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, %i.c
  br i1 %.not.i.i, label %bb.d, label %.split

.split:                                           ; preds = %bb.c
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit, %.split
  %i.g = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  br label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.1, align 8, !tbaa !227   ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !227    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.k = load i64, ptr %i.b, align 8, !tbaa !157  ; 2 uses
  %i.l = load i64, ptr %i.j, align 8, !tbaa !157  ; 2 uses
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
  %i.o = tail call i32 @memcmp(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.m) #30 ; 2 uses
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
  br label %bb.c, !llvm.loop !703

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %.013.pn = phi ptr [ %.013, %.preheader ], [ %.114, %.backedge.backedge ] ; 4 uses
  %.114 = getelementptr inbounds i8, ptr %.013.pn, i64 -24 ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %.013.pn, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !282  ; 2 uses
  %.not.i.i15 = icmp eq i64 %i.c, %i.t
  br i1 %.not.i.i15, label %bb.g, label %.split26

.split26:                                         ; preds = %.backedge
  %i.u = icmp ugt i64 %i.c, %i.t
  br i1 %i.u, label %.backedge.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread

bb.g:                                             ; preds = %.backedge
  %i.v = load ptr, ptr %2, align 8, !tbaa !227    ; 3 uses
  %i.w = load ptr, ptr %.114, align 8, !tbaa !227 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.013.pn, i64 -16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !157  ; 2 uses
  %i.z = load i64, ptr %i.b, align 8, !tbaa !157  ; 2 uses
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
  %i.ac = tail call i32 @memcmp(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i64 noundef %i.aa) #30 ; 2 uses
  %.not.i.i.i.i20 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i20, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i19, %bb.g
  %i.ad = icmp ult i64 %i.z, %i.y
  br i1 %i.ad, label %.backedge.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread

.backedge.backedge:                               ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23, %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24, %.split26
  br label %.backedge, !llvm.loop !704

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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %.1, i64 16, i1 false), !tbaa.struct !245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.1, ptr noundef nonnull align 8 dereferenceable(24) %.114, i64 16, i1 false), !tbaa.struct !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.114, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !245
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !157
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !157
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !157
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !157
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 24
  br label %bb.b, !llvm.loop !705
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
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
  %i.f = load i64, ptr %i.e, align 8, !tbaa !282  ; 8 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !282  ; 2 uses
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
  %i.i = load ptr, ptr %.025, align 8, !tbaa !227 ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !227    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn24, i64 32
  %i.l = load i64, ptr %i.c, align 8, !tbaa !157  ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !157  ; 5 uses
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
  %i.p = tail call i32 @memcmp(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i64 noundef %i.n) #30 ; 2 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 16, i1 false), !tbaa.struct !245
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !157
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
end_hunk_1
begin_hunk_2_@_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof13SampleContextEmELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJEEEEERS4_DpOT_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !168
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !187

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof13SampleContextEmELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %4)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !162
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof13SampleContextEmELb1EE9push_backERKS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.k = load i32, ptr %i.d, align 8, !tbaa !162
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !162
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof13SampleContextEmELb1EE9push_backERKS4_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof13SampleContextEmELb1EE9push_backERKS4_.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %.pre, %bb.b ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.n = load ptr, ptr %0, align 8, !tbaa !41
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -48
  ret ptr %i.q
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof13SampleContextEmELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.104", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !162
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 48) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !41
  %i.g = load i32, ptr %i.a, align 8, !tbaa !162
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !162
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIN4llvm10sampleprof13SampleContextESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE17_M_emplace_uniqueIJRS3_IS2_mEEEES3_ISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 40, i1 false), !tbaa.struct !189
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !191
  store i64 %i.e, ptr %i.c, align 8, !tbaa !218
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.f, align 8, !tbaa !287 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.i = tail call noundef zeroext i1 @_ZNK4llvm10sampleprof13SampleContextltERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.h) ; 2 uses
  %.in.v.i = select i1 %i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !287 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !736

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.i, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.g, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !213
  %i.l = icmp eq ptr %.019.lcssa29.i, %i.k
  br i1 %i.l, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.m, %bb.b ], [ %.02024.i, %._crit_edge.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 32
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm10sampleprof13SampleContextltERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br i1 %i.o, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.4.0.i.ph, %i.g
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.r = tail call noundef zeroext i1 @_ZNK4llvm10sampleprof13SampleContextltERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.q)
  br label %.thread

.thread:                                          ; preds = %bb.d, %select.unfold
  %i.s = phi i1 [ %i.r, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !212
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !212
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof13SampleContextESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #28
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof13SampleContextESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4llvm10sampleprof13SampleContextESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.e
  %.sroa.3.022 = phi i8 [ 1, %.thread ], [ 0, %bb.e ]
  %.sroa.09.021 = phi ptr [ %i.a, %.thread ], [ %.sroa.05.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.021, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.022, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm10sampleprof13SampleContextltERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !175  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !175  ; 2 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %i.b, %i.d
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

bb.c:                                             ; preds = %bb.a
  %.not38 = icmp eq i32 %i.b, 0
  br i1 %.not38, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !248  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !248  ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %.not58 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !249
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !249
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !227    ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !227    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !157  ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !157  ; 3 uses
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.s)
  %i.u = icmp eq ptr %i.n, %i.o
  br i1 %i.u, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i.i, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i: ; preds = %bb.f
  %i.v = tail call i32 @memcmp(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i64 noundef %i.t) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i, %bb.d
  %i.w = icmp eq i64 %i.s, %i.r
  br i1 %i.w, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i
  %i.x = icmp ult i64 %i.s, %i.r
  %i.y = select i1 %i.x, i32 -1, i32 1
  br label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit

_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit: ; preds = %bb.e, %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i, %bb.g
  %.0.i.i = phi i32 [ %i.y, %bb.g ], [ %i.v, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i ], [ 0, %bb.f ], [ -2147483648, %bb.e ]
  %i.z = icmp slt i32 %.0.i.i, 0
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

bb.h:                                             ; preds = %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit
  %i.aa = add nuw i64 %.02056, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !11

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.02056 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.02056 ; 4 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.02056 ; 4 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !227 ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !227 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !157 ; 3 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !157 ; 3 uses
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ai)
  %i.ak = icmp eq ptr %i.ad, %i.ae
  br i1 %i.ak, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i27 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i27, label %.loopexit.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not9.i.i = icmp eq ptr %i.ae, null
  br i1 %.not9.i.i, label %.loopexit.loopexit, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i: ; preds = %bb.k
  %i.al = tail call i32 @memcmp(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, i64 noundef %i.aj) #30 ; 2 uses
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i, label %.loopexit.loopexit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i, %bb.i
  %i.am = icmp eq i64 %i.ai, %i.ah
  br i1 %i.am, label %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i
  %i.an = icmp ult i64 %i.ai, %i.ah
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

.loopexit.loopexit:                               ; preds = %bb.j, %bb.k, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i
  %.0.i.ph.ph = phi i32 [ -2147483648, %bb.j ], [ 0, %bb.k ], [ %i.al, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i ]
  %i.ao = icmp slt i32 %.0.i.ph.ph, 0
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !251 ; 3 uses
  %i.as = load i32, ptr %i.aq, align 8, !tbaa !251 ; 3 uses
  %.not.i28 = icmp ne i32 %i.ar, %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = icmp ne i32 %i.au, %i.aw
  %i.ay = select i1 %.not.i28, i1 true, i1 %i.ax
  br i1 %i.ay, label %bb.m, label %bb.h

bb.m:                                             ; preds = %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit
  %i.az = icmp ult i32 %i.ar, %i.as
  br i1 %i.az, label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp uge i32 %i.as, %i.ar
  %i.bb = icmp ult i32 %i.au, %i.aw
  %spec.select = select i1 %i.ba, i1 %i.bb, i1 false
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.bc = icmp ult i64 %i.g, %i.i
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread: ; preds = %bb.l, %.loopexit.loopexit, %bb.n, %bb.m, %._crit_edge, %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit, %bb.b
  %.3 = phi i1 [ %i.e, %bb.b ], [ %i.z, %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit ], [ %i.bc, %._crit_edge ], [ true, %bb.m ], [ %spec.select, %bb.n ], [ %i.an, %bb.l ], [ %i.ao, %.loopexit.loopexit ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SD_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SD_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph60

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEESC_SC_SC_SD_.exit
  %i.g = icmp eq i64 %i.v, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph60, !llvm.loop !737

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cc, %bb.b ]
  %.028.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi45.i.i, %bb.b ]
  %i.h = lshr exact i64 %.lcssa, 3                ; 2 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.014.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !226
  tail call fastcc void @_ZSt13__adjust_heapIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_SD_T1_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.h, ptr noundef %i.l)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.m = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.c, !llvm.loop !738

.lr.ph.i5.i:                                      ; preds = %bb.c, %.lr.ph.i5.i
  %.01.i.i = phi ptr [ %i.n, %.lr.ph.i5.i ], [ %.028.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.01.i.i, i64 -8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !226
  %i.p = load ptr, ptr %0, align 8, !tbaa !226
  store ptr %i.p, ptr %i.n, align 8, !tbaa !226
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_SD_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef %i.o)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SD_.exit, !llvm.loop !739

.lr.ph60:                                         ; preds = %.lr.ph, %bb.b
  %.0172759 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %.02858 = phi ptr [ %.us-phi45.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cc, %bb.b ], [ %i.c, %.lr.ph ]
  %i.v = add nsw i64 %.0172759, -1                ; 3 uses
  %i.w = lshr i64 %i.u, 4
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %.02858, i64 -8 ; 8 uses
  %.val29.i.i = load ptr, ptr %i.e, align 8, !tbaa !226 ; 6 uses
  %.val30.i.i = load ptr, ptr %i.x, align 8, !tbaa !226 ; 6 uses
  %.val29.val.i.i = load ptr, ptr %.val29.i.i, align 8, !tbaa !227 ; 9 uses
  %i.z = getelementptr i8, ptr %.val29.i.i, i64 8
  %.val29.val31.i.i = load i64, ptr %i.z, align 8, !tbaa !157 ; 6 uses
  %.val30.val.i.i = load ptr, ptr %.val30.i.i, align 8, !tbaa !227 ; 9 uses
  %i.aa = getelementptr i8, ptr %.val30.i.i, i64 8
  %.val30.val32.i.i = load i64, ptr %i.aa, align 8, !tbaa !157 ; 6 uses
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.val30.val32.i.i, i64 %.val29.val31.i.i)
  %i.ac = icmp eq ptr %.val29.val.i.i, %.val30.val.i.i
  br i1 %i.ac, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph60
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val29.val.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread71.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %.val30.val.i.i, null
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.ad = tail call i32 @memcmp(ptr noundef nonnull readonly %.val29.val.i.i, ptr noundef nonnull readonly %.val30.val.i.i, i64 noundef %i.ab) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i, %.lr.ph60
  %i.ae = icmp ult i64 %.val29.val31.i.i, %.val30.val32.i.i
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread71.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i
  %i.af = icmp slt i32 %i.ad, 0
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread71.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread71.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %bb.d
  %.val28.i.i = load ptr, ptr %i.y, align 8, !tbaa !226 ; 5 uses
  %.val28.val.i.i = load ptr, ptr %.val28.i.i, align 8, !tbaa !227 ; 6 uses
  %i.ag = getelementptr i8, ptr %.val28.i.i, i64 8
  %.val28.val34.i.i = load i64, ptr %i.ag, align 8, !tbaa !157 ; 4 uses
  %i.ah = tail call i64 @llvm.umin.i64(i64 %.val28.val34.i.i, i64 %.val30.val32.i.i)
  %i.ai = icmp eq ptr %.val30.val.i.i, %.val28.val.i.i
  br i1 %i.ai, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i46.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread71.i.i
  %.not.i.i.i.i.i41.i.i = icmp eq ptr %.val30.val.i.i, null
  br i1 %.not.i.i.i.i.i41.i.i, label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not9.i.i.i.i.i42.i.i = icmp eq ptr %.val28.val.i.i, null
  br i1 %.not9.i.i.i.i.i42.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit47.thread.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i43.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i43.i.i: ; preds = %bb.g
  %i.aj = tail call i32 @memcmp(ptr noundef nonnull readonly %.val30.val.i.i, ptr noundef nonnull readonly %.val28.val.i.i, i64 noundef %i.ah) #30 ; 2 uses
  %.not.i.i.i.i44.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i44.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i46.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit47.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i46.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i43.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread71.i.i
  %i.ak = icmp ult i64 %.val30.val32.i.i, %.val28.val34.i.i
  br i1 %i.ak, label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit47.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit47.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i43.i.i
  %i.al = icmp slt i32 %i.aj, 0
  br i1 %i.al, label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit47.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit47.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit47.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i46.i.i, %bb.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %.val28.val34.i.i, i64 %.val29.val31.i.i)
  %i.an = icmp eq ptr %.val29.val.i.i, %.val28.val.i.i
  br i1 %i.an, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i53.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit47.thread.i.i
  %.not.i.i.i.i.i48.i.i = icmp eq ptr %.val29.val.i.i, null
  br i1 %.not.i.i.i.i.i48.i.i, label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not9.i.i.i.i.i49.i.i = icmp eq ptr %.val28.val.i.i, null
  br i1 %.not9.i.i.i.i.i49.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.thread.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i50.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i50.i.i: ; preds = %bb.i
  %i.ao = tail call i32 @memcmp(ptr noundef nonnull readonly %.val29.val.i.i, ptr noundef nonnull readonly %.val28.val.i.i, i64 noundef %i.am) #30 ; 2 uses
  %.not.i.i.i.i51.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i51.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i53.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i53.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i50.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit47.thread.i.i
  %i.ap = icmp ult i64 %.val29.val31.i.i, %.val28.val34.i.i
  br i1 %i.ap, label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i50.i.i
  %i.aq = icmp slt i32 %i.ao, 0
  br i1 %i.aq, label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i53.i.i, %bb.i
  br label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %bb.e
  %.val24.i.i = load ptr, ptr %i.y, align 8, !tbaa !226 ; 5 uses
  %.val24.val.i.i = load ptr, ptr %.val24.i.i, align 8, !tbaa !227 ; 6 uses
  %i.ar = getelementptr i8, ptr %.val24.i.i, i64 8
  %.val24.val38.i.i = load i64, ptr %i.ar, align 8, !tbaa !157 ; 4 uses
  %i.as = tail call i64 @llvm.umin.i64(i64 %.val24.val38.i.i, i64 %.val29.val31.i.i)
  %i.at = icmp eq ptr %.val29.val.i.i, %.val24.val.i.i
  br i1 %i.at, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.i.i
  %.not.i.i.i.i.i55.i.i = icmp eq ptr %.val29.val.i.i, null
  br i1 %.not.i.i.i.i.i55.i.i, label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not9.i.i.i.i.i56.i.i = icmp eq ptr %.val24.val.i.i, null
  br i1 %.not9.i.i.i.i.i56.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit61.thread.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i57.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i57.i.i: ; preds = %bb.k
  %i.au = tail call i32 @memcmp(ptr noundef nonnull readonly %.val29.val.i.i, ptr noundef nonnull readonly %.val24.val.i.i, i64 noundef %i.as) #30 ; 2 uses
  %.not.i.i.i.i58.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i58.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit61.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i57.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.i.i
  %i.av = icmp ult i64 %.val29.val31.i.i, %.val24.val38.i.i
  br i1 %i.av, label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit61.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit61.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i57.i.i
  %i.aw = icmp slt i32 %i.au, 0
  br i1 %i.aw, label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit61.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit61.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit61.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60.i.i, %bb.k
  %i.ax = tail call i64 @llvm.umin.i64(i64 %.val24.val38.i.i, i64 %.val30.val32.i.i)
  %i.ay = icmp eq ptr %.val30.val.i.i, %.val24.val.i.i
  br i1 %i.ay, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i67.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit61.thread.i.i
  %.not.i.i.i.i.i62.i.i = icmp eq ptr %.val30.val.i.i, null
  br i1 %.not.i.i.i.i.i62.i.i, label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not9.i.i.i.i.i63.i.i = icmp eq ptr %.val24.val.i.i, null
  br i1 %.not9.i.i.i.i.i63.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.thread.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i64.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i64.i.i: ; preds = %bb.m
  %i.az = tail call i32 @memcmp(ptr noundef nonnull readonly %.val30.val.i.i, ptr noundef nonnull readonly %.val24.val.i.i, i64 noundef %i.ax) #30 ; 2 uses
  %.not.i.i.i.i65.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i65.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i67.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i67.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i64.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit61.thread.i.i
  %i.ba = icmp ult i64 %.val30.val32.i.i, %.val24.val38.i.i
  br i1 %i.ba, label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i64.i.i
  %i.bb = icmp slt i32 %i.az, 0
  br i1 %i.bb, label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i67.i.i, %bb.m
  br label %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i

_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i67.i.i, %bb.l, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit61.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60.i.i, %bb.j, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i53.i.i, %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit47.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i46.i.i, %bb.f
  %.val29.sink.i.i = phi ptr [ %.val28.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.i.i ], [ %.val30.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.thread.i.i ], [ %.val29.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit61.i.i ], [ %.val30.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit47.i.i ], [ %.val29.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.thread.i.i ], [ %.val30.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i46.i.i ], [ %.val30.i.i, %bb.f ], [ %.val28.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i53.i.i ], [ %.val28.i.i, %bb.h ], [ %.val29.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60.i.i ], [ %.val29.i.i, %bb.j ], [ %.val24.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i67.i.i ], [ %.val24.i.i, %bb.l ], [ %.val24.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.i.i ]
  %.sink101.i.i = phi ptr [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.i.i ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.thread.i.i ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit61.i.i ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit47.i.i ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit54.thread.i.i ], [ %i.x, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i46.i.i ], [ %i.x, %bb.f ], [ %i.y, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i53.i.i ], [ %i.y, %bb.h ], [ %i.e, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60.i.i ], [ %i.e, %bb.j ], [ %i.y, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i67.i.i ], [ %i.y, %bb.l ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit68.i.i ]
  %i.bc = load ptr, ptr %0, align 8, !tbaa !226
  store ptr %.val29.sink.i.i, ptr %0, align 8, !tbaa !226
  store ptr %i.bc, ptr %.sink101.i.i, align 8, !tbaa !226
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i
  %.013.i.i = phi ptr [ %.02858, %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i ], [ %.us-phi34.i.i, %bb.q ] ; 2 uses
  %.0.i.i = phi ptr [ %i.e, %_ZSt22__move_median_to_firstIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SC_SD_.exit.i ], [ %i.ca, %bb.q ] ; 4 uses
  %.val15.i.i = load ptr, ptr %0, align 8, !tbaa !226 ; 2 uses
  %.val15.val.i.i = load ptr, ptr %.val15.i.i, align 8, !tbaa !227
  %.val15.val.fr.i.i = freeze ptr %.val15.val.i.i ; 5 uses
  %i.bd = getelementptr i8, ptr %.val15.i.i, i64 8
  %.val15.val17.i.i = load i64, ptr %i.bd, align 8, !tbaa !157 ; 6 uses
  %.not9.i.i.i.i.i.i13.i = icmp eq ptr %.val15.val.fr.i.i, null ; 2 uses
  br i1 %.not9.i.i.i.i.i.i13.i, label %.split.us.i.preheader.i, label %.split.i.i

.split.us.i.preheader.i:                          ; preds = %bb.n
  %.1.val.us.i24.i = load ptr, ptr %.0.i.i, align 8, !tbaa !226 ; 3 uses
  %.1.val.val.us.i25.i = load ptr, ptr %.1.val.us.i24.i, align 8, !tbaa !227
  %i.be = icmp eq ptr %.1.val.val.us.i25.i, null
  br i1 %i.be, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i.i, label %.preheader.split33.us.i.preheader.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i.i: ; preds = %.split.us.i.preheader.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.us.i.i
  %.1.val.us.i27.i = phi ptr [ %.1.val.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.us.i.i ], [ %.1.val.us.i24.i, %.split.us.i.preheader.i ] ; 2 uses
  %.1.us.i26.i = phi ptr [ %i.bh, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.us.i.i ], [ %.0.i.i, %.split.us.i.preheader.i ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.1.val.us.i27.i, i64 8
  %.1.val.val16.us.i.i = load i64, ptr %i.bf, align 8, !tbaa !157
  %i.bg = icmp ult i64 %.1.val.val16.us.i.i, %.val15.val17.i.i
  br i1 %i.bg, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.us.i.i, label %.preheader.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.us.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.us.i26.i, i64 8 ; 3 uses
  %.1.val.us.i.i = load ptr, ptr %i.bh, align 8, !tbaa !226 ; 3 uses
  %.1.val.val.us.i.i = load ptr, ptr %.1.val.us.i.i, align 8, !tbaa !227
  %i.bi = icmp eq ptr %.1.val.val.us.i.i, null
  br i1 %i.bi, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i.i, label %.preheader.i.i, !llvm.loop !740

.split.i.i:                                       ; preds = %bb.n, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.i18.i
  %.1.i.i = phi ptr [ %i.bs, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.i18.i ], [ %.0.i.i, %bb.n ] ; 4 uses
  %.1.val.i.i = load ptr, ptr %.1.i.i, align 8, !tbaa !226 ; 4 uses
  %.1.val.val.i.i = load ptr, ptr %.1.val.i.i, align 8, !tbaa !227 ; 3 uses
  %i.bj = getelementptr i8, ptr %.1.val.i.i, i64 8
  %.1.val.val16.i.i = load i64, ptr %i.bj, align 8, !tbaa !157 ; 2 uses
  %i.bk = tail call i64 @llvm.umin.i64(i64 %.val15.val17.i.i, i64 %.1.val.val16.i.i)
  %i.bl = icmp eq ptr %.1.val.val.i.i, %.val15.val.fr.i.i
  br i1 %i.bl, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i19.i, label %bb.o

bb.o:                                             ; preds = %.split.i.i
  %.not.i.i.i.i.i.i14.i = icmp eq ptr %.1.val.val.i.i, null
  br i1 %.not.i.i.i.i.i.i14.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.i18.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i15.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i15.i: ; preds = %bb.o
  %i.bm = tail call i32 @memcmp(ptr noundef nonnull readonly %.1.val.val.i.i, ptr noundef nonnull readonly %.val15.val.fr.i.i, i64 noundef %i.bk) #30 ; 2 uses
  %.not.i.i.i.i.i16.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i.i16.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i19.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.i17.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i19.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i15.i, %.split.i.i
  %i.bn = icmp ult i64 %.1.val.val16.i.i, %.val15.val17.i.i
  br i1 %i.bn, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.i18.i, label %.preheader.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.i17.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i15.i
  %i.bo = icmp slt i32 %i.bm, 0
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.i18.i, label %.preheader.split33.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i19.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.us.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i.i
  %.us-phi.i.i = phi ptr [ %.1.us.i26.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i.i ], [ %i.bh, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.us.i.i ], [ %.1.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i19.i ] ; 2 uses
  %.us-phi30.i.i = phi ptr [ %.1.val.us.i27.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i.i ], [ %.1.val.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.us.i.i ], [ %.1.val.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i19.i ] ; 2 uses
  br i1 %.not9.i.i.i.i.i.i13.i, label %.preheader.split33.us.i.preheader.i, label %.preheader.split33.preheader.i.i

.preheader.split33.us.i.preheader.i:              ; preds = %.preheader.i.i, %.split.us.i.preheader.i
  %.us-phi30.i44.i = phi ptr [ %.us-phi30.i.i, %.preheader.i.i ], [ %.1.val.us.i24.i, %.split.us.i.preheader.i ]
  %.us-phi.i43.i = phi ptr [ %.us-phi.i.i, %.preheader.i.i ], [ %.0.i.i, %.split.us.i.preheader.i ]
  br label %.preheader.split33.us.i.i

.preheader.split33.preheader.i.i:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.i17.i, %.preheader.i.i
  %.us-phi3048.i.i = phi ptr [ %.us-phi30.i.i, %.preheader.i.i ], [ %.1.val.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.i17.i ] ; 3 uses
  %.us-phi46.i.i = phi ptr [ %.us-phi.i.i, %.preheader.i.i ], [ %.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.i17.i ] ; 3 uses
  br label %.preheader.split33.i.i

.preheader.split33.us.i.i:                        ; preds = %.preheader.split33.us.i.i, %.preheader.split33.us.i.preheader.i
  %.013.pn.us.i.i = phi ptr [ %.114.us.i.i, %.preheader.split33.us.i.i ], [ %.013.i.i, %.preheader.split33.us.i.preheader.i ]
  %.114.us.i.i = getelementptr inbounds i8, ptr %.013.pn.us.i.i, i64 -8 ; 3 uses
  %.114.val.us.i.i = load ptr, ptr %.114.us.i.i, align 8, !tbaa !226 ; 3 uses
  %.114.val.val.us.i.i = load ptr, ptr %.114.val.us.i.i, align 8, !tbaa !227
  %i.bp = getelementptr i8, ptr %.114.val.us.i.i, i64 8
  %.114.val.val19.us.i.i = load i64, ptr %i.bp, align 8, !tbaa !157
  %i.bq = icmp ne ptr %.114.val.val.us.i.i, null
  %i.br = icmp ult i64 %.val15.val17.i.i, %.114.val.val19.us.i.i
  %or.cond36.i.i = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond36.i.i, label %.preheader.split33.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread.i18.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.i17.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i19.i, %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  br label %.split.i.i, !llvm.loop !740

.preheader.split33.i.i:                           ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.i.i, %.preheader.split33.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.i.i ], [ %.013.i.i, %.preheader.split33.preheader.i.i ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %.114.val.i.i = load ptr, ptr %.114.i.i, align 8, !tbaa !226 ; 5 uses
  %.114.val.val.i.i = load ptr, ptr %.114.val.i.i, align 8, !tbaa !227 ; 3 uses
  %i.bt = getelementptr i8, ptr %.114.val.i.i, i64 8
  %.114.val.val19.i.i = load i64, ptr %i.bt, align 8, !tbaa !157 ; 2 uses
  %i.bu = tail call i64 @llvm.umin.i64(i64 %.114.val.val19.i.i, i64 %.val15.val17.i.i)
  %i.bv = icmp eq ptr %.val15.val.fr.i.i, %.114.val.val.i.i
  br i1 %i.bv, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i25.i.i, label %bb.p

bb.p:                                             ; preds = %.preheader.split33.i.i
  %.not9.i.i.i.i.i21.i.i = icmp eq ptr %.114.val.val.i.i, null
  br i1 %.not9.i.i.i.i.i21.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.thread.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i22.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i22.i.i: ; preds = %bb.p
  %i.bw = tail call i32 @memcmp(ptr noundef nonnull readonly %.val15.val.fr.i.i, ptr noundef nonnull readonly %.114.val.val.i.i, i64 noundef %i.bu) #30 ; 2 uses
  %.not.i.i.i.i23.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i23.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i25.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i25.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i22.i.i, %.preheader.split33.i.i
  %i.bx = icmp ult i64 %.val15.val17.i.i, %.114.val.val19.i.i
  br i1 %i.bx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i25.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i22.i.i
  %.0.i.i.i.i24.i.i = phi i32 [ -2147483648, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i25.i.i ], [ %i.bw, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i22.i.i ]
  %i.by = icmp slt i32 %.0.i.i.i.i24.i.i, 0
  br i1 %i.by, label %.preheader.split33.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.thread.i.i, !llvm.loop !741

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i25.i.i, %bb.p, %.preheader.split33.us.i.i
  %.us-phi3047.i.i = phi ptr [ %.us-phi30.i44.i, %.preheader.split33.us.i.i ], [ %.us-phi3048.i.i, %bb.p ], [ %.us-phi3048.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i25.i.i ], [ %.us-phi3048.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.i.i ]
  %.us-phi45.i.i = phi ptr [ %.us-phi.i43.i, %.preheader.split33.us.i.i ], [ %.us-phi46.i.i, %bb.p ], [ %.us-phi46.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i25.i.i ], [ %.us-phi46.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.i.i ] ; 7 uses
  %.us-phi34.i.i = phi ptr [ %.114.us.i.i, %.preheader.split33.us.i.i ], [ %.114.i.i, %bb.p ], [ %.114.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i25.i.i ], [ %.114.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.i.i ] ; 3 uses
  %.us-phi35.i.i = phi ptr [ %.114.val.us.i.i, %.preheader.split33.us.i.i ], [ %.114.val.i.i, %bb.p ], [ %.114.val.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i25.i.i ], [ %.114.val.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.i.i ]
  %i.bz = icmp ult ptr %.us-phi45.i.i, %.us-phi34.i.i
  br i1 %i.bz, label %bb.q, label %_ZSt27__unguarded_partition_pivotIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEESC_SC_SC_SD_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.thread.i.i
  store ptr %.us-phi35.i.i, ptr %.us-phi45.i.i, align 8, !tbaa !226
  store ptr %.us-phi3047.i.i, ptr %.us-phi34.i.i, align 8, !tbaa !226
  %i.ca = getelementptr inbounds nuw i8, ptr %.us-phi45.i.i, i64 8
  br label %bb.n, !llvm.loop !742

_ZSt27__unguarded_partition_pivotIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEESC_SC_SC_SD_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit26.thread.i.i
  tail call fastcc void @_ZSt16__introsort_loopIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SD_T1_(ptr noundef %.us-phi45.i.i, ptr noundef %.02858, i64 noundef %i.v)
  %i.cb = ptrtoint ptr %.us-phi45.i.i to i64
  %i.cc = sub i64 %i.cb, %i.a                     ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, 128
  br i1 %i.cd, label %bb.b, label %_ZSt14__partial_sortIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SD_.exit, !llvm.loop !737

_ZSt14__partial_sortIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SC_SD_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEESC_SC_SC_SD_.exit, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_SD_T1_T2_(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 576460752303423487) %1, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %2, ptr noundef %3) unnamed_addr #21 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread
  %.041 = phi i64 [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl nuw nsw i64 %.041, 1                 ; 4 uses
  %i.e = add nuw nsw i64 %i.d, 2                  ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !226 ; 2 uses
  %.val29 = load ptr, ptr %i.h, align 8, !tbaa !226 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !227 ; 3 uses
  %i.i = getelementptr i8, ptr %.val, i64 8
  %.val.val30 = load i64, ptr %i.i, align 8, !tbaa !157 ; 2 uses
  %.val29.val = load ptr, ptr %.val29, align 8, !tbaa !227 ; 3 uses
  %i.j = getelementptr i8, ptr %.val29, i64 8
  %.val29.val31 = load i64, ptr %i.j, align 8, !tbaa !157 ; 2 uses
  %i.k = tail call i64 @llvm.umin.i64(i64 %.val29.val31, i64 %.val.val30)
  %i.l = icmp eq ptr %.val.val, %.val29.val
  br i1 %i.l, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.i.i.i = icmp eq ptr %.val.val, null
  br i1 %.not.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread36, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i = icmp eq ptr %.val29.val, null
  br i1 %.not9.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.c
  %i.m = tail call i32 @memcmp(ptr noundef nonnull readonly %.val.val, ptr noundef nonnull readonly %.val29.val, i64 noundef %i.k) #30
  %.fr = freeze i32 %i.m                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.fr, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %.lr.ph
  %i.n = icmp ult i64 %.val.val30, %.val29.val31
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread36, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread36: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %bb.b
  %i.o = or disjoint i64 %i.d, 1
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i
  %i.p = icmp slt i32 %.fr, 0
  %i.q = or disjoint i64 %i.d, 1
  %spec.select = select i1 %i.p, i64 %i.q, i64 %i.e
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit, %bb.c, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread36
  %i.r = phi i64 [ %i.e, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit ], [ %i.o, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread36 ], [ %i.e, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !226
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.041
  store ptr %i.t, ptr %i.u, align 8, !tbaa !226
  %i.v = icmp slt i64 %i.r, %i.b
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !743

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESX_EEbS8_S9_.exit.thread ] ; 5 uses
  %i.w = and i64 %2, 1
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.y = add nsw i64 %2, -2
  %i.z = ashr exact i64 %i.y, 1
  %i.aa = icmp eq i64 %.0.lcssa, %i.z
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = shl nuw nsw i64 %.0.lcssa, 1
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !226
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !226
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.128 = phi i64 [ %i.ac, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.ag = icmp samesign ugt i64 %.128, %1
  br i1 %i.ag, label %.lr.ph.i, label %_ZSt11__push_heapIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElS5_N9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_SD_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.0.in5.i = add nsw i64 %.128, -1
  %.0622.i = lshr i64 %.0.in5.i, 1                ; 2 uses
  %.val14.val.i = load ptr, ptr %3, align 8, !tbaa !227
  %.val14.val.fr.i = freeze ptr %.val14.val.i     ; 3 uses
  %i.ah = getelementptr i8, ptr %3, i64 8
  %.val14.val16.i = load i64, ptr %i.ah, align 8, !tbaa !157 ; 3 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %.val14.val.fr.i, null
  br i1 %.not9.i.i.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.us.i
  %.08.us.i = phi i64 [ %.0.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.us.i ], [ %.0622.i, %.lr.ph.i ] ; 5 uses
  %.0137.us.i = phi i64 [ %.08.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.us.i ], [ %.128, %.lr.ph.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.08.us.i
  %.val.us.i = load ptr, ptr %i.ai, align 8, !tbaa !226 ; 3 uses
  %.val.val.us.i = load ptr, ptr %.val.us.i, align 8, !tbaa !227
  %i.aj = icmp eq ptr %.val.val.us.i, null
  br i1 %i.aj, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, label %_ZSt11__push_heapIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElS5_N9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_SD_T1_RT2_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i: ; preds = %.lr.ph.split.us.i
  %i.ak = getelementptr i8, ptr %.val.us.i, i64 8
  %.val.val15.us.i = load i64, ptr %i.ak, align 8, !tbaa !157
  %i.al = icmp ult i64 %.val.val15.us.i, %.val14.val16.i
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.us.i, label %_ZSt11__push_heapIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElS5_N9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_SD_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.us.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0137.us.i
  store ptr %.val.us.i, ptr %i.am, align 8, !tbaa !226
  %.0.in.us.i = add nsw i64 %.08.us.i, -1
  %.0.us.i = sdiv i64 %.0.in.us.i, 2
  %i.an = icmp sgt i64 %.08.us.i, %1
  br i1 %i.an, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElS5_N9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_SD_T1_RT2_.exit, !llvm.loop !744

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.i
  %.08.i = phi i64 [ %.0.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.i ], [ %.0622.i, %.lr.ph.i ] ; 5 uses
  %.0137.i = phi i64 [ %.08.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.i ], [ %.128, %.lr.ph.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.08.i
  %.val.i = load ptr, ptr %i.ao, align 8, !tbaa !226 ; 3 uses
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !227 ; 3 uses
  %i.ap = getelementptr i8, ptr %.val.i, i64 8
  %.val.val15.i = load i64, ptr %i.ap, align 8, !tbaa !157 ; 2 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %.val14.val16.i, i64 %.val.val15.i)
  %i.ar = icmp eq ptr %.val.val.i, %.val14.val.fr.i
  br i1 %i.ar, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.val.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.as = tail call i32 @memcmp(ptr noundef nonnull readonly %.val.val.i, ptr noundef nonnull readonly %.val14.val.fr.i, i64 noundef %i.aq) #30 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i32, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %.lr.ph.split.i
  %i.at = icmp ult i64 %.val.val15.i, %.val14.val16.i
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.i, label %_ZSt11__push_heapIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElS5_N9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_SD_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i
  %i.au = icmp slt i32 %i.as, 0
  br i1 %i.au, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.i, label %_ZSt11__push_heapIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElS5_N9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_SD_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %bb.g
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0137.i
  store ptr %.val.i, ptr %i.av, align 8, !tbaa !226
  %.0.in.i = add nsw i64 %.08.i, -1
  %.0.i = sdiv i64 %.0.in.i, 2
  %i.aw = icmp sgt i64 %.08.i, %1
  br i1 %i.aw, label %.lr.ph.split.i, label %_ZSt11__push_heapIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElS5_N9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_SD_T1_RT2_.exit, !llvm.loop !744

_ZSt11__push_heapIPPSt4pairIN4llvm10sampleprof10FunctionIdEjElS5_N9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_SD_T1_RT2_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.i, %.lr.ph.split.us.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.us.i, %bb.f
  %.013.lcssa.i = phi i64 [ %.128, %bb.f ], [ %.0137.us.i, %.lr.ph.split.us.i ], [ %.08.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.us.i ], [ %.0137.us.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i ], [ %.08.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.thread3.i ], [ %.0137.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ %.0137.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS3_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS3_9MapVectorIS8_S9_NS3_8DenseMapIS8_jNS3_12DenseMapInfoIS8_vEENS3_6detail12DenseMapPairIS8_jEEEENS6_ISA_Lj0EEELj0EEEEUlPKS8_PKS9_E_EclIPPS7_IS5_jESW_EEbS8_RS9_.exit.i ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i
  store ptr %3, ptr %i.ax, align 8, !tbaa !226
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__insertion_sortIPPSt4pairIN4llvm10sampleprof10FunctionIdEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SD_(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #21 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader
end_hunk_2
