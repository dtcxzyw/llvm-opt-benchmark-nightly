Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ma?download=true
inline.NumInlined: 4528
inline.NumDeleted: 2211
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN3jxl6N_SSE413MakeSplitNodeEmiiNS_9PredictorElS1_lPNSt3__16vectorINS_20PropertyDecisionNodeENS2_9allocatorIS4_EEEE:bb.a
  store i32 1, ptr %i.t, align 8, !tbaa !42
  %i.u = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7) #33 ; 0 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -36
  store i16 -1, ptr %i.w, align 4, !tbaa !39
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -24
  store i32 %3, ptr %i.x, align 8, !tbaa !40
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -16
  store i64 %4, ptr %i.y, align 8, !tbaa !41
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -8
  store i32 1, ptr %i.z, align 8, !tbaa !42
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 -1, ptr %i.f, align 4, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.j, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 1, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJEEEPS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !31
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = sdiv exact i64 %i.p, 40
  %i.r = add nsw i64 %i.q, 1                      ; 2 uses
  %i.s = icmp ugt i64 %i.r, 461168601842738790
  br i1 %i.s, label %bb.d, label %_ZNKSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
  unreachable

_ZNKSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i: ; preds = %bb.c
  %i.t = ptrtoint ptr %i.d to i64
  %i.u = sub i64 %i.t, %i.o
  %i.v = sdiv exact i64 %i.u, 40                  ; 2 uses
  %.not.i.i = icmp ult i64 %i.v, 230584300921369395
  %i.w = shl nuw nsw i64 %i.v, 1
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.r)
  %.0.i.i = select i1 %.not.i.i, i64 %.sroa.speculated.i.i, i64 461168601842738790 ; 4 uses
  %i.x = icmp ne i64 %.0.i.i, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp ugt i64 %.0.i.i, 461168601842738790
  br i1 %i.y, label %bb.e, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i

bb.e:                                             ; preds = %_ZNKSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #34
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i: ; preds = %_ZNKSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i
  %i.z = mul nuw i64 %.0.i.i, 40
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #35 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.p ; 10 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %.0.i.i
  store i32 0, ptr %i.ab, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i16 -1, ptr %i.ad, align 4, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 0, ptr %i.ae, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 0, ptr %i.ah, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i32 1, ptr %i.ai, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 3 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !30
  %.promoted.fr.i.i.i.i.i = freeze ptr %i.ak      ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !31    ; 5 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.fr.i.i.i.i.i, %i.al
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ab, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.promoted.fr.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i ]
  %i.an = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -40 ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ao, ptr noundef nonnull align 8 dereferenceable(36) %i.an, i64 36, i1 false), !tbaa.struct !47, !noalias !165
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i
  %.sroa.436.0.i.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i, ptr %0, align 8, !tbaa !43
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !43
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !43
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !43
  %.not.i3.i = icmp eq ptr %i.al, null
  br i1 %.not.i3.i, label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJEEEPS2_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.as) #36
  br label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJEEEPS2_DpOT_.exit

_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJEEEPS2_DpOT_.exit: ; preds = %bb.f, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i, %bb.b
  %.0 = phi ptr [ %i.l, %bb.b ], [ %i.aj, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i ], [ %i.aj, %bb.f ] ; 2 uses
  store ptr %.0, ptr %i.a, align 8, !tbaa !30
  %i.at = getelementptr inbounds i8, ptr %.0, i64 -40
  ret ptr %i.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN3jxl6N_SSE413BoxIntersectsENSt3__15arrayINS2_IjLm2EEELm2EEES4_RjS5_(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #5 {
bb.a:
  %.sroa.033.0.extract.trunc = trunc i64 %0 to i32 ; 2 uses
  %.sroa.234.0.extract.shift = lshr i64 %0, 32    ; 2 uses
  %.sroa.234.0.extract.trunc = trunc nuw i64 %.sroa.234.0.extract.shift to i32
  %.sroa.335.8.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %.sroa.536.8.extract.shift = lshr i64 %1, 32    ; 2 uses
  %.sroa.536.8.extract.trunc = trunc nuw i64 %.sroa.536.8.extract.shift to i32
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32  ; 3 uses
  %.sroa.2.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %.sroa.3.8.extract.trunc = trunc i64 %3 to i32  ; 3 uses
  %.sroa.5.8.extract.shift = lshr i64 %3, 32      ; 2 uses
  %.sroa.5.8.extract.trunc = trunc nuw i64 %.sroa.5.8.extract.shift to i32 ; 2 uses
  %.not = icmp ult i32 %.sroa.0.0.extract.trunc, %.sroa.234.0.extract.trunc
  %.not26 = icmp ugt i32 %.sroa.2.0.extract.trunc, %.sroa.033.0.extract.trunc
  %or.cond = select i1 %.not, i1 %.not26, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp ugt i32 %.sroa.0.0.extract.trunc, %.sroa.033.0.extract.trunc
  br i1 %.not27, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not28 = icmp samesign ult i64 %.sroa.2.0.extract.shift, %.sroa.234.0.extract.shift
  br i1 %.not28, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sroa.0.0.extract.trunc.sink = phi i32 [ %.sroa.0.0.extract.trunc, %bb.b ], [ %.sroa.2.0.extract.trunc, %bb.c ]
  store i32 0, ptr %4, align 4, !tbaa !20
  %i.a = add i32 %.sroa.0.0.extract.trunc.sink, -1
  store i32 %i.a, ptr %5, align 4, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ true, %.sink.split ]
  %.not.1 = icmp ult i32 %.sroa.3.8.extract.trunc, %.sroa.536.8.extract.trunc
  %.not26.1 = icmp ugt i32 %.sroa.5.8.extract.trunc, %.sroa.335.8.extract.trunc
  %or.cond38 = select i1 %.not.1, i1 %.not26.1, i1 false
  br i1 %or.cond38, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.not27.1 = icmp ugt i32 %.sroa.3.8.extract.trunc, %.sroa.335.8.extract.trunc
  br i1 %.not27.1, label %.critedge.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not28.1 = icmp samesign ult i64 %.sroa.5.8.extract.shift, %.sroa.536.8.extract.shift
  br i1 %.not28.1, label %.critedge.thread.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.f
  br i1 %.1, label %.critedge.thread, label %.loopexit

.critedge.thread.sink.split:                      ; preds = %bb.e, %bb.f
  %.sroa.5.8.extract.trunc.sink = phi i32 [ %.sroa.5.8.extract.trunc, %bb.f ], [ %.sroa.3.8.extract.trunc, %bb.e ]
  store i32 1, ptr %4, align 4, !tbaa !20
  %i.b = add i32 %.sroa.5.8.extract.trunc.sink, -1
  store i32 %i.b, ptr %5, align 4, !tbaa !20
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %.critedge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.d, %.critedge.thread, %.critedge
  %.125 = phi i32 [ 2, %.critedge ], [ 1, %.critedge.thread ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i32 %.125
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl6N_SSE413FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE(ptr noundef nonnull align 8 dereferenceable(304) %0, float noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i64 %3, i64 %4, float noundef %5, ptr noundef %6) #6 {
_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit:
  %7 = alloca %struct.SplitInfo, align 8          ; 13 uses
  %8 = alloca %struct.SplitInfo, align 8          ; 11 uses
  %9 = alloca %struct.SplitInfo, align 8          ; 13 uses
  %10 = alloca %struct.SplitInfo, align 8         ; 12 uses
  %11 = alloca %"class.std::__1::vector.55", align 8 ; 9 uses
  %12 = alloca %"class.std::__1::vector.26", align 8 ; 10 uses
  %13 = alloca %struct.SplitInfo, align 8         ; 12 uses
  %14 = alloca %"class.std::__1::vector.55", align 8 ; 11 uses
  %15 = alloca %"class.std::__1::vector.55", align 8 ; 13 uses
  %16 = alloca %"class.std::__1::vector.76", align 8 ; 11 uses
  %17 = alloca %"struct.std::__1::array", align 8 ; 13 uses
  %.sroa.8665 = alloca [2 x %"struct.std::__1::array.3"], align 8 ; 4 uses
  %.sroa.8 = alloca [2 x %"struct.std::__1::array.3"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %i.i = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %.sroa.6760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 %i.h, ptr %.sroa.6760.0..sroa_idx, align 8, !tbaa !46
  %.sroa.7763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.sroa.7763.0..sroa_idx, align 8, !tbaa !46
  %.sroa.8766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %3, ptr %.sroa.8766.0..sroa_idx, align 8, !tbaa !24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %4, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !64   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 36
  %.not1000 = icmp ne ptr %i.m, %i.n              ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bc = icmp ugt i64 %i.r, 4611686018427387903
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bo = fadd float %1, 1.000000e+02
  %i.bp = fdiv float 8.000000e+02, %i.bo
  %i.bq = icmp ne ptr %i.u, %i.v
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1) ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit, %bb.cu
  %.sroa.0771.0996 = phi ptr [ %i.i, %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.0771.2, %bb.cu ] ; 7 uses
  %.sroa.14.0995 = phi ptr [ %i.j, %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.14.2, %bb.cu ] ; 7 uses
  %.sroa.35.0994 = phi ptr [ %i.j, %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.35.2, %bb.cu ] ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -48 ; 8 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !234 ; 8 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -40 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !235 ; 40 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -32 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !236 ; 22 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !237 ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -16 ; 2 uses
  %.sroa.0216.0.copyload = load i64, ptr %i.ch, align 8, !tbaa !24 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !24 ; 5 uses
  %i.ci = icmp eq i64 %i.cc, %i.ce
  br i1 %i.ci, label %bb.cu, label %bb.b, !llvm.loop !166

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store i64 0, ptr %7, align 8, !tbaa !239
  store i32 0, ptr %i.aa, align 8, !tbaa !240
  store i64 0, ptr %i.ab, align 8, !tbaa !241
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ac, align 8, !tbaa !67
  store i32 0, ptr %i.ae, align 8, !tbaa !242
  store i32 0, ptr %i.af, align 4, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store i64 0, ptr %8, align 8, !tbaa !239
  store i32 0, ptr %i.ag, align 8, !tbaa !240
  store i64 0, ptr %i.ah, align 8, !tbaa !241
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ai, align 8, !tbaa !67
  store i32 0, ptr %i.ak, align 8, !tbaa !242
  store i32 0, ptr %i.al, align 4, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store i64 0, ptr %9, align 8, !tbaa !239
  store i32 0, ptr %i.am, align 8, !tbaa !240
  store i64 0, ptr %i.an, align 8, !tbaa !241
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ao, align 8, !tbaa !67
  store i32 0, ptr %i.aq, align 8, !tbaa !242
  store i32 0, ptr %i.ar, align 4, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store i64 0, ptr %10, align 8, !tbaa !239
  store i32 0, ptr %i.as, align 8, !tbaa !240
  store i64 0, ptr %i.at, align 8, !tbaa !241
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.au, align 8, !tbaa !67
  store i32 0, ptr %i.aw, align 8, !tbaa !242
  store i32 0, ptr %i.ax, align 4, !tbaa !243
  %i.cj = icmp ult i64 %i.cc, %i.ce
  %or.cond = and i1 %.not1000, %i.cj
  br i1 %or.cond, label %.preheader840.lr.ph.split.us, label %._crit_edge932

.preheader840.lr.ph.split.us:                     ; preds = %bb.b
  %i.ck = load ptr, ptr %0, align 8, !tbaa !72
  %i.cl = sub nuw i64 %i.ce, %i.cc
  %xtraiter = and i64 %i.cl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cm = sub i64 %i.cc, %i.ce
  %i.cn = icmp ugt i64 %i.cm, -4
  br label %.preheader840.us

.preheader840.us:                                 ; preds = %._crit_edge.us, %.preheader840.lr.ph.split.us
  %.0348931.us = phi i64 [ 0, %.preheader840.lr.ph.split.us ], [ %i.du, %._crit_edge.us ] ; 2 uses
  %.0349930.us = phi i64 [ 0, %.preheader840.lr.ph.split.us ], [ %.lcssa, %._crit_edge.us ] ; 2 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.0348931.us
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !77 ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader840.us, %.prol.preheader
  %.0347929.us.prol = phi i64 [ %i.cv, %.prol.preheader ], [ %i.cc, %.preheader840.us ] ; 2 uses
  %.1350928.us.prol = phi i64 [ %i.cu, %.prol.preheader ], [ %.0349930.us, %.preheader840.us ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader840.us ]
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347929.us.prol
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !79
  %i.cs = zext i8 %i.cr to i64
  %i.ct = add nuw nsw i64 %i.cs, 1
  %i.cu = tail call i64 @llvm.umax.i64(i64 %.1350928.us.prol, i64 %i.ct) ; 3 uses
  %i.cv = add nuw i64 %.0347929.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !167

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader840.us
  %.lcssa.unr = phi i64 [ poison, %.preheader840.us ], [ %i.cu, %.prol.preheader ]
  %.0347929.us.unr = phi i64 [ %i.cc, %.preheader840.us ], [ %i.cv, %.prol.preheader ]
  %.1350928.us.unr = phi i64 [ %.0349930.us, %.preheader840.us ], [ %i.cu, %.prol.preheader ]
  br i1 %i.cn, label %._crit_edge.us, label %.preheader840.us.new

.preheader840.us.new:                             ; preds = %.prol.loopexit, %.preheader840.us.new
  %.0347929.us = phi i64 [ %i.dt, %.preheader840.us.new ], [ %.0347929.us.unr, %.prol.loopexit ] ; 5 uses
  %.1350928.us = phi i64 [ %i.ds, %.preheader840.us.new ], [ %.1350928.us.unr, %.prol.loopexit ]
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347929.us
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !79
  %i.cy = zext i8 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 1
  %i.da = tail call i64 @llvm.umax.i64(i64 %.1350928.us, i64 %i.cz)
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347929.us
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_SSE413FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE:_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit
  %i.gt = fadd <4 x float> %i.gs, splat (float f0x3F7D8625)
  fence acq_rel
  %i.gu = fdiv <4 x float> %i.gr, %i.gt
  %i.gv = fadd <4 x float> %i.gu, %i.gk
  %i.gw = select <4 x i1> %i.gd, <4 x float> zeroinitializer, <4 x float> %i.gv
  %i.gx = fmul <4 x float> %i.gw, %i.ga
  %i.gy = fsub <4 x float> %.sroa.031.046.i, %i.gx ; 2 uses
  %i.gz = add nuw i64 %.045.i, 4                  ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %.0349.lcssa
  br i1 %i.ha, label %.lr.ph.i, label %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit.loopexit, !llvm.loop !0

_ZN3jxl6N_SSE412EstimateBitsEPKim.exit.loopexit:  ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %12, align 8, !tbaa !64
  br label %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit

_ZN3jxl6N_SSE412EstimateBitsEPKim.exit:           ; preds = %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit.loopexit, %._crit_edge938
  %i.hb = phi ptr [ %i.ek, %._crit_edge938 ], [ %.pre, %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit.loopexit ]
  %.sroa.031.0.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge938 ], [ %i.gy, %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit.loopexit ] ; 2 uses
  %i.hc = shufflevector <4 x float> %.sroa.031.0.lcssa.i, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.hd = fadd <4 x float> %.sroa.031.0.lcssa.i, %i.hc ; 2 uses
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hf = fadd <4 x float> %i.hd, %i.he
  %i.hg = extractelement <4 x float> %i.hf, i64 0
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.ez
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !20
  %i.hj = uitofp i32 %i.hi to float
  %i.hk = fadd float %i.hg, %i.hj                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  store i64 0, ptr %13, align 8, !tbaa !239
  store i32 0, ptr %i.bd, align 8, !tbaa !240
  store i64 0, ptr %i.be, align 8, !tbaa !241
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.bf, align 8, !tbaa !67
  store i32 0, ptr %i.bh, align 8, !tbaa !242
  store i32 0, ptr %i.bi, align 4, !tbaa !243
  %i.hl = load ptr, ptr %2, align 8, !tbaa !91    ; 2 uses
  %i.hm = load ptr, ptr %i.bj, align 8, !tbaa !92 ; 2 uses
  %.not833939 = icmp eq ptr %i.hl, %i.hm
  br i1 %.not833939, label %.thread812, label %.lr.ph941

.lr.ph941:                                        ; preds = %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit
  %.sroa.033.0.extract.trunc.i = trunc i64 %.sroa.0216.0.copyload to i32 ; 2 uses
  %.sroa.234.0.extract.shift.i = lshr i64 %.sroa.0216.0.copyload, 32 ; 2 uses
  %.sroa.234.0.extract.trunc.i = trunc nuw i64 %.sroa.234.0.extract.shift.i to i32
  %.sroa.335.8.extract.trunc.i = trunc i64 %.sroa.6.0.copyload to i32 ; 2 uses
  %.sroa.536.8.extract.shift.i = lshr i64 %.sroa.6.0.copyload, 32 ; 2 uses
  %.sroa.536.8.extract.trunc.i = trunc nuw i64 %.sroa.536.8.extract.shift.i to i32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph937, %._crit_edge
  %.0345936 = phi i64 [ 0, %.lr.ph937 ], [ %i.ih, %._crit_edge ] ; 4 uses
  br i1 %i.eh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %.0345936
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !77 ; 3 uses
  %i.hp = load ptr, ptr %i.a, align 8, !tbaa !53  ; 3 uses
  %i.hq = mul i64 %.0345936, %.0349.lcssa
  %i.hr = getelementptr [4 x i8], ptr %i.ed, i64 %i.hq ; 3 uses
  br i1 %i.ej, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod1309.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0343935.epil.init = phi i64 [ %i.cc, %.lr.ph ], [ %i.jl, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0344934.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.jk, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1311)
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %.0343935.epil.init ; 2 uses
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %.0343935.epil.init
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !44
  %i.hv = zext i16 %i.hu to i32                   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !93
  %i.hy = zext i8 %i.hx to i32
  %i.hz = mul nuw nsw i32 %i.hy, %i.hv
  %i.ia = load i8, ptr %i.hs, align 1, !tbaa !79
  %i.ib = zext i8 %i.ia to i64
  %i.ic = getelementptr [4 x i8], ptr %i.hr, i64 %i.ib ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !20
  %i.ie = add i32 %i.id, %i.hv
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !20
  %i.if = add i32 %i.hz, %.0344934.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.g
  %.0344.lcssa = phi i32 [ 0, %bb.g ], [ %i.jk, %._crit_edge.loopexit.unr-lcssa ], [ %i.if, %.epil.preheader ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.0345936
  store i32 %.0344.lcssa, ptr %i.ig, align 4, !tbaa !20
  %i.ih = add nuw i64 %.0345936, 1                ; 2 uses
  %exitcond1027.not = icmp eq i64 %i.ih, %umax
  br i1 %exitcond1027.not, label %._crit_edge938, label %bb.g, !llvm.loop !172

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.0343935 = phi i64 [ %i.jl, %.lr.ph.new ], [ %i.cc, %.lr.ph ] ; 4 uses
  %.0344934 = phi i32 [ %i.jk, %.lr.ph.new ], [ 0, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %.0343935 ; 2 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %.0343935
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !44
  %i.il = zext i16 %i.ik to i32                   ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !93
  %i.io = zext i8 %i.in to i32
  %i.ip = mul nuw nsw i32 %i.io, %i.il
  %i.iq = load i8, ptr %i.ii, align 1, !tbaa !79
  %i.ir = zext i8 %i.iq to i64
  %i.is = getelementptr [4 x i8], ptr %i.hr, i64 %i.ir ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !20
  %i.iu = add i32 %i.it, %i.il
  store i32 %i.iu, ptr %i.is, align 4, !tbaa !20
  %i.iv = add i32 %i.ip, %.0344934
  %i.iw = add nuw i64 %.0343935, 1                ; 2 uses
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %i.iw
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !44
  %i.ja = zext i16 %i.iz to i32                   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !93
  %i.jd = zext i8 %i.jc to i32
  %i.je = mul nuw nsw i32 %i.jd, %i.ja
  %i.jf = load i8, ptr %i.ix, align 1, !tbaa !79
  %i.jg = zext i8 %i.jf to i64
  %i.jh = getelementptr [4 x i8], ptr %i.hr, i64 %i.jg ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !20
  %i.jj = add i32 %i.ji, %i.ja
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !20
  %i.jk = add i32 %i.je, %i.iv                    ; 3 uses
  %i.jl = add nuw i64 %.0343935, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !173

bb.h:                                             ; preds = %.lr.ph941, %bb.o
  %.sroa.0727.0940 = phi ptr [ %i.hl, %.lr.ph941 ], [ %i.mb, %bb.o ] ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0727.0940, align 4, !tbaa !24 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0727.0940, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !24 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 3 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %.sroa.3.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload to i32 ; 3 uses
  %.sroa.5.8.extract.shift.i = lshr i64 %.sroa.2.0.copyload, 32 ; 2 uses
  %.sroa.5.8.extract.trunc.i = trunc nuw i64 %.sroa.5.8.extract.shift.i to i32 ; 2 uses
  %.not.i469 = icmp ult i32 %.sroa.0.0.extract.trunc.i, %.sroa.234.0.extract.trunc.i
  %.not26.i = icmp ugt i32 %.sroa.2.0.extract.trunc.i, %.sroa.033.0.extract.trunc.i
  %or.cond.i = select i1 %.not.i469, i1 %.not26.i, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %.not27.i = icmp ugt i32 %.sroa.0.0.extract.trunc.i, %.sroa.033.0.extract.trunc.i
  br i1 %.not27.i, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not28.i = icmp samesign ult i64 %.sroa.2.0.extract.shift.i, %.sroa.234.0.extract.shift.i
  br i1 %.not28.i, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.sroa.0.0.extract.trunc.sink.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.i ], [ %.sroa.2.0.extract.trunc.i, %bb.j ]
  %i.jm = add i32 %.sroa.0.0.extract.trunc.sink.i, -1
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.j
  %.0791 = phi i32 [ %i.jm, %.sink.split.i ], [ undef, %bb.j ]
  %.1.i = phi i1 [ true, %.sink.split.i ], [ false, %bb.j ]
  %.not.1.i = icmp ult i32 %.sroa.3.8.extract.trunc.i, %.sroa.536.8.extract.trunc.i
  %.not26.1.i = icmp ugt i32 %.sroa.5.8.extract.trunc.i, %.sroa.335.8.extract.trunc.i
  %or.cond38.i = select i1 %.not.1.i, i1 %.not26.1.i, i1 false
  br i1 %or.cond38.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not27.1.i = icmp ugt i32 %.sroa.3.8.extract.trunc.i, %.sroa.335.8.extract.trunc.i
  br i1 %.not27.1.i, label %.critedge.thread.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not28.1.i = icmp samesign ult i64 %.sroa.5.8.extract.shift.i, %.sroa.536.8.extract.shift.i
  br i1 %.not28.1.i, label %.critedge.thread.sink.split.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.m
  br i1 %.1.i, label %.critedge.thread.i, label %bb.p

.critedge.thread.sink.split.i:                    ; preds = %bb.m, %bb.l
  %.sroa.5.8.extract.trunc.sink.i = phi i32 [ %.sroa.5.8.extract.trunc.i, %bb.m ], [ %.sroa.3.8.extract.trunc.i, %bb.l ]
  %i.jn = add i32 %.sroa.5.8.extract.trunc.sink.i, -1
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %.critedge.thread.sink.split.i
  %.2796.ph = phi i64 [ 1, %.critedge.thread.sink.split.i ], [ 0, %.critedge.i ] ; 5 uses
  %.2793.ph = phi i32 [ %i.jn, %.critedge.thread.sink.split.i ], [ %.0791, %.critedge.i ]
  %i.jo = tail call i32 @llvm.smax.i32(i32 %.2793.ph, i32 -511)
  %i.jp = tail call i32 @llvm.smin.i32(i32 %i.jo, i32 511)
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.2796.ph
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !53
  %i.js = sext i32 %i.jp to i64
  %i.jt = getelementptr [2 x i8], ptr %i.jr, i64 %i.js
  %i.ju = getelementptr i8, ptr %i.jt, i64 1022
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !44 ; 3 uses
  %i.jw = zext i16 %i.jv to i32                   ; 3 uses
  store i32 %i.jw, ptr %i.bd, align 8, !tbaa !240
  store i64 %.2796.ph, ptr %13, align 8, !tbaa !239
  %i.jx = fmul float %i.hk, 5.000000e-01
  %i.jy = fsub float %i.jx, %1                    ; 6 uses
  store float %i.jy, ptr %i.bg, align 4, !tbaa !244
  store float %i.jy, ptr %i.bf, align 8, !tbaa !245
  %i.jz = load ptr, ptr %6, align 8, !tbaa !31
  %i.ka = getelementptr inbounds nuw [40 x i8], ptr %i.jz, i64 %i.ca
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !40 ; 2 uses
  store i32 %i.kc, ptr %i.bi, align 4, !tbaa !243
  store i32 %i.kc, ptr %i.bh, align 8, !tbaa !242
  %i.kd = load i64, ptr %i.bl, align 8, !tbaa !105 ; 2 uses
  %i.ke = icmp ult i64 %.2796.ph, %i.kd
  %i.kf = icmp ult i64 %i.cc, %i.ce               ; 2 uses
  br i1 %i.ke, label %.preheader841, label %bb.n

.preheader841:                                    ; preds = %.critedge.thread.i
  br i1 %i.kf, label %.lr.ph950, label %.thread817.loopexit

.lr.ph950:                                        ; preds = %.preheader841
  %i.kg = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.2796.ph
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !64 ; 2 uses
  %i.ki = sub nuw i64 %i.ce, %i.cc                ; 3 uses
  %min.iters.check1222 = icmp ult i64 %i.ki, 4
  br i1 %min.iters.check1222, label %scalar.ph1221.preheader, label %vector.ph1223

vector.ph1223:                                    ; preds = %.lr.ph950
  %n.vec1224 = and i64 %i.ki, -4                  ; 3 uses
  %i.kj = add i64 %i.cc, %n.vec1224
  %i.kk = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cc, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.jw, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.cc
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %vector.ph1223
  %index1226 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1231, %vector.body1225 ] ; 2 uses
  %vec.phi1227 = phi <2 x i64> [ %i.kk, %vector.ph1223 ], [ %i.ks, %vector.body1225 ]
  %vec.phi1228 = phi <2 x i64> [ zeroinitializer, %vector.ph1223 ], [ %i.kt, %vector.body1225 ]
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %index1226 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %wide.load1229 = load <2 x i32>, ptr %i.km, align 4, !tbaa !20
  %wide.load1230 = load <2 x i32>, ptr %i.kn, align 4, !tbaa !20
  %i.ko = icmp ule <2 x i32> %wide.load1229, %broadcast.splat
  %i.kp = icmp ule <2 x i32> %wide.load1230, %broadcast.splat
  %i.kq = zext <2 x i1> %i.ko to <2 x i64>
  %i.kr = zext <2 x i1> %i.kp to <2 x i64>
  %i.ks = add <2 x i64> %vec.phi1227, %i.kq       ; 2 uses
  %i.kt = add <2 x i64> %vec.phi1228, %i.kr       ; 2 uses
  %index.next1231 = add nuw i64 %index1226, 4     ; 2 uses
  %i.ku = icmp eq i64 %index.next1231, %n.vec1224
  br i1 %i.ku, label %middle.block1232, label %vector.body1225, !llvm.loop !174

