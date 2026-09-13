Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/liveedit?download=true
inline.NumInlined: 3691
inline.NumDeleted: 1854
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE12emplace_backIJRKNS1_17SourceChangeRangeEbEEERS3_DpOT_:bb.a
  br i1 %i.y, label %bb.d, label %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.z = ashr exact i64 %i.x, 4                   ; 3 uses
  %i.aa = icmp eq ptr %i.b, %.val.i               ; 2 uses
  %.sroa.speculated.i.i = select i1 %i.aa, i64 1, i64 %i.z
  %i.ab = add nsw i64 %.sroa.speculated.i.i, %i.z ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.z
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 576460752303423487)
  %i.ae = select i1 %i.ac, i64 576460752303423487, i64 %i.ad ; 3 uses
  %.not.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #19 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x ; 3 uses
  %i.ai = trunc nuw i8 %.0.val to i1              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = select i1 %i.ai, i32 2, i32 3
  %.val.i.i.i = load i32, ptr %1, align 4         ; 2 uses
  %.val8.i.i.i = load i32, ptr %i.aj, align 4     ; 2 uses
  %i.al = select i1 %i.ai, i32 %.val.i.i.i, i32 %.val8.i.i.i
  store i32 %i.al, ptr %i.ah, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.ak, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add i32 %.val.i.i.i, %i.ap
  %i.at = add i32 %.val8.i.i.i, %i.ar
  %i.au = sub i32 %i.as, %i.at
  store i32 %i.au, ptr %i.an, align 8
  br i1 %i.aa, label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.092.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.val.i, %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i, i64 16, i1 false), !alias.scope !98
  %i.av = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ag, %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE12_M_check_lenEmPKc.exit.i ], [ %i.aw, %.lr.ph.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i29.i = icmp eq ptr %.val.i, null
  br i1 %.not.i29.i, label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE17_M_realloc_insertIJRKNS1_17SourceChangeRangeEbEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i
  %i.ay = load ptr, ptr %i.c, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.ba) #20
  br label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE17_M_realloc_insertIJRKNS1_17SourceChangeRangeEbEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit

_ZNSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE17_M_realloc_insertIJRKNS1_17SourceChangeRangeEbEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i, %bb.e
  store ptr %i.ag, ptr %0, align 8
  store ptr %i.ax, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.bb, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2v88internal12_GLOBAL__N_119SourcePositionEventESaIS3_EE17_M_realloc_insertIJRKNS1_17SourceChangeRangeEbEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_119SourcePositionEvent8LessThanERKS2_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = load i32, ptr %1, align 8                ; 2 uses
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.a, %i.b
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not32 = icmp eq i32 %i.e, %i.g
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i32 %i.e, %i.g
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  switch i32 %i.e, label %bb.l [
    i32 0, label %bb.f
    i32 1, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 @_ZNK2v88internal15FunctionLiteral12end_positionEv(ptr noundef nonnull align 8 dereferenceable(88) %i.j) #17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 @_ZNK2v88internal15FunctionLiteral12end_positionEv(ptr noundef nonnull align 8 dereferenceable(88) %i.m) #17
  %.not34 = icmp eq i32 %i.k, %i.n
  %i.o = load ptr, ptr %i.i, align 8              ; 2 uses
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call noundef i32 @_ZNK2v88internal15FunctionLiteral12end_positionEv(ptr noundef nonnull align 8 dereferenceable(88) %i.o) #17
  %i.q = load ptr, ptr %i.l, align 8
  %i.r = tail call noundef i32 @_ZNK2v88internal15FunctionLiteral12end_positionEv(ptr noundef nonnull align 8 dereferenceable(88) %i.q) #17
  %i.s = icmp sgt i32 %i.p, %i.r
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.u = load i32, ptr %i.t, align 4
  %i.v = load ptr, ptr %i.l, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp slt i32 %i.u, %i.x
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = tail call noundef i32 @_ZNK2v88internal15FunctionLiteral14start_positionEv(ptr noundef nonnull align 8 dereferenceable(88) %i.z) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 @_ZNK2v88internal15FunctionLiteral14start_positionEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ac) #17
  %.not33 = icmp eq i32 %i.aa, %i.ad
  %i.ae = load ptr, ptr %i.i, align 8             ; 2 uses
  br i1 %.not33, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call noundef i32 @_ZNK2v88internal15FunctionLiteral14start_positionEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ae) #17
  %i.ag = load ptr, ptr %i.ab, align 8
  %i.ah = tail call noundef i32 @_ZNK2v88internal15FunctionLiteral14start_positionEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ag) #17
  %i.ai = icmp sgt i32 %i.af, %i.ah
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = load ptr, ptr %i.ab, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp sgt i32 %i.ak, %i.an
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %i.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp slt i32 %i.ap, %i.ar
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ %i.h, %bb.d ], [ %i.s, %bb.g ], [ %i.y, %bb.h ], [ %i.ai, %bb.j ], [ %i.ao, %bb.k ], [ %i.as, %bb.l ]
  ret i1 %.0
}

