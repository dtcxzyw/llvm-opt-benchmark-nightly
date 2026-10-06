Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/splines?download=true
inline.NumInlined: 2007
inline.NumDeleted: 1087
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEPS2_OT_:bb.a

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15QuantizedSplineEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i: ; preds = %_ZNKSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit
  %i.r = mul nuw i64 %.0.i, 536
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.f ; 6 uses
  %i.u = getelementptr inbounds nuw [536 x i8], ptr %i.s, i64 %.0.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load <2 x ptr>, ptr %1, align 8, !tbaa !25
  store <2 x ptr> %i.w, ptr %i.t, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  store ptr %i.y, ptr %i.v, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %1, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.z, ptr noundef nonnull align 8 dereferenceable(512) %i.aa, i64 512, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 536 ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !65  ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !78    ; 3 uses
  %.not13.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not13.i.i, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15QuantizedSplineEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.t, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15QuantizedSplineEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i ] ; 3 uses
  %.sroa.18.014.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15QuantizedSplineEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -536 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -536 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -520
  %i.ai = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !25
  store <2 x ptr> %i.ai, ptr %i.af, align 8, !tbaa !25
  %i.aj = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -520
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.ag, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 -512
  %i.am = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.al, ptr noundef nonnull align 8 dereferenceable(512) %i.am, i64 512, i1 false)
  %.not.i.i = icmp eq ptr %i.ag, %i.ad
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !78
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !78
  br label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit: ; preds = %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15QuantizedSplineEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i
  %i.an = phi ptr [ %.pre, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15QuantizedSplineEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i ] ; 2 uses
  %i.ao = phi ptr [ %.pr, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split ], [ %i.ad, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15QuantizedSplineEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i ] ; 5 uses
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.af, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split ], [ %i.t, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15QuantizedSplineEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i ]
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !78
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !78
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !78
  store ptr %i.u, ptr %i.j, align 8, !tbaa !78
  %.not2.i.i.i.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i
  %i.aq = phi ptr [ %i.ar, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i ], [ %i.an, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit ] ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -536 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !37 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -528
  store ptr %i.as, ptr %i.at, align 8, !tbaa !35
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 -520
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.as to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ay) #25
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit
  %.not.i4 = icmp eq ptr %i.ao, null
  br i1 %.not.i4, label %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i
  %i.az = ptrtoint ptr %i.ap to i64
  %i.ba = ptrtoint ptr %i.ao to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bb) #25
  br label %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i, %bb.e
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3hwy13FunctionCacheIvJPfS1_S1_mmmbPKN3jxl13SplineSegmentEPKmS7_EE13ChooseAndCallIXadsoKPFvS1_S1_S1_mmmbS5_S7_S7_EL_ZNS2_L32DrawSegmentsHighwayDispatchTableEEEEEEvS1_S1_S1_mmmbS5_S7_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #27 ; 2 uses
  %i.b = tail call noundef i64 @_ZN3hwy16SupportedTargetsEv() #27
  %i.c = shl i64 %i.b, 1
  %i.d = and i64 %i.c, 65534
  %i.e = or disjoint i64 %i.d, 65536
  store atomic i64 %i.e, ptr %i.a seq_cst, align 8
  %i.f = load atomic i64, ptr %i.a seq_cst, align 8
  %i.g = and i64 %i.f, 103425
  %i.h = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.g, i1 true)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL32DrawSegmentsHighwayDispatchTableE, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !90
  tail call void %i.j(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3jxl6N_AVX212_GLOBAL__N_112DrawSegmentsEPfS2_S2_mmmbPKNS_13SplineSegmentEPKmS7_(ptr noalias nofree noundef captures(none) %0, ptr noalias nofree noundef captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %3 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = uitofp i64 %3 to float                   ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit
  %.022 = phi i64 [ %i.b, %.lr.ph ], [ %i.gf, %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.022
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %i.h ; 12 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !121
  %i.m = fsub float %i.j, %i.l
  %i.n = tail call noundef i64 @llroundf(float noundef %i.m) #27 ; 2 uses
  %i.o = load float, ptr %i.i, align 4, !tbaa !120
  %i.p = load float, ptr %i.k, align 4, !tbaa !121
  %i.q = fadd float %i.o, %i.p
  %i.r = tail call noundef i64 @llroundf(float noundef %i.q) #27 ; 2 uses
  %i.s = icmp sge i64 %i.r, %4
  %.not.i = icmp slt i64 %i.n, %5
  %or.cond.i = and i1 %.not.i, %i.s
  br i1 %or.cond.i, label %bb.c, label %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated39.i = tail call i64 @llvm.smax.i64(i64 %4, i64 %i.n)
  %i.t = sub i64 %.sroa.speculated39.i, %4        ; 3 uses
  %i.u = add nsw i64 %i.r, 1
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %5)
  %i.v = sub i64 %.sroa.speculated.i, %4          ; 4 uses
  %i.w = add i64 %i.t, 8                          ; 2 uses
  %.not3345.i = icmp ugt i64 %i.w, %i.v
  br i1 %.not3345.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.z = load <1 x float>, ptr %i.x, align 4
  %i.aa = shufflevector <1 x float> %i.z, <1 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ab = load <1 x float>, ptr %i.y, align 4
  %i.ac = shufflevector <1 x float> %i.ab, <1 x float> poison, <8 x i32> zeroinitializer
  %i.ad = load <8 x float>, ptr %i.i, align 4     ; 7 uses
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer
  %i.af = extractelement <8 x float> %i.ad, i64 1
  %i.ag = fsub float %i.f, %i.af                  ; 2 uses
  %.scalar.i.i = fmul float %i.ag, %i.ag
  %i.ah = insertelement <8 x float> poison, float %.scalar.i.i, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aj = extractelement <8 x float> %i.ad, i64 5
  %i.ak = fneg float %i.aj
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer
  %i.an = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.ao = extractelement <8 x float> %i.ad, i64 7
  %i.ap = fneg <8 x float> %i.ad                  ; 2 uses
  %i.aq = shufflevector <8 x float> %i.ap, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.ar = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.as = extractelement <8 x float> %i.ap, i64 7
  %. = select i1 %6, <8 x float> %i.an, <8 x float> %i.am
  %.37 = select i1 %6, <8 x float> %i.ar, <8 x float> %i.aq
  %.38 = select i1 %6, float %i.ao, float %i.as
  %i.at = insertelement <8 x float> poison, float %.38, i64 0
  %i.au = shufflevector <8 x float> %i.at, <8 x float> poison, <8 x i32> zeroinitializer
  br label %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm8ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i

.preheader.i:                                     ; preds = %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm8ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ %i.t, %bb.c ], [ %i.bn, %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm8ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 2 uses
  %i.av = icmp ult i64 %.0.lcssa.i, %i.v
  br i1 %i.av, label %.lr.ph48.i, label %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit

.lr.ph48.i:                                       ; preds = %.preheader.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.bb = load float, ptr %i.aw, align 4, !tbaa !122 ; 2 uses
  %i.bc = load float, ptr %i.ax, align 4, !tbaa !123 ; 2 uses
  %10 = insertelement <4 x float> poison, float %i.bc, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.bd = load <4 x float>, ptr %i.i, align 4     ; 2 uses
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = extractelement <4 x float> %i.bd, i64 1
  %i.bg = fsub float %i.f, %i.bf                  ; 3 uses
  %i.bh = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.bj = fmul float %i.bg, %i.bg
  %i.bk = insertelement <4 x float> %i.bi, float %i.bj, i64 0
  %i.bl = load float, ptr %i.ay, align 4, !tbaa !27 ; 2 uses
  %i.bm = fneg float %i.bl
  %12 = insertelement <4 x float> poison, float %i.bm, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %14 = insertelement <4 x float> poison, float %i.bl, i64 0
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm8ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i: ; preds = %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm8ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %.lr.ph.i
  %i.bn = phi i64 [ %i.w, %.lr.ph.i ], [ %i.dp, %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm8ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 3 uses
  %.046.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.bn, %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm8ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 4 uses
  %i.bo = add i64 %.046.i, %4
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = insertelement <8 x i32> poison, i32 %i.bp, i64 0
  %i.br = shufflevector <8 x i32> %i.bq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bs = add <8 x i32> %i.br, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = sitofp <8 x i32> %i.bs to <8 x float>
  %i.bu = fsub <8 x float> %i.bt, %i.ae           ; 2 uses
  %i.bv = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bu, <8 x float> %i.bu, <8 x float> %i.ai)
  %i.bw = tail call noundef <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bv) ; 2 uses
  %i.bx = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bw, <8 x float> splat (float 5.000000e-01), <8 x float> splat (float f0x3EB504F3))
  %i.by = fmul <8 x float> %i.aa, %i.bx           ; 2 uses
  %i.bz = fcmp ole <8 x float> %i.by, zeroinitializer
  %i.ca = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.by) ; 4 uses
  %i.cb = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ca, <8 x float> splat (float f0x3D9F35DB), <8 x float> splat (float f0x39573B11))
  %i.cc = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cb, <8 x float> %i.ca, <8 x float> splat (float f0x3E6DB0EC))
  %i.cd = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cc, <8 x float> %i.ca, <8 x float> splat (float f0x3E8E3E87))
  %i.ce = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cd, <8 x float> %i.ca, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.cf = fmul <8 x float> %i.ce, %i.ce
  %i.cg = fdiv <8 x float> splat (float 1.000000e+00), %i.cf ; 2 uses
  %i.ch = fneg <8 x float> %i.cg
  %i.ci = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ch, <8 x float> %i.cg, <8 x float> splat (float 1.000000e+00))
  %i.cj = select <8 x i1> %i.bz, <8 x i32> splat (i32 -2147483648), <8 x i32> zeroinitializer
  %i.ck = bitcast <8 x float> %i.ci to <8 x i32>
  %i.cl = xor <8 x i32> %i.cj, %i.ck
  %i.cm = bitcast <8 x i32> %i.cl to <8 x float>
  %i.cn = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bw, <8 x float> splat (float 5.000000e-01), <8 x float> splat (float f0xBEB504F3))
  %i.co = fmul <8 x float> %i.aa, %i.cn           ; 2 uses
  %i.cp = fcmp ole <8 x float> %i.co, zeroinitializer
  %i.cq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.co) ; 4 uses
  %i.cr = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cq, <8 x float> splat (float f0x3D9F35DB), <8 x float> splat (float f0x39573B11))
  %i.cs = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cr, <8 x float> %i.cq, <8 x float> splat (float f0x3E6DB0EC))
  %i.ct = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cs, <8 x float> %i.cq, <8 x float> splat (float f0x3E8E3E87))
  %i.cu = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ct, <8 x float> %i.cq, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.cv = fmul <8 x float> %i.cu, %i.cu
  %i.cw = fdiv <8 x float> splat (float 1.000000e+00), %i.cv ; 2 uses
  %i.cx = fneg <8 x float> %i.cw
  %i.cy = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cx, <8 x float> %i.cw, <8 x float> splat (float 1.000000e+00))
  %i.cz = select <8 x i1> %i.cp, <8 x i32> splat (i32 -2147483648), <8 x i32> zeroinitializer
  %i.da = bitcast <8 x float> %i.cy to <8 x i32>
  %i.db = xor <8 x i32> %i.cz, %i.da
  %i.dc = bitcast <8 x i32> %i.db to <8 x float>
  %i.dd = fsub <8 x float> %i.cm, %i.dc           ; 2 uses
  %i.de = fmul <8 x float> %i.dd, %i.dd
  %i.df = fmul <8 x float> %i.ac, %i.de           ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.046.i ; 2 uses
  %i.dh = load <8 x float>, ptr %i.dg, align 1, !tbaa !50
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.046.i ; 2 uses
  %i.dj = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %., <8 x float> %i.df, <8 x float> %i.dh)
  store <8 x float> %i.dj, ptr %i.dg, align 1, !tbaa !50
  %i.dk = load <8 x float>, ptr %i.di, align 1, !tbaa !50
  %i.dl = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.37, <8 x float> %i.df, <8 x float> %i.dk)
  store <8 x float> %i.dl, ptr %i.di, align 1, !tbaa !50
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.046.i ; 2 uses
  %i.dn = load <8 x float>, ptr %i.dm, align 1, !tbaa !50
  %i.do = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.au, <8 x float> %i.df, <8 x float> %i.dn)
  store <8 x float> %i.do, ptr %i.dm, align 1, !tbaa !50
  %i.dp = add i64 %i.bn, 8                        ; 2 uses
  %.not33.i = icmp ugt i64 %i.dp, %i.v
  br i1 %.not33.i, label %.preheader.i, label %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm8ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, !llvm.loop !447