middle.block1232:                                 ; preds = %vector.body1225
  %bin.rdx1233 = add <2 x i64> %i.kt, %i.ks
  %i.kv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1233) ; 2 uses
  %cmp.n1234 = icmp eq i64 %i.ki, %n.vec1224
  br i1 %cmp.n1234, label %.thread817.loopexit, label %scalar.ph1221.preheader

scalar.ph1221.preheader:                          ; preds = %.lr.ph950, %middle.block1232
  %.0338949.ph = phi i64 [ %i.cc, %.lr.ph950 ], [ %i.kj, %middle.block1232 ]
  %.ph1279 = phi i64 [ %i.cc, %.lr.ph950 ], [ %i.kv, %middle.block1232 ]
  br label %scalar.ph1221

scalar.ph1221:                                    ; preds = %scalar.ph1221.preheader, %scalar.ph1221
  %.0338949 = phi i64 [ %i.la, %scalar.ph1221 ], [ %.0338949.ph, %scalar.ph1221.preheader ] ; 2 uses
  %i.kw = phi i64 [ %spec.select, %scalar.ph1221 ], [ %.ph1279, %scalar.ph1221.preheader ]
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %.0338949
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !20
  %.not419 = icmp ule i32 %i.ky, %i.jw
  %i.kz = zext i1 %.not419 to i64
  %spec.select = add i64 %i.kw, %i.kz             ; 2 uses
  %i.la = add nuw i64 %.0338949, 1                ; 2 uses
  %exitcond1029.not = icmp eq i64 %i.la, %i.ce
  br i1 %exitcond1029.not, label %.thread817.loopexit, label %scalar.ph1221, !llvm.loop !175

bb.n:                                             ; preds = %.critedge.thread.i
  br i1 %i.kf, label %.lr.ph945, label %.thread817.loopexit842

.lr.ph945:                                        ; preds = %bb.n
  %i.lb = sub nuw nsw i64 %.2796.ph, %i.kd
  %i.lc = load ptr, ptr %i.bm, align 8, !tbaa !106
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %i.lc, i64 %i.lb
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !111 ; 2 uses
  %i.lf = sub nuw i64 %i.ce, %i.cc                ; 3 uses
  %min.iters.check1238 = icmp ult i64 %i.lf, 4
  br i1 %min.iters.check1238, label %scalar.ph1237.preheader, label %vector.ph1239

vector.ph1239:                                    ; preds = %.lr.ph945
  %n.vec1240 = and i64 %i.lf, -4                  ; 3 uses
  %i.lg = add i64 %i.cc, %n.vec1240
  %i.lh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cc, i64 0
  %broadcast.splatinsert1241 = insertelement <2 x i16> poison, i16 %i.jv, i64 0
  %broadcast.splat1242 = shufflevector <2 x i16> %broadcast.splatinsert1241, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.cc
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %vector.ph1239
  %index1244 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1249, %vector.body1243 ] ; 2 uses
  %vec.phi1245 = phi <2 x i64> [ %i.lh, %vector.ph1239 ], [ %i.lr, %vector.body1243 ]
  %vec.phi1246 = phi <2 x i64> [ zeroinitializer, %vector.ph1239 ], [ %i.ls, %vector.body1243 ]
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %index1244 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %wide.load1247 = load <2 x i8>, ptr %i.lj, align 1, !tbaa !24
  %wide.load1248 = load <2 x i8>, ptr %i.lk, align 1, !tbaa !24
  %i.ll = zext <2 x i8> %wide.load1247 to <2 x i16>
  %i.lm = zext <2 x i8> %wide.load1248 to <2 x i16>
  %i.ln = icmp uge <2 x i16> %broadcast.splat1242, %i.ll
  %i.lo = icmp uge <2 x i16> %broadcast.splat1242, %i.lm
  %i.lp = zext <2 x i1> %i.ln to <2 x i64>
  %i.lq = zext <2 x i1> %i.lo to <2 x i64>
  %i.lr = add <2 x i64> %vec.phi1245, %i.lp       ; 2 uses
  %i.ls = add <2 x i64> %vec.phi1246, %i.lq       ; 2 uses
  %index.next1249 = add nuw i64 %index1244, 4     ; 2 uses
  %i.lt = icmp eq i64 %index.next1249, %n.vec1240
  br i1 %i.lt, label %middle.block1250, label %vector.body1243, !llvm.loop !176

middle.block1250:                                 ; preds = %vector.body1243
  %bin.rdx1251 = add <2 x i64> %i.ls, %i.lr
  %i.lu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1251) ; 2 uses
  %cmp.n1252 = icmp eq i64 %i.lf, %n.vec1240
  br i1 %cmp.n1252, label %.thread817.loopexit842, label %scalar.ph1237.preheader

scalar.ph1237.preheader:                          ; preds = %.lr.ph945, %middle.block1250
  %.0337943.ph = phi i64 [ %i.cc, %.lr.ph945 ], [ %i.lg, %middle.block1250 ]
  %.ph1280 = phi i64 [ %i.cc, %.lr.ph945 ], [ %i.lu, %middle.block1250 ]
  br label %scalar.ph1237

scalar.ph1237:                                    ; preds = %scalar.ph1237.preheader, %scalar.ph1237
  %.0337943 = phi i64 [ %i.ma, %scalar.ph1237 ], [ %.0337943.ph, %scalar.ph1237.preheader ] ; 2 uses
  %i.lv = phi i64 [ %spec.select997, %scalar.ph1237 ], [ %.ph1280, %scalar.ph1237.preheader ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.le, i64 %.0337943
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !24
  %i.ly = zext i8 %i.lx to i16
  %.not = icmp uge i16 %i.jv, %i.ly
  %i.lz = zext i1 %.not to i64
  %spec.select997 = add i64 %i.lv, %i.lz          ; 2 uses
  %i.ma = add nuw i64 %.0337943, 1                ; 2 uses
  %exitcond1028.not = icmp eq i64 %i.ma, %i.ce
  br i1 %exitcond1028.not, label %.thread817.loopexit842, label %scalar.ph1237, !llvm.loop !177

bb.o:                                             ; preds = %bb.h, %bb.k
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0727.0940, i64 20 ; 2 uses
  %.not833 = icmp eq ptr %i.mb, %i.hm
  br i1 %.not833, label %.thread812, label %bb.h

bb.p:                                             ; preds = %.critedge.i
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0727.0940, i64 16
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !113
  %i.me = load ptr, ptr %6, align 8, !tbaa !31
  %i.mf = getelementptr inbounds nuw [40 x i8], ptr %i.me, i64 %i.ca
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  store i32 %i.md, ptr %i.mg, align 8, !tbaa !42
  br label %.thread812

.thread812:                                       ; preds = %bb.o, %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  br i1 %.not6.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit475, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474

_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474: ; preds = %.thread812
  %i.mh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #35 ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.0349.lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mh, i8 0, i64 %.idx.i, i1 false), !tbaa !20
  %i.mj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #35 ; 3 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %.0349.lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mj, i8 0, i64 %.idx.i, i1 false), !tbaa !20
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mi to i64
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit475

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit475: ; preds = %.thread812, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474
  %.sroa.0.01332 = phi ptr [ null, %.thread812 ], [ %i.mh, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474 ] ; 14 uses
  %.sroa.9.0 = phi i64 [ 0, %.thread812 ], [ %i.mm, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474 ]
  %.sroa.0.0 = phi ptr [ null, %.thread812 ], [ %i.mj, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474 ] ; 14 uses
  %.sroa.12.0 = phi i64 [ 0, %.thread812 ], [ %i.ml, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474 ]
  %i.mn = fcmp ogt float %i.hk, %1
  %i.mo = select i1 %i.bq, i1 %i.mn, i1 false
  br i1 %i.mo, label %.lr.ph988, label %._crit_edge989

.lr.ph988:                                        ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit475
  %i.mp = icmp ult i64 %i.cc, %i.ce               ; 4 uses
  %i.mq = getelementptr i8, ptr %.sroa.0.0, i64 %.idx.i ; 3 uses
  %i.mr = sub i64 %i.ce, %i.cc                    ; 6 uses
  %i.ms = xor i64 %i.cc, -1
  %i.mt = add i64 %i.ce, %i.ms                    ; 2 uses
  %xtraiter1313 = and i64 %i.mr, 1
  %i.mu = icmp eq i64 %i.mt, 0
  %unroll_iter1318 = and i64 %i.mr, -2
  %lcmp.mod1314.not = icmp eq i64 %xtraiter1313, 0
  %lcmp.mod1317 = trunc i64 %i.mr to i1
  %xtraiter1321 = and i64 %i.mr, 1
  %i.mv = icmp eq i64 %i.mt, 0
  %unroll_iter1326 = and i64 %i.mr, -2
  %lcmp.mod1322.not = icmp eq i64 %xtraiter1321, 0
  %lcmp.mod1325 = trunc i64 %i.mr to i1
  %i.mw = getelementptr i8, ptr %.sroa.0.01332, i64 %.idx.i ; 3 uses
  %min.iters.check1186 = icmp ult i64 %.0349.lcssa, 8
  %bound0 = icmp ult ptr %.sroa.0.01332, %i.mq
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE413FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE:_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit
  %vec.phi1168 = phi <4 x i32> [ %i.ado, %vector.body1165 ], [ zeroinitializer, %.lr.ph.i.i524.preheader ]
  %i.adl = shl i64 %index1166, 2
  %next.gep1169 = getelementptr i8, ptr %.sroa.0.01332, i64 %i.adl ; 2 uses
  %i.adm = getelementptr i8, ptr %next.gep1169, i64 16
  %wide.load1170 = load <4 x i32>, ptr %next.gep1169, align 4, !tbaa !20
  %wide.load1171 = load <4 x i32>, ptr %i.adm, align 4, !tbaa !20
  %i.adn = add <4 x i32> %wide.load1170, %vec.phi1167 ; 2 uses
  %i.ado = add <4 x i32> %wide.load1171, %vec.phi1168 ; 2 uses
  %index.next1172 = add nuw i64 %index1166, 8     ; 2 uses
  %i.adp = icmp eq i64 %index.next1172, %n.vec1164
  br i1 %i.adp, label %middle.block1173, label %vector.body1165, !llvm.loop !212

middle.block1173:                                 ; preds = %vector.body1165
  %bin.rdx1174 = add <4 x i32> %i.ado, %i.adn
  %i.adq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1174) ; 2 uses
  br i1 %cmp.n1175, label %.lr.ph.preheader.i528, label %.lr.ph.i.i524.preheader1274

.lr.ph.i.i524.preheader1274:                      ; preds = %.lr.ph.i.i524.preheader, %middle.block1173
  %.08.i.i525.ph = phi i32 [ 0, %.lr.ph.i.i524.preheader ], [ %i.adq, %middle.block1173 ]
  %.057.i.i526.ph = phi ptr [ %.sroa.0.01332, %.lr.ph.i.i524.preheader ], [ %i.nb, %middle.block1173 ]
  br label %.lr.ph.i.i524

bb.bd:                                            ; preds = %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit545
  store float %i.zw, ptr %i.acn, align 4, !tbaa !253
  store float %.2, ptr %i.aco, align 4, !tbaa !254
  %i.adr = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  store i32 %i.abx, ptr %i.adr, align 4, !tbaa !255
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit545
  %i.ads = fadd float %i.abu, %.2
  %i.adt = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0718.1822, i64 %i.acm ; 4 uses
  %.val464 = load float, ptr %i.adt, align 4, !tbaa !253
  %i.adu = getelementptr i8, ptr %i.adt, i64 4    ; 2 uses
  %.val465 = load float, ptr %i.adu, align 4, !tbaa !254
  %i.adv = fadd float %.val464, %.val465
  %i.adw = fcmp olt float %i.ads, %i.adv
  br i1 %i.adw, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store float %i.abu, ptr %i.adt, align 4, !tbaa !253
  store float %.2, ptr %i.adu, align 4, !tbaa !254
  %i.adx = load i32, ptr %i.abw, align 4, !tbaa !45
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adt, i64 8
  store i32 %i.adx, ptr %i.ady, align 4, !tbaa !255
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %.lr.ph971
  %.1332 = phi i64 [ %.0331969, %.lr.ph971 ], [ %i.xm, %bb.bf ], [ %i.xm, %bb.be ]
  %i.adz = add nuw i64 %.0330970, 1               ; 2 uses
  %exitcond1048.not = icmp eq i64 %i.adz, %.2787
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1048.not, label %._crit_edge972, label %.lr.ph971, !llvm.loop !213

._crit_edge978:                                   ; preds = %bb.bo, %.preheader
  %i.aea = load ptr, ptr %16, align 8, !tbaa !121 ; 3 uses
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %.2787
  store i64 0, ptr %i.aeb, align 8, !tbaa !46
  br i1 %.not6.i.i, label %._crit_edge982, label %.lr.ph981

.lr.ph981:                                        ; preds = %._crit_edge978
  %i.aec = mul nuw nsw i64 %.2787, %.0349.lcssa
  %i.aed = load ptr, ptr %15, align 8, !tbaa !84
  %i.aee = getelementptr [4 x i8], ptr %i.aed, i64 %i.aec
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aee, i8 0, i64 %.idx.i, i1 false), !tbaa !20
  br label %._crit_edge982

bb.bh:                                            ; preds = %.lr.ph977, %bb.bo
  %.0324976 = phi i64 [ %.2790, %.lr.ph977 ], [ %i.afq, %bb.bo ] ; 4 uses
  %.0325975 = phi i64 [ %i.cc, %.lr.ph977 ], [ %.1326, %bb.bo ] ; 2 uses
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %.0324976
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !20 ; 2 uses
  %.not421 = icmp eq i32 %i.aeg, 0
  br i1 %.not421, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = add i64 %.0325975, %i.aeh              ; 3 uses
  %i.aej = sub nuw i64 %.0324976, %.2790          ; 2 uses
  %i.aek = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0715.1, i64 %i.aej ; 3 uses
  %i.ael = load float, ptr %i.aek, align 4, !tbaa !253 ; 3 uses
  %i.aem = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0718.1822, i64 %i.aej ; 3 uses
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !253 ; 3 uses
  %i.aeo = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %.0336987
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !20 ; 2 uses
  %i.aer = icmp ne i32 %i.aeq, 15
  %brmerge = select i1 %i.aer, i1 true, i1 %i.uq
  br i1 %brmerge, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !255
  %i.aeu = icmp eq i32 %i.aet, 6
  br i1 %i.aeu, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !255
  %i.aex = icmp eq i32 %i.aew, 6
  br i1 %i.aex, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.aey = load ptr, ptr %6, align 8, !tbaa !31
  %i.aez = getelementptr inbounds nuw [40 x i8], ptr %i.aey, i64 %i.ca
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  %i.afb = load i32, ptr %i.afa, align 8, !tbaa !40
  %.not422 = icmp eq i32 %i.afb, 6
  %i.afc = select i1 %.not422, ptr %10, ptr %9
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bi, %bb.bk, %bb.bl
  %.1.sroa.sel404.v = phi ptr [ %9, %bb.bi ], [ %10, %bb.bk ], [ %i.afc, %bb.bl ] ; 7 uses
  %i.afd = fcmp oeq float %i.ael, 0.000000e+00
  %i.afe = fcmp oeq float %i.aen, 0.000000e+00
  %i.aff = select i1 %i.afd, i1 true, i1 %i.afe   ; 7 uses
  %i.afg = icmp ult i32 %i.aeq, 2                 ; 7 uses
  %i.afh = fadd float %i.ael, %i.aen
  %..sroa.sel = select i1 %i.aff, ptr %i.ac, ptr %i.ai
  %.1.sroa.sel404.v.sroa.gep734 = getelementptr i8, ptr %.1.sroa.sel404.v, i64 24
  %.sroa.sel = select i1 %i.afg, ptr %..sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep734 ; 2 uses
  %.val448 = load float, ptr %.sroa.sel, align 8, !tbaa !245
  %..sroa.sel742 = select i1 %i.aff, ptr %i.ad, ptr %i.aj
  %.1.sroa.sel404.v.sroa.gep736 = getelementptr i8, ptr %.1.sroa.sel404.v, i64 28
  %.sroa.sel737 = select i1 %i.afg, ptr %..sroa.sel742, ptr %.1.sroa.sel404.v.sroa.gep736 ; 2 uses
  %.val449 = load float, ptr %.sroa.sel737, align 4, !tbaa !244
  %i.afi = fadd float %.val448, %.val449
  %i.afj = fcmp olt float %i.afh, %i.afi
  br i1 %i.afj, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %. = select i1 %i.aff, ptr %7, ptr %8
  %i.afk = select i1 %i.afg, ptr %., ptr %.1.sroa.sel404.v
  store i64 %.0336987, ptr %i.afk, align 8, !tbaa !239
  %i.afl = trunc i64 %.0324976 to i32
  %..sroa.sel372.v.sroa.sel = select i1 %i.aff, ptr %i.aa, ptr %i.ag
  %.1.sroa.sel404.v.sroa.gep733 = getelementptr inbounds nuw i8, ptr %.1.sroa.sel404.v, i64 8
  %.sroa.sel353.v.sroa.sel = select i1 %i.afg, ptr %..sroa.sel372.v.sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep733
  store i32 %i.afl, ptr %.sroa.sel353.v.sroa.sel, align 8, !tbaa !240
  %..sroa.sel375.v.sroa.sel = select i1 %i.aff, ptr %i.ab, ptr %i.ah
  %.1.sroa.sel404.v.sroa.gep732 = getelementptr inbounds nuw i8, ptr %.1.sroa.sel404.v, i64 16
  %.sroa.sel356.v.sroa.sel = select i1 %i.afg, ptr %..sroa.sel375.v.sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep732
  store i64 %i.aei, ptr %.sroa.sel356.v.sroa.sel, align 8, !tbaa !241
  store float %i.aen, ptr %.sroa.sel, align 8, !tbaa !245
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !255
  %..sroa.sel381.v.sroa.sel = select i1 %i.aff, ptr %i.ae, ptr %i.ak
  %.1.sroa.sel404.v.sroa.gep730 = getelementptr inbounds nuw i8, ptr %.1.sroa.sel404.v, i64 32
  %.sroa.sel362.v.sroa.sel = select i1 %i.afg, ptr %..sroa.sel381.v.sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep730
  store i32 %i.afn, ptr %.sroa.sel362.v.sroa.sel, align 8, !tbaa !242
  store float %i.ael, ptr %.sroa.sel737, align 4, !tbaa !244
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !255
  %..sroa.sel387.v.sroa.sel = select i1 %i.aff, ptr %i.af, ptr %i.al
  %.1.sroa.sel404.v.sroa.gep738 = getelementptr inbounds nuw i8, ptr %.1.sroa.sel404.v, i64 36
  %.sroa.sel368.v.sroa.sel = select i1 %i.afg, ptr %..sroa.sel387.v.sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep738
  store i32 %i.afp, ptr %.sroa.sel368.v.sroa.sel, align 4, !tbaa !243
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bh
  %.1326 = phi i64 [ %.0325975, %bb.bh ], [ %i.aei, %bb.bn ], [ %i.aei, %bb.bm ]
  %i.afq = add nuw i64 %.0324976, 1               ; 2 uses
  %exitcond1051.not = icmp eq i64 %i.afq, %.2787
  br i1 %exitcond1051.not, label %._crit_edge978, label %bb.bh, !llvm.loop !214

._crit_edge982:                                   ; preds = %.lr.ph981, %._crit_edge978
  %i.afr = add nuw i64 %.0336987, 1               ; 2 uses
  %i.afs = icmp ult i64 %i.afr, %i.z
  br i1 %i.afs, label %bb.q, label %._crit_edge989.loopexit, !llvm.loop !215

bb.bp:                                            ; preds = %._crit_edge989
  %.2341.val = load float, ptr %i.ao, align 8, !tbaa !245
  %.2341.val443 = load float, ptr %i.ap, align 4, !tbaa !244
  %i.aft = fadd float %.2341.val, %.2341.val443
  %i.afu = fmul float %5, %i.aft
  %i.afv = fcmp ugt float %i.nl, %i.afu
  %spec.select426 = select i1 %i.afv, ptr %9, ptr %10
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge989
  %.3 = phi ptr [ %9, %._crit_edge989 ], [ %spec.select426, %bb.bp ] ; 4 uses
  %.val441 = load float, ptr %i.ai, align 8, !tbaa !245
  %.val442 = load float, ptr %i.aj, align 4, !tbaa !244
  %i.afw = fadd float %.val441, %.val442          ; 2 uses
  %i.afx = fadd float %1, %i.afw
  %i.afy = fcmp olt float %i.afx, %i.hk
  br i1 %i.afy, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.afz = getelementptr i8, ptr %.3, i64 24
  %.3.val = load float, ptr %i.afz, align 8, !tbaa !245
  %i.aga = getelementptr i8, ptr %.3, i64 28
  %.3.val438 = load float, ptr %i.aga, align 4, !tbaa !244
  %i.agb = fadd float %.3.val, %.3.val438
  %i.agc = fmul float %5, %i.agb
  %i.agd = fcmp ugt float %i.afw, %i.agc
  %spec.select427 = select i1 %i.agd, ptr %.3, ptr %8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.4 = phi ptr [ %.3, %bb.bq ], [ %spec.select427, %bb.br ] ; 3 uses
  %.val436 = load float, ptr %i.ac, align 8, !tbaa !245
  %.val437 = load float, ptr %i.ad, align 4, !tbaa !244
  %i.age = fadd float %.val436, %.val437
  %i.agf = fadd float %1, %i.age
  %i.agg = fcmp olt float %i.agf, %i.hk           ; 3 uses
  %spec.select428 = select i1 %i.agg, ptr %7, ptr %.4
  %.not.i.i546 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i546, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.agh = ptrtoint ptr %.sroa.0.0 to i64
  %i.agi = sub i64 %.sroa.12.0, %i.agh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.agi) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit: ; preds = %bb.bs, %bb.bt
  %.not.i.i547 = icmp eq ptr %.sroa.0.01332, null
  br i1 %.not.i.i547, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit548, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit
  %i.agj = ptrtoint ptr %.sroa.0.01332 to i64
  %i.agk = sub i64 %.sroa.9.0, %i.agj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.01332, i64 noundef %i.agk) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit548

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit548: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit, %bb.bu
  %.not.i.i549 = icmp eq ptr %.sroa.0715.0.lcssa, null
  br i1 %.not.i.i549, label %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit548
  %i.agl = ptrtoint ptr %.sroa.0715.0.lcssa to i64
  %i.agm = sub i64 %.sroa.22.0.lcssa, %i.agl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0715.0.lcssa, i64 noundef %i.agm) #36
  br label %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit548, %bb.bv
  %.not.i.i550 = icmp eq ptr %.sroa.0718.0.lcssa, null
  br i1 %.not.i.i550, label %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit552, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit
  %i.agn = ptrtoint ptr %.sroa.0718.0.lcssa to i64
  %i.ago = sub i64 %.sroa.22721.0.lcssa, %i.agn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0718.0.lcssa, i64 noundef %i.ago) #36
  br label %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit552

_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit552: ; preds = %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit, %bb.bw
  %.not.i.i553 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i553, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit552
  store ptr %i.nk, ptr %i.bs, align 8, !tbaa !119
  %i.agp = load ptr, ptr %i.bv, align 8, !tbaa !120
  %i.agq = ptrtoint ptr %i.agp to i64
  %i.agr = ptrtoint ptr %i.nk to i64
  %i.ags = sub i64 %i.agq, %i.agr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nk, i64 noundef %i.ags) #36
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit

_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit552, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.agt = load ptr, ptr %15, align 8, !tbaa !84  ; 4 uses
  %.not.i.i554 = icmp eq ptr %i.agt, null
  br i1 %.not.i.i554, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit555, label %bb.by

bb.by:                                            ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit
  store ptr %i.agt, ptr %i.bt, align 8, !tbaa !86
  %i.agu = load ptr, ptr %i.bu, align 8, !tbaa !85
  %i.agv = ptrtoint ptr %i.agu to i64
  %i.agw = ptrtoint ptr %i.agt to i64
  %i.agx = sub i64 %i.agv, %i.agw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.agt, i64 noundef %i.agx) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit555

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit555: ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.agy = load ptr, ptr %14, align 8, !tbaa !84  ; 4 uses
  %.not.i.i556 = icmp eq ptr %i.agy, null
  br i1 %.not.i.i556, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit555
  store ptr %i.agy, ptr %i.bw, align 8, !tbaa !86
  %i.agz = load ptr, ptr %i.bx, align 8, !tbaa !85
  %i.aha = ptrtoint ptr %i.agz to i64
  %i.ahb = ptrtoint ptr %i.agy to i64
  %i.ahc = sub i64 %i.aha, %i.ahb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.agy, i64 noundef %i.ahc) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit555, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %spec.select428.sroa.sel.v = select i1 %i.agg, ptr %7, ptr %.4
  %spec.select428.sroa.sel = getelementptr i8, ptr %spec.select428.sroa.sel.v, i64 24
  %.6.val.pre = load float, ptr %spec.select428.sroa.sel, align 8, !tbaa !245
  %spec.select428.sroa.sel1331.v = select i1 %i.agg, ptr %7, ptr %.4
  %spec.select428.sroa.sel1331 = getelementptr i8, ptr %spec.select428.sroa.sel1331.v, i64 28
  %.6.val435.pre = load float, ptr %spec.select428.sroa.sel1331, align 4, !tbaa !244
  br label %.thread817