declare noundef i32 @_ZNK2v88internal15FunctionLiteral12end_positionEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.v8::internal::(anonymous namespace)::SourcePositionEvent", align 8 ; 4 uses
  %5 = alloca %"struct.v8::internal::(anonymous namespace)::SourcePositionEvent", align 8 ; 4 uses
  %6 = alloca %"struct.v8::internal::(anonymous namespace)::SourcePositionEvent", align 8 ; 4 uses
  %7 = alloca %"struct.v8::internal::(anonymous namespace)::SourcePositionEvent", align 8 ; 4 uses
  %8 = alloca %"struct.v8::internal::(anonymous namespace)::SourcePositionEvent", align 8 ; 4 uses
  %9 = alloca %"struct.v8::internal::(anonymous namespace)::SourcePositionEvent", align 8 ; 4 uses
  %10 = alloca %"struct.v8::internal::(anonymous namespace)::SourcePositionEvent", align 8 ; 4 uses
  %11 = alloca %"struct.v8::internal::(anonymous namespace)::SourcePositionEvent", align 8 ; 8 uses
  %12 = alloca %"struct.v8::internal::(anonymous namespace)::SourcePositionEvent", align 8 ; 6 uses
  %.fr26 = freeze ptr %1                          ; 3 uses
  %.fr25 = freeze ptr %0                          ; 37 uses
  %i.a = ptrtoint ptr %.fr25 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr26 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr25, i64 16 ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEET_SI_SI_T0_.exit
  %i.h = icmp eq i64 %i.bs, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph41, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i24.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cf, %bb.b ] ; 2 uses
  %storemerge22.lcssa = phi ptr [ %.fr26, %.lr.ph ], [ %.sroa.015.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i24.lcssa, 4               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i24.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.q = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %i.q
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_T0_SJ_T1_T2_.exit.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_T0_SJ_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %.010.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.u = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.045.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.045.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %i.y
  %i.aa = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.z) #17, !inline_history !100
  %spec.select.i.i.i.i = select i1 %i.aa, i64 %i.y, i64 %i.w ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %spec.select.i.i.i.i
  %i.ac = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %.045.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.ad = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !101

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ae = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  %or.cond.i.i.i = select i1 %i.o, i1 %i.ae, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %12, align 8
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %i.p, align 8
  %i.af = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_T0_SJ_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.06.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.097.in.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i, -1
  %.097.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i, 2 ; 4 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %.097.i.i.i.i.i ; 2 uses
  %i.ah = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %12) #17, !inline_history !102
  br i1 %i.ah, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_T0_SJ_T1_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %.06.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.aj = icmp sgt i64 %.097.i.i.i.i.i, %.010.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_T0_SJ_T1_T2_.exit.i.i.i, !llvm.loop !103

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_T0_SJ_T1_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.06.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.097.i.i.i.i.i, %bb.f ]
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %.0.lcssa.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.al = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !104