bb.d:                                             ; preds = %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %.lr.ph48.i
  %.147.i = phi i64 [ %.0.lcssa.i, %.lr.ph48.i ], [ %i.gd, %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 6 uses
  %i.dq = add i64 %.147.i, %4
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %i.dt = shufflevector <4 x i32> %i.ds, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.du = add <4 x i32> %i.dt, <i32 0, i32 1, i32 2, i32 3>
  %i.dv = sitofp <4 x i32> %i.du to <4 x float>
  %i.dw = fsub <4 x float> %i.dv, %i.be           ; 2 uses
  %i.dx = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.dw, <4 x float> %i.dw, <4 x float> %i.bk) ; 2 uses
  %i.dy = extractelement <4 x float> %i.dx, i64 0
  %i.dz = tail call float @llvm.sqrt.f32(float %i.dy)
  %i.ea = insertelement <4 x float> %i.dx, float %i.dz, i64 0 ; 2 uses
  %i.eb = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ea, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float f0x3EB504F3)) ; 2 uses
  %i.ec = extractelement <4 x float> %i.eb, i64 0
  %i.ed = fmul float %i.bb, %i.ec
  %i.ee = insertelement <4 x float> %i.eb, float %i.ed, i64 0 ; 2 uses
  %i.ef = fcmp ole <4 x float> %i.ee, zeroinitializer
  %i.eg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ee) ; 4 uses
  %i.eh = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.eg, <4 x float> splat (float f0x3D9F35DB), <4 x float> splat (float f0x39573B11))
  %i.ei = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.eh, <4 x float> %i.eg, <4 x float> splat (float f0x3E6DB0EC))
  %i.ej = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ei, <4 x float> %i.eg, <4 x float> splat (float f0x3E8E3E87))
  %i.ek = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ej, <4 x float> %i.eg, <4 x float> splat (float 1.000000e+00))
  %i.el = select <4 x i1> %i.ef, <4 x i32> <i32 -2147483648, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.em = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ea, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float f0xBEB504F3)) ; 2 uses
  %i.en = extractelement <4 x float> %i.em, i64 0
  %i.eo = fmul float %i.bb, %i.en
  %i.ep = insertelement <4 x float> %i.em, float %i.eo, i64 0 ; 2 uses
  %i.eq = fcmp ole <4 x float> %i.ep, zeroinitializer
  %i.er = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ep) ; 4 uses
  %i.es = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.er, <4 x float> splat (float f0x3D9F35DB), <4 x float> splat (float f0x39573B11))
  %i.et = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.es, <4 x float> %i.er, <4 x float> splat (float f0x3E6DB0EC))
  %i.eu = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.et, <4 x float> %i.er, <4 x float> splat (float f0x3E8E3E87))
  %i.ev = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.eu, <4 x float> %i.er, <4 x float> splat (float 1.000000e+00))
  %i.ew = shufflevector <4 x float> %i.ek, <4 x float> %i.ev, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.ex = fmul <2 x float> %i.ew, %i.ew
  %i.ey = fdiv <2 x float> splat (float 1.000000e+00), %i.ex
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.fb = fneg <4 x float> %i.fa
  %i.fc = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.fb, <4 x float> %i.fa, <4 x float> splat (float 1.000000e+00))
  %i.fd = bitcast <4 x float> %i.fc to <4 x i32>
  %i.fe = xor <4 x i32> %i.el, %i.fd
  %i.ff = bitcast <4 x i32> %i.fe to <4 x float>
  %i.fg = shufflevector <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float> %i.ez, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %i.fh = fneg <4 x float> %i.fg
  %i.fi = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.fh, <4 x float> %i.fg, <4 x float> splat (float 1.000000e+00))
  %i.fj = select <4 x i1> %i.eq, <4 x i32> <i32 -2147483648, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fk = bitcast <4 x float> %i.fi to <4 x i32>
  %i.fl = xor <4 x i32> %i.fj, %i.fk
  %i.fm = bitcast <4 x i32> %i.fl to <4 x float>
  %i.fn = fsub <4 x float> %i.ff, %i.fm           ; 2 uses
  %foldExtExtBinop = fmul <4 x float> %i.fn, %i.fn
  %i.fo = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.fp = fmul float %i.bc, %i.fo
  %16 = insertelement <4 x float> %11, float %i.fp, i64 0 ; 5 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.147.i ; 3 uses
  %i.fr = load float, ptr %i.fq, align 1, !tbaa !50
  %17 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.fr, i64 0 ; 2 uses
  br i1 %6, label %.split.us.preheader.i35.i, label %.split.preheader.i34.i