.thread817.loopexit:                              ; preds = %scalar.ph1221, %middle.block1232, %.preheader841
  %.lcssa948 = phi i64 [ %i.cc, %.preheader841 ], [ %i.kv, %middle.block1232 ], [ %spec.select, %scalar.ph1221 ]
  store i64 %.lcssa948, ptr %i.be, align 8
  br label %.thread817

.thread817.loopexit842:                           ; preds = %scalar.ph1237, %middle.block1250, %bb.n
  %.lcssa942 = phi i64 [ %i.cc, %bb.n ], [ %i.lu, %middle.block1250 ], [ %spec.select997, %scalar.ph1237 ]
  store i64 %.lcssa942, ptr %i.be, align 8
  br label %.thread817

.thread817:                                       ; preds = %.thread817.loopexit842, %.thread817.loopexit, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557
  %.6.val435 = phi float [ %.6.val435.pre, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557 ], [ %i.jy, %.thread817.loopexit ], [ %i.jy, %.thread817.loopexit842 ]
  %.6.val = phi float [ %.6.val.pre, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557 ], [ %i.jy, %.thread817.loopexit ], [ %i.jy, %.thread817.loopexit842 ]
  %.6 = phi ptr [ %spec.select428, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557 ], [ %13, %.thread817.loopexit ], [ %13, %.thread817.loopexit842 ] ; 8 uses
  %i.ahd = fadd float %.6.val, %.6.val435
  %i.ahe = fadd float %1, %i.ahd
  %i.ahf = fcmp olt float %i.ahe, %i.hk
  br i1 %i.ahf, label %bb.ca, label %bb.cr

bb.ca:                                            ; preds = %.thread817
  %i.ahg = load i64, ptr %.6, align 8, !tbaa !239 ; 2 uses
  %i.ahh = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %i.ahg
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !20 ; 3 uses
  %i.ahk = zext i32 %i.ahj to i64                 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.6, i64 8 ; 3 uses
  %i.ahm = load i32, ptr %i.ahl, align 8, !tbaa !240
  %i.ahn = load ptr, ptr %i.br, align 8, !tbaa !114
  %i.aho = getelementptr inbounds nuw [24 x i8], ptr %i.ahn, i64 %i.ahg
  %i.ahp = zext i32 %i.ahm to i64
  %i.ahq = load ptr, ptr %i.aho, align 8, !tbaa !84
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ahq, i64 %i.ahp
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !20 ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.6, i64 32
  %i.ahu = load i32, ptr %i.aht, align 8, !tbaa !242
  %i.ahv = getelementptr inbounds nuw i8, ptr %.6, i64 36
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !243
  %i.ahx = load ptr, ptr %i.by, align 8, !tbaa !30
  %i.ahy = load ptr, ptr %6, align 8, !tbaa !31   ; 2 uses
  %i.ahz = ptrtoint ptr %i.ahx to i64
  %i.aia = ptrtoint ptr %i.ahy to i64
  %i.aib = sub i64 %i.ahz, %i.aia
  %i.aic = sdiv exact i64 %i.aib, 40
  %i.aid = trunc i64 %i.aic to i32                ; 2 uses
  %i.aie = getelementptr inbounds nuw [40 x i8], ptr %i.ahy, i64 %i.ca ; 4 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  store i32 %i.aid, ptr %i.aif, align 8, !tbaa !36
  %i.aig = add i32 %i.aid, 1
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aie, i64 12
  store i32 %i.aig, ptr %i.aih, align 4, !tbaa !37
  store i32 %i.ahs, ptr %i.aie, align 8, !tbaa !38
  %i.aii = trunc i32 %i.ahj to i16
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aie, i64 4
  store i16 %i.aii, ptr %i.aij, align 4, !tbaa !39
  %i.aik = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6) #33 ; 0 uses
  %i.ail = load ptr, ptr %i.by, align 8, !tbaa !30 ; 4 uses
  %i.aim = getelementptr inbounds i8, ptr %i.ail, i64 -36
  store i16 -1, ptr %i.aim, align 4, !tbaa !39
  %i.ain = getelementptr inbounds i8, ptr %i.ail, i64 -24
  store i32 %i.ahw, ptr %i.ain, align 8, !tbaa !40
  %i.aio = getelementptr inbounds i8, ptr %i.ail, i64 -16
  store i64 0, ptr %i.aio, align 8, !tbaa !41
  %i.aip = getelementptr inbounds i8, ptr %i.ail, i64 -8
  store i32 1, ptr %i.aip, align 8, !tbaa !42
  %i.aiq = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6) #33 ; 0 uses
  %i.air = load ptr, ptr %i.by, align 8, !tbaa !30 ; 4 uses
  %i.ais = getelementptr inbounds i8, ptr %i.air, i64 -36
  store i16 -1, ptr %i.ais, align 4, !tbaa !39
  %i.ait = getelementptr inbounds i8, ptr %i.air, i64 -24
  store i32 %i.ahu, ptr %i.ait, align 8, !tbaa !40
  %i.aiu = getelementptr inbounds i8, ptr %i.air, i64 -16
  store i64 0, ptr %i.aiu, align 8, !tbaa !41
  %i.aiv = getelementptr inbounds i8, ptr %i.air, i64 -8
  store i32 1, ptr %i.aiv, align 8, !tbaa !42
  %i.aiw = load i64, ptr %.6, align 8, !tbaa !239 ; 3 uses
  %i.aix = load i64, ptr %i.bl, align 8, !tbaa !105 ; 2 uses
  %i.aiy = icmp ult i64 %i.aiw, %i.aix
  %i.aiz = getelementptr inbounds nuw i8, ptr %.6, i64 16
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !241 ; 2 uses
  br i1 %i.aiy, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ajb = load i32, ptr %i.ahl, align 8, !tbaa !240
  tail call void @_ZN3jxl6N_SSE416SplitTreeSamplesILb1EEEvRNS_11TreeSamplesEmmmmj(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.cc, i64 noundef %i.aja, i64 noundef %i.ce, i64 noundef %i.aiw, i32 noundef %i.ajb) #33
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.ajc = sub nuw i64 %i.aiw, %i.aix
  %i.ajd = load i32, ptr %i.ahl, align 8, !tbaa !240
  tail call void @_ZN3jxl6N_SSE416SplitTreeSamplesILb0EEEvRNS_11TreeSamplesEmmmmj(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.cc, i64 noundef %i.aja, i64 noundef %i.ce, i64 noundef %i.ajc, i32 noundef %i.ajd) #33
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.aje = icmp ult i32 %i.ahj, 2                 ; 2 uses
  br i1 %i.aje, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ajf = load i64, ptr %.6, align 8, !tbaa !239
  %i.ajg = trunc i64 %i.ajf to i32
  %i.ajh = shl nuw i32 1, %i.ajg
  %i.aji = sext i32 %i.ajh to i64
  %i.ajj = or i64 %i.cg, %i.aji
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  store i64 %.sroa.0216.0.copyload, ptr %17, align 8, !tbaa !24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx219, align 8, !tbaa !24
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  store i64 %.sroa.0216.0.copyload, ptr %17, align 8, !tbaa !24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx219, align 8, !tbaa !24
  %i.ajk = add nsw i32 %i.ahs, 1
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %i.ahk
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 4
  store i32 %i.ajk, ptr %i.ajm, align 4, !tbaa !20
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %.0342829 = phi i64 [ %i.cg, %bb.cf ], [ %i.ajj, %bb.ce ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8665)
  %i.ajn = load ptr, ptr %6, align 8, !tbaa !31
  %i.ajo = getelementptr inbounds nuw [40 x i8], ptr %i.ajn, i64 %i.ca
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 12
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !37
  %i.ajr = zext i32 %i.ajq to i64                 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %.6, i64 16 ; 2 uses
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !241 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8665, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !122
  %i.aju = icmp ult ptr %i.bz, %.sroa.35.0994
  br i1 %i.aju, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i64 %i.ajr, ptr %i.bz, align 8, !tbaa !46
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !46
  store i64 %i.ajt, ptr %i.cd, align 8, !tbaa !46
  store i64 %.0342829, ptr %i.cf, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8665, i64 16, i1 false), !tbaa.struct !122
  br label %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit574

bb.ci:                                            ; preds = %bb.cg
  %i.ajv = ptrtoint ptr %i.bz to i64
  %i.ajw = ptrtoint ptr %.sroa.0771.0996 to i64   ; 2 uses
  %i.ajx = sub i64 %i.ajv, %i.ajw                 ; 2 uses
  %i.ajy = sdiv exact i64 %i.ajx, 48
  %i.ajz = add nsw i64 %i.ajy, 1                  ; 2 uses
  %i.aka = icmp ugt i64 %i.ajz, 384307168202282325
  br i1 %i.aka, label %bb.cj, label %_ZNKSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE11__recommendB8nn180100Em.exit.i.i559

bb.cj:                                            ; preds = %bb.ci
  tail call fastcc void @_ZNKSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE20__throw_length_errorB8nn180100Ev() #34
  unreachable

_ZNKSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE11__recommendB8nn180100Em.exit.i.i559: ; preds = %bb.ci
  %i.akb = ptrtoint ptr %.sroa.35.0994 to i64
  %i.akc = sub i64 %i.akb, %i.ajw                 ; 2 uses
  %i.akd = sdiv exact i64 %i.akc, 48              ; 2 uses
  %.not.i.i.i560 = icmp ult i64 %i.akd, 192153584101141162
  %i.ake = shl nuw nsw i64 %i.akd, 1
  %.sroa.speculated.i.i.i561 = tail call i64 @llvm.umax.i64(i64 %i.ake, i64 range(i64 -192153584101141161, 192153584101141164) %i.ajz)
  %.0.i.i.i562 = select i1 %.not.i.i.i560, i64 %.sroa.speculated.i.i.i561, i64 384307168202282325 ; 4 uses
  %i.akf = icmp ne i64 %.0.i.i.i562, 0
  tail call void @llvm.assume(i1 %i.akf)
  %i.akg = icmp ugt i64 %.0.i.i.i562, 384307168202282325
  br i1 %i.akg, label %bb.ck, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE413FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563

bb.ck:                                            ; preds = %_ZNKSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE11__recommendB8nn180100Em.exit.i.i559
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #34
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE413FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563: ; preds = %_ZNKSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE11__recommendB8nn180100Em.exit.i.i559
  %i.akh = mul nuw i64 %.0.i.i.i562, 48
  %i.aki = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akh) #35 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 %i.ajx ; 8 uses
  %i.akk = getelementptr inbounds nuw [48 x i8], ptr %i.aki, i64 %.0.i.i.i562
  store i64 %i.ajr, ptr %i.akj, align 8, !tbaa !46
  %.sroa.5656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  store i64 %i.cc, ptr %.sroa.5656.0..sroa_idx, align 8, !tbaa !46
  %.sroa.6659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akj, i64 16
  store i64 %i.ajt, ptr %.sroa.6659.0..sroa_idx, align 8, !tbaa !46
  %.sroa.7662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akj, i64 24
  store i64 %.0342829, ptr %.sroa.7662.0..sroa_idx, align 8, !tbaa !46
  %.sroa.8665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8665.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akj, i64 48
  %.not2.i.i.i.i.i.i.i.i.i565 = icmp eq ptr %i.bz, %.sroa.0771.0996
  br i1 %.not2.i.i.i.i.i.i.i.i.i565, label %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570, label %.lr.ph.i.i.i.i.i.i.i.i.i566

.lr.ph.i.i.i.i.i.i.i.i.i566:                      ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE413FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563, %.lr.ph.i.i.i.i.i.i.i.i.i566
  %.val24.i.i.i.i.i.i.i.i.i567 = phi ptr [ %i.akn, %.lr.ph.i.i.i.i.i.i.i.i.i566 ], [ %i.akj, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE413FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563 ]
  %.sroa.2.03.i.i.i.i.i.i.i.i.i568 = phi ptr [ %i.akm, %.lr.ph.i.i.i.i.i.i.i.i.i566 ], [ %i.bz, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE413FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563 ]
  %i.akm = getelementptr inbounds i8, ptr %.sroa.2.03.i.i.i.i.i.i.i.i.i568, i64 -48 ; 3 uses
  %i.akn = getelementptr inbounds i8, ptr %.val24.i.i.i.i.i.i.i.i.i567, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.akn, ptr noundef nonnull align 8 dereferenceable(48) %i.akm, i64 48, i1 false), !tbaa.struct !123, !noalias !256
  %.not.i.i.i.i.i.i.i.i.i569 = icmp eq ptr %i.akm, %.sroa.0771.0996
  br i1 %.not.i.i.i.i.i.i.i.i.i569, label %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570, label %.lr.ph.i.i.i.i.i.i.i.i.i566, !llvm.loop !224

_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i566, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE413FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563
  %.sroa.415.0.i.i.i.i.i.i.i.i571 = phi ptr [ %i.akj, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE413FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563 ], [ %i.akn, %.lr.ph.i.i.i.i.i.i.i.i.i566 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0771.0996, i64 noundef %i.akc) #36
  br label %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit574

_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit574: ; preds = %bb.ch, %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570
  %.sroa.35.4 = phi ptr [ %.sroa.35.0994, %bb.ch ], [ %i.akk, %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570 ] ; 3 uses
  %.sroa.0771.4 = phi ptr [ %.sroa.0771.0996, %bb.ch ], [ %.sroa.415.0.i.i.i.i.i.i.i.i571, %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570 ] ; 5 uses
  %.0.i573 = phi ptr [ %.sroa.14.0995, %bb.ch ], [ %i.akl, %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570 ]
  %.promoted.fr.i.i.i.i.i.i581 = freeze ptr %.0.i573 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8665)
  store i64 %.sroa.0216.0.copyload, ptr %17, align 8, !tbaa !24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx219, align 8, !tbaa !24
  br i1 %i.aje, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit574
  %i.ako = add nsw i32 %i.ahs, 1
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %i.ahk
end_hunk_2
begin_hunk_3_@_ZN3jxl6N_AVX212EstimateBitsEPKim:bb.a
vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index64 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi65 = phi <8 x i32> [ %i.t, %vec.epilog.ph ], [ %i.v, %vec.epilog.vector.body ]
  %i.u = shl i64 %index64, 2
  %next.gep66 = getelementptr i8, ptr %0, i64 %i.u
  %wide.load67 = load <8 x i32>, ptr %next.gep66, align 4, !tbaa !20
  %i.v = add <8 x i32> %wide.load67, %vec.phi65   ; 2 uses
  %index.next68 = add nuw i64 %index64, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !265

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.x = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.v) ; 2 uses
  %cmp.n69 = icmp eq i64 %i.d, %n.vec63
  br i1 %cmp.n69, label %.lr.ph.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i32 [ 0, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  %.057.i.ph = phi ptr [ %0, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i32 [ %i.z, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ]
  %.057.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.y = load i32, ptr %.057.i, align 4, !tbaa !20
  %i.z = add nsw i32 %i.y, %.08.i                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.057.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.a
  br i1 %.not.i, label %.lr.ph.preheader, label %.lr.ph.i, !llvm.loop !266

.lr.ph.preheader:                                 ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa53 = phi i32 [ %i.x, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %i.ab = sitofp i32 %.lcssa53 to float
  %i.ac = fdiv nnan float 1.000000e+00, %i.ab
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer
  %i.af = insertelement <8 x i32> poison, i32 %.lcssa53, i64 0
  %i.ag = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.031.0.lcssa = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.bk, %.lr.ph ] ; 2 uses
  %i.ah = shufflevector <8 x float> %.sroa.031.0.lcssa, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.ai = fadd <8 x float> %.sroa.031.0.lcssa, %i.ah ; 2 uses
  %i.aj = shufflevector <8 x float> %i.ai, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.ak = fadd <8 x float> %i.ai, %i.aj           ; 2 uses
  %i.al = shufflevector <8 x float> %i.ak, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.am = fadd <8 x float> %i.ak, %i.al
  %i.an = extractelement <8 x float> %i.am, i64 0
  ret float %i.an

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.031.049 = phi <8 x float> [ %i.bk, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %.048 = phi i64 [ %i.bl, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.048
  %i.ap = load <8 x i32>, ptr %i.ao, align 1, !tbaa !24 ; 2 uses
  %i.aq = sitofp <8 x i32> %i.ap to <8 x float>   ; 2 uses
  %i.ar = fmul <8 x float> %i.ae, %i.aq
  %i.as = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.ar, <8 x float> splat (float f0x39800000))
  %i.at = icmp eq <8 x i32> %i.ap, %i.ag
  %i.au = bitcast <8 x float> %i.as to <8 x i32>  ; 2 uses
  %i.av = add <8 x i32> %i.au, splat (i32 -1059760811) ; 2 uses
  %i.aw = ashr <8 x i32> %i.av, splat (i32 23)
  %i.ax = and <8 x i32> %i.av, splat (i32 -8388608)
  %i.ay = sub <8 x i32> %i.au, %i.ax
  %i.az = bitcast <8 x i32> %i.ay to <8 x float>
  %i.ba = sitofp <8 x i32> %i.aw to <8 x float>
  %i.bb = fadd <8 x float> %i.az, splat (float -1.000000e+00) ; 4 uses
  fence acq_rel
  %i.bc = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bb, <8 x float> splat (float f0x3F3E11C7), <8 x float> splat (float f0x3FB6E02B))
  %i.bd = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bb, <8 x float> splat (float f0x3E32458C), <8 x float> splat (float f0x3F813CED))
  fence acq_rel
  %i.be = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bc, <8 x float> %i.bb, <8 x float> splat (float f0xB5F85AB0))
  %i.bf = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bd, <8 x float> %i.bb, <8 x float> splat (float f0x3F7D8625))
  fence acq_rel
  %i.bg = fdiv <8 x float> %i.be, %i.bf
  %i.bh = fadd <8 x float> %i.bg, %i.ba
  %i.bi = select <8 x i1> %i.at, <8 x float> zeroinitializer, <8 x float> %i.bh
  %i.bj = fmul <8 x float> %i.bi, %i.aq
  %i.bk = fsub <8 x float> %.sroa.031.049, %i.bj  ; 2 uses
  %i.bl = add i64 %.048, 8                        ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %1
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl6N_AVX213MakeSplitNodeEmiiNS_9PredictorElS1_lPNSt3__16vectorINS_20PropertyDecisionNodeENS2_9allocatorIS4_EEEE(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef nonnull %7) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load ptr, ptr %7, align 8, !tbaa !31     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %0 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.h, ptr %i.j, align 8, !tbaa !36
  %i.k = add i32 %i.h, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.k, ptr %i.l, align 4, !tbaa !37
  store i32 %2, ptr %i.i, align 8, !tbaa !38
  %i.m = trunc i32 %1 to i16
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i16 %i.m, ptr %i.n, align 4, !tbaa !39
  %i.o = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7) #33 ; 0 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -36
  store i16 -1, ptr %i.q, align 4, !tbaa !39
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -24
  store i32 %5, ptr %i.r, align 8, !tbaa !40
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 -16
  store i64 %6, ptr %i.s, align 8, !tbaa !41
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -8
  store i32 1, ptr %i.t, align 8, !tbaa !42
  %i.u = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7) #33 ; 0 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -36
  store i16 -1, ptr %i.w, align 4, !tbaa !39
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -24
  store i32 %3, ptr %i.x, align 8, !tbaa !40
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -16
  store i64 %4, ptr %i.y, align 8, !tbaa !41
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -8
  store i32 1, ptr %i.z, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN3jxl6N_AVX213BoxIntersectsENSt3__15arrayINS2_IjLm2EEELm2EEES4_RjS5_(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #11 {
bb.a:
  %.sroa.033.0.extract.trunc = trunc i64 %0 to i32 ; 2 uses
  %.sroa.234.0.extract.shift = lshr i64 %0, 32    ; 2 uses
  %.sroa.234.0.extract.trunc = trunc nuw i64 %.sroa.234.0.extract.shift to i32
  %.sroa.335.8.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %.sroa.536.8.extract.shift = lshr i64 %1, 32    ; 2 uses
  %.sroa.536.8.extract.trunc = trunc nuw i64 %.sroa.536.8.extract.shift to i32
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32  ; 3 uses
  %.sroa.2.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %.sroa.3.8.extract.trunc = trunc i64 %3 to i32  ; 3 uses
  %.sroa.5.8.extract.shift = lshr i64 %3, 32      ; 2 uses
  %.sroa.5.8.extract.trunc = trunc nuw i64 %.sroa.5.8.extract.shift to i32 ; 2 uses
  %.not = icmp ult i32 %.sroa.0.0.extract.trunc, %.sroa.234.0.extract.trunc
  %.not26 = icmp ugt i32 %.sroa.2.0.extract.trunc, %.sroa.033.0.extract.trunc
  %or.cond = select i1 %.not, i1 %.not26, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp ugt i32 %.sroa.0.0.extract.trunc, %.sroa.033.0.extract.trunc
  br i1 %.not27, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not28 = icmp samesign ult i64 %.sroa.2.0.extract.shift, %.sroa.234.0.extract.shift
  br i1 %.not28, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sroa.0.0.extract.trunc.sink = phi i32 [ %.sroa.0.0.extract.trunc, %bb.b ], [ %.sroa.2.0.extract.trunc, %bb.c ]
  store i32 0, ptr %4, align 4, !tbaa !20
  %i.a = add i32 %.sroa.0.0.extract.trunc.sink, -1
  store i32 %i.a, ptr %5, align 4, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ true, %.sink.split ]
  %.not.1 = icmp ult i32 %.sroa.3.8.extract.trunc, %.sroa.536.8.extract.trunc
  %.not26.1 = icmp ugt i32 %.sroa.5.8.extract.trunc, %.sroa.335.8.extract.trunc
  %or.cond38 = select i1 %.not.1, i1 %.not26.1, i1 false
  br i1 %or.cond38, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.not27.1 = icmp ugt i32 %.sroa.3.8.extract.trunc, %.sroa.335.8.extract.trunc
  br i1 %.not27.1, label %.critedge.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not28.1 = icmp samesign ult i64 %.sroa.5.8.extract.shift, %.sroa.536.8.extract.shift
  br i1 %.not28.1, label %.critedge.thread.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.f
  br i1 %.1, label %.critedge.thread, label %.loopexit