.lr.ph.i9.i:                                      ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_T0_SJ_T1_T2_.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_RT0_.exit.i22.i, %.lr.ph.i9.i
  %.sroa.0.02.i.i = phi ptr [ %storemerge22.lcssa, %.lr.ph.i9.i ], [ %i.an, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_RT0_.exit.i22.i ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.an, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %.fr25, i64 16, i1 false)
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.a                     ; 3 uses
  %i.aq = ashr exact i64 %i.ap, 4                 ; 3 uses
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = lshr i64 %i.ar, 1
  %i.at = icmp sgt i64 %i.aq, 2
  br i1 %i.at, label %.lr.ph.i.i.i26.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i26.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i26.i
  %.045.i.i.i27.i = phi i64 [ %spec.select.i.i.i28.i, %.lr.ph.i.i.i26.i ], [ 0, %bb.g ] ; 2 uses
  %i.au = shl i64 %.045.i.i.i27.i, 1              ; 2 uses
  %i.av = add i64 %i.au, 2                        ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %i.av
  %i.ax = or disjoint i64 %i.au, 1                ; 2 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %i.ax
  %i.az = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #17, !inline_history !105
  %spec.select.i.i.i28.i = select i1 %i.az, i64 %i.ax, i64 %i.av ; 4 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %spec.select.i.i.i28.i
  %i.bb = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %.045.i.i.i27.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bc = icmp slt i64 %spec.select.i.i.i28.i, %i.as
  br i1 %i.bc, label %.lr.ph.i.i.i26.i, label %._crit_edge.i.i.i13.i, !llvm.loop !101

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i26.i, %bb.g
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i28.i, %.lr.ph.i.i.i26.i ] ; 5 uses
  %i.bd = and i64 %i.ap, 16
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bf = add nsw i64 %i.aq, -2
  %i.bg = ashr exact i64 %i.bf, 1
  %i.bh = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bg
  br i1 %i.bh, label %.thread.i.i25.i, label %bb.i

.thread.i.i25.i:                                  ; preds = %bb.h
  %i.bi = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bj = or disjoint i64 %i.bi, 1                ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %.0.lcssa.i.i.i14.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %11, align 8
  store ptr %.sroa.4.0.copyload.i.i12.i, ptr %i.am, align 8
  br label %.lr.ph.i.i.i.i18.i.preheader

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i13.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %11, align 8
  store ptr %.sroa.4.0.copyload.i.i12.i, ptr %i.am, align 8
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_RT0_.exit.i22.i, label %.lr.ph.i.i.i.i18.i.preheader

.lr.ph.i.i.i.i18.i.preheader:                     ; preds = %bb.i, %.thread.i.i25.i
  %.06.i.i.i.i19.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.i ], [ %i.bj, %.thread.i.i25.i ]
  br label %.lr.ph.i.i.i.i18.i

.lr.ph.i.i.i.i18.i:                               ; preds = %.lr.ph.i.i.i.i18.i.preheader, %bb.j
  %.06.i.i.i.i19.i = phi i64 [ %.097.i.i1011.i.i21.i, %bb.j ], [ %.06.i.i.i.i19.i.ph, %.lr.ph.i.i.i.i18.i.preheader ] ; 3 uses
  %.097.in.i.i.i.i20.i = add nsw i64 %.06.i.i.i.i19.i, -1
  %.097.i.i1011.i.i21.i = lshr i64 %.097.in.i.i.i.i20.i, 1 ; 3 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %.097.i.i1011.i.i21.i ; 2 uses
  %i.bn = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %11) #17, !inline_history !106
  br i1 %i.bn, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_RT0_.exit.i22.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i18.i
  %i.bo = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %.06.i.i.i.i19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  %.not12.i.i24.i = icmp eq i64 %.097.i.i1011.i.i21.i, 0
  br i1 %.not12.i.i24.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_RT0_.exit.i22.i, label %.lr.ph.i.i.i.i18.i, !llvm.loop !103

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_RT0_.exit.i22.i: ; preds = %bb.j, %.lr.ph.i.i.i.i18.i, %bb.i
  %.0.lcssa.i.i.i.i23.i = phi i64 [ 0, %bb.i ], [ %.06.i.i.i.i19.i, %.lr.ph.i.i.i.i18.i ], [ 0, %bb.j ]
  %i.bp = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %.0.lcssa.i.i.i.i23.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.bq = icmp sgt i64 %i.ap, 16
  br i1 %i.bq, label %bb.g, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_T0_.exit, !llvm.loop !107

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2240 = phi ptr [ %.sroa.015.1.i.i, %bb.b ], [ %.fr26, %.lr.ph ] ; 3 uses
  %.02339 = phi i64 [ %i.bs, %bb.b ], [ %2, %.lr.ph ]
  %i.br = phi i64 [ %i.cg, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bs = add nsw i64 %.02339, -1                 ; 3 uses
  %i.bt = lshr i64 %i.br, 1
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %i.bt ; 7 uses
  %i.bv = getelementptr inbounds i8, ptr %storemerge2240, i64 -16 ; 8 uses
  %i.bw = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #17, !inline_history !108
  br i1 %i.bw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.lr.ph41
  %i.bx = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #17, !inline_history !108
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %.fr25, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr25, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.by = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #17, !inline_history !108
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.fr25, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr25, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.fr25, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr25, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.p:                                             ; preds = %.lr.ph41
  %i.bz = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #17, !inline_history !108
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.fr25, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr25, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.r:                                             ; preds = %bb.p
  %i.ca = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #17, !inline_history !108
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.fr25, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr25, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.fr25, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr25, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i.preheader: ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.l
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i.preheader, %bb.w
  %.sroa.013.0.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.w ], [ %storemerge2240, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.sroa.015.0.i.i = phi ptr [ %i.cc, %bb.w ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.015.1.i.i = phi ptr [ %.sroa.015.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i ], [ %i.cc, %bb.u ] ; 9 uses
  %i.cb = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.fr25) #17, !inline_history !109
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 16 ; 2 uses
  br i1 %i.cb, label %bb.u, label %.preheader.i.i, !llvm.loop !110

.preheader.i.i:                                   ; preds = %bb.u, %.preheader.i.i
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.1.i.i, %.preheader.i.i ], [ %.sroa.013.0.i.i, %bb.u ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -16 ; 6 uses
  %i.cd = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %.fr25, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013.1.i.i) #17, !inline_history !109
  br i1 %i.cd, label %.preheader.i.i, label %bb.v, !llvm.loop !111