.split.preheader.i34.i:                           ; preds = %bb.d
  %18 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %13, <4 x float> %16, <4 x float> %17)
  %19 = extractelement <4 x float> %18, i64 0
  store float %19, ptr %i.fq, align 1, !tbaa !50
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.147.i ; 2 uses
  %i.ft = load float, ptr %i.fs, align 1, !tbaa !50
  %20 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ft, i64 0
  %i.fu = load <2 x float>, ptr %i.az, align 4, !tbaa !27
  %i.fv = fneg <2 x float> %i.fu                  ; 2 uses
  %21 = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> zeroinitializer
  %22 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %21, <4 x float> %16, <4 x float> %20)
  %23 = extractelement <4 x float> %22, i64 0
  store float %23, ptr %i.fs, align 1, !tbaa !50
  %i.fw = extractelement <2 x float> %i.fv, i64 1
  br label %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i

.split.us.preheader.i35.i:                        ; preds = %bb.d
  %24 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %15, <4 x float> %16, <4 x float> %17)
  %25 = extractelement <4 x float> %24, i64 0
  store float %25, ptr %i.fq, align 1, !tbaa !50
  %i.fx = load float, ptr %i.az, align 4, !tbaa !27
  %26 = insertelement <4 x float> poison, float %i.fx, i64 0
  %27 = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.147.i ; 2 uses
  %i.fz = load float, ptr %i.fy, align 1, !tbaa !50
  %28 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.fz, i64 0
  %29 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %27, <4 x float> %16, <4 x float> %28)
  %30 = extractelement <4 x float> %29, i64 0
  store float %30, ptr %i.fy, align 1, !tbaa !50
  %i.ga = load float, ptr %i.ba, align 4, !tbaa !27
  br label %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i