.critedge.thread.sink.split:                      ; preds = %bb.e, %bb.f
  %.sroa.5.8.extract.trunc.sink = phi i32 [ %.sroa.5.8.extract.trunc, %bb.f ], [ %.sroa.3.8.extract.trunc, %bb.e ]
  store i32 1, ptr %4, align 4, !tbaa !20
  %i.b = add i32 %.sroa.5.8.extract.trunc.sink, -1
  store i32 %i.b, ptr %5, align 4, !tbaa !20
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %.critedge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.d, %.critedge.thread, %.critedge
  %.125 = phi i32 [ 2, %.critedge ], [ 1, %.critedge.thread ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i32 %.125
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl6N_AVX213FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE(ptr noundef nonnull align 8 dereferenceable(304) %0, float noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i64 %3, i64 %4, float noundef %5, ptr noundef %6) #12 {
_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit:
  %7 = alloca %struct.SplitInfo.100, align 8      ; 13 uses
  %8 = alloca %struct.SplitInfo.100, align 8      ; 11 uses
  %9 = alloca %struct.SplitInfo.100, align 8      ; 13 uses
  %10 = alloca %struct.SplitInfo.100, align 8     ; 12 uses
  %11 = alloca %"class.std::__1::vector.55", align 8 ; 9 uses
  %12 = alloca %"class.std::__1::vector.26", align 8 ; 10 uses
  %13 = alloca %struct.SplitInfo.100, align 8     ; 12 uses
  %14 = alloca %"class.std::__1::vector.55", align 8 ; 11 uses
  %15 = alloca %"class.std::__1::vector.55", align 8 ; 13 uses
  %16 = alloca %"class.std::__1::vector.76", align 8 ; 11 uses
  %17 = alloca %"struct.std::__1::array", align 8 ; 13 uses
  %.sroa.8665 = alloca [2 x %"struct.std::__1::array.3"], align 8 ; 4 uses
  %.sroa.8 = alloca [2 x %"struct.std::__1::array.3"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %i.i = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %.sroa.6760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 %i.h, ptr %.sroa.6760.0..sroa_idx, align 8, !tbaa !46
  %.sroa.7763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.sroa.7763.0..sroa_idx, align 8, !tbaa !46
  %.sroa.8766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %3, ptr %.sroa.8766.0..sroa_idx, align 8, !tbaa !24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %4, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !64   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 36
  %.not1000 = icmp ne ptr %i.m, %i.n              ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bc = icmp ugt i64 %i.r, 4611686018427387903
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bo = fadd float %1, 1.000000e+02
  %i.bp = fdiv float 8.000000e+02, %i.bo
  %i.bq = icmp ne ptr %i.u, %i.v
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1) ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit, %bb.cu
  %.sroa.0771.0996 = phi ptr [ %i.i, %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.0771.2, %bb.cu ] ; 7 uses
  %.sroa.14.0995 = phi ptr [ %i.j, %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.14.2, %bb.cu ] ; 7 uses
  %.sroa.35.0994 = phi ptr [ %i.j, %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.35.2, %bb.cu ] ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -48 ; 8 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !355 ; 8 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -40 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !356 ; 48 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -32 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !357 ; 21 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !358 ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -16 ; 2 uses
  %.sroa.0216.0.copyload = load i64, ptr %i.ch, align 8, !tbaa !24 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !24 ; 5 uses
  %i.ci = icmp eq i64 %i.cc, %i.ce
  br i1 %i.ci, label %bb.cu, label %bb.b, !llvm.loop !267

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store i64 0, ptr %7, align 8, !tbaa !360
  store i32 0, ptr %i.aa, align 8, !tbaa !361
  store i64 0, ptr %i.ab, align 8, !tbaa !362
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ac, align 8, !tbaa !67
  store i32 0, ptr %i.ae, align 8, !tbaa !363
  store i32 0, ptr %i.af, align 4, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store i64 0, ptr %8, align 8, !tbaa !360
  store i32 0, ptr %i.ag, align 8, !tbaa !361
  store i64 0, ptr %i.ah, align 8, !tbaa !362
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ai, align 8, !tbaa !67
  store i32 0, ptr %i.ak, align 8, !tbaa !363
  store i32 0, ptr %i.al, align 4, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store i64 0, ptr %9, align 8, !tbaa !360
  store i32 0, ptr %i.am, align 8, !tbaa !361
  store i64 0, ptr %i.an, align 8, !tbaa !362
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ao, align 8, !tbaa !67
  store i32 0, ptr %i.aq, align 8, !tbaa !363
  store i32 0, ptr %i.ar, align 4, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store i64 0, ptr %10, align 8, !tbaa !360
  store i32 0, ptr %i.as, align 8, !tbaa !361
  store i64 0, ptr %i.at, align 8, !tbaa !362
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.au, align 8, !tbaa !67
  store i32 0, ptr %i.aw, align 8, !tbaa !363
  store i32 0, ptr %i.ax, align 4, !tbaa !364
  %i.cj = icmp ult i64 %i.cc, %i.ce
  %or.cond = and i1 %.not1000, %i.cj
  br i1 %or.cond, label %.preheader840.lr.ph.split.us, label %._crit_edge932

.preheader840.lr.ph.split.us:                     ; preds = %bb.b
  %i.ck = load ptr, ptr %0, align 8, !tbaa !72
  %i.cl = sub nuw i64 %i.ce, %i.cc                ; 6 uses
  %min.iters.check1555 = icmp ult i64 %i.cl, 5
  %min.iters.check1557 = icmp ult i64 %i.cl, 17
  %i.cm = and i64 %i.cl, 15                       ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = select i1 %i.cn, i64 16, i64 %i.cm      ; 2 uses
  %n.vec1559 = sub i64 %i.cl, %i.co               ; 3 uses
  %i.cp = add i64 %i.cc, %n.vec1559
  %min.epilog.iters.check1581 = icmp samesign ult i64 %i.co, 5
  %i.cq = and i64 %i.cl, 3                        ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 4, i64 %i.cq
  %n.vec1585 = sub i64 %i.cl, %i.cs               ; 2 uses
  %i.ct = add i64 %i.cc, %n.vec1585
  br label %iter.check1578

iter.check1578:                                   ; preds = %._crit_edge.us, %.preheader840.lr.ph.split.us
  %.0348931.us = phi i64 [ 0, %.preheader840.lr.ph.split.us ], [ %i.ef, %._crit_edge.us ] ; 2 uses
  %.0349930.us = phi i64 [ 0, %.preheader840.lr.ph.split.us ], [ %i.ed, %._crit_edge.us ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.0348931.us
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !77 ; 6 uses
  br i1 %min.iters.check1555, label %vec.epilog.scalar.ph1580.preheader, label %vector.main.loop.iter.check1556

vector.main.loop.iter.check1556:                  ; preds = %iter.check1578
  br i1 %min.iters.check1557, label %vec.epilog.ph1582, label %vector.ph1558

vector.ph1558:                                    ; preds = %vector.main.loop.iter.check1556
  %broadcast.splatinsert1560 = insertelement <4 x i64> poison, i64 %.0349930.us, i64 0
  %broadcast.splat1561 = shufflevector <4 x i64> %broadcast.splatinsert1560, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1562

vector.body1562:                                  ; preds = %vector.ph1558, %vector.body1562
  %index1563 = phi i64 [ 0, %vector.ph1558 ], [ %index.next1574, %vector.body1562 ] ; 2 uses
  %vec.phi1564.a = phi <4 x i64> [ %broadcast.splat1561, %vector.ph1558 ], [ %i.dm, %vector.body1562 ]
  %vec.phi1565 = phi <4 x i64> [ %broadcast.splat1561, %vector.ph1558 ], [ %i.dn, %vector.body1562 ]
  %vec.phi1566 = phi <4 x i64> [ %broadcast.splat1561, %vector.ph1558 ], [ %i.do, %vector.body1562 ]
  %vec.phi1567 = phi <4 x i64> [ %broadcast.splat1561, %vector.ph1558 ], [ %i.dp, %vector.body1562 ]
  %i.cw = add nuw i64 %i.cc, %index1563           ; 4 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = getelementptr [2 x i8], ptr %i.cv, i64 %i.cw
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = getelementptr [2 x i8], ptr %i.cv, i64 %i.cw
  %i.db = getelementptr i8, ptr %i.da, i64 16
end_hunk_3
begin_hunk_4_@_ZN3jxl6N_AVX213FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE:_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit
  %i.hj = fdiv <8 x float> %i.hh, %i.hi
  %i.hk = fadd <8 x float> %i.hj, %i.hd
  %i.hl = select <8 x i1> %i.gw, <8 x float> zeroinitializer, <8 x float> %i.hk
  %i.hm = fmul <8 x float> %i.hl, %i.gt
  %i.hn = fsub <8 x float> %.sroa.031.049.i, %i.hm ; 2 uses
  %i.ho = add nuw i64 %.048.i, 8                  ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %.0349.lcssa
  br i1 %i.hp, label %.lr.ph.i, label %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit, !llvm.loop !4

_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit:  ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %12, align 8, !tbaa !64
  br label %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit

_ZN3jxl6N_AVX212EstimateBitsEPKim.exit:           ; preds = %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit, %._crit_edge938
  %i.hq = phi ptr [ %i.ev, %._crit_edge938 ], [ %.pre, %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit ]
  %.sroa.031.0.lcssa.i = phi <8 x float> [ zeroinitializer, %._crit_edge938 ], [ %i.hn, %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit ] ; 2 uses
  %i.hr = shufflevector <8 x float> %.sroa.031.0.lcssa.i, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.hs = fadd <8 x float> %.sroa.031.0.lcssa.i, %i.hr ; 2 uses
  %i.ht = shufflevector <8 x float> %i.hs, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.hu = fadd <8 x float> %i.hs, %i.ht           ; 2 uses
  %i.hv = shufflevector <8 x float> %i.hu, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hw = fadd <8 x float> %i.hu, %i.hv
  %i.hx = extractelement <8 x float> %i.hw, i64 0
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.fk
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !20
  %i.ia = uitofp i32 %i.hz to float
  %i.ib = fadd float %i.hx, %i.ia                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  store i64 0, ptr %13, align 8, !tbaa !360
  store i32 0, ptr %i.bd, align 8, !tbaa !361
  store i64 0, ptr %i.be, align 8, !tbaa !362
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.bf, align 8, !tbaa !67
  store i32 0, ptr %i.bh, align 8, !tbaa !363
  store i32 0, ptr %i.bi, align 4, !tbaa !364
  %i.ic = load ptr, ptr %2, align 8, !tbaa !91    ; 2 uses
  %i.id = load ptr, ptr %i.bj, align 8, !tbaa !92 ; 2 uses
  %.not833939 = icmp eq ptr %i.ic, %i.id
  br i1 %.not833939, label %.thread812, label %.lr.ph941

.lr.ph941:                                        ; preds = %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit
  %.sroa.033.0.extract.trunc.i = trunc i64 %.sroa.0216.0.copyload to i32 ; 2 uses
  %.sroa.234.0.extract.shift.i = lshr i64 %.sroa.0216.0.copyload, 32 ; 2 uses
  %.sroa.234.0.extract.trunc.i = trunc nuw i64 %.sroa.234.0.extract.shift.i to i32
  %.sroa.335.8.extract.trunc.i = trunc i64 %.sroa.6.0.copyload to i32 ; 2 uses
  %.sroa.536.8.extract.shift.i = lshr i64 %.sroa.6.0.copyload, 32 ; 2 uses
  %.sroa.536.8.extract.trunc.i = trunc nuw i64 %.sroa.536.8.extract.shift.i to i32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph937, %._crit_edge
  %.0345936 = phi i64 [ 0, %.lr.ph937 ], [ %i.iy, %._crit_edge ] ; 4 uses
  br i1 %i.es, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %.0345936
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !77 ; 3 uses
  %i.ig = load ptr, ptr %i.a, align 8, !tbaa !53  ; 3 uses
  %i.ih = mul i64 %.0345936, %.0349.lcssa
  %i.ii = getelementptr [4 x i8], ptr %i.eo, i64 %i.ih ; 3 uses
  br i1 %i.eu, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0343935.epil.init = phi i64 [ %i.cc, %.lr.ph ], [ %i.kc, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0344934.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.kb, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1655)
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %.0343935.epil.init ; 2 uses
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %.0343935.epil.init
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !44
  %i.im = zext i16 %i.il to i32                   ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.io = load i8, ptr %i.in, align 1, !tbaa !93
  %i.ip = zext i8 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.ip, %i.im
  %i.ir = load i8, ptr %i.ij, align 1, !tbaa !79
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr [4 x i8], ptr %i.ii, i64 %i.is ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !20
  %i.iv = add i32 %i.iu, %i.im
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !20
  %i.iw = add i32 %i.iq, %.0344934.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.g
  %.0344.lcssa = phi i32 [ 0, %bb.g ], [ %i.kb, %._crit_edge.loopexit.unr-lcssa ], [ %i.iw, %.epil.preheader ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.0345936
  store i32 %.0344.lcssa, ptr %i.ix, align 4, !tbaa !20
  %i.iy = add nuw i64 %.0345936, 1                ; 2 uses
  %exitcond1027.not = icmp eq i64 %i.iy, %umax
  br i1 %exitcond1027.not, label %._crit_edge938, label %bb.g, !llvm.loop !275

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.0343935 = phi i64 [ %i.kc, %.lr.ph.new ], [ %i.cc, %.lr.ph ] ; 4 uses
  %.0344934 = phi i32 [ %i.kb, %.lr.ph.new ], [ 0, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %.0343935 ; 2 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %.0343935
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !44
  %i.jc = zext i16 %i.jb to i32                   ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !93
  %i.jf = zext i8 %i.je to i32
  %i.jg = mul nuw nsw i32 %i.jf, %i.jc
  %i.jh = load i8, ptr %i.iz, align 1, !tbaa !79
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr [4 x i8], ptr %i.ii, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !20
  %i.jl = add i32 %i.jk, %i.jc
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !20
  %i.jm = add i32 %i.jg, %.0344934
  %i.jn = add nuw i64 %.0343935, 1                ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %i.jn
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !44
  %i.jr = zext i16 %i.jq to i32                   ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !93
  %i.ju = zext i8 %i.jt to i32
  %i.jv = mul nuw nsw i32 %i.ju, %i.jr
  %i.jw = load i8, ptr %i.jo, align 1, !tbaa !79
  %i.jx = zext i8 %i.jw to i64
  %i.jy = getelementptr [4 x i8], ptr %i.ii, i64 %i.jx ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !20
  %i.ka = add i32 %i.jz, %i.jr
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !20
  %i.kb = add i32 %i.jv, %i.jm                    ; 3 uses
  %i.kc = add nuw i64 %.0343935, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !276

bb.h:                                             ; preds = %.lr.ph941, %bb.o
  %.sroa.0727.0940 = phi ptr [ %i.ic, %.lr.ph941 ], [ %i.oh, %bb.o ] ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0727.0940, align 4, !tbaa !24 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0727.0940, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !24 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 3 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %.sroa.3.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload to i32 ; 3 uses
  %.sroa.5.8.extract.shift.i = lshr i64 %.sroa.2.0.copyload, 32 ; 2 uses
  %.sroa.5.8.extract.trunc.i = trunc nuw i64 %.sroa.5.8.extract.shift.i to i32 ; 2 uses
  %.not.i469 = icmp ult i32 %.sroa.0.0.extract.trunc.i, %.sroa.234.0.extract.trunc.i
  %.not26.i = icmp ugt i32 %.sroa.2.0.extract.trunc.i, %.sroa.033.0.extract.trunc.i
  %or.cond.i = select i1 %.not.i469, i1 %.not26.i, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %.not27.i = icmp ugt i32 %.sroa.0.0.extract.trunc.i, %.sroa.033.0.extract.trunc.i
  br i1 %.not27.i, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not28.i = icmp samesign ult i64 %.sroa.2.0.extract.shift.i, %.sroa.234.0.extract.shift.i
  br i1 %.not28.i, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.sroa.0.0.extract.trunc.sink.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.i ], [ %.sroa.2.0.extract.trunc.i, %bb.j ]
  %i.kd = add i32 %.sroa.0.0.extract.trunc.sink.i, -1
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.j
  %.0791 = phi i32 [ %i.kd, %.sink.split.i ], [ undef, %bb.j ]
  %.1.i = phi i1 [ true, %.sink.split.i ], [ false, %bb.j ]
  %.not.1.i = icmp ult i32 %.sroa.3.8.extract.trunc.i, %.sroa.536.8.extract.trunc.i
  %.not26.1.i = icmp ugt i32 %.sroa.5.8.extract.trunc.i, %.sroa.335.8.extract.trunc.i
  %or.cond38.i = select i1 %.not.1.i, i1 %.not26.1.i, i1 false
  br i1 %or.cond38.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not27.1.i = icmp ugt i32 %.sroa.3.8.extract.trunc.i, %.sroa.335.8.extract.trunc.i
  br i1 %.not27.1.i, label %.critedge.thread.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not28.1.i = icmp samesign ult i64 %.sroa.5.8.extract.shift.i, %.sroa.536.8.extract.shift.i
  br i1 %.not28.1.i, label %.critedge.thread.sink.split.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.m
  br i1 %.1.i, label %.critedge.thread.i, label %bb.p

.critedge.thread.sink.split.i:                    ; preds = %bb.m, %bb.l
  %.sroa.5.8.extract.trunc.sink.i = phi i32 [ %.sroa.5.8.extract.trunc.i, %bb.m ], [ %.sroa.3.8.extract.trunc.i, %bb.l ]
  %i.ke = add i32 %.sroa.5.8.extract.trunc.sink.i, -1
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %.critedge.thread.sink.split.i
  %.2796.ph = phi i64 [ 1, %.critedge.thread.sink.split.i ], [ 0, %.critedge.i ] ; 5 uses
  %.2793.ph = phi i32 [ %i.ke, %.critedge.thread.sink.split.i ], [ %.0791, %.critedge.i ]
  %i.kf = tail call i32 @llvm.smax.i32(i32 %.2793.ph, i32 -511)
  %i.kg = tail call i32 @llvm.smin.i32(i32 %i.kf, i32 511)
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.2796.ph
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !53
  %i.kj = sext i32 %i.kg to i64
  %i.kk = getelementptr [2 x i8], ptr %i.ki, i64 %i.kj
  %i.kl = getelementptr i8, ptr %i.kk, i64 1022
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !44 ; 4 uses
  %i.kn = zext i16 %i.km to i32                   ; 4 uses
  store i32 %i.kn, ptr %i.bd, align 8, !tbaa !361
  store i64 %.2796.ph, ptr %13, align 8, !tbaa !360
  %i.ko = fmul float %i.ib, 5.000000e-01
  %i.kp = fsub float %i.ko, %1                    ; 6 uses
  store float %i.kp, ptr %i.bg, align 4, !tbaa !365
  store float %i.kp, ptr %i.bf, align 8, !tbaa !366
  %i.kq = load ptr, ptr %6, align 8, !tbaa !31
  %i.kr = getelementptr inbounds nuw [40 x i8], ptr %i.kq, i64 %i.ca
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !40
  %i.ku = insertelement <2 x i32> poison, i32 %i.kt, i64 0
  %i.kv = shufflevector <2 x i32> %i.ku, <2 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %i.kv, ptr %i.bh, align 8, !tbaa !45
  %i.kw = load i64, ptr %i.bl, align 8, !tbaa !105 ; 2 uses
  %i.kx = icmp ult i64 %.2796.ph, %i.kw
  %i.ky = icmp ult i64 %i.cc, %i.ce               ; 2 uses
  br i1 %i.kx, label %.preheader841, label %bb.n

.preheader841:                                    ; preds = %.critedge.thread.i
  br i1 %i.ky, label %iter.check1451, label %.thread817.loopexit

iter.check1451:                                   ; preds = %.preheader841
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.2796.ph
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !64 ; 3 uses
  %i.lb = sub nuw i64 %i.ce, %i.cc                ; 7 uses
  %min.iters.check1430 = icmp ult i64 %i.lb, 4
  br i1 %min.iters.check1430, label %vec.epilog.scalar.ph1453.preheader, label %vector.main.loop.iter.check1431

vector.main.loop.iter.check1431:                  ; preds = %iter.check1451
  %min.iters.check1432 = icmp ult i64 %i.lb, 16
  br i1 %min.iters.check1432, label %vec.epilog.ph1455, label %vector.ph1433

vector.ph1433:                                    ; preds = %vector.main.loop.iter.check1431
  %i.lc = and i64 %i.lb, 12
  %n.vec1434 = and i64 %i.lb, -16                 ; 4 uses
  %i.ld = add i64 %i.cc, %n.vec1434
  %i.le = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.cc, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.cc
  br label %vector.body1435

vector.body1435:                                  ; preds = %vector.ph1433, %vector.body1435
  %index1436 = phi i64 [ 0, %vector.ph1433 ], [ %index.next1445, %vector.body1435 ] ; 2 uses
  %vec.phi1437.a = phi <4 x i64> [ %i.le, %vector.ph1433 ], [ %i.ls, %vector.body1435 ]
  %vec.phi1438 = phi <4 x i64> [ zeroinitializer, %vector.ph1433 ], [ %i.lt, %vector.body1435 ]
  %vec.phi1439 = phi <4 x i64> [ zeroinitializer, %vector.ph1433 ], [ %i.lu, %vector.body1435 ]
  %vec.phi1440 = phi <4 x i64> [ zeroinitializer, %vector.ph1433 ], [ %i.lv, %vector.body1435 ]
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %index1436 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %wide.load1441.a = load <4 x i32>, ptr %i.lg, align 4, !tbaa !20
  %wide.load1442 = load <4 x i32>, ptr %i.lh, align 4, !tbaa !20
  %wide.load1443 = load <4 x i32>, ptr %i.li, align 4, !tbaa !20
  %wide.load1444 = load <4 x i32>, ptr %i.lj, align 4, !tbaa !20
  %i.lk = icmp ule <4 x i32> %wide.load1441.a, %broadcast.splat
  %i.ll = icmp ule <4 x i32> %wide.load1442, %broadcast.splat
  %i.lm = icmp ule <4 x i32> %wide.load1443, %broadcast.splat
  %i.ln = icmp ule <4 x i32> %wide.load1444, %broadcast.splat
  %i.lo = zext <4 x i1> %i.lk to <4 x i64>
  %i.lp = zext <4 x i1> %i.ll to <4 x i64>
  %i.lq = zext <4 x i1> %i.lm to <4 x i64>
  %i.lr = zext <4 x i1> %i.ln to <4 x i64>
  %i.ls = add <4 x i64> %vec.phi1437.a, %i.lo     ; 2 uses
  %i.lt = add <4 x i64> %vec.phi1438, %i.lp       ; 2 uses
  %i.lu = add <4 x i64> %vec.phi1439, %i.lq       ; 2 uses
  %i.lv = add <4 x i64> %vec.phi1440, %i.lr       ; 2 uses
  %index.next1445 = add nuw i64 %index1436, 16    ; 2 uses
  %i.lw = icmp eq i64 %index.next1445, %n.vec1434
  br i1 %i.lw, label %middle.block1446, label %vector.body1435, !llvm.loop !277

middle.block1446:                                 ; preds = %vector.body1435
  %bin.rdx1447 = add <4 x i64> %i.lt, %i.ls
  %bin.rdx1448 = add <4 x i64> %i.lu, %bin.rdx1447
  %bin.rdx1449 = add <4 x i64> %i.lv, %bin.rdx1448
  %i.lx = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx1449) ; 3 uses
  %cmp.n1450 = icmp eq i64 %i.lb, %n.vec1434
  br i1 %cmp.n1450, label %.thread817.loopexit, label %vec.epilog.iter.check1452

vec.epilog.iter.check1452:                        ; preds = %middle.block1446
  %min.epilog.iters.check1454 = icmp eq i64 %i.lc, 0
  br i1 %min.epilog.iters.check1454, label %vec.epilog.scalar.ph1453.preheader, label %vec.epilog.ph1455, !prof !127

vec.epilog.ph1455:                                ; preds = %vector.main.loop.iter.check1431, %vec.epilog.iter.check1452
  %vec.epilog.resume.val1456 = phi i64 [ %n.vec1434, %vec.epilog.iter.check1452 ], [ 0, %vector.main.loop.iter.check1431 ]
  %bc.merge.rdx1457 = phi i64 [ %i.lx, %vec.epilog.iter.check1452 ], [ %i.cc, %vector.main.loop.iter.check1431 ]
  %n.vec1458 = and i64 %i.lb, -4                  ; 3 uses
  %i.ly = add i64 %i.cc, %n.vec1458
  %i.lz = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx1457, i64 0
  %broadcast.splatinsert1459 = insertelement <4 x i32> poison, i32 %i.kn, i64 0
  %broadcast.splat1460 = shufflevector <4 x i32> %broadcast.splatinsert1459, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.cc
  br label %vec.epilog.vector.body1461

vec.epilog.vector.body1461:                       ; preds = %vec.epilog.vector.body1461, %vec.epilog.ph1455
  %index1462 = phi i64 [ %vec.epilog.resume.val1456, %vec.epilog.ph1455 ], [ %index.next1465, %vec.epilog.vector.body1461 ] ; 2 uses
  %vec.phi1463 = phi <4 x i64> [ %i.lz, %vec.epilog.ph1455 ], [ %i.me, %vec.epilog.vector.body1461 ]
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %index1462
  %wide.load1464 = load <4 x i32>, ptr %i.mb, align 4, !tbaa !20
  %i.mc = icmp ule <4 x i32> %wide.load1464, %broadcast.splat1460
  %i.md = zext <4 x i1> %i.mc to <4 x i64>
  %i.me = add <4 x i64> %vec.phi1463, %i.md       ; 2 uses
  %index.next1465 = add nuw i64 %index1462, 4     ; 2 uses
  %i.mf = icmp eq i64 %index.next1465, %n.vec1458
  br i1 %i.mf, label %vec.epilog.middle.block1466, label %vec.epilog.vector.body1461, !llvm.loop !278

vec.epilog.middle.block1466:                      ; preds = %vec.epilog.vector.body1461
  %i.mg = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.me) ; 2 uses
  %cmp.n1467 = icmp eq i64 %i.lb, %n.vec1458
  br i1 %cmp.n1467, label %.thread817.loopexit, label %vec.epilog.scalar.ph1453.preheader

vec.epilog.scalar.ph1453.preheader:               ; preds = %iter.check1451, %vec.epilog.iter.check1452, %vec.epilog.middle.block1466
  %.0338949.ph = phi i64 [ %i.cc, %iter.check1451 ], [ %i.ld, %vec.epilog.iter.check1452 ], [ %i.ly, %vec.epilog.middle.block1466 ]
  %.ph1606 = phi i64 [ %i.cc, %iter.check1451 ], [ %i.lx, %vec.epilog.iter.check1452 ], [ %i.mg, %vec.epilog.middle.block1466 ]
  br label %vec.epilog.scalar.ph1453

vec.epilog.scalar.ph1453:                         ; preds = %vec.epilog.scalar.ph1453.preheader, %vec.epilog.scalar.ph1453
  %.0338949 = phi i64 [ %i.ml, %vec.epilog.scalar.ph1453 ], [ %.0338949.ph, %vec.epilog.scalar.ph1453.preheader ] ; 2 uses
  %i.mh = phi i64 [ %spec.select, %vec.epilog.scalar.ph1453 ], [ %.ph1606, %vec.epilog.scalar.ph1453.preheader ]
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %.0338949
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !20
  %.not419 = icmp ule i32 %i.mj, %i.kn
  %i.mk = zext i1 %.not419 to i64
  %spec.select = add i64 %i.mh, %i.mk             ; 2 uses
  %i.ml = add nuw i64 %.0338949, 1                ; 2 uses
  %exitcond1029.not = icmp eq i64 %i.ml, %i.ce
  br i1 %exitcond1029.not, label %.thread817.loopexit, label %vec.epilog.scalar.ph1453, !llvm.loop !279

bb.n:                                             ; preds = %.critedge.thread.i
  br i1 %i.ky, label %iter.check1494, label %.thread817.loopexit842

iter.check1494:                                   ; preds = %bb.n
  %i.mm = sub nuw nsw i64 %.2796.ph, %i.kw
  %i.mn = load ptr, ptr %i.bm, align 8, !tbaa !106
  %i.mo = getelementptr inbounds nuw [24 x i8], ptr %i.mn, i64 %i.mm
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !111 ; 3 uses
  %i.mq = sub nuw i64 %i.ce, %i.cc                ; 7 uses
  %min.iters.check1471 = icmp ult i64 %i.mq, 4
  br i1 %min.iters.check1471, label %vec.epilog.scalar.ph1496.preheader, label %vector.main.loop.iter.check1472

vector.main.loop.iter.check1472:                  ; preds = %iter.check1494
  %min.iters.check1473 = icmp ult i64 %i.mq, 16
  br i1 %min.iters.check1473, label %vec.epilog.ph1498, label %vector.ph1474

vector.ph1474:                                    ; preds = %vector.main.loop.iter.check1472
  %i.mr = and i64 %i.mq, 12
  %n.vec1475 = and i64 %i.mq, -16                 ; 4 uses
  %i.ms = add i64 %i.cc, %n.vec1475
  %i.mt = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.cc, i64 0
  %broadcast.splatinsert1476 = insertelement <4 x i16> poison, i16 %i.km, i64 0
  %broadcast.splat1477 = shufflevector <4 x i16> %broadcast.splatinsert1476, <4 x i16> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.cc
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.ph1474, %vector.body1478
  %index1479 = phi i64 [ 0, %vector.ph1474 ], [ %index.next1488, %vector.body1478 ] ; 2 uses
  %vec.phi1480.a = phi <4 x i64> [ %i.mt, %vector.ph1474 ], [ %i.nl, %vector.body1478 ]
  %vec.phi1481 = phi <4 x i64> [ zeroinitializer, %vector.ph1474 ], [ %i.nm, %vector.body1478 ]
  %vec.phi1482 = phi <4 x i64> [ zeroinitializer, %vector.ph1474 ], [ %i.nn, %vector.body1478 ]
  %vec.phi1483 = phi <4 x i64> [ zeroinitializer, %vector.ph1474 ], [ %i.no, %vector.body1478 ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %index1479 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 12
  %wide.load1484.a = load <4 x i8>, ptr %i.mv, align 1, !tbaa !24
  %wide.load1485 = load <4 x i8>, ptr %i.mw, align 1, !tbaa !24
  %wide.load1486 = load <4 x i8>, ptr %i.mx, align 1, !tbaa !24
  %wide.load1487 = load <4 x i8>, ptr %i.my, align 1, !tbaa !24
  %i.mz = zext <4 x i8> %wide.load1484.a to <4 x i16>
  %i.na = zext <4 x i8> %wide.load1485 to <4 x i16>
  %i.nb = zext <4 x i8> %wide.load1486 to <4 x i16>
  %i.nc = zext <4 x i8> %wide.load1487 to <4 x i16>
  %i.nd = icmp uge <4 x i16> %broadcast.splat1477, %i.mz
  %i.ne = icmp uge <4 x i16> %broadcast.splat1477, %i.na
  %i.nf = icmp uge <4 x i16> %broadcast.splat1477, %i.nb
  %i.ng = icmp uge <4 x i16> %broadcast.splat1477, %i.nc
  %i.nh = zext <4 x i1> %i.nd to <4 x i64>
  %i.ni = zext <4 x i1> %i.ne to <4 x i64>
  %i.nj = zext <4 x i1> %i.nf to <4 x i64>
  %i.nk = zext <4 x i1> %i.ng to <4 x i64>
  %i.nl = add <4 x i64> %vec.phi1480.a, %i.nh     ; 2 uses
  %i.nm = add <4 x i64> %vec.phi1481, %i.ni       ; 2 uses
  %i.nn = add <4 x i64> %vec.phi1482, %i.nj       ; 2 uses
  %i.no = add <4 x i64> %vec.phi1483, %i.nk       ; 2 uses
  %index.next1488 = add nuw i64 %index1479, 16    ; 2 uses
  %i.np = icmp eq i64 %index.next1488, %n.vec1475
  br i1 %i.np, label %middle.block1489, label %vector.body1478, !llvm.loop !280

middle.block1489:                                 ; preds = %vector.body1478
  %bin.rdx1490 = add <4 x i64> %i.nm, %i.nl
  %bin.rdx1491 = add <4 x i64> %i.nn, %bin.rdx1490
  %bin.rdx1492 = add <4 x i64> %i.no, %bin.rdx1491
  %i.nq = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx1492) ; 3 uses
  %cmp.n1493 = icmp eq i64 %i.mq, %n.vec1475
  br i1 %cmp.n1493, label %.thread817.loopexit842, label %vec.epilog.iter.check1495

vec.epilog.iter.check1495:                        ; preds = %middle.block1489
  %min.epilog.iters.check1497 = icmp eq i64 %i.mr, 0
  br i1 %min.epilog.iters.check1497, label %vec.epilog.scalar.ph1496.preheader, label %vec.epilog.ph1498, !prof !127

vec.epilog.ph1498:                                ; preds = %vector.main.loop.iter.check1472, %vec.epilog.iter.check1495
  %vec.epilog.resume.val1499 = phi i64 [ %n.vec1475, %vec.epilog.iter.check1495 ], [ 0, %vector.main.loop.iter.check1472 ]
  %bc.merge.rdx1500 = phi i64 [ %i.nq, %vec.epilog.iter.check1495 ], [ %i.cc, %vector.main.loop.iter.check1472 ]
end_hunk_4
begin_hunk_5_@_ZN3jxl6N_AVX213FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE:_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit
vec.epilog.vector.body1206:                       ; preds = %vec.epilog.vector.body1206, %vec.epilog.ph1202
  %index1207 = phi i64 [ %vec.epilog.resume.val1203, %vec.epilog.ph1202 ], [ %index.next1211, %vec.epilog.vector.body1206 ] ; 2 uses
  %vec.phi1208 = phi <8 x i32> [ %i.ake, %vec.epilog.ph1202 ], [ %i.akg, %vec.epilog.vector.body1206 ]
  %i.akf = shl i64 %index1207, 2
  %next.gep1209 = getelementptr i8, ptr %.sroa.0.01676, i64 %i.akf
  %wide.load1210 = load <8 x i32>, ptr %next.gep1209, align 4, !tbaa !20
  %i.akg = add <8 x i32> %wide.load1210, %vec.phi1208 ; 2 uses
  %index.next1211 = add nuw i64 %index1207, 8     ; 2 uses
  %i.akh = icmp eq i64 %index.next1211, %n.vec1205
  br i1 %i.akh, label %vec.epilog.middle.block1212, label %vec.epilog.vector.body1206, !llvm.loop !333

vec.epilog.middle.block1212:                      ; preds = %vec.epilog.vector.body1206
  %i.aki = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.akg) ; 2 uses
  br i1 %cmp.n1213, label %.lr.ph.preheader.i528, label %.lr.ph.i.i524.preheader