bb.v:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.015.1.i.i, %.sroa.013.1.i.i
  br i1 %.not.i.i, label %bb.w, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEET_SI_SI_T0_.exit

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013.1.i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_SI_T0_.exit.i, !llvm.loop !112

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEET_SI_SI_T0_.exit: ; preds = %bb.v
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_T0_T1_(ptr nonnull %.sroa.015.1.i.i, ptr %storemerge2240, i64 noundef %i.bs, ptr %3)
  %i.ce = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.cf = sub i64 %i.ce, %i.a                     ; 2 uses
  %i.cg = ashr exact i64 %i.cf, 4                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 16
  br i1 %i.ch, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_T0_.exit, !llvm.loop !99

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEET_SI_SI_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_119SourcePositionEventESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_RT0_.exit.i22.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapISt4pairIiiEPN2v88internal15FunctionLiteralESt4lessIS1_ESaIS0_IKS1_S5_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.d
  %i.j = icmp slt i32 %i.h, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 36
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp slt i32 %i.l, %i.f
  %.sroa.05.0.i.i.i.i.i = select i1 %i.i, i1 %i.m, i1 %i.j ; 2 uses
  %.19.i.i.i = select i1 %.sroa.05.0.i.i.i.i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %.sroa.05.0.i.i.i.i.i, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapISt4pairIiiEPN2v88internal15FunctionLiteralESt4lessIS1_ESaIS0_IKS1_S5_EEE11lower_boundERS8_.exit, label %bb.b, !llvm.loop !0