_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i: ; preds = %.split.us.preheader.i35.i, %.split.preheader.i34.i
  %.sink.i.i = phi float [ %i.fw, %.split.preheader.i34.i ], [ %i.ga, %.split.us.preheader.i35.i ]
  %31 = insertelement <4 x float> poison, float %.sink.i.i, i64 0
  %32 = shufflevector <4 x float> %31, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.147.i ; 2 uses
  %i.gc = load float, ptr %i.gb, align 1, !tbaa !50
  %33 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.gc, i64 0
  %34 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %32, <4 x float> %16, <4 x float> %33)
  %35 = extractelement <4 x float> %34, i64 0
  store float %35, ptr %i.gb, align 1, !tbaa !50
  %i.gd = add nuw i64 %.147.i, 1                  ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.v
  br i1 %i.ge, label %bb.d, label %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit, !llvm.loop !448

_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit: ; preds = %_ZN3jxl6N_AVX212_GLOBAL__N_111DrawSegmentIN3hwy6N_AVX24SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %bb.b, %.preheader.i
  %i.gf = add nuw i64 %.022, 1                    ; 2 uses
  %i.gg = load i64, ptr %i.c, align 8, !tbaa !29
  %i.gh = icmp ult i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.b, label %._crit_edge, !llvm.loop !449
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3jxl6N_SSE412_GLOBAL__N_112DrawSegmentsEPfS2_S2_mmmbPKNS_13SplineSegmentEPKmS7_(ptr noalias nofree noundef captures(none) %0, ptr noalias nofree noundef captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9) #17 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %3 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = uitofp i64 %3 to float                   ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit
  %.022 = phi i64 [ %i.b, %.lr.ph ], [ %i.gz, %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.022
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %i.h ; 12 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !121
  %i.m = fsub float %i.j, %i.l
  %i.n = tail call noundef i64 @llroundf(float noundef %i.m) #27 ; 2 uses
  %i.o = load float, ptr %i.i, align 4, !tbaa !120
  %i.p = load float, ptr %i.k, align 4, !tbaa !121
  %i.q = fadd float %i.o, %i.p
  %i.r = tail call noundef i64 @llroundf(float noundef %i.q) #27 ; 2 uses
  %i.s = icmp sge i64 %i.r, %4
  %.not.i = icmp slt i64 %i.n, %5
  %or.cond.i = and i1 %.not.i, %i.s
  br i1 %or.cond.i, label %bb.c, label %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated39.i = tail call i64 @llvm.smax.i64(i64 %4, i64 %i.n)
  %i.t = sub i64 %.sroa.speculated39.i, %4        ; 3 uses
  %i.u = add nsw i64 %i.r, 1
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %5)
  %i.v = sub i64 %.sroa.speculated.i, %4          ; 4 uses
  %i.w = add i64 %i.t, 4                          ; 2 uses
  %.not3345.i = icmp ugt i64 %i.w, %i.v
  br i1 %.not3345.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.z = load <1 x float>, ptr %i.x, align 4
  %i.aa = shufflevector <1 x float> %i.z, <1 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ab = load <4 x float>, ptr %i.y, align 4     ; 6 uses
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = load <4 x float>, ptr %i.i, align 4     ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.af = extractelement <4 x float> %i.ad, i64 1
  %i.ag = fsub float %i.f, %i.af                  ; 2 uses
  %.scalar.i.i = fmul float %i.ag, %i.ag
  %i.ah = insertelement <4 x float> poison, float %.scalar.i.i, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = extractelement <4 x float> %i.ab, i64 1
  %i.ak = fneg float %i.aj
  %i.al = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer
  %i.an = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ao = extractelement <4 x float> %i.ab, i64 3
  %i.ap = fneg <4 x float> %i.ab                  ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ar = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.as = extractelement <4 x float> %i.ap, i64 3
  %. = select i1 %6, <4 x float> %i.an, <4 x float> %i.am
  %.40 = select i1 %6, <4 x float> %i.ar, <4 x float> %i.aq
  %.41 = select i1 %6, float %i.ao, float %i.as
  %i.at = insertelement <4 x float> poison, float %.41, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i