.lr.ph.i.i524.preheader:                          ; preds = %vec.epilog.iter.check1199, %vec.epilog.middle.block1212
  %.08.i.i525.ph = phi i32 [ %i.akd, %vec.epilog.iter.check1199 ], [ %i.aki, %vec.epilog.middle.block1212 ]
  %.pn1678.in = phi i64 [ %n.vec1180, %vec.epilog.iter.check1199 ], [ %n.vec1205, %vec.epilog.middle.block1212 ]
  %.pn1678 = shl i64 %.pn1678.in, 2
  %.057.i.i526.ph = getelementptr i8, ptr %.sroa.0.01676, i64 %.pn1678
  br label %.lr.ph.i.i524

bb.bd:                                            ; preds = %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit545
  store float %i.afy, ptr %i.aiw, align 4, !tbaa !375
  store float %.2, ptr %i.aix, align 4, !tbaa !376
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8
  store i32 %i.aig, ptr %i.akj, align 4, !tbaa !377
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit545
  %i.akk = fadd float %i.aid, %.2
  %i.akl = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0718.1822, i64 %i.aiv ; 4 uses
  %.val464 = load float, ptr %i.akl, align 4, !tbaa !375
  %i.akm = getelementptr i8, ptr %i.akl, i64 4    ; 2 uses
  %.val465 = load float, ptr %i.akm, align 4, !tbaa !376
  %i.akn = fadd float %.val464, %.val465
  %i.ako = fcmp olt float %i.akk, %i.akn
  br i1 %i.ako, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store float %i.aid, ptr %i.akl, align 4, !tbaa !375
  store float %.2, ptr %i.akm, align 4, !tbaa !376
  %i.akp = load i32, ptr %i.aif, align 4, !tbaa !45
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  store i32 %i.akp, ptr %i.akq, align 4, !tbaa !377
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %.lr.ph971
  %.1332 = phi i64 [ %.0331969, %.lr.ph971 ], [ %i.adq, %bb.bf ], [ %i.adq, %bb.be ]
  %i.akr = add nuw i64 %.0330970, 1               ; 2 uses
  %exitcond1048.not = icmp eq i64 %i.akr, %.2787
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1048.not, label %._crit_edge972, label %.lr.ph971, !llvm.loop !334

._crit_edge978:                                   ; preds = %bb.bo, %.preheader
  %i.aks = load ptr, ptr %16, align 8, !tbaa !121 ; 3 uses
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %i.aks, i64 %.2787
  store i64 0, ptr %i.akt, align 8, !tbaa !46
  br i1 %.not6.i.i, label %._crit_edge982, label %.lr.ph981

.lr.ph981:                                        ; preds = %._crit_edge978
  %i.aku = mul nuw nsw i64 %.2787, %.0349.lcssa
  %i.akv = load ptr, ptr %15, align 8, !tbaa !84
  %i.akw = getelementptr [4 x i8], ptr %i.akv, i64 %i.aku
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.akw, i8 0, i64 %.idx.i, i1 false), !tbaa !20
  br label %._crit_edge982

bb.bh:                                            ; preds = %.lr.ph977, %bb.bo
  %.0324976 = phi i64 [ %.2790, %.lr.ph977 ], [ %i.ami, %bb.bo ] ; 4 uses
  %.0325975 = phi i64 [ %i.cc, %.lr.ph977 ], [ %.1326, %bb.bo ] ; 2 uses
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %.0324976
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !20 ; 2 uses
  %.not421 = icmp eq i32 %i.aky, 0
  br i1 %.not421, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.akz = sext i32 %i.aky to i64
  %i.ala = add i64 %.0325975, %i.akz              ; 3 uses
  %i.alb = sub nuw i64 %.0324976, %.2790          ; 2 uses
  %i.alc = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0715.1, i64 %i.alb ; 3 uses
  %i.ald = load float, ptr %i.alc, align 4, !tbaa !375 ; 3 uses
  %i.ale = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0718.1822, i64 %i.alb ; 3 uses
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !375 ; 3 uses
  %i.alg = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %.0336987
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !20 ; 2 uses
  %i.alj = icmp ne i32 %i.ali, 15
  %brmerge = select i1 %i.alj, i1 true, i1 %i.aau
  br i1 %brmerge, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  %i.all = load i32, ptr %i.alk, align 4, !tbaa !377
  %i.alm = icmp eq i32 %i.all, 6
  br i1 %i.alm, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !377
  %i.alp = icmp eq i32 %i.alo, 6
  br i1 %i.alp, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.alq = load ptr, ptr %6, align 8, !tbaa !31
  %i.alr = getelementptr inbounds nuw [40 x i8], ptr %i.alq, i64 %i.ca
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 16
  %i.alt = load i32, ptr %i.als, align 8, !tbaa !40
  %.not422 = icmp eq i32 %i.alt, 6
  %i.alu = select i1 %.not422, ptr %10, ptr %9
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bi, %bb.bk, %bb.bl
  %.1.sroa.sel404.v = phi ptr [ %9, %bb.bi ], [ %10, %bb.bk ], [ %i.alu, %bb.bl ] ; 7 uses
  %i.alv = fcmp oeq float %i.ald, 0.000000e+00
  %i.alw = fcmp oeq float %i.alf, 0.000000e+00
  %i.alx = select i1 %i.alv, i1 true, i1 %i.alw   ; 7 uses
  %i.aly = icmp ult i32 %i.ali, 2                 ; 7 uses
  %i.alz = fadd float %i.ald, %i.alf
  %..sroa.sel = select i1 %i.alx, ptr %i.ac, ptr %i.ai
  %.1.sroa.sel404.v.sroa.gep734 = getelementptr i8, ptr %.1.sroa.sel404.v, i64 24
  %.sroa.sel = select i1 %i.aly, ptr %..sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep734 ; 2 uses
  %.val448 = load float, ptr %.sroa.sel, align 8, !tbaa !366
  %..sroa.sel742 = select i1 %i.alx, ptr %i.ad, ptr %i.aj
  %.1.sroa.sel404.v.sroa.gep736 = getelementptr i8, ptr %.1.sroa.sel404.v, i64 28
  %.sroa.sel737 = select i1 %i.aly, ptr %..sroa.sel742, ptr %.1.sroa.sel404.v.sroa.gep736 ; 2 uses
  %.val449 = load float, ptr %.sroa.sel737, align 4, !tbaa !365
  %i.ama = fadd float %.val448, %.val449
  %i.amb = fcmp olt float %i.alz, %i.ama
  br i1 %i.amb, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %. = select i1 %i.alx, ptr %7, ptr %8
  %i.amc = select i1 %i.aly, ptr %., ptr %.1.sroa.sel404.v
  store i64 %.0336987, ptr %i.amc, align 8, !tbaa !360
  %i.amd = trunc i64 %.0324976 to i32
  %..sroa.sel372.v.sroa.sel = select i1 %i.alx, ptr %i.aa, ptr %i.ag
  %.1.sroa.sel404.v.sroa.gep733 = getelementptr inbounds nuw i8, ptr %.1.sroa.sel404.v, i64 8
  %.sroa.sel353.v.sroa.sel = select i1 %i.aly, ptr %..sroa.sel372.v.sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep733
  store i32 %i.amd, ptr %.sroa.sel353.v.sroa.sel, align 8, !tbaa !361
  %..sroa.sel375.v.sroa.sel = select i1 %i.alx, ptr %i.ab, ptr %i.ah
  %.1.sroa.sel404.v.sroa.gep732 = getelementptr inbounds nuw i8, ptr %.1.sroa.sel404.v, i64 16
  %.sroa.sel356.v.sroa.sel = select i1 %i.aly, ptr %..sroa.sel375.v.sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep732
  store i64 %i.ala, ptr %.sroa.sel356.v.sroa.sel, align 8, !tbaa !362
  store float %i.alf, ptr %.sroa.sel, align 8, !tbaa !366
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !377
  %..sroa.sel381.v.sroa.sel = select i1 %i.alx, ptr %i.ae, ptr %i.ak
  %.1.sroa.sel404.v.sroa.gep730 = getelementptr inbounds nuw i8, ptr %.1.sroa.sel404.v, i64 32
  %.sroa.sel362.v.sroa.sel = select i1 %i.aly, ptr %..sroa.sel381.v.sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep730
  store i32 %i.amf, ptr %.sroa.sel362.v.sroa.sel, align 8, !tbaa !363
  store float %i.ald, ptr %.sroa.sel737, align 4, !tbaa !365
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !377
  %..sroa.sel387.v.sroa.sel = select i1 %i.alx, ptr %i.af, ptr %i.al
  %.1.sroa.sel404.v.sroa.gep738 = getelementptr inbounds nuw i8, ptr %.1.sroa.sel404.v, i64 36
  %.sroa.sel368.v.sroa.sel = select i1 %i.aly, ptr %..sroa.sel387.v.sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep738
  store i32 %i.amh, ptr %.sroa.sel368.v.sroa.sel, align 4, !tbaa !364
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bh
  %.1326 = phi i64 [ %.0325975, %bb.bh ], [ %i.ala, %bb.bn ], [ %i.ala, %bb.bm ]
  %i.ami = add nuw i64 %.0324976, 1               ; 2 uses
  %exitcond1051.not = icmp eq i64 %i.ami, %.2787
  br i1 %exitcond1051.not, label %._crit_edge978, label %bb.bh, !llvm.loop !335

._crit_edge982:                                   ; preds = %.lr.ph981, %._crit_edge978
  %i.amj = add nuw i64 %.0336987, 1               ; 2 uses
  %i.amk = icmp ult i64 %i.amj, %i.z
  br i1 %i.amk, label %bb.q, label %._crit_edge989.loopexit, !llvm.loop !336

bb.bp:                                            ; preds = %._crit_edge989
  %.2341.val = load float, ptr %i.ao, align 8, !tbaa !366
  %.2341.val443 = load float, ptr %i.ap, align 4, !tbaa !365
  %i.aml = fadd float %.2341.val, %.2341.val443
  %i.amm = fmul float %5, %i.aml
  %i.amn = fcmp ugt float %i.pm, %i.amm
  %spec.select426 = select i1 %i.amn, ptr %9, ptr %10
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge989
  %.3 = phi ptr [ %9, %._crit_edge989 ], [ %spec.select426, %bb.bp ] ; 4 uses
  %.val441 = load float, ptr %i.ai, align 8, !tbaa !366
  %.val442 = load float, ptr %i.aj, align 4, !tbaa !365
  %i.amo = fadd float %.val441, %.val442          ; 2 uses
  %i.amp = fadd float %1, %i.amo
  %i.amq = fcmp olt float %i.amp, %i.ib
  br i1 %i.amq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.amr = getelementptr i8, ptr %.3, i64 24
  %.3.val = load float, ptr %i.amr, align 8, !tbaa !366
  %i.ams = getelementptr i8, ptr %.3, i64 28
  %.3.val438 = load float, ptr %i.ams, align 4, !tbaa !365
  %i.amt = fadd float %.3.val, %.3.val438
  %i.amu = fmul float %5, %i.amt
  %i.amv = fcmp ugt float %i.amo, %i.amu
  %spec.select427 = select i1 %i.amv, ptr %.3, ptr %8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.4 = phi ptr [ %.3, %bb.bq ], [ %spec.select427, %bb.br ] ; 3 uses
  %.val436 = load float, ptr %i.ac, align 8, !tbaa !366
  %.val437 = load float, ptr %i.ad, align 4, !tbaa !365
  %i.amw = fadd float %.val436, %.val437
  %i.amx = fadd float %1, %i.amw
  %i.amy = fcmp olt float %i.amx, %i.ib           ; 3 uses
  %spec.select428 = select i1 %i.amy, ptr %7, ptr %.4
  %.not.i.i546 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i546, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.amz = ptrtoint ptr %.sroa.0.0 to i64
  %i.ana = sub i64 %.sroa.12.0, %i.amz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.ana) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit: ; preds = %bb.bs, %bb.bt
  %.not.i.i547 = icmp eq ptr %.sroa.0.01676, null
  br i1 %.not.i.i547, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit548, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit
  %i.anb = ptrtoint ptr %.sroa.0.01676 to i64
  %i.anc = sub i64 %.sroa.9.0, %i.anb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.01676, i64 noundef %i.anc) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit548

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit548: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit, %bb.bu
  %.not.i.i549 = icmp eq ptr %.sroa.0715.0.lcssa, null
  br i1 %.not.i.i549, label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit548
  %i.and = ptrtoint ptr %.sroa.0715.0.lcssa to i64
  %i.ane = sub i64 %.sroa.22.0.lcssa, %i.and
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0715.0.lcssa, i64 noundef %i.ane) #36
  br label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit548, %bb.bv
  %.not.i.i550 = icmp eq ptr %.sroa.0718.0.lcssa, null
  br i1 %.not.i.i550, label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit552, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit
  %i.anf = ptrtoint ptr %.sroa.0718.0.lcssa to i64
  %i.ang = sub i64 %.sroa.22721.0.lcssa, %i.anf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0718.0.lcssa, i64 noundef %i.ang) #36
  br label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit552

_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit552: ; preds = %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit, %bb.bw
  %.not.i.i553 = icmp eq ptr %i.pl, null
  br i1 %.not.i.i553, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit552
  store ptr %i.pl, ptr %i.bs, align 8, !tbaa !119
  %i.anh = load ptr, ptr %i.bv, align 8, !tbaa !120
  %i.ani = ptrtoint ptr %i.anh to i64
  %i.anj = ptrtoint ptr %i.pl to i64
  %i.ank = sub i64 %i.ani, %i.anj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pl, i64 noundef %i.ank) #36
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit

_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit552, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.anl = load ptr, ptr %15, align 8, !tbaa !84  ; 4 uses
  %.not.i.i554 = icmp eq ptr %i.anl, null
  br i1 %.not.i.i554, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit555, label %bb.by

bb.by:                                            ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit
  store ptr %i.anl, ptr %i.bt, align 8, !tbaa !86
  %i.anm = load ptr, ptr %i.bu, align 8, !tbaa !85
  %i.ann = ptrtoint ptr %i.anm to i64
  %i.ano = ptrtoint ptr %i.anl to i64
  %i.anp = sub i64 %i.ann, %i.ano
  tail call void @_ZdlPvm(ptr noundef nonnull %i.anl, i64 noundef %i.anp) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit555

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit555: ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.anq = load ptr, ptr %14, align 8, !tbaa !84  ; 4 uses
  %.not.i.i556 = icmp eq ptr %i.anq, null
  br i1 %.not.i.i556, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit555
  store ptr %i.anq, ptr %i.bw, align 8, !tbaa !86
  %i.anr = load ptr, ptr %i.bx, align 8, !tbaa !85
  %i.ans = ptrtoint ptr %i.anr to i64
  %i.ant = ptrtoint ptr %i.anq to i64
  %i.anu = sub i64 %i.ans, %i.ant
  tail call void @_ZdlPvm(ptr noundef nonnull %i.anq, i64 noundef %i.anu) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit555, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %spec.select428.sroa.sel.v = select i1 %i.amy, ptr %7, ptr %.4
  %spec.select428.sroa.sel = getelementptr i8, ptr %spec.select428.sroa.sel.v, i64 24
  %.6.val.pre = load float, ptr %spec.select428.sroa.sel, align 8, !tbaa !366
  %spec.select428.sroa.sel1675.v = select i1 %i.amy, ptr %7, ptr %.4
  %spec.select428.sroa.sel1675 = getelementptr i8, ptr %spec.select428.sroa.sel1675.v, i64 28
  %.6.val435.pre = load float, ptr %spec.select428.sroa.sel1675, align 4, !tbaa !365
  br label %.thread817

.thread817.loopexit:                              ; preds = %vec.epilog.scalar.ph1453, %middle.block1446, %vec.epilog.middle.block1466, %.preheader841
  %.lcssa948 = phi i64 [ %i.cc, %.preheader841 ], [ %i.mg, %vec.epilog.middle.block1466 ], [ %i.lx, %middle.block1446 ], [ %spec.select, %vec.epilog.scalar.ph1453 ]
  store i64 %.lcssa948, ptr %i.be, align 8
  br label %.thread817

.thread817.loopexit842:                           ; preds = %vec.epilog.scalar.ph1496, %middle.block1489, %vec.epilog.middle.block1509, %bb.n
  %.lcssa942 = phi i64 [ %i.cc, %bb.n ], [ %i.oa, %vec.epilog.middle.block1509 ], [ %i.nq, %middle.block1489 ], [ %spec.select997, %vec.epilog.scalar.ph1496 ]
  store i64 %.lcssa942, ptr %i.be, align 8
  br label %.thread817

.thread817:                                       ; preds = %.thread817.loopexit842, %.thread817.loopexit, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557
  %.6.val435 = phi float [ %.6.val435.pre, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557 ], [ %i.kp, %.thread817.loopexit ], [ %i.kp, %.thread817.loopexit842 ]
  %.6.val = phi float [ %.6.val.pre, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557 ], [ %i.kp, %.thread817.loopexit ], [ %i.kp, %.thread817.loopexit842 ]
  %.6 = phi ptr [ %spec.select428, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557 ], [ %13, %.thread817.loopexit ], [ %13, %.thread817.loopexit842 ] ; 8 uses
  %i.anv = fadd float %.6.val, %.6.val435
  %i.anw = fadd float %1, %i.anv
  %i.anx = fcmp olt float %i.anw, %i.ib
  br i1 %i.anx, label %bb.ca, label %bb.cr

bb.ca:                                            ; preds = %.thread817
  %i.any = load i64, ptr %.6, align 8, !tbaa !360 ; 2 uses
  %i.anz = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %i.any
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !20 ; 3 uses
  %i.aoc = zext i32 %i.aob to i64                 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.6, i64 8 ; 3 uses
  %i.aoe = load i32, ptr %i.aod, align 8, !tbaa !361
  %i.aof = load ptr, ptr %i.br, align 8, !tbaa !114
  %i.aog = getelementptr inbounds nuw [24 x i8], ptr %i.aof, i64 %i.any
  %i.aoh = zext i32 %i.aoe to i64
  %i.aoi = load ptr, ptr %i.aog, align 8, !tbaa !84
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.aoi, i64 %i.aoh
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !20 ; 3 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %.6, i64 32
  %i.aom = load i32, ptr %i.aol, align 8, !tbaa !363
  %i.aon = getelementptr inbounds nuw i8, ptr %.6, i64 36
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !364
  %i.aop = load ptr, ptr %i.by, align 8, !tbaa !30
  %i.aoq = load ptr, ptr %6, align 8, !tbaa !31   ; 2 uses
  %i.aor = ptrtoint ptr %i.aop to i64
  %i.aos = ptrtoint ptr %i.aoq to i64
  %i.aot = sub i64 %i.aor, %i.aos
  %i.aou = sdiv exact i64 %i.aot, 40
  %i.aov = trunc i64 %i.aou to i32                ; 2 uses
  %i.aow = getelementptr inbounds nuw [40 x i8], ptr %i.aoq, i64 %i.ca ; 4 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  store i32 %i.aov, ptr %i.aox, align 8, !tbaa !36
  %i.aoy = add i32 %i.aov, 1
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aow, i64 12
  store i32 %i.aoy, ptr %i.aoz, align 4, !tbaa !37
  store i32 %i.aok, ptr %i.aow, align 8, !tbaa !38
  %i.apa = trunc i32 %i.aob to i16
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aow, i64 4
  store i16 %i.apa, ptr %i.apb, align 4, !tbaa !39
  %i.apc = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6) #33 ; 0 uses
  %i.apd = load ptr, ptr %i.by, align 8, !tbaa !30 ; 4 uses
  %i.ape = getelementptr inbounds i8, ptr %i.apd, i64 -36
  store i16 -1, ptr %i.ape, align 4, !tbaa !39
  %i.apf = getelementptr inbounds i8, ptr %i.apd, i64 -24
  store i32 %i.aoo, ptr %i.apf, align 8, !tbaa !40
  %i.apg = getelementptr inbounds i8, ptr %i.apd, i64 -16
  store i64 0, ptr %i.apg, align 8, !tbaa !41
  %i.aph = getelementptr inbounds i8, ptr %i.apd, i64 -8
  store i32 1, ptr %i.aph, align 8, !tbaa !42
  %i.api = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6) #33 ; 0 uses
  %i.apj = load ptr, ptr %i.by, align 8, !tbaa !30 ; 4 uses
  %i.apk = getelementptr inbounds i8, ptr %i.apj, i64 -36
  store i16 -1, ptr %i.apk, align 4, !tbaa !39
  %i.apl = getelementptr inbounds i8, ptr %i.apj, i64 -24
  store i32 %i.aom, ptr %i.apl, align 8, !tbaa !40
  %i.apm = getelementptr inbounds i8, ptr %i.apj, i64 -16
  store i64 0, ptr %i.apm, align 8, !tbaa !41
  %i.apn = getelementptr inbounds i8, ptr %i.apj, i64 -8
  store i32 1, ptr %i.apn, align 8, !tbaa !42
  %i.apo = load i64, ptr %.6, align 8, !tbaa !360 ; 3 uses
  %i.app = load i64, ptr %i.bl, align 8, !tbaa !105 ; 2 uses
  %i.apq = icmp ult i64 %i.apo, %i.app
  %i.apr = getelementptr inbounds nuw i8, ptr %.6, i64 16
  %i.aps = load i64, ptr %i.apr, align 8, !tbaa !362 ; 2 uses
  br i1 %i.apq, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.apt = load i32, ptr %i.aod, align 8, !tbaa !361
  tail call void @_ZN3jxl6N_AVX216SplitTreeSamplesILb1EEEvRNS_11TreeSamplesEmmmmj(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.cc, i64 noundef %i.aps, i64 noundef %i.ce, i64 noundef %i.apo, i32 noundef %i.apt) #33
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.apu = sub nuw i64 %i.apo, %i.app
  %i.apv = load i32, ptr %i.aod, align 8, !tbaa !361
  tail call void @_ZN3jxl6N_AVX216SplitTreeSamplesILb0EEEvRNS_11TreeSamplesEmmmmj(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.cc, i64 noundef %i.aps, i64 noundef %i.ce, i64 noundef %i.apu, i32 noundef %i.apv) #33
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.apw = icmp ult i32 %i.aob, 2                 ; 2 uses
  br i1 %i.apw, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.apx = load i64, ptr %.6, align 8, !tbaa !360
  %i.apy = trunc i64 %i.apx to i32
  %i.apz = shl nuw i32 1, %i.apy
  %i.aqa = sext i32 %i.apz to i64
  %i.aqb = or i64 %i.cg, %i.aqa
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  store i64 %.sroa.0216.0.copyload, ptr %17, align 8, !tbaa !24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx219, align 8, !tbaa !24
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  store i64 %.sroa.0216.0.copyload, ptr %17, align 8, !tbaa !24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx219, align 8, !tbaa !24
  %i.aqc = add nsw i32 %i.aok, 1
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %i.aoc
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 4
  store i32 %i.aqc, ptr %i.aqe, align 4, !tbaa !20
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %.0342829 = phi i64 [ %i.cg, %bb.cf ], [ %i.aqb, %bb.ce ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8665)
  %i.aqf = load ptr, ptr %6, align 8, !tbaa !31
  %i.aqg = getelementptr inbounds nuw [40 x i8], ptr %i.aqf, i64 %i.ca
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 12
  %i.aqi = load i32, ptr %i.aqh, align 4, !tbaa !37
  %i.aqj = zext i32 %i.aqi to i64                 ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %.6, i64 16 ; 2 uses
  %i.aql = load i64, ptr %i.aqk, align 8, !tbaa !362 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8665, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !122
  %i.aqm = icmp ult ptr %i.bz, %.sroa.35.0994
  br i1 %i.aqm, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i64 %i.aqj, ptr %i.bz, align 8, !tbaa !46
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !46
  store i64 %i.aql, ptr %i.cd, align 8, !tbaa !46
  store i64 %.0342829, ptr %i.cf, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8665, i64 16, i1 false), !tbaa.struct !122
  br label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit574