_ZNSt3mapISt4pairIiiEPN2v88internal15FunctionLiteralESt4lessIS1_ESaIS0_IKS1_S5_EEE11lower_boundERS8_.exit: ; preds = %bb.b
  %i.n = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapISt4pairIiiEPN2v88internal15FunctionLiteralESt4lessIS1_ESaIS0_IKS1_S5_EEE11lower_boundERS8_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = icmp eq i32 %i.d, %i.p
  %i.r = icmp slt i32 %i.d, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp slt i32 %i.f, %i.t
  %.sroa.05.0.i.i = select i1 %i.q, i1 %i.u, i1 %i.r
  br i1 %.sroa.05.0.i.i, label %.critedge, label %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_PN2v88internal15FunctionLiteralEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapISt4pairIiiEPN2v88internal15FunctionLiteralESt4lessIS1_ESaIS0_IKS1_S5_EEE11lower_boundERS8_.exit, %bb.c
  %.08.lcssa.i.i.i15 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapISt4pairIiiEPN2v88internal15FunctionLiteralESt4lessIS1_ESaIS0_IKS1_S5_EEE11lower_boundERS8_.exit ], [ %i.c, %bb.a ]
  %i.v = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.x = load i64, ptr %1, align 4
  store i64 %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr null, ptr %i.y, align 8
  %i.z = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_PN2v88internal15FunctionLiteralEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i15, ptr noundef nonnull align 4 dereferenceable(8) %i.w) ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.z, 1       ; 5 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.aa, null
  %i.ac = icmp eq ptr %i.ab, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.ac
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = load i32, ptr %i.w, align 8             ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.ag = icmp eq i32 %i.ae, %i.af
  %i.ah = icmp slt i32 %i.ae, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %i.ak = load i32, ptr %i.ai, align 4
  %i.al = load i32, ptr %i.aj, align 4
  %i.am = icmp slt i32 %i.ak, %i.al
  %.sroa.05.0.i.i.i.i.i5 = select i1 %i.ag, i1 %i.am, i1 %i.ah
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.an = phi i1 [ %.sroa.05.0.i.i.i.i.i5, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.an, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #17
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8
  br label %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_PN2v88internal15FunctionLiteralEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 48) #20
  br label %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_PN2v88internal15FunctionLiteralEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_PN2v88internal15FunctionLiteralEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.010.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.v, %.thread.i ], [ %i.aa, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 40
  ret ptr %i.ar
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt13unordered_mapIPN2v88internal15FunctionLiteralENS1_12_GLOBAL__N_111ChangeStateESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %.val.i = load ptr, ptr %1, align 8             ; 3 uses
  %i.a = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.val19.i = load i64, ptr %i.b, align 8         ; 2 uses
  %i.c = urem i64 %i.a, %.val19.i                 ; 3 uses
  %.val20.i = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val20.i, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val204.i.i.i = load ptr, ptr %i.g, align 8
  %i.h = icmp eq ptr %.val.i, %.val204.i.i.i
  br i1 %i.h, label %_ZNSt8__detail9_Map_baseIPN2v88internal15FunctionLiteralESt4pairIKS4_NS2_12_GLOBAL__N_111ChangeStateEESaIS9_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS6_.exit, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.i = icmp eq ptr %.val.i, %.val23.i.i.i
  br i1 %i.i, label %_ZNSt8__detail9_Map_baseIPN2v88internal15FunctionLiteralESt4pairIKS4_NS2_12_GLOBAL__N_111ChangeStateEESaIS9_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.05.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.j = load ptr, ptr %.05.i.i.i, align 8        ; 4 uses
  %.not18.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not18.i.i.i, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val23.i.i.i = load ptr, ptr %i.k, align 8     ; 2 uses
  %i.l = ptrtoint ptr %.val23.i.i.i to i64
  %i.m = urem i64 %i.l, %.val19.i
  %.not19.i.i.i = icmp eq i64 %i.m, %i.c
  br i1 %.not19.i.i.i, label %bb.c, label %..loopexit_crit_edge6.i.i.i, !llvm.loop !1

..loopexit_crit_edge6.i.i.i:                      ; preds = %bb.d
  br label %.loopexit.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge6.i.i.i, %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 9 uses
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.val.i.i.i.i = load ptr, ptr %1, align 8
  store ptr %.val.val.i.i.i.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.r, i64 noundef %i.t, i64 noundef 1) #17 ; 2 uses
  %i.v = extractvalue { i8, i64 } %i.u, 0
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.loopexit.i
  %.pre.i.i = load ptr, ptr %0, align 8
  br label %bb.p

bb.e:                                             ; preds = %.loopexit.i
  %i.x = extractvalue { i8, i64 } %i.u, 1         ; 7 uses
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.z, align 8
  br label %_ZNSt10_HashtableIPN2v88internal15FunctionLiteralESt4pairIKS3_NS1_12_GLOBAL__N_111ChangeStateEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp ugt i64 %i.x, 1152921504606846975
  br i1 %i.aa, label %bb.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal15FunctionLiteralENS4_12_GLOBAL__N_111ChangeStateEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp ugt i64 %i.x, 2305843009213693951
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal15FunctionLiteralENS4_12_GLOBAL__N_111ChangeStateEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ac = shl nuw nsw i64 %i.x, 3                 ; 2 uses
end_hunk_0