.preheader.i:                                     ; preds = %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ %i.t, %bb.c ], [ %i.bm, %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 2 uses
  %i.av = icmp ult i64 %.0.lcssa.i, %i.v
  br i1 %i.av, label %.lr.ph48.i, label %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit

.lr.ph48.i:                                       ; preds = %.preheader.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bb = load float, ptr %i.aw, align 4, !tbaa !122 ; 2 uses
  %i.bc = load float, ptr %i.ax, align 4, !tbaa !123
  %i.bd = load <4 x float>, ptr %i.i, align 4     ; 2 uses
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = extractelement <4 x float> %i.bd, i64 1
  %i.bg = fsub float %i.f, %i.bf                  ; 3 uses
  %i.bh = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.bj = fmul float %i.bg, %i.bg
  %i.bk = insertelement <4 x float> %i.bi, float %i.bj, i64 0
  %i.bl = load float, ptr %i.ay, align 4, !tbaa !27
  br label %bb.d

_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i: ; preds = %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %.lr.ph.i
  %i.bm = phi i64 [ %i.w, %.lr.ph.i ], [ %i.eb, %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 3 uses
  %.046.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.bm, %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 4 uses
  %i.bn = add i64 %.046.i, %4
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %i.bq = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.br = add <4 x i32> %i.bq, <i32 0, i32 1, i32 2, i32 3>
  %i.bs = sitofp <4 x i32> %i.br to <4 x float>
  %i.bt = fsub <4 x float> %i.bs, %i.ae           ; 2 uses
  %i.bu = fmul <4 x float> %i.bt, %i.bt
  %i.bv = fadd <4 x float> %i.bu, %i.ai
  %i.bw = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bv)
  %i.bx = fmul <4 x float> %i.bw, splat (float 5.000000e-01) ; 2 uses
  %i.by = fadd <4 x float> %i.bx, splat (float f0x3EB504F3)
  %i.bz = fmul <4 x float> %i.aa, %i.by           ; 2 uses
  %i.ca = fcmp ole <4 x float> %i.bz, zeroinitializer
  %i.cb = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bz) ; 4 uses
  %i.cc = fmul <4 x float> %i.cb, splat (float f0x3D9F35DB)
  %i.cd = fadd <4 x float> %i.cc, splat (float f0x39573B11)
  %i.ce = fmul <4 x float> %i.cb, %i.cd
  %i.cf = fadd <4 x float> %i.ce, splat (float f0x3E6DB0EC)
  %i.cg = fmul <4 x float> %i.cb, %i.cf
  %i.ch = fadd <4 x float> %i.cg, splat (float f0x3E8E3E87)
  %i.ci = fmul <4 x float> %i.cb, %i.ch
  %i.cj = fadd <4 x float> %i.ci, splat (float 1.000000e+00) ; 2 uses
  %i.ck = fmul <4 x float> %i.cj, %i.cj
  %i.cl = fdiv <4 x float> splat (float 1.000000e+00), %i.ck ; 2 uses
  %i.cm = fmul <4 x float> %i.cl, %i.cl
  %i.cn = fsub <4 x float> splat (float 1.000000e+00), %i.cm
  %i.co = select <4 x i1> %i.ca, <4 x i32> splat (i32 -2147483648), <4 x i32> zeroinitializer
  %i.cp = bitcast <4 x float> %i.cn to <4 x i32>
  %i.cq = xor <4 x i32> %i.co, %i.cp
  %i.cr = bitcast <4 x i32> %i.cq to <4 x float>
  %i.cs = fadd <4 x float> %i.bx, splat (float f0xBEB504F3)
  %i.ct = fmul <4 x float> %i.aa, %i.cs           ; 2 uses
  %i.cu = fcmp ole <4 x float> %i.ct, zeroinitializer
  %i.cv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ct) ; 4 uses
  %i.cw = fmul <4 x float> %i.cv, splat (float f0x3D9F35DB)
  %i.cx = fadd <4 x float> %i.cw, splat (float f0x39573B11)
  %i.cy = fmul <4 x float> %i.cv, %i.cx
  %i.cz = fadd <4 x float> %i.cy, splat (float f0x3E6DB0EC)
  %i.da = fmul <4 x float> %i.cv, %i.cz
  %i.db = fadd <4 x float> %i.da, splat (float f0x3E8E3E87)
  %i.dc = fmul <4 x float> %i.cv, %i.db
  %i.dd = fadd <4 x float> %i.dc, splat (float 1.000000e+00) ; 2 uses
  %i.de = fmul <4 x float> %i.dd, %i.dd
  %i.df = fdiv <4 x float> splat (float 1.000000e+00), %i.de ; 2 uses
  %i.dg = fmul <4 x float> %i.df, %i.df
  %i.dh = fsub <4 x float> splat (float 1.000000e+00), %i.dg
  %i.di = select <4 x i1> %i.cu, <4 x i32> splat (i32 -2147483648), <4 x i32> zeroinitializer
  %i.dj = bitcast <4 x float> %i.dh to <4 x i32>
  %i.dk = xor <4 x i32> %i.di, %i.dj
  %i.dl = bitcast <4 x i32> %i.dk to <4 x float>
  %i.dm = fsub <4 x float> %i.cr, %i.dl           ; 2 uses
  %i.dn = fmul <4 x float> %i.dm, %i.dm
  %i.do = fmul <4 x float> %i.ac, %i.dn           ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.046.i ; 2 uses
  %i.dq = load <4 x float>, ptr %i.dp, align 1, !tbaa !50
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.046.i ; 2 uses
  %i.ds = fmul <4 x float> %., %i.do
  %i.dt = fadd <4 x float> %i.ds, %i.dq
  store <4 x float> %i.dt, ptr %i.dp, align 1, !tbaa !50
  %i.du = load <4 x float>, ptr %i.dr, align 1, !tbaa !50
  %i.dv = fmul <4 x float> %i.do, %.40
  %i.dw = fadd <4 x float> %i.du, %i.dv
  store <4 x float> %i.dw, ptr %i.dr, align 1, !tbaa !50
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.046.i ; 2 uses
  %i.dy = load <4 x float>, ptr %i.dx, align 1, !tbaa !50
  %i.dz = fmul <4 x float> %i.do, %i.au
  %i.ea = fadd <4 x float> %i.dy, %i.dz
  store <4 x float> %i.ea, ptr %i.dx, align 1, !tbaa !50
  %i.eb = add i64 %i.bm, 4                        ; 2 uses
  %.not33.i = icmp ugt i64 %i.eb, %i.v
  br i1 %.not33.i, label %.preheader.i, label %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, !llvm.loop !450