bb.ci:                                            ; preds = %bb.cg
  %i.aqn = ptrtoint ptr %i.bz to i64
  %i.aqo = ptrtoint ptr %.sroa.0771.0996 to i64   ; 2 uses
  %i.aqp = sub i64 %i.aqn, %i.aqo                 ; 2 uses
  %i.aqq = sdiv exact i64 %i.aqp, 48
  %i.aqr = add nsw i64 %i.aqq, 1                  ; 2 uses
  %i.aqs = icmp ugt i64 %i.aqr, 384307168202282325
  br i1 %i.aqs, label %bb.cj, label %_ZNKSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE11__recommendB8nn180100Em.exit.i.i559

bb.cj:                                            ; preds = %bb.ci
  tail call fastcc void @_ZNKSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE20__throw_length_errorB8nn180100Ev() #34
  unreachable

_ZNKSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE11__recommendB8nn180100Em.exit.i.i559: ; preds = %bb.ci
  %i.aqt = ptrtoint ptr %.sroa.35.0994 to i64
  %i.aqu = sub i64 %i.aqt, %i.aqo                 ; 2 uses
  %i.aqv = sdiv exact i64 %i.aqu, 48              ; 2 uses
  %.not.i.i.i560 = icmp ult i64 %i.aqv, 192153584101141162
  %i.aqw = shl nuw nsw i64 %i.aqv, 1
  %.sroa.speculated.i.i.i561 = tail call i64 @llvm.umax.i64(i64 %i.aqw, i64 range(i64 -192153584101141161, 192153584101141164) %i.aqr)
  %.0.i.i.i562 = select i1 %.not.i.i.i560, i64 %.sroa.speculated.i.i.i561, i64 384307168202282325 ; 4 uses
  %i.aqx = icmp ne i64 %.0.i.i.i562, 0
  tail call void @llvm.assume(i1 %i.aqx)
  %i.aqy = icmp ugt i64 %.0.i.i.i562, 384307168202282325
  br i1 %i.aqy, label %bb.ck, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_AVX213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563

bb.ck:                                            ; preds = %_ZNKSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE11__recommendB8nn180100Em.exit.i.i559
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #34
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_AVX213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563: ; preds = %_ZNKSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE11__recommendB8nn180100Em.exit.i.i559
  %i.aqz = mul nuw i64 %.0.i.i.i562, 48
  %i.ara = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqz) #35 ; 2 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.aqp ; 8 uses
  %i.arc = getelementptr inbounds nuw [48 x i8], ptr %i.ara, i64 %.0.i.i.i562
  store i64 %i.aqj, ptr %i.arb, align 8, !tbaa !46
  %.sroa.5656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  store i64 %i.cc, ptr %.sroa.5656.0..sroa_idx, align 8, !tbaa !46
  %.sroa.6659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arb, i64 16
  store i64 %i.aql, ptr %.sroa.6659.0..sroa_idx, align 8, !tbaa !46
  %.sroa.7662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arb, i64 24
  store i64 %.0342829, ptr %.sroa.7662.0..sroa_idx, align 8, !tbaa !46
  %.sroa.8665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8665.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arb, i64 48
  %.not2.i.i.i.i.i.i.i.i.i565 = icmp eq ptr %i.bz, %.sroa.0771.0996
  br i1 %.not2.i.i.i.i.i.i.i.i.i565, label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570, label %.lr.ph.i.i.i.i.i.i.i.i.i566

.lr.ph.i.i.i.i.i.i.i.i.i566:                      ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_AVX213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563, %.lr.ph.i.i.i.i.i.i.i.i.i566
  %.val24.i.i.i.i.i.i.i.i.i567 = phi ptr [ %i.arf, %.lr.ph.i.i.i.i.i.i.i.i.i566 ], [ %i.arb, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_AVX213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563 ]
  %.sroa.2.03.i.i.i.i.i.i.i.i.i568 = phi ptr [ %i.are, %.lr.ph.i.i.i.i.i.i.i.i.i566 ], [ %i.bz, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_AVX213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563 ]
  %i.are = getelementptr inbounds i8, ptr %.sroa.2.03.i.i.i.i.i.i.i.i.i568, i64 -48 ; 3 uses
  %i.arf = getelementptr inbounds i8, ptr %.val24.i.i.i.i.i.i.i.i.i567, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.arf, ptr noundef nonnull align 8 dereferenceable(48) %i.are, i64 48, i1 false), !tbaa.struct !123, !noalias !378
  %.not.i.i.i.i.i.i.i.i.i569 = icmp eq ptr %i.are, %.sroa.0771.0996
  br i1 %.not.i.i.i.i.i.i.i.i.i569, label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570, label %.lr.ph.i.i.i.i.i.i.i.i.i566, !llvm.loop !345

_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i566, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_AVX213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563
  %.sroa.415.0.i.i.i.i.i.i.i.i571 = phi ptr [ %i.arb, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_AVX213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i563 ], [ %i.arf, %.lr.ph.i.i.i.i.i.i.i.i.i566 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0771.0996, i64 noundef %i.aqu) #36
  br label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit574

_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit574: ; preds = %bb.ch, %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570
  %.sroa.35.4 = phi ptr [ %.sroa.35.0994, %bb.ch ], [ %i.arc, %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570 ] ; 3 uses
  %.sroa.0771.4 = phi ptr [ %.sroa.0771.0996, %bb.ch ], [ %.sroa.415.0.i.i.i.i.i.i.i.i571, %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570 ] ; 5 uses
  %.0.i573 = phi ptr [ %.sroa.14.0995, %bb.ch ], [ %i.ard, %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i570 ]
  %.promoted.fr.i.i.i.i.i.i581 = freeze ptr %.0.i573 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8665)
  store i64 %.sroa.0216.0.copyload, ptr %17, align 8, !tbaa !24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx219, align 8, !tbaa !24
  br i1 %i.apw, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit574
  %i.arg = add nsw i32 %i.aok, 1
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %i.aoc
end_hunk_5
begin_hunk_6_@_ZN3jxl6N_SSE212EstimateBitsEPKim:bb.a
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !20
  %wide.load62 = load <4 x i32>, ptr %i.h, align 4, !tbaa !20
  %i.i = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.j = add <4 x i32> %wide.load62, %vec.phi61   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !386

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %.lr.ph.i.preheader63

.lr.ph.i.preheader63:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  %.057.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.f, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader63, %.lr.ph.i
  %.08.i = phi i32 [ %i.n, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader63 ]
  %.057.i = phi ptr [ %i.o, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader63 ] ; 2 uses
  %i.m = load i32, ptr %.057.i, align 4, !tbaa !20
  %i.n = add nsw i32 %i.m, %.08.i                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.057.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.a
  br i1 %.not.i, label %.lr.ph.preheader, label %.lr.ph.i, !llvm.loop !387

.lr.ph.preheader:                                 ; preds = %.lr.ph.i, %middle.block
  %.lcssa60 = phi i32 [ %i.l, %middle.block ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.p = sitofp i32 %.lcssa60 to float
  %i.q = fdiv nnan float 1.000000e+00, %i.p
  %i.r = insertelement <4 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = insertelement <4 x i32> poison, i32 %.lcssa60, i64 0
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.031.0.lcssa = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.az, %.lr.ph ] ; 2 uses
  %i.v = shufflevector <4 x float> %.sroa.031.0.lcssa, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.w = fadd <4 x float> %.sroa.031.0.lcssa, %i.v ; 2 uses
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.y = fadd <4 x float> %i.w, %i.x
  %i.z = extractelement <4 x float> %i.y, i64 0
  ret float %i.z

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.031.055 = phi <4 x float> [ %i.az, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %.054 = phi i64 [ %i.ba, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.054
  %i.ab = load <4 x i32>, ptr %i.aa, align 1, !tbaa !24 ; 2 uses
  %i.ac = sitofp <4 x i32> %i.ab to <4 x float>   ; 2 uses
  %i.ad = fmul <4 x float> %i.s, %i.ac
  %i.ae = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ad, <4 x float> splat (float f0x39800000))
  %.not = icmp eq <4 x i32> %i.ab, %i.u
  %i.af = bitcast <4 x float> %i.ae to <4 x i32>  ; 2 uses
  %i.ag = add <4 x i32> %i.af, splat (i32 -1059760811) ; 2 uses
  %i.ah = ashr <4 x i32> %i.ag, splat (i32 23)
  %i.ai = and <4 x i32> %i.ag, splat (i32 -8388608)
  %i.aj = sub <4 x i32> %i.af, %i.ai
  %i.ak = bitcast <4 x i32> %i.aj to <4 x float>
  %i.al = sitofp <4 x i32> %i.ah to <4 x float>
  %i.am = fadd <4 x float> %i.ak, splat (float -1.000000e+00) ; 4 uses
  fence acq_rel
  %i.an = fmul <4 x float> %i.am, splat (float f0x3F3E11C7)
  %i.ao = fadd <4 x float> %i.an, splat (float f0x3FB6E02B)
  %i.ap = fmul <4 x float> %i.am, splat (float f0x3E32458C)
  %i.aq = fadd <4 x float> %i.ap, splat (float f0x3F813CED)
  fence acq_rel
  %i.ar = fmul <4 x float> %i.am, %i.ao
  %i.as = fadd <4 x float> %i.ar, splat (float f0xB5F85AB0)
  %i.at = fmul <4 x float> %i.am, %i.aq
  %i.au = fadd <4 x float> %i.at, splat (float f0x3F7D8625)
  fence acq_rel
  %i.av = fdiv <4 x float> %i.as, %i.au
  %i.aw = fadd <4 x float> %i.av, %i.al
  %i.ax = select <4 x i1> %.not, <4 x float> zeroinitializer, <4 x float> %i.aw
  %i.ay = fmul <4 x float> %i.ax, %i.ac
  %i.az = fsub <4 x float> %.sroa.031.055, %i.ay  ; 2 uses
  %i.ba = add i64 %.054, 4                        ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %1
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl6N_SSE213MakeSplitNodeEmiiNS_9PredictorElS1_lPNSt3__16vectorINS_20PropertyDecisionNodeENS2_9allocatorIS4_EEEE(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef nonnull %7) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load ptr, ptr %7, align 8, !tbaa !31     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %0 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.h, ptr %i.j, align 8, !tbaa !36
  %i.k = add i32 %i.h, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.k, ptr %i.l, align 4, !tbaa !37
  store i32 %2, ptr %i.i, align 8, !tbaa !38
  %i.m = trunc i32 %1 to i16
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i16 %i.m, ptr %i.n, align 4, !tbaa !39
  %i.o = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7) #33 ; 0 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -36
  store i16 -1, ptr %i.q, align 4, !tbaa !39
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -24
  store i32 %5, ptr %i.r, align 8, !tbaa !40
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 -16
  store i64 %6, ptr %i.s, align 8, !tbaa !41
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -8
  store i32 1, ptr %i.t, align 8, !tbaa !42
  %i.u = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7) #33 ; 0 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -36
  store i16 -1, ptr %i.w, align 4, !tbaa !39
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -24
  store i32 %3, ptr %i.x, align 8, !tbaa !40
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -16
  store i64 %4, ptr %i.y, align 8, !tbaa !41
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -8
  store i32 1, ptr %i.z, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN3jxl6N_SSE213BoxIntersectsENSt3__15arrayINS2_IjLm2EEELm2EEES4_RjS5_(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #16 {
bb.a:
  %.sroa.033.0.extract.trunc = trunc i64 %0 to i32 ; 2 uses
  %.sroa.234.0.extract.shift = lshr i64 %0, 32    ; 2 uses
  %.sroa.234.0.extract.trunc = trunc nuw i64 %.sroa.234.0.extract.shift to i32
  %.sroa.335.8.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %.sroa.536.8.extract.shift = lshr i64 %1, 32    ; 2 uses
  %.sroa.536.8.extract.trunc = trunc nuw i64 %.sroa.536.8.extract.shift to i32
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32  ; 3 uses
  %.sroa.2.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %.sroa.3.8.extract.trunc = trunc i64 %3 to i32  ; 3 uses
  %.sroa.5.8.extract.shift = lshr i64 %3, 32      ; 2 uses
  %.sroa.5.8.extract.trunc = trunc nuw i64 %.sroa.5.8.extract.shift to i32 ; 2 uses
  %.not = icmp ult i32 %.sroa.0.0.extract.trunc, %.sroa.234.0.extract.trunc
  %.not26 = icmp ugt i32 %.sroa.2.0.extract.trunc, %.sroa.033.0.extract.trunc
  %or.cond = select i1 %.not, i1 %.not26, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp ugt i32 %.sroa.0.0.extract.trunc, %.sroa.033.0.extract.trunc
  br i1 %.not27, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not28 = icmp samesign ult i64 %.sroa.2.0.extract.shift, %.sroa.234.0.extract.shift
  br i1 %.not28, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sroa.0.0.extract.trunc.sink = phi i32 [ %.sroa.0.0.extract.trunc, %bb.b ], [ %.sroa.2.0.extract.trunc, %bb.c ]
  store i32 0, ptr %4, align 4, !tbaa !20
  %i.a = add i32 %.sroa.0.0.extract.trunc.sink, -1
  store i32 %i.a, ptr %5, align 4, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ true, %.sink.split ]
  %.not.1 = icmp ult i32 %.sroa.3.8.extract.trunc, %.sroa.536.8.extract.trunc
  %.not26.1 = icmp ugt i32 %.sroa.5.8.extract.trunc, %.sroa.335.8.extract.trunc
  %or.cond38 = select i1 %.not.1, i1 %.not26.1, i1 false
  br i1 %or.cond38, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.not27.1 = icmp ugt i32 %.sroa.3.8.extract.trunc, %.sroa.335.8.extract.trunc
  br i1 %.not27.1, label %.critedge.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not28.1 = icmp samesign ult i64 %.sroa.5.8.extract.shift, %.sroa.536.8.extract.shift
  br i1 %.not28.1, label %.critedge.thread.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.f
  br i1 %.1, label %.critedge.thread, label %.loopexit