bb.d:                                             ; preds = %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %.lr.ph48.i
  %.147.i = phi i64 [ %.0.lcssa.i, %.lr.ph48.i ], [ %i.gx, %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 5 uses
  %i.ec = add i64 %.147.i, %4
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = insertelement <4 x i32> poison, i32 %i.ed, i64 0
  %i.ef = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eg = add <4 x i32> %i.ef, <i32 0, i32 1, i32 2, i32 3>
  %i.eh = sitofp <4 x i32> %i.eg to <4 x float>
  %i.ei = fsub <4 x float> %i.eh, %i.be           ; 3 uses
  %foldExtExtBinop = fmul <4 x float> %i.ei, %i.ei
  %i.ej = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.ei, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ek = fadd <4 x float> %i.bk, %i.ej           ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyENS_6__lessIvvEEPNS_4pairImmEEEEvT1_S7_RT0_NS_15iterator_traitsIS7_E15difference_typeE:bb.a
  %i.at = load i64, ptr %i.y, align 8, !tbaa !114 ; 2 uses
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit.thread.i12, label %_ZNSt3__19__sift_upB8nn180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_4pairImmEEEEvT1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE.exit

_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit.thread.i12: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit.i11, %._ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit.thread_crit_edge.i
  %.sroa.5.0.copyload.i = phi i64 [ %.sroa.5.0.copyload.pre.i, %._ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit.thread_crit_edge.i ], [ %i.at, %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit.i11 ] ; 2 uses
  store i64 %i.an, ptr %.117.i, align 8, !tbaa !115
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !29
  store i64 %i.aw, ptr %i.y, align 8, !tbaa !114
  %i.ax = icmp eq i64 %i.al, 0
  br i1 %i.ax, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit.thread.i12, %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.backedge.i
  %.023.i = phi i64 [ %i.az, %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.backedge.i ], [ %i.al, %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit.thread.i12 ]
  %.01822.i = phi ptr [ %i.ba, %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.backedge.i ], [ %i.am, %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit.thread.i12 ] ; 4 uses
  %i.ay = add nsw i64 %.023.i, -1
  %i.az = lshr i64 %i.ay, 1                       ; 3 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.az ; 5 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !115 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.ao
  br i1 %i.bc, label %.lr.ph._ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.backedge_crit_edge.i, label %bb.j

.lr.ph._ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.backedge_crit_edge.i: ; preds = %.lr.ph.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !29
  br label %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.backedge.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.bd = icmp ult i64 %i.ao, %i.bb
  br i1 %i.bd, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.thread.i, label %.split.i

.split.i:                                         ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !114 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %.sroa.5.0.copyload.i
  br i1 %i.bg, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.backedge.i, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.thread.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.backedge.i: ; preds = %.split.i, %.lr.ph._ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.backedge_crit_edge.i
  %i.bh = phi i64 [ %.pre.i, %.lr.ph._ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.backedge_crit_edge.i ], [ %i.bf, %.split.i ]
  store i64 %i.bb, ptr %.01822.i, align 8, !tbaa !115
  %i.bi = getelementptr inbounds nuw i8, ptr %.01822.i, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !114
  %i.bj = icmp eq i64 %i.az, 0
  br i1 %i.bj, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.thread.i, label %.lr.ph.i, !llvm.loop !499

_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.thread.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.backedge.i, %.split.i, %bb.j, %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit.thread.i12
  %.018.lcssa21.i = phi ptr [ %i.am, %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit.thread.i12 ], [ %i.ba, %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.backedge.i ], [ %.01822.i, %.split.i ], [ %.01822.i, %bb.j ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.018.lcssa21.i, i64 8
  store i64 %i.ao, ptr %.018.lcssa21.i, align 8, !tbaa !115
  store i64 %.sroa.5.0.copyload.i, ptr %i.bk, align 8, !tbaa !114
  br label %_ZNSt3__19__sift_upB8nn180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_4pairImmEEEEvT1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE.exit

_ZNSt3__19__sift_upB8nn180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_4pairImmEEEEvT1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE.exit: ; preds = %bb.f, %bb.g, %bb.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit.i11, %_ZNKSt3__16__lessIvvEclB8nn180100INS_4pairImmEES4_EEbRKT_RKT0_.exit10.thread.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorImNS_9allocatorImEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !509
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not = icmp ult i64 %i.h, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq i64 %1, 0
  br i1 %.not6.i, label %_ZNSt3__16vectorImNS_9allocatorImEEE18__construct_at_endEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.idx.i = shl i64 %1, 3                         ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %.idx.i, i1 false), !tbaa !29
  br label %_ZNSt3__16vectorImNS_9allocatorImEEE18__construct_at_endEm.exit

_ZNSt3__16vectorImNS_9allocatorImEEE18__construct_at_endEm.exit: ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.4.0.lcssa.i = phi ptr [ %i.d, %bb.b ], [ %i.i, %.lr.ph.preheader.i ]
  store ptr %.sroa.4.0.lcssa.i, ptr %i.c, align 8, !tbaa !70
  br label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.f, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3
  %i.n = add i64 %i.m, %1                         ; 2 uses
  %i.o = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.o, label %bb.d, label %_ZNKSt3__16vectorImNS_9allocatorImEEE11__recommendB8nn180100Em.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorImNS_9allocatorImEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  unreachable

_ZNKSt3__16vectorImNS_9allocatorImEEE11__recommendB8nn180100Em.exit: ; preds = %bb.c
  %i.p = sub i64 %i.e, %i.k                       ; 2 uses
  %.not.i = icmp ult i64 %i.p, 9223372036854775800
  %i.q = ashr exact i64 %i.p, 2
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.n)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 2305843009213693951 ; 4 uses
  %i.r = icmp eq i64 %.0.i, 0
  br i1 %i.r, label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE18__construct_at_endEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3__16vectorImNS_9allocatorImEEE11__recommendB8nn180100Em.exit
  %i.s = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.s, label %bb.f, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorImEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #23
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorImEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i: ; preds = %bb.e
  %i.t = shl nuw i64 %.0.i, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !70
  %.pre14 = load ptr, ptr %0, align 8, !tbaa !69
  br label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE18__construct_at_endEm.exit