.critedge.thread.sink.split:                      ; preds = %bb.e, %bb.f
  %.sroa.5.8.extract.trunc.sink = phi i32 [ %.sroa.5.8.extract.trunc, %bb.f ], [ %.sroa.3.8.extract.trunc, %bb.e ]
  store i32 1, ptr %4, align 4, !tbaa !20
  %i.b = add i32 %.sroa.5.8.extract.trunc.sink, -1
  store i32 %i.b, ptr %5, align 4, !tbaa !20
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %.critedge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.d, %.critedge.thread, %.critedge
  %.125 = phi i32 [ 2, %.critedge ], [ 1, %.critedge.thread ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i32 %.125
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl6N_SSE213FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE(ptr noundef nonnull align 8 dereferenceable(304) %0, float noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i64 %3, i64 %4, float noundef %5, ptr noundef %6) #17 {
_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit:
  %7 = alloca %struct.SplitInfo.119, align 8      ; 13 uses
  %8 = alloca %struct.SplitInfo.119, align 8      ; 11 uses
  %9 = alloca %struct.SplitInfo.119, align 8      ; 12 uses
  %10 = alloca %struct.SplitInfo.119, align 8     ; 11 uses
  %11 = alloca %"class.std::__1::vector.55", align 8 ; 9 uses
  %12 = alloca %"class.std::__1::vector.26", align 8 ; 10 uses
  %13 = alloca %struct.SplitInfo.119, align 8     ; 12 uses
  %14 = alloca %"class.std::__1::vector.55", align 8 ; 11 uses
  %15 = alloca %"class.std::__1::vector.55", align 8 ; 13 uses
  %16 = alloca %"class.std::__1::vector.76", align 8 ; 11 uses
  %17 = alloca %"struct.std::__1::array", align 8 ; 13 uses
  %.sroa.8667 = alloca [2 x %"struct.std::__1::array.3"], align 8 ; 4 uses
  %.sroa.8 = alloca [2 x %"struct.std::__1::array.3"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %i.i = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %.sroa.6762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 %i.h, ptr %.sroa.6762.0..sroa_idx, align 8, !tbaa !46
  %.sroa.7765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.sroa.7765.0..sroa_idx, align 8, !tbaa !46
  %.sroa.8768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %3, ptr %.sroa.8768.0..sroa_idx, align 8, !tbaa !24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %4, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !64   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 36
  %.not1003 = icmp ne ptr %i.m, %i.n              ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ba = icmp ugt i64 %i.r, 4611686018427387903
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bm = fadd float %1, 1.000000e+02
  %i.bn = fdiv float 8.000000e+02, %i.bm
  %i.bo = icmp ne ptr %i.u, %i.v
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1) ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit, %bb.cu
  %.sroa.0773.0998 = phi ptr [ %i.i, %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.0773.2, %bb.cu ] ; 7 uses
  %.sroa.14.0997 = phi ptr [ %i.j, %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.14.2, %bb.cu ] ; 7 uses
  %.sroa.35.0996 = phi ptr [ %i.j, %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.35.2, %bb.cu ] ; 5 uses
  %i.bx = getelementptr inbounds i8, ptr %.sroa.14.0997, i64 -48 ; 8 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !456 ; 8 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.14.0997, i64 -40 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !457 ; 40 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.14.0997, i64 -32 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !458 ; 22 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.14.0997, i64 -24 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !459 ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.14.0997, i64 -16 ; 2 uses
  %.sroa.0216.0.copyload = load i64, ptr %i.cf, align 8, !tbaa !24 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.14.0997, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !24 ; 5 uses
  %i.cg = icmp eq i64 %i.ca, %i.cc
  br i1 %i.cg, label %bb.cu, label %bb.b, !llvm.loop !388

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store i64 0, ptr %7, align 8, !tbaa !461
  store i32 0, ptr %i.aa, align 8, !tbaa !462
  store i64 0, ptr %i.ab, align 8, !tbaa !463
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ac, align 8, !tbaa !67
  store i32 0, ptr %i.ae, align 8, !tbaa !464
  store i32 0, ptr %i.af, align 4, !tbaa !465
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store i64 0, ptr %8, align 8, !tbaa !461
  store i32 0, ptr %i.ag, align 8, !tbaa !462
  store i64 0, ptr %i.ah, align 8, !tbaa !463
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ai, align 8, !tbaa !67
  store i32 0, ptr %i.ak, align 8, !tbaa !464
  store i32 0, ptr %i.al, align 4, !tbaa !465
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store i64 0, ptr %9, align 8, !tbaa !461
  store i32 0, ptr %i.am, align 8, !tbaa !462
  store i64 0, ptr %i.an, align 8, !tbaa !463
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ao, align 8, !tbaa !67
  store i32 0, ptr %i.ap, align 8, !tbaa !464
  store i32 0, ptr %i.aq, align 4, !tbaa !465
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store i64 0, ptr %10, align 8, !tbaa !461
  store i32 0, ptr %i.ar, align 8, !tbaa !462
  store i64 0, ptr %i.as, align 8, !tbaa !463
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.at, align 8, !tbaa !67
  store i32 0, ptr %i.au, align 8, !tbaa !464
  store i32 0, ptr %i.av, align 4, !tbaa !465
  %i.ch = icmp ult i64 %i.ca, %i.cc
  %or.cond1144 = and i1 %.not1003, %i.ch
  br i1 %or.cond1144, label %.preheader842.lr.ph.split.us, label %._crit_edge934

.preheader842.lr.ph.split.us:                     ; preds = %bb.b
  %i.ci = load ptr, ptr %0, align 8, !tbaa !72
  %i.cj = sub nuw i64 %i.cc, %i.ca
  %xtraiter = and i64 %i.cj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ck = sub i64 %i.ca, %i.cc
  %i.cl = icmp ugt i64 %i.ck, -4
  br label %.preheader842.us

.preheader842.us:                                 ; preds = %._crit_edge.us, %.preheader842.lr.ph.split.us
  %.0348933.us = phi i64 [ 0, %.preheader842.lr.ph.split.us ], [ %i.ds, %._crit_edge.us ] ; 2 uses
  %.0349932.us = phi i64 [ 0, %.preheader842.lr.ph.split.us ], [ %.lcssa, %._crit_edge.us ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %.0348933.us
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !77 ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader842.us, %.prol.preheader
  %.0347931.us.prol = phi i64 [ %i.ct, %.prol.preheader ], [ %i.ca, %.preheader842.us ] ; 2 uses
  %.1350930.us.prol = phi i64 [ %i.cs, %.prol.preheader ], [ %.0349932.us, %.preheader842.us ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader842.us ]
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %.0347931.us.prol
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !79
  %i.cq = zext i8 %i.cp to i64
  %i.cr = add nuw nsw i64 %i.cq, 1
  %i.cs = tail call i64 @llvm.umax.i64(i64 %.1350930.us.prol, i64 %i.cr) ; 3 uses
  %i.ct = add nuw i64 %.0347931.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !389

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader842.us
  %.lcssa.unr = phi i64 [ poison, %.preheader842.us ], [ %i.cs, %.prol.preheader ]
  %.0347931.us.unr = phi i64 [ %i.ca, %.preheader842.us ], [ %i.ct, %.prol.preheader ]
  %.1350930.us.unr = phi i64 [ %.0349932.us, %.preheader842.us ], [ %i.cs, %.prol.preheader ]
  br i1 %i.cl, label %._crit_edge.us, label %.preheader842.us.new

.preheader842.us.new:                             ; preds = %.prol.loopexit, %.preheader842.us.new
  %.0347931.us = phi i64 [ %i.dr, %.preheader842.us.new ], [ %.0347931.us.unr, %.prol.loopexit ] ; 5 uses
  %.1350930.us = phi i64 [ %i.dq, %.preheader842.us.new ], [ %.1350930.us.unr, %.prol.loopexit ]
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %.0347931.us
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !79
  %i.cw = zext i8 %i.cv to i64
  %i.cx = add nuw nsw i64 %i.cw, 1
  %i.cy = tail call i64 @llvm.umax.i64(i64 %.1350930.us, i64 %i.cx)
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %.0347931.us
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !79
end_hunk_6
begin_hunk_7_@_ZN3jxl6N_SSE213FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE:_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit
  %i.gq = fadd <4 x float> %i.gp, splat (float f0x3F7D8625)
  fence acq_rel
  %i.gr = fdiv <4 x float> %i.go, %i.gq
  %i.gs = fadd <4 x float> %i.gr, %i.gh
  %i.gt = select <4 x i1> %.not.i468, <4 x float> zeroinitializer, <4 x float> %i.gs
  %i.gu = fmul <4 x float> %i.gt, %i.fy
  %i.gv = fsub <4 x float> %.sroa.031.055.i, %i.gu ; 2 uses
  %i.gw = add nuw i64 %.054.i, 4                  ; 2 uses
  %i.gx = icmp ult i64 %i.gw, %.0349.lcssa
  br i1 %i.gx, label %.lr.ph.i, label %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit.loopexit, !llvm.loop !5

_ZN3jxl6N_SSE212EstimateBitsEPKim.exit.loopexit:  ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %12, align 8, !tbaa !64
  br label %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit

_ZN3jxl6N_SSE212EstimateBitsEPKim.exit:           ; preds = %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit.loopexit, %._crit_edge940
  %i.gy = phi ptr [ %i.ei, %._crit_edge940 ], [ %.pre, %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit.loopexit ]
  %.sroa.031.0.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge940 ], [ %i.gv, %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit.loopexit ] ; 2 uses
  %i.gz = shufflevector <4 x float> %.sroa.031.0.lcssa.i, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ha = fadd <4 x float> %.sroa.031.0.lcssa.i, %i.gz ; 2 uses
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hc = fadd <4 x float> %i.ha, %i.hb
  %i.hd = extractelement <4 x float> %i.hc, i64 0
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ex
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !20
  %i.hg = uitofp i32 %i.hf to float
  %i.hh = fadd float %i.hd, %i.hg                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  store i64 0, ptr %13, align 8, !tbaa !461
  store i32 0, ptr %i.bb, align 8, !tbaa !462
  store i64 0, ptr %i.bc, align 8, !tbaa !463
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.bd, align 8, !tbaa !67
  store i32 0, ptr %i.bf, align 8, !tbaa !464
  store i32 0, ptr %i.bg, align 4, !tbaa !465
  %i.hi = load ptr, ptr %2, align 8, !tbaa !91    ; 2 uses
  %i.hj = load ptr, ptr %i.bh, align 8, !tbaa !92 ; 2 uses
  %.not835941 = icmp eq ptr %i.hi, %i.hj
  br i1 %.not835941, label %.thread814, label %.lr.ph943

.lr.ph943:                                        ; preds = %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit
  %.sroa.033.0.extract.trunc.i = trunc i64 %.sroa.0216.0.copyload to i32 ; 2 uses
  %.sroa.234.0.extract.shift.i = lshr i64 %.sroa.0216.0.copyload, 32 ; 2 uses
  %.sroa.234.0.extract.trunc.i = trunc nuw i64 %.sroa.234.0.extract.shift.i to i32
  %.sroa.335.8.extract.trunc.i = trunc i64 %.sroa.6.0.copyload to i32 ; 2 uses
  %.sroa.536.8.extract.shift.i = lshr i64 %.sroa.6.0.copyload, 32 ; 2 uses
  %.sroa.536.8.extract.trunc.i = trunc nuw i64 %.sroa.536.8.extract.shift.i to i32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph939, %._crit_edge
  %.0345938 = phi i64 [ 0, %.lr.ph939 ], [ %i.ie, %._crit_edge ] ; 4 uses
  br i1 %i.ef, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %.0345938
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !77 ; 3 uses
  %i.hm = load ptr, ptr %i.a, align 8, !tbaa !53  ; 3 uses
  %i.hn = mul i64 %.0345938, %.0349.lcssa
  %i.ho = getelementptr [4 x i8], ptr %i.eb, i64 %i.hn ; 3 uses
  br i1 %i.eh, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod1313.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0343937.epil.init = phi i64 [ %i.ca, %.lr.ph ], [ %i.ji, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0344936.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.jh, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1315)
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %.0343937.epil.init ; 2 uses
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %.0343937.epil.init
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !44
  %i.hs = zext i16 %i.hr to i32                   ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !93
  %i.hv = zext i8 %i.hu to i32
  %i.hw = mul nuw nsw i32 %i.hv, %i.hs
  %i.hx = load i8, ptr %i.hp, align 1, !tbaa !79
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr [4 x i8], ptr %i.ho, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !20
  %i.ib = add i32 %i.ia, %i.hs
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !20
  %i.ic = add i32 %i.hw, %.0344936.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.g
  %.0344.lcssa = phi i32 [ 0, %bb.g ], [ %i.jh, %._crit_edge.loopexit.unr-lcssa ], [ %i.ic, %.epil.preheader ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.0345938
  store i32 %.0344.lcssa, ptr %i.id, align 4, !tbaa !20
  %i.ie = add nuw i64 %.0345938, 1                ; 2 uses
  %exitcond1030.not = icmp eq i64 %i.ie, %umax
  br i1 %exitcond1030.not, label %._crit_edge940, label %bb.g, !llvm.loop !394

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.0343937 = phi i64 [ %i.ji, %.lr.ph.new ], [ %i.ca, %.lr.ph ] ; 4 uses
  %.0344936 = phi i32 [ %i.jh, %.lr.ph.new ], [ 0, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %.0343937 ; 2 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %.0343937
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !44
  %i.ii = zext i16 %i.ih to i32                   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !93
  %i.il = zext i8 %i.ik to i32
  %i.im = mul nuw nsw i32 %i.il, %i.ii
  %i.in = load i8, ptr %i.if, align 1, !tbaa !79
  %i.io = zext i8 %i.in to i64
  %i.ip = getelementptr [4 x i8], ptr %i.ho, i64 %i.io ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !20
  %i.ir = add i32 %i.iq, %i.ii
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !20
  %i.is = add i32 %i.im, %.0344936
  %i.it = add nuw i64 %.0343937, 1                ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.it ; 2 uses
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %i.it
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !44
  %i.ix = zext i16 %i.iw to i32                   ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !93
  %i.ja = zext i8 %i.iz to i32
  %i.jb = mul nuw nsw i32 %i.ja, %i.ix
  %i.jc = load i8, ptr %i.iu, align 1, !tbaa !79
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr [4 x i8], ptr %i.ho, i64 %i.jd ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !20
  %i.jg = add i32 %i.jf, %i.ix
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !20
  %i.jh = add i32 %i.jb, %i.is                    ; 3 uses
  %i.ji = add nuw i64 %.0343937, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !395

bb.h:                                             ; preds = %.lr.ph943, %bb.o
  %.sroa.0729.0942 = phi ptr [ %i.hi, %.lr.ph943 ], [ %i.ly, %bb.o ] ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0729.0942, align 4, !tbaa !24 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0729.0942, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !24 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 3 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %.sroa.3.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload to i32 ; 3 uses
  %.sroa.5.8.extract.shift.i = lshr i64 %.sroa.2.0.copyload, 32 ; 2 uses
  %.sroa.5.8.extract.trunc.i = trunc nuw i64 %.sroa.5.8.extract.shift.i to i32 ; 2 uses
  %.not.i469 = icmp ult i32 %.sroa.0.0.extract.trunc.i, %.sroa.234.0.extract.trunc.i
  %.not26.i = icmp ugt i32 %.sroa.2.0.extract.trunc.i, %.sroa.033.0.extract.trunc.i
  %or.cond.i = select i1 %.not.i469, i1 %.not26.i, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %.not27.i = icmp ugt i32 %.sroa.0.0.extract.trunc.i, %.sroa.033.0.extract.trunc.i
  br i1 %.not27.i, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not28.i = icmp samesign ult i64 %.sroa.2.0.extract.shift.i, %.sroa.234.0.extract.shift.i
  br i1 %.not28.i, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.sroa.0.0.extract.trunc.sink.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.i ], [ %.sroa.2.0.extract.trunc.i, %bb.j ]
  %i.jj = add i32 %.sroa.0.0.extract.trunc.sink.i, -1
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.j
  %.0793 = phi i32 [ %i.jj, %.sink.split.i ], [ undef, %bb.j ]
  %.1.i = phi i1 [ true, %.sink.split.i ], [ false, %bb.j ]
  %.not.1.i = icmp ult i32 %.sroa.3.8.extract.trunc.i, %.sroa.536.8.extract.trunc.i
  %.not26.1.i = icmp ugt i32 %.sroa.5.8.extract.trunc.i, %.sroa.335.8.extract.trunc.i
  %or.cond38.i = select i1 %.not.1.i, i1 %.not26.1.i, i1 false
  br i1 %or.cond38.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not27.1.i = icmp ugt i32 %.sroa.3.8.extract.trunc.i, %.sroa.335.8.extract.trunc.i
  br i1 %.not27.1.i, label %.critedge.thread.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not28.1.i = icmp samesign ult i64 %.sroa.5.8.extract.shift.i, %.sroa.536.8.extract.shift.i
  br i1 %.not28.1.i, label %.critedge.thread.sink.split.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.m
  br i1 %.1.i, label %.critedge.thread.i, label %bb.p

.critedge.thread.sink.split.i:                    ; preds = %bb.m, %bb.l
  %.sroa.5.8.extract.trunc.sink.i = phi i32 [ %.sroa.5.8.extract.trunc.i, %bb.m ], [ %.sroa.3.8.extract.trunc.i, %bb.l ]
  %i.jk = add i32 %.sroa.5.8.extract.trunc.sink.i, -1
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %.critedge.thread.sink.split.i
  %.2798.ph = phi i64 [ 1, %.critedge.thread.sink.split.i ], [ 0, %.critedge.i ] ; 5 uses
  %.2795.ph = phi i32 [ %i.jk, %.critedge.thread.sink.split.i ], [ %.0793, %.critedge.i ]
  %i.jl = tail call i32 @llvm.smax.i32(i32 %.2795.ph, i32 -511)
  %i.jm = tail call i32 @llvm.smin.i32(i32 %i.jl, i32 511)
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %.2798.ph
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !53
  %i.jp = sext i32 %i.jm to i64
  %i.jq = getelementptr [2 x i8], ptr %i.jo, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 1022
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !44 ; 3 uses
  %i.jt = zext i16 %i.js to i32                   ; 3 uses
  store i32 %i.jt, ptr %i.bb, align 8, !tbaa !462
  store i64 %.2798.ph, ptr %13, align 8, !tbaa !461
  %i.ju = fmul float %i.hh, 5.000000e-01
  %i.jv = fsub float %i.ju, %1                    ; 6 uses
  store float %i.jv, ptr %i.be, align 4, !tbaa !466
  store float %i.jv, ptr %i.bd, align 8, !tbaa !467
  %i.jw = load ptr, ptr %6, align 8, !tbaa !31
  %i.jx = getelementptr inbounds nuw [40 x i8], ptr %i.jw, i64 %i.by
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !40 ; 2 uses
  store i32 %i.jz, ptr %i.bg, align 4, !tbaa !465
  store i32 %i.jz, ptr %i.bf, align 8, !tbaa !464
  %i.ka = load i64, ptr %i.bj, align 8, !tbaa !105 ; 2 uses
  %i.kb = icmp ult i64 %.2798.ph, %i.ka
  %i.kc = icmp ult i64 %i.ca, %i.cc               ; 2 uses
  br i1 %i.kb, label %.preheader843, label %bb.n

.preheader843:                                    ; preds = %.critedge.thread.i
  br i1 %i.kc, label %.lr.ph952, label %.thread819.loopexit

.lr.ph952:                                        ; preds = %.preheader843
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.2798.ph
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !64 ; 2 uses
  %i.kf = sub nuw i64 %i.cc, %i.ca                ; 3 uses
  %min.iters.check1226 = icmp ult i64 %i.kf, 4
  br i1 %min.iters.check1226, label %scalar.ph1225.preheader, label %vector.ph1227

vector.ph1227:                                    ; preds = %.lr.ph952
  %n.vec1228 = and i64 %i.kf, -4                  ; 3 uses
  %i.kg = add i64 %i.ca, %n.vec1228
  %i.kh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ca, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.jt, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.ca
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1227
  %index1230 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1235, %vector.body1229 ] ; 2 uses
  %vec.phi1231 = phi <2 x i64> [ %i.kh, %vector.ph1227 ], [ %i.kp, %vector.body1229 ]
  %vec.phi1232 = phi <2 x i64> [ zeroinitializer, %vector.ph1227 ], [ %i.kq, %vector.body1229 ]
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %index1230 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %wide.load1233 = load <2 x i32>, ptr %i.kj, align 4, !tbaa !20
  %wide.load1234 = load <2 x i32>, ptr %i.kk, align 4, !tbaa !20
  %i.kl = icmp ule <2 x i32> %wide.load1233, %broadcast.splat
  %i.km = icmp ule <2 x i32> %wide.load1234, %broadcast.splat
  %i.kn = zext <2 x i1> %i.kl to <2 x i64>
  %i.ko = zext <2 x i1> %i.km to <2 x i64>
  %i.kp = add <2 x i64> %vec.phi1231, %i.kn       ; 2 uses
  %i.kq = add <2 x i64> %vec.phi1232, %i.ko       ; 2 uses
  %index.next1235 = add nuw i64 %index1230, 4     ; 2 uses
  %i.kr = icmp eq i64 %index.next1235, %n.vec1228
  br i1 %i.kr, label %middle.block1236, label %vector.body1229, !llvm.loop !396

middle.block1236:                                 ; preds = %vector.body1229
  %bin.rdx1237 = add <2 x i64> %i.kq, %i.kp
  %i.ks = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1237) ; 2 uses
  %cmp.n1238 = icmp eq i64 %i.kf, %n.vec1228
  br i1 %cmp.n1238, label %.thread819.loopexit, label %scalar.ph1225.preheader

scalar.ph1225.preheader:                          ; preds = %.lr.ph952, %middle.block1236
  %.0338951.ph = phi i64 [ %i.ca, %.lr.ph952 ], [ %i.kg, %middle.block1236 ]
  %.ph1283 = phi i64 [ %i.ca, %.lr.ph952 ], [ %i.ks, %middle.block1236 ]
  br label %scalar.ph1225

scalar.ph1225:                                    ; preds = %scalar.ph1225.preheader, %scalar.ph1225
  %.0338951 = phi i64 [ %i.kx, %scalar.ph1225 ], [ %.0338951.ph, %scalar.ph1225.preheader ] ; 2 uses
  %i.kt = phi i64 [ %spec.select999, %scalar.ph1225 ], [ %.ph1283, %scalar.ph1225.preheader ]
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %.0338951
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !20
  %.not419 = icmp ule i32 %i.kv, %i.jt
  %i.kw = zext i1 %.not419 to i64
  %spec.select999 = add i64 %i.kt, %i.kw          ; 2 uses
  %i.kx = add nuw i64 %.0338951, 1                ; 2 uses
  %exitcond1032.not = icmp eq i64 %i.kx, %i.cc
  br i1 %exitcond1032.not, label %.thread819.loopexit, label %scalar.ph1225, !llvm.loop !397

bb.n:                                             ; preds = %.critedge.thread.i
  br i1 %i.kc, label %.lr.ph947, label %.thread819.loopexit844

.lr.ph947:                                        ; preds = %bb.n
  %i.ky = sub nuw nsw i64 %.2798.ph, %i.ka
  %i.kz = load ptr, ptr %i.bk, align 8, !tbaa !106
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.kz, i64 %i.ky
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !111 ; 2 uses
  %i.lc = sub nuw i64 %i.cc, %i.ca                ; 3 uses
  %min.iters.check1242 = icmp ult i64 %i.lc, 4
  br i1 %min.iters.check1242, label %scalar.ph1241.preheader, label %vector.ph1243

vector.ph1243:                                    ; preds = %.lr.ph947
  %n.vec1244 = and i64 %i.lc, -4                  ; 3 uses
  %i.ld = add i64 %i.ca, %n.vec1244
  %i.le = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ca, i64 0
  %broadcast.splatinsert1245 = insertelement <2 x i16> poison, i16 %i.js, i64 0
  %broadcast.splat1246 = shufflevector <2 x i16> %broadcast.splatinsert1245, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.ca
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %vector.ph1243
  %index1248 = phi i64 [ 0, %vector.ph1243 ], [ %index.next1253, %vector.body1247 ] ; 2 uses
  %vec.phi1249 = phi <2 x i64> [ %i.le, %vector.ph1243 ], [ %i.lo, %vector.body1247 ]
  %vec.phi1250 = phi <2 x i64> [ zeroinitializer, %vector.ph1243 ], [ %i.lp, %vector.body1247 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %index1248 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %wide.load1251 = load <2 x i8>, ptr %i.lg, align 1, !tbaa !24
  %wide.load1252 = load <2 x i8>, ptr %i.lh, align 1, !tbaa !24
  %i.li = zext <2 x i8> %wide.load1251 to <2 x i16>
  %i.lj = zext <2 x i8> %wide.load1252 to <2 x i16>
  %i.lk = icmp uge <2 x i16> %broadcast.splat1246, %i.li
  %i.ll = icmp uge <2 x i16> %broadcast.splat1246, %i.lj
  %i.lm = zext <2 x i1> %i.lk to <2 x i64>
  %i.ln = zext <2 x i1> %i.ll to <2 x i64>
  %i.lo = add <2 x i64> %vec.phi1249, %i.lm       ; 2 uses
  %i.lp = add <2 x i64> %vec.phi1250, %i.ln       ; 2 uses
  %index.next1253 = add nuw i64 %index1248, 4     ; 2 uses
  %i.lq = icmp eq i64 %index.next1253, %n.vec1244
  br i1 %i.lq, label %middle.block1254, label %vector.body1247, !llvm.loop !398

middle.block1254:                                 ; preds = %vector.body1247
  %bin.rdx1255 = add <2 x i64> %i.lp, %i.lo
  %i.lr = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1255) ; 2 uses
  %cmp.n1256 = icmp eq i64 %i.lc, %n.vec1244
  br i1 %cmp.n1256, label %.thread819.loopexit844, label %scalar.ph1241.preheader

scalar.ph1241.preheader:                          ; preds = %.lr.ph947, %middle.block1254
  %.0337945.ph = phi i64 [ %i.ca, %.lr.ph947 ], [ %i.ld, %middle.block1254 ]
  %.ph1284 = phi i64 [ %i.ca, %.lr.ph947 ], [ %i.lr, %middle.block1254 ]
  br label %scalar.ph1241

scalar.ph1241:                                    ; preds = %scalar.ph1241.preheader, %scalar.ph1241
  %.0337945 = phi i64 [ %i.lx, %scalar.ph1241 ], [ %.0337945.ph, %scalar.ph1241.preheader ] ; 2 uses
  %i.ls = phi i64 [ %spec.select1000, %scalar.ph1241 ], [ %.ph1284, %scalar.ph1241.preheader ]
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lb, i64 %.0337945
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !24
  %i.lv = zext i8 %i.lu to i16
  %.not = icmp uge i16 %i.js, %i.lv
  %i.lw = zext i1 %.not to i64
  %spec.select1000 = add i64 %i.ls, %i.lw         ; 2 uses
  %i.lx = add nuw i64 %.0337945, 1                ; 2 uses
  %exitcond1031.not = icmp eq i64 %i.lx, %i.cc
  br i1 %exitcond1031.not, label %.thread819.loopexit844, label %scalar.ph1241, !llvm.loop !399

bb.o:                                             ; preds = %bb.h, %bb.k
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0729.0942, i64 20 ; 2 uses
  %.not835 = icmp eq ptr %i.ly, %i.hj
  br i1 %.not835, label %.thread814, label %bb.h

bb.p:                                             ; preds = %.critedge.i
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0729.0942, i64 16
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !113
  %i.mb = load ptr, ptr %6, align 8, !tbaa !31
  %i.mc = getelementptr inbounds nuw [40 x i8], ptr %i.mb, i64 %i.by
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  store i32 %i.ma, ptr %i.md, align 8, !tbaa !42
  br label %.thread814

.thread814:                                       ; preds = %bb.o, %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  br i1 %.not6.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit475, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474

_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474: ; preds = %.thread814
  %i.me = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #35 ; 3 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %.0349.lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.me, i8 0, i64 %.idx.i, i1 false), !tbaa !20
  %i.mg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #35 ; 3 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.0349.lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mg, i8 0, i64 %.idx.i, i1 false), !tbaa !20
  %i.mi = ptrtoint ptr %i.mh to i64
  %i.mj = ptrtoint ptr %i.mf to i64
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit475

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit475: ; preds = %.thread814, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474
  %.sroa.0.01336 = phi ptr [ null, %.thread814 ], [ %i.me, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474 ] ; 14 uses
  %.sroa.9.0 = phi i64 [ 0, %.thread814 ], [ %i.mj, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474 ]
  %.sroa.0.0 = phi ptr [ null, %.thread814 ], [ %i.mg, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474 ] ; 14 uses
  %.sroa.12.0 = phi i64 [ 0, %.thread814 ], [ %i.mi, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i474 ]
  %i.mk = fcmp ogt float %i.hh, %1
  %i.ml = select i1 %i.bo, i1 %i.mk, i1 false
  br i1 %i.ml, label %.lr.ph990, label %._crit_edge991

.lr.ph990:                                        ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit475
  %i.mm = icmp ult i64 %i.ca, %i.cc               ; 4 uses
  %i.mn = getelementptr i8, ptr %.sroa.0.0, i64 %.idx.i ; 3 uses
  %i.mo = sub i64 %i.cc, %i.ca                    ; 6 uses
  %i.mp = xor i64 %i.ca, -1
  %i.mq = add i64 %i.cc, %i.mp                    ; 2 uses
  %xtraiter1317 = and i64 %i.mo, 1
  %i.mr = icmp eq i64 %i.mq, 0
  %unroll_iter1322 = and i64 %i.mo, -2
  %lcmp.mod1318.not = icmp eq i64 %xtraiter1317, 0
  %lcmp.mod1321 = trunc i64 %i.mo to i1
  %xtraiter1325 = and i64 %i.mo, 1
  %i.ms = icmp eq i64 %i.mq, 0
  %unroll_iter1330 = and i64 %i.mo, -2
  %lcmp.mod1326.not = icmp eq i64 %xtraiter1325, 0
  %lcmp.mod1329 = trunc i64 %i.mo to i1
  %i.mt = getelementptr i8, ptr %.sroa.0.01336, i64 %.idx.i ; 3 uses
  %min.iters.check1190 = icmp ult i64 %.0349.lcssa, 8
  %bound0 = icmp ult ptr %.sroa.0.01336, %i.mn
end_hunk_7
begin_hunk_8_@_ZN3jxl6N_SSE213FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE:_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit
vector.body1169:                                  ; preds = %.lr.ph.i.i524.preheader, %vector.body1169
  %index1170 = phi i64 [ %index.next1176, %vector.body1169 ], [ 0, %.lr.ph.i.i524.preheader ] ; 2 uses
  %vec.phi1171 = phi <4 x i32> [ %i.adi, %vector.body1169 ], [ zeroinitializer, %.lr.ph.i.i524.preheader ]
  %vec.phi1172 = phi <4 x i32> [ %i.adj, %vector.body1169 ], [ zeroinitializer, %.lr.ph.i.i524.preheader ]
  %i.adg = shl i64 %index1170, 2
  %next.gep1173 = getelementptr i8, ptr %.sroa.0.01336, i64 %i.adg ; 2 uses
  %i.adh = getelementptr i8, ptr %next.gep1173, i64 16
  %wide.load1174 = load <4 x i32>, ptr %next.gep1173, align 4, !tbaa !20
  %wide.load1175 = load <4 x i32>, ptr %i.adh, align 4, !tbaa !20
  %i.adi = add <4 x i32> %wide.load1174, %vec.phi1171 ; 2 uses
  %i.adj = add <4 x i32> %wide.load1175, %vec.phi1172 ; 2 uses
  %index.next1176 = add nuw i64 %index1170, 8     ; 2 uses
  %i.adk = icmp eq i64 %index.next1176, %n.vec1168
  br i1 %i.adk, label %middle.block1177, label %vector.body1169, !llvm.loop !434

middle.block1177:                                 ; preds = %vector.body1169
  %bin.rdx1178 = add <4 x i32> %i.adj, %i.adi
  %i.adl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1178) ; 2 uses
  br i1 %cmp.n1179, label %.lr.ph.preheader.i528, label %.lr.ph.i.i524.preheader1278

.lr.ph.i.i524.preheader1278:                      ; preds = %.lr.ph.i.i524.preheader, %middle.block1177
  %.08.i.i525.ph = phi i32 [ 0, %.lr.ph.i.i524.preheader ], [ %i.adl, %middle.block1177 ]
  %.057.i.i526.ph = phi ptr [ %.sroa.0.01336, %.lr.ph.i.i524.preheader ], [ %i.my, %middle.block1177 ]
  br label %.lr.ph.i.i524

bb.bd:                                            ; preds = %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit547
  %i.adm = getelementptr i8, ptr %i.aci, i64 4
  store float %i.zt, ptr %i.aci, align 4, !tbaa !475
  store float %.2, ptr %i.adm, align 4, !tbaa !476
  %i.adn = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  store i32 %i.abt, ptr %i.adn, align 4, !tbaa !477
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit547
  %i.ado = fadd float %i.abq, %.2
  %i.adp = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0720.1824, i64 %i.ach ; 4 uses
  %i.adq = load <2 x float>, ptr %i.adp, align 4, !tbaa !67
  %i.adr = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.adq)
  %i.ads = fcmp olt float %i.ado, %i.adr
  br i1 %i.ads, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.adt = getelementptr i8, ptr %i.adp, i64 4
  store float %i.abq, ptr %i.adp, align 4, !tbaa !475
  store float %.2, ptr %i.adt, align 4, !tbaa !476
  %i.adu = load i32, ptr %i.abs, align 4, !tbaa !45
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  store i32 %i.adu, ptr %i.adv, align 4, !tbaa !477
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %.lr.ph973
  %.1332 = phi i64 [ %.0331971, %.lr.ph973 ], [ %i.xk, %bb.bf ], [ %i.xk, %bb.be ]
  %i.adw = add nuw i64 %.0330972, 1               ; 2 uses
  %exitcond1051.not = icmp eq i64 %i.adw, %.2789
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1051.not, label %._crit_edge974, label %.lr.ph973, !llvm.loop !435

._crit_edge980:                                   ; preds = %bb.bo, %.preheader
  %i.adx = load ptr, ptr %16, align 8, !tbaa !121 ; 3 uses
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %i.adx, i64 %.2789
  store i64 0, ptr %i.ady, align 8, !tbaa !46
  br i1 %.not6.i.i, label %._crit_edge984, label %.lr.ph983

.lr.ph983:                                        ; preds = %._crit_edge980
  %i.adz = mul nuw nsw i64 %.2789, %.0349.lcssa
  %i.aea = load ptr, ptr %15, align 8, !tbaa !84
  %i.aeb = getelementptr [4 x i8], ptr %i.aea, i64 %i.adz
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aeb, i8 0, i64 %.idx.i, i1 false), !tbaa !20
  br label %._crit_edge984