_ZNSt3__114__split_bufferImRNS_9allocatorImEEE18__construct_at_endEm.exit: ; preds = %_ZNKSt3__16vectorImNS_9allocatorImEEE11__recommendB8nn180100Em.exit, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorImEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i
  %i.v = phi ptr [ %.pre14, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorImEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ %i.j, %_ZNKSt3__16vectorImNS_9allocatorImEEE11__recommendB8nn180100Em.exit ] ; 5 uses
  %i.w = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorImEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ %i.d, %_ZNKSt3__16vectorImNS_9allocatorImEEE11__recommendB8nn180100Em.exit ] ; 2 uses
  %storemerge.i = phi ptr [ %i.u, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorImEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ null, %_ZNKSt3__16vectorImNS_9allocatorImEEE11__recommendB8nn180100Em.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.l ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %storemerge.i, i64 %.0.i
  %.idx.i6 = shl i64 %1, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 %.idx.i6
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %.idx.i6, i1 false), !tbaa !29
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE18__construct_at_endEm.exit, %.lr.ph.i.i.i.i.i.i.i
  %i.aa = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %i.x, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE18__construct_at_endEm.exit ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %i.w, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE18__construct_at_endEm.exit ]
  %i.ab = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !29, !noalias !510
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 3 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !29, !noalias !510
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !508

_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8nn180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE18__construct_at_endEm.exit
  %storemerge = phi ptr [ %i.x, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE18__construct_at_endEm.exit ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !509
  store ptr %i.z, ptr %i.c, align 8, !tbaa !509
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !509
  store ptr %i.y, ptr %i.a, align 8, !tbaa !509
  %.not.i7 = icmp eq ptr %i.v, null
  br i1 %.not.i7, label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8nn180100Ev.exit.i
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.v to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ah) #25
  br label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEED2Ev.exit

_ZNSt3__114__split_bufferImRNS_9allocatorImEEED2Ev.exit: ; preds = %bb.g, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8nn180100Ev.exit.i, %_ZNSt3__16vectorImNS_9allocatorImEEE18__construct_at_endEm.exit
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorImNS_9allocatorImEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.26) #23
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #2

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #10 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #12 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #13 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #17 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #18 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #21 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #22 = { nounwind }
attributes #23 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #24 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #25 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #26 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #27 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #28 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = distinct !{!3, !31}
!4 = distinct !{!4, !31}
!5 = distinct !{!5, !31}
!6 = distinct !{!6, !31}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTSN3jxl6Spline5PointE", !16, i64 0}
!18 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl6Spline5PointELi0ELb0EEE", !17, i64 0}
!19 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !18, i64 0}
!20 = !{!"_ZTSNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !17, i64 0, !17, i64 8, !19, i64 16}
!21 = !{!20, !17, i64 0}
!22 = !{!20, !17, i64 8}
!23 = !{!"_ZTSN3jxl10StatusCodeE", !12, i64 0}
!24 = !{!"p1 _ZTSNSt3__14pairIllEE", !16, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"float", !12, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"long", !12, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{i64 0, i64 8, !29, i64 8, i64 8, !29}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairIllEELi0ELb0EEE", !24, i64 0}
!33 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairIllEENS_9allocatorIS2_EEEE", !32, i64 0}
!34 = !{!"_ZTSNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEEE", !24, i64 0, !24, i64 8, !33, i64 16}
!35 = !{!34, !24, i64 8}
!36 = !{!13, !13, i64 0}
!37 = !{!34, !24, i64 0}
!38 = !{!17, !17, i64 0}
!39 = !{!"_ZTSN3jxl6Spline5PointE", !26, i64 0, !26, i64 4}
!40 = !{!39, !26, i64 0}
!41 = !{!39, !26, i64 4}
!42 = !{!"_ZTSNSt3__14pairIllEE", !28, i64 0, !28, i64 8}
!43 = !{!42, !28, i64 0}
!44 = !{!42, !28, i64 8}
!45 = !{!"p1 omnipotent char", !16, i64 0}
!46 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !45, i64 0}
!47 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !46, i64 0}
!48 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !45, i64 0, !45, i64 8, !47, i64 16}
!49 = !{!48, !45, i64 0}
!50 = !{!12, !12, i64 0}
!51 = !{!"p1 _ZTSN3jxl15QuantizedSplineE", !16, i64 0}
!52 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15QuantizedSplineELi0ELb0EEE", !51, i64 0}
!53 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !52, i64 0}
!54 = !{!"_ZTSNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !51, i64 0, !51, i64 8, !53, i64 16}
!55 = !{!"p1 _ZTSN3jxl13SplineSegmentE", !16, i64 0}
!56 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13SplineSegmentELi0ELb0EEE", !55, i64 0}
!57 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !56, i64 0}
!58 = !{!"_ZTSNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !55, i64 0, !55, i64 8, !57, i64 16}
!59 = !{!"p1 long", !16, i64 0}
!60 = !{!"_ZTSNSt3__122__compressed_pair_elemIPmLi0ELb0EEE", !59, i64 0}
!61 = !{!"_ZTSNSt3__117__compressed_pairIPmNS_9allocatorImEEEE", !60, i64 0}
!62 = !{!"_ZTSNSt3__16vectorImNS_9allocatorImEEEE", !59, i64 0, !59, i64 8, !61, i64 16}
!63 = !{!"_ZTSN3jxl7SplinesE", !13, i64 0, !54, i64 8, !20, i64 32, !58, i64 56, !62, i64 80, !62, i64 104}
!64 = !{!63, !13, i64 0}
!65 = !{!54, !51, i64 8}
!66 = !{!54, !51, i64 0}
!67 = !{!58, !55, i64 0}
!68 = !{!58, !55, i64 8}
!69 = !{!62, !59, i64 0}
!70 = !{!62, !59, i64 8}
!71 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !16, i64 0}
!72 = !{!"_ZTSN3jxl13AlignedMemoryE", !16, i64 0, !71, i64 8, !16, i64 16}
!73 = !{!"p1 _ZTSN3jxl19HuffmanDecodingDataE", !16, i64 0}
!74 = !{!"p1 _ZTSN3jxl16HybridUintConfigE", !16, i64 0}
!75 = !{!"p1 int", !16, i64 0}
!76 = !{!"bool", !12, i64 0}
!77 = !{!"_ZTSN3jxl16HybridUintConfigE", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!78 = !{!51, !51, i64 0}
!79 = !{!"p1 _ZTSN3jxl10AliasTable5EntryE", !16, i64 0}
!80 = !{!"_ZTSN3jxl15ANSSymbolReaderE", !79, i64 0, !73, i64 8, !76, i64 16, !13, i64 20, !74, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !72, i64 48, !75, i64 72, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96, !13, i64 100, !77, i64 104, !12, i64 120, !13, i64 600}
!81 = !{!80, !13, i64 20}
!82 = !{!"p1 _ZTSN3jxl11HuffmanCodeE", !16, i64 0}
!83 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl11HuffmanCodeELi0ELb0EEE", !82, i64 0}
!84 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl11HuffmanCodeENS_9allocatorIS2_EEEE", !83, i64 0}
!85 = !{!"_ZTSNSt3__16vectorIN3jxl11HuffmanCodeENS_9allocatorIS2_EEEE", !82, i64 0, !82, i64 8, !84, i64 16}
!86 = !{!85, !82, i64 0}
!87 = !{!72, !16, i64 16}
!88 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !28, i64 16, !72, i64 24, !28, i64 48}
!89 = !{!88, !28, i64 16}
!90 = !{!16, !16, i64 0}
!91 = !{!"llvm.loop.unswitch.partial.disable"}
!92 = !{!"p1 _ZTSN3jxl6SplineE", !16, i64 0}
!93 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl6SplineELi0ELb0EEE", !92, i64 0}
!94 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6SplineENS_9allocatorIS2_EEEE", !93, i64 0}
!95 = !{!"_ZTSNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEEE", !92, i64 0, !92, i64 8, !94, i64 16}
!96 = !{!95, !92, i64 8}
!97 = !{!92, !92, i64 0}
!98 = !{!95, !92, i64 0}
!99 = !{!"p1 _ZTSNSt3__14pairIN3jxl6Spline5PointEfEE", !16, i64 0}
!100 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairIN3jxl6Spline5PointEfEELi0ELb0EEE", !99, i64 0}
!101 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairIN3jxl6Spline5PointEfEENS_9allocatorIS5_EEEE", !100, i64 0}
!102 = !{!"_ZTSNSt3__16vectorINS_4pairIN3jxl6Spline5PointEfEENS_9allocatorIS5_EEEE", !99, i64 0, !99, i64 8, !101, i64 16}
!103 = !{!102, !99, i64 8}
!104 = !{!"_ZTSNSt3__14pairIN3jxl6Spline5PointEfEE", !39, i64 0, !26, i64 8}
!105 = !{!104, !26, i64 8}
!106 = !{!102, !99, i64 0}
!107 = !{!"p1 _ZTSNSt3__14pairImmEE", !16, i64 0}
!108 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairImmEELi0ELb0EEE", !107, i64 0}
!109 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairImmEENS_9allocatorIS2_EEEE", !108, i64 0}
!110 = !{!"_ZTSNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEEE", !107, i64 0, !107, i64 8, !109, i64 16}
!111 = !{!110, !107, i64 0}
!112 = !{!110, !107, i64 8}
!113 = !{!"_ZTSNSt3__14pairImmEE", !28, i64 0, !28, i64 8}
!114 = !{!113, !28, i64 8}
!115 = !{!113, !28, i64 0}
!116 = !{!107, !107, i64 0}
!117 = !{!55, !55, i64 0}
!118 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 12, i64 4, !27, i64 16, i64 4, !27, i64 20, i64 12, !50}
!119 = !{!"_ZTSN3jxl13SplineSegmentE", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !12, i64 20}
!120 = !{!119, !26, i64 0}
!121 = !{!119, !26, i64 8}
!122 = !{!119, !26, i64 12}
!123 = !{!119, !26, i64 16}
!124 = distinct !{!124, !31}
!125 = !{!"_ZTSN3jxl8StatusOrINS_15QuantizedSplineEEE", !12, i64 0, !23, i64 536}
!126 = !{!125, !23, i64 536}
!127 = distinct !{!127, i1 false, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl6Spline5PointEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!128 = distinct !{!128, !127, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl6Spline5PointEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!129 = distinct !{!129, i1 false, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl6Spline5PointEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!130 = distinct !{!130, !129, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl6Spline5PointEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!131 = distinct !{!131, i1 false, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl6Spline5PointEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!132 = distinct !{!132, !131, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl6Spline5PointEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!133 = distinct !{!133, i1 false, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl6Spline5PointEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!134 = distinct !{!134, !133, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl6Spline5PointEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
!135 = distinct !{!135, i1 false, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl6Spline5PointEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!136 = distinct !{!136, !135, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl6Spline5PointEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!137 = distinct !{!137, i1 false, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl6Spline5PointEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!138 = distinct !{!138, !137, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl6Spline5PointEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!139 = distinct !{!139, i1 false, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl6Spline5PointEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!140 = distinct !{!140, !139, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl6Spline5PointEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!141 = distinct !{!141, i1 false, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl6Spline5PointEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!142 = distinct !{!142, !141, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl6Spline5PointEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
end_hunk_1