bb.bh:                                            ; preds = %.lr.ph979, %bb.bo
  %.0324978 = phi i64 [ %.2792, %.lr.ph979 ], [ %i.afn, %bb.bo ] ; 4 uses
  %.0325977 = phi i64 [ %i.ca, %.lr.ph979 ], [ %.1326, %bb.bo ] ; 2 uses
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %.0324978
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !20 ; 2 uses
  %.not421 = icmp eq i32 %i.aed, 0
  br i1 %.not421, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aee = sext i32 %i.aed to i64
  %i.aef = add i64 %.0325977, %i.aee              ; 3 uses
  %i.aeg = sub nuw i64 %.0324978, %.2792          ; 2 uses
  %i.aeh = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0717.1, i64 %i.aeg ; 3 uses
  %i.aei = load float, ptr %i.aeh, align 4, !tbaa !475 ; 3 uses
  %i.aej = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0720.1824, i64 %i.aeg ; 3 uses
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !475 ; 3 uses
  %i.ael = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %.0336989
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !20 ; 2 uses
  %i.aeo = icmp ne i32 %i.aen, 15
  %brmerge = select i1 %i.aeo, i1 true, i1 %i.uo
  br i1 %brmerge, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aej, i64 8
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !477
  %i.aer = icmp eq i32 %i.aeq, 6
  br i1 %i.aer, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !477
  %i.aeu = icmp eq i32 %i.aet, 6
  br i1 %i.aeu, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.aev = load ptr, ptr %6, align 8, !tbaa !31
  %i.aew = getelementptr inbounds nuw [40 x i8], ptr %i.aev, i64 %i.by
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 16
  %i.aey = load i32, ptr %i.aex, align 8, !tbaa !40
  %.not422 = icmp eq i32 %i.aey, 6
  %i.aez = select i1 %.not422, ptr %10, ptr %9
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bi, %bb.bk, %bb.bl
  %.1.sroa.sel404.v = phi ptr [ %9, %bb.bi ], [ %10, %bb.bk ], [ %i.aez, %bb.bl ] ; 7 uses
  %i.afa = fcmp oeq float %i.aei, 0.000000e+00
  %i.afb = fcmp oeq float %i.aek, 0.000000e+00
  %i.afc = select i1 %i.afa, i1 true, i1 %i.afb   ; 7 uses
  %i.afd = icmp ult i32 %i.aen, 2                 ; 7 uses
  %i.afe = fadd float %i.aei, %i.aek
  %..sroa.sel = select i1 %i.afc, ptr %i.ac, ptr %i.ai
  %.1.sroa.sel404.v.sroa.gep736 = getelementptr i8, ptr %.1.sroa.sel404.v, i64 24
  %.sroa.sel = select i1 %i.afd, ptr %..sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep736 ; 2 uses
  %.val447 = load float, ptr %.sroa.sel, align 8, !tbaa !467
  %..sroa.sel744 = select i1 %i.afc, ptr %i.ad, ptr %i.aj
  %.1.sroa.sel404.v.sroa.gep738 = getelementptr i8, ptr %.1.sroa.sel404.v, i64 28
  %.sroa.sel739 = select i1 %i.afd, ptr %..sroa.sel744, ptr %.1.sroa.sel404.v.sroa.gep738 ; 2 uses
  %.val448 = load float, ptr %.sroa.sel739, align 4, !tbaa !466
  %i.aff = fadd float %.val447, %.val448
  %i.afg = fcmp olt float %i.afe, %i.aff
  br i1 %i.afg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %. = select i1 %i.afc, ptr %7, ptr %8
  %i.afh = select i1 %i.afd, ptr %., ptr %.1.sroa.sel404.v
  store i64 %.0336989, ptr %i.afh, align 8, !tbaa !461
  %i.afi = trunc i64 %.0324978 to i32
  %..sroa.sel372.v.sroa.sel = select i1 %i.afc, ptr %i.aa, ptr %i.ag
  %.1.sroa.sel404.v.sroa.gep735 = getelementptr inbounds nuw i8, ptr %.1.sroa.sel404.v, i64 8
  %.sroa.sel353.v.sroa.sel = select i1 %i.afd, ptr %..sroa.sel372.v.sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep735
  store i32 %i.afi, ptr %.sroa.sel353.v.sroa.sel, align 8, !tbaa !462
  %..sroa.sel375.v.sroa.sel = select i1 %i.afc, ptr %i.ab, ptr %i.ah
  %.1.sroa.sel404.v.sroa.gep734 = getelementptr inbounds nuw i8, ptr %.1.sroa.sel404.v, i64 16
  %.sroa.sel356.v.sroa.sel = select i1 %i.afd, ptr %..sroa.sel375.v.sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep734
  store i64 %i.aef, ptr %.sroa.sel356.v.sroa.sel, align 8, !tbaa !463
  store float %i.aek, ptr %.sroa.sel, align 8, !tbaa !467
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aej, i64 8
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !477
  %..sroa.sel381.v.sroa.sel = select i1 %i.afc, ptr %i.ae, ptr %i.ak
  %.1.sroa.sel404.v.sroa.gep732 = getelementptr inbounds nuw i8, ptr %.1.sroa.sel404.v, i64 32
  %.sroa.sel362.v.sroa.sel = select i1 %i.afd, ptr %..sroa.sel381.v.sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep732
  store i32 %i.afk, ptr %.sroa.sel362.v.sroa.sel, align 8, !tbaa !464
  store float %i.aei, ptr %.sroa.sel739, align 4, !tbaa !466
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !477
  %..sroa.sel387.v.sroa.sel = select i1 %i.afc, ptr %i.af, ptr %i.al
  %.1.sroa.sel404.v.sroa.gep740 = getelementptr inbounds nuw i8, ptr %.1.sroa.sel404.v, i64 36
  %.sroa.sel368.v.sroa.sel = select i1 %i.afd, ptr %..sroa.sel387.v.sroa.sel, ptr %.1.sroa.sel404.v.sroa.gep740
  store i32 %i.afm, ptr %.sroa.sel368.v.sroa.sel, align 4, !tbaa !465
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bh
  %.1326 = phi i64 [ %.0325977, %bb.bh ], [ %i.aef, %bb.bn ], [ %i.aef, %bb.bm ]
  %i.afn = add nuw i64 %.0324978, 1               ; 2 uses
  %exitcond1054.not = icmp eq i64 %i.afn, %.2789
  br i1 %exitcond1054.not, label %._crit_edge980, label %bb.bh, !llvm.loop !436

._crit_edge984:                                   ; preds = %.lr.ph983, %._crit_edge980
  %i.afo = add nuw i64 %.0336989, 1               ; 2 uses
  %i.afp = icmp ult i64 %i.afo, %i.z
  br i1 %i.afp, label %bb.q, label %._crit_edge991.loopexit, !llvm.loop !437

bb.bp:                                            ; preds = %._crit_edge991
  %i.afq = load <2 x float>, ptr %i.ao, align 8, !tbaa !67
  %i.afr = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.afq)
  %i.afs = fmul float %5, %i.afr
  %i.aft = fcmp ugt float %i.nj, %i.afs
  %spec.select = select i1 %i.aft, ptr %9, ptr %10
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge991
  %.3 = phi ptr [ %9, %._crit_edge991 ], [ %spec.select, %bb.bp ] ; 3 uses
  %.val440 = load float, ptr %i.ai, align 8, !tbaa !467
  %.val441 = load float, ptr %i.aj, align 4, !tbaa !466
  %i.afu = fadd float %.val440, %.val441          ; 2 uses
  %i.afv = fadd float %1, %i.afu
  %i.afw = fcmp olt float %i.afv, %i.hh
  br i1 %i.afw, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.afx = getelementptr i8, ptr %.3, i64 24
  %i.afy = load <2 x float>, ptr %i.afx, align 8, !tbaa !67
  %i.afz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.afy)
  %i.aga = fmul float %5, %i.afz
  %i.agb = fcmp ugt float %i.afu, %i.aga
  %spec.select426 = select i1 %i.agb, ptr %.3, ptr %8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.4 = phi ptr [ %.3, %bb.bq ], [ %spec.select426, %bb.br ] ; 3 uses
  %.val435 = load float, ptr %i.ac, align 8, !tbaa !467
  %.val436 = load float, ptr %i.ad, align 4, !tbaa !466
  %i.agc = fadd float %.val435, %.val436
  %i.agd = fadd float %1, %i.agc
  %i.age = fcmp olt float %i.agd, %i.hh           ; 3 uses
  %spec.select427 = select i1 %i.age, ptr %7, ptr %.4
  %.not.i.i548 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i548, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.agf = ptrtoint ptr %.sroa.0.0 to i64
  %i.agg = sub i64 %.sroa.12.0, %i.agf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.agg) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit: ; preds = %bb.bs, %bb.bt
  %.not.i.i549 = icmp eq ptr %.sroa.0.01336, null
  br i1 %.not.i.i549, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit550, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit
  %i.agh = ptrtoint ptr %.sroa.0.01336 to i64
  %i.agi = sub i64 %.sroa.9.0, %i.agh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.01336, i64 noundef %i.agi) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit550

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit550: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit, %bb.bu
  %.not.i.i551 = icmp eq ptr %.sroa.0717.0.lcssa, null
  br i1 %.not.i.i551, label %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit550
  %i.agj = ptrtoint ptr %.sroa.0717.0.lcssa to i64
  %i.agk = sub i64 %.sroa.22.0.lcssa, %i.agj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0717.0.lcssa, i64 noundef %i.agk) #36
  br label %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit550, %bb.bv
  %.not.i.i552 = icmp eq ptr %.sroa.0720.0.lcssa, null
  br i1 %.not.i.i552, label %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit554, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit
  %i.agl = ptrtoint ptr %.sroa.0720.0.lcssa to i64
  %i.agm = sub i64 %.sroa.22723.0.lcssa, %i.agl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0720.0.lcssa, i64 noundef %i.agm) #36
  br label %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit554

_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit554: ; preds = %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit, %bb.bw
  %.not.i.i555 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i555, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit554
  store ptr %i.ni, ptr %i.bq, align 8, !tbaa !119
  %i.agn = load ptr, ptr %i.bt, align 8, !tbaa !120
  %i.ago = ptrtoint ptr %i.agn to i64
  %i.agp = ptrtoint ptr %i.ni to i64
  %i.agq = sub i64 %i.ago, %i.agp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef %i.agq) #36
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit

_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEED2B8nn180100Ev.exit554, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.agr = load ptr, ptr %15, align 8, !tbaa !84  ; 4 uses
  %.not.i.i556 = icmp eq ptr %i.agr, null
  br i1 %.not.i.i556, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557, label %bb.by

bb.by:                                            ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit
  store ptr %i.agr, ptr %i.br, align 8, !tbaa !86
  %i.ags = load ptr, ptr %i.bs, align 8, !tbaa !85
  %i.agt = ptrtoint ptr %i.ags to i64
  %i.agu = ptrtoint ptr %i.agr to i64
  %i.agv = sub i64 %i.agt, %i.agu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.agr, i64 noundef %i.agv) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557: ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.agw = load ptr, ptr %14, align 8, !tbaa !84  ; 4 uses
  %.not.i.i558 = icmp eq ptr %i.agw, null
  br i1 %.not.i.i558, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit559, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557
  store ptr %i.agw, ptr %i.bu, align 8, !tbaa !86
  %i.agx = load ptr, ptr %i.bv, align 8, !tbaa !85
  %i.agy = ptrtoint ptr %i.agx to i64
  %i.agz = ptrtoint ptr %i.agw to i64
  %i.aha = sub i64 %i.agy, %i.agz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.agw, i64 noundef %i.aha) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit559

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit559: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit557, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %spec.select427.sroa.sel.v = select i1 %i.age, ptr %7, ptr %.4
  %spec.select427.sroa.sel = getelementptr i8, ptr %spec.select427.sroa.sel.v, i64 24
  %.6.val.pre = load float, ptr %spec.select427.sroa.sel, align 8, !tbaa !467
  %spec.select427.sroa.sel1335.v = select i1 %i.age, ptr %7, ptr %.4
  %spec.select427.sroa.sel1335 = getelementptr i8, ptr %spec.select427.sroa.sel1335.v, i64 28
  %.6.val434.pre = load float, ptr %spec.select427.sroa.sel1335, align 4, !tbaa !466
  br label %.thread819

.thread819.loopexit:                              ; preds = %scalar.ph1225, %middle.block1236, %.preheader843
  %.lcssa950 = phi i64 [ %i.ca, %.preheader843 ], [ %i.ks, %middle.block1236 ], [ %spec.select999, %scalar.ph1225 ]
  store i64 %.lcssa950, ptr %i.bc, align 8
  br label %.thread819

.thread819.loopexit844:                           ; preds = %scalar.ph1241, %middle.block1254, %bb.n
  %.lcssa944 = phi i64 [ %i.ca, %bb.n ], [ %i.lr, %middle.block1254 ], [ %spec.select1000, %scalar.ph1241 ]
  store i64 %.lcssa944, ptr %i.bc, align 8
  br label %.thread819

.thread819:                                       ; preds = %.thread819.loopexit844, %.thread819.loopexit, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit559
  %.6.val434 = phi float [ %.6.val434.pre, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit559 ], [ %i.jv, %.thread819.loopexit ], [ %i.jv, %.thread819.loopexit844 ]
  %.6.val = phi float [ %.6.val.pre, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit559 ], [ %i.jv, %.thread819.loopexit ], [ %i.jv, %.thread819.loopexit844 ]
  %.6 = phi ptr [ %spec.select427, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit559 ], [ %13, %.thread819.loopexit ], [ %13, %.thread819.loopexit844 ] ; 8 uses
  %i.ahb = fadd float %.6.val, %.6.val434
  %i.ahc = fadd float %1, %i.ahb
  %i.ahd = fcmp olt float %i.ahc, %i.hh
  br i1 %i.ahd, label %bb.ca, label %bb.cr

bb.ca:                                            ; preds = %.thread819
  %i.ahe = load i64, ptr %.6, align 8, !tbaa !461 ; 2 uses
  %i.ahf = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.ahe
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !20 ; 3 uses
  %i.ahi = zext i32 %i.ahh to i64                 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.6, i64 8 ; 3 uses
  %i.ahk = load i32, ptr %i.ahj, align 8, !tbaa !462
  %i.ahl = load ptr, ptr %i.bp, align 8, !tbaa !114
  %i.ahm = getelementptr inbounds nuw [24 x i8], ptr %i.ahl, i64 %i.ahe
  %i.ahn = zext i32 %i.ahk to i64
  %i.aho = load ptr, ptr %i.ahm, align 8, !tbaa !84
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.ahn
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !20 ; 3 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.6, i64 32
  %i.ahs = load i32, ptr %i.ahr, align 8, !tbaa !464
  %i.aht = getelementptr inbounds nuw i8, ptr %.6, i64 36
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !465
  %i.ahv = load ptr, ptr %i.bw, align 8, !tbaa !30
  %i.ahw = load ptr, ptr %6, align 8, !tbaa !31   ; 2 uses
  %i.ahx = ptrtoint ptr %i.ahv to i64
  %i.ahy = ptrtoint ptr %i.ahw to i64
  %i.ahz = sub i64 %i.ahx, %i.ahy
  %i.aia = sdiv exact i64 %i.ahz, 40
  %i.aib = trunc i64 %i.aia to i32                ; 2 uses
  %i.aic = getelementptr inbounds nuw [40 x i8], ptr %i.ahw, i64 %i.by ; 4 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  store i32 %i.aib, ptr %i.aid, align 8, !tbaa !36
  %i.aie = add i32 %i.aib, 1
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aic, i64 12
  store i32 %i.aie, ptr %i.aif, align 4, !tbaa !37
  store i32 %i.ahq, ptr %i.aic, align 8, !tbaa !38
  %i.aig = trunc i32 %i.ahh to i16
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aic, i64 4
  store i16 %i.aig, ptr %i.aih, align 4, !tbaa !39
  %i.aii = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6) #33 ; 0 uses
  %i.aij = load ptr, ptr %i.bw, align 8, !tbaa !30 ; 4 uses
  %i.aik = getelementptr inbounds i8, ptr %i.aij, i64 -36
  store i16 -1, ptr %i.aik, align 4, !tbaa !39
  %i.ail = getelementptr inbounds i8, ptr %i.aij, i64 -24
  store i32 %i.ahu, ptr %i.ail, align 8, !tbaa !40
  %i.aim = getelementptr inbounds i8, ptr %i.aij, i64 -16
  store i64 0, ptr %i.aim, align 8, !tbaa !41
  %i.ain = getelementptr inbounds i8, ptr %i.aij, i64 -8
  store i32 1, ptr %i.ain, align 8, !tbaa !42
  %i.aio = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6) #33 ; 0 uses
  %i.aip = load ptr, ptr %i.bw, align 8, !tbaa !30 ; 4 uses
  %i.aiq = getelementptr inbounds i8, ptr %i.aip, i64 -36
  store i16 -1, ptr %i.aiq, align 4, !tbaa !39
  %i.air = getelementptr inbounds i8, ptr %i.aip, i64 -24
  store i32 %i.ahs, ptr %i.air, align 8, !tbaa !40
  %i.ais = getelementptr inbounds i8, ptr %i.aip, i64 -16
  store i64 0, ptr %i.ais, align 8, !tbaa !41
  %i.ait = getelementptr inbounds i8, ptr %i.aip, i64 -8
  store i32 1, ptr %i.ait, align 8, !tbaa !42
  %i.aiu = load i64, ptr %.6, align 8, !tbaa !461 ; 3 uses
  %i.aiv = load i64, ptr %i.bj, align 8, !tbaa !105 ; 2 uses
  %i.aiw = icmp ult i64 %i.aiu, %i.aiv
  %i.aix = getelementptr inbounds nuw i8, ptr %.6, i64 16
  %i.aiy = load i64, ptr %i.aix, align 8, !tbaa !463 ; 2 uses
  br i1 %i.aiw, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.aiz = load i32, ptr %i.ahj, align 8, !tbaa !462
  tail call void @_ZN3jxl6N_SSE216SplitTreeSamplesILb1EEEvRNS_11TreeSamplesEmmmmj(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.ca, i64 noundef %i.aiy, i64 noundef %i.cc, i64 noundef %i.aiu, i32 noundef %i.aiz) #33
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.aja = sub nuw i64 %i.aiu, %i.aiv
  %i.ajb = load i32, ptr %i.ahj, align 8, !tbaa !462
  tail call void @_ZN3jxl6N_SSE216SplitTreeSamplesILb0EEEvRNS_11TreeSamplesEmmmmj(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.ca, i64 noundef %i.aiy, i64 noundef %i.cc, i64 noundef %i.aja, i32 noundef %i.ajb) #33
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.ajc = icmp ult i32 %i.ahh, 2                 ; 2 uses
  br i1 %i.ajc, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ajd = load i64, ptr %.6, align 8, !tbaa !461
  %i.aje = trunc i64 %i.ajd to i32
  %i.ajf = shl nuw i32 1, %i.aje
  %i.ajg = sext i32 %i.ajf to i64
  %i.ajh = or i64 %i.ce, %i.ajg
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  store i64 %.sroa.0216.0.copyload, ptr %17, align 8, !tbaa !24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx219, align 8, !tbaa !24
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  store i64 %.sroa.0216.0.copyload, ptr %17, align 8, !tbaa !24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx219, align 8, !tbaa !24
  %i.aji = add nsw i32 %i.ahq, 1
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %i.ahi
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 4
  store i32 %i.aji, ptr %i.ajk, align 4, !tbaa !20
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %.0342831 = phi i64 [ %i.ce, %bb.cf ], [ %i.ajh, %bb.ce ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8667)
  %i.ajl = load ptr, ptr %6, align 8, !tbaa !31
  %i.ajm = getelementptr inbounds nuw [40 x i8], ptr %i.ajl, i64 %i.by
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 12
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !37
  %i.ajp = zext i32 %i.ajo to i64                 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.6, i64 16 ; 2 uses
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !463 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8667, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !122
  %i.ajs = icmp ult ptr %i.bx, %.sroa.35.0996
  br i1 %i.ajs, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i64 %i.ajp, ptr %i.bx, align 8, !tbaa !46
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !46
  store i64 %i.ajr, ptr %i.cb, align 8, !tbaa !46
  store i64 %.0342831, ptr %i.cd, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8667, i64 16, i1 false), !tbaa.struct !122
  br label %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit576

bb.ci:                                            ; preds = %bb.cg
  %i.ajt = ptrtoint ptr %i.bx to i64
  %i.aju = ptrtoint ptr %.sroa.0773.0998 to i64   ; 2 uses
  %i.ajv = sub i64 %i.ajt, %i.aju                 ; 2 uses
  %i.ajw = sdiv exact i64 %i.ajv, 48
  %i.ajx = add nsw i64 %i.ajw, 1                  ; 2 uses
  %i.ajy = icmp ugt i64 %i.ajx, 384307168202282325
  br i1 %i.ajy, label %bb.cj, label %_ZNKSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE11__recommendB8nn180100Em.exit.i.i561

bb.cj:                                            ; preds = %bb.ci
  tail call fastcc void @_ZNKSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE20__throw_length_errorB8nn180100Ev() #34
  unreachable

_ZNKSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE11__recommendB8nn180100Em.exit.i.i561: ; preds = %bb.ci
  %i.ajz = ptrtoint ptr %.sroa.35.0996 to i64
  %i.aka = sub i64 %i.ajz, %i.aju                 ; 2 uses
  %i.akb = sdiv exact i64 %i.aka, 48              ; 2 uses
  %.not.i.i.i562 = icmp ult i64 %i.akb, 192153584101141162
  %i.akc = shl nuw nsw i64 %i.akb, 1
  %.sroa.speculated.i.i.i563 = tail call i64 @llvm.umax.i64(i64 %i.akc, i64 range(i64 -192153584101141161, 192153584101141164) %i.ajx)
  %.0.i.i.i564 = select i1 %.not.i.i.i562, i64 %.sroa.speculated.i.i.i563, i64 384307168202282325 ; 4 uses
  %i.akd = icmp ne i64 %.0.i.i.i564, 0
  tail call void @llvm.assume(i1 %i.akd)
  %i.ake = icmp ugt i64 %.0.i.i.i564, 384307168202282325
  br i1 %i.ake, label %bb.ck, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i565

bb.ck:                                            ; preds = %_ZNKSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE11__recommendB8nn180100Em.exit.i.i561
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #34
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i565: ; preds = %_ZNKSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE11__recommendB8nn180100Em.exit.i.i561
  %i.akf = mul nuw i64 %.0.i.i.i564, 48
  %i.akg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akf) #35 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 %i.ajv ; 8 uses
  %i.aki = getelementptr inbounds nuw [48 x i8], ptr %i.akg, i64 %.0.i.i.i564
  store i64 %i.ajp, ptr %i.akh, align 8, !tbaa !46
  %.sroa.5658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  store i64 %i.ca, ptr %.sroa.5658.0..sroa_idx, align 8, !tbaa !46
  %.sroa.6661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  store i64 %i.ajr, ptr %.sroa.6661.0..sroa_idx, align 8, !tbaa !46
  %.sroa.7664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akh, i64 24
  store i64 %.0342831, ptr %.sroa.7664.0..sroa_idx, align 8, !tbaa !46
  %.sroa.8667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akh, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8667.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akh, i64 48
  %.not2.i.i.i.i.i.i.i.i.i567 = icmp eq ptr %i.bx, %.sroa.0773.0998
  br i1 %.not2.i.i.i.i.i.i.i.i.i567, label %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i572, label %.lr.ph.i.i.i.i.i.i.i.i.i568

.lr.ph.i.i.i.i.i.i.i.i.i568:                      ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i565, %.lr.ph.i.i.i.i.i.i.i.i.i568
  %.val24.i.i.i.i.i.i.i.i.i569 = phi ptr [ %i.akl, %.lr.ph.i.i.i.i.i.i.i.i.i568 ], [ %i.akh, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i565 ]
  %.sroa.2.03.i.i.i.i.i.i.i.i.i570 = phi ptr [ %i.akk, %.lr.ph.i.i.i.i.i.i.i.i.i568 ], [ %i.bx, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i565 ]
  %i.akk = getelementptr inbounds i8, ptr %.sroa.2.03.i.i.i.i.i.i.i.i.i570, i64 -48 ; 3 uses
  %i.akl = getelementptr inbounds i8, ptr %.val24.i.i.i.i.i.i.i.i.i569, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.akl, ptr noundef nonnull align 8 dereferenceable(48) %i.akk, i64 48, i1 false), !tbaa.struct !123, !noalias !478
  %.not.i.i.i.i.i.i.i.i.i571 = icmp eq ptr %i.akk, %.sroa.0773.0998
  br i1 %.not.i.i.i.i.i.i.i.i.i571, label %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i572, label %.lr.ph.i.i.i.i.i.i.i.i.i568, !llvm.loop !446

_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i572: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i568, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i565
  %.sroa.415.0.i.i.i.i.i.i.i.i573 = phi ptr [ %i.akh, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIZN3jxl6N_SSE213FindBestSplitERNS2_11TreeSamplesEfRKNS_6vectorINS2_21ModularMultiplierInfoENS1_IS7_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS6_INS2_20PropertyDecisionNodeENS1_ISF_EEEEE8NodeInfoEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSN_m.exit.i.i.i565 ], [ %i.akl, %.lr.ph.i.i.i.i.i.i.i.i.i568 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0773.0998, i64 noundef %i.aka) #36
  br label %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit576

_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit576: ; preds = %bb.ch, %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i572
  %.sroa.35.4 = phi ptr [ %.sroa.35.0996, %bb.ch ], [ %i.aki, %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i572 ] ; 3 uses
  %.sroa.0773.4 = phi ptr [ %.sroa.0773.0998, %bb.ch ], [ %.sroa.415.0.i.i.i.i.i.i.i.i573, %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i572 ] ; 5 uses
  %.0.i575 = phi ptr [ %.sroa.14.0997, %bb.ch ], [ %i.akj, %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE26__swap_out_circular_bufferERNS_14__split_bufferISI_RSJ_EE.exit.i.i572 ]
  %.promoted.fr.i.i.i.i.i.i583 = freeze ptr %.0.i575 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8667)
  store i64 %.sroa.0216.0.copyload, ptr %17, align 8, !tbaa !24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx219, align 8, !tbaa !24
  br i1 %i.ajc, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit576
  %i.akm = add nsw i32 %i.ahq, 1
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %i.ahi
end_hunk_8
