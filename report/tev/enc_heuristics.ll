Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_heuristics?download=true
inline.NumInlined: 3479
inline.NumDeleted: 1819
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN3jxl7SplinesD2Ev:bb.a
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit2

_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit2: ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !315  ; 4 uses
  %.not.i.i3 = icmp eq ptr %i.r, null
  br i1 %.not.i.i3, label %_ZNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.r, ptr %i.s, align 8, !tbaa !316
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !348
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.x) #25
  br label %_ZNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit2, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !313  ; 4 uses
  %.not.i.i4 = icmp eq ptr %i.z, null
  br i1 %.not.i.i4, label %_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEED2B8nn180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEED2B8nn180100Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !314
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !347
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.af) #25
  br label %_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEED2B8nn180100Ev.exit, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !184 ; 5 uses
  %.not.i.i5 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i5, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEED2B8nn180100Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !185 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ak, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i ], [ %i.aj, %bb.f ] ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -536 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !343 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -528
  store ptr %i.al, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -520
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !345
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ar) #25
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.ak
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.ag, align 8, !tbaa !184
  br label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i, %bb.f
  %i.as = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i ], [ %i.ah, %bb.f ] ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !185
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !346
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.ax) #25
  br label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEED2B8nn180100Ev.exit, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i
  ret void
}

declare i32 @_ZN3jxl7Splines19InitializeDrawCacheEmmRKNS_16ColorCorrelationE(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, i64 noundef, ptr noundef nonnull align 4 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZNK3jxl7Splines12SubtractFromEPNS_6Image3IfEE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #4

declare i32 @_ZN3jxl23FindBestPatchDictionaryERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEb(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @_ZN3jxl22PatchDictionaryEncoder12SubtractFromERKNS_15PatchDictionaryEPNS_6Image3IfEE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef) local_unnamed_addr #4

declare noundef float @_ZN3jxl14InitialQuantDCEf(float noundef) local_unnamed_addr #4

declare void @_ZN3jxl9Quantizer26ComputeGlobalScaleAndQuantEfff(ptr noundef nonnull align 8 dereferenceable(72), float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @_ZN3jxl17InitialQuantFieldEfRKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEfPNS_5PlaneIfEESC_(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr.62") align 8, float noundef, ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_ZN3jxl15GaborishInverseEPNS_6Image3IfEERKNS_5RectTImEEPKfPNS_10ThreadPoolE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_ZN3jxl13CfLHeuristics4InitERKNS_5RectTImEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i32 @_ZN3jxl20AcStrategyHeuristics4InitERKNS_6Image3IfEERKNS_5RectTImEERKNS_5PlaneIfEESC_SC_PNS_15DequantMatricesE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #4

declare i32 @_ZN3jxl20AcStrategyHeuristics8FinalizeERKNS_15FrameDimensionsERKNS_15AcStrategyImageEPNS_6AuxOutE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #4

declare i32 @_ZN3jxl17FindBestQuantizerERKNS_11FrameHeaderEPKNS_6Image3IfEERS5_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEd(ptr noundef nonnull align 8 dereferenceable(576), ptr noundef, ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.38) #27
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.39, ptr noundef %0) #29
  unreachable
}

; Function Attrs: noreturn
declare void @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() local_unnamed_addr #9 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.40) #29
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.38) #27
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN3jxl15DownsampleImageERKNS_5PlaneIfEEm(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr.62") align 8, ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZN3jxl12_GLOBAL__N_110CreateMaskERKNS_5PlaneIfEERS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 %.16.val, ptr nofree writeonly captures(none) %.40.val) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89   ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %.not18 = icmp eq i32 %i.b, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %.fr = freeze ptr %i.e                          ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.i = zext i32 %i.h to i64                     ; 8 uses
  %.not19 = icmp eq i32 %i.h, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph17.split.us.preheader

.lr.ph17.split.us.preheader:                      ; preds = %.lr.ph17
  %.not = icmp eq i32 %i.h, 1
  %.in.us.peel.idx = select i1 %.not, i64 0, i64 4
  %exitcond.peel.not = icmp eq i32 %i.h, 1
  %scevgep = getelementptr i8, ptr %.40.val, i64 4 ; 3 uses
  %i.j = add nsw i64 %i.c, -1                     ; 2 uses
  %i.k = mul i64 %.16.val, %i.j
  %i.l = shl nuw nsw i64 %i.i, 2                  ; 4 uses
  %i.m = getelementptr i8, ptr %.40.val, i64 %i.k
  %scevgep32 = getelementptr i8, ptr %i.m, i64 %i.l ; 3 uses
  %scevgep33 = getelementptr i8, ptr %.fr, i64 4
  %scevgep35 = getelementptr i8, ptr %.fr, i64 %i.l
  %scevgep37 = getelementptr i8, ptr %.fr, i64 4
  %scevgep39 = getelementptr i8, ptr %.fr, i64 %i.l
  %i.n = mul i64 %i.g, %i.j
  %i.o = getelementptr i8, ptr %.fr, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 %i.l
  %.fr62 = freeze ptr %i.p
  %scevgep41 = getelementptr i8, ptr %.fr62, i64 4
  %i.q = add nsw i64 %i.i, -1                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 5
  %stride.check45 = icmp slt i64 %.16.val, 0
  %bound046 = icmp ult ptr %scevgep, %scevgep41
  %bound147 = icmp ult ptr %.fr, %scevgep32
  %found.conflict48 = and i1 %bound046, %bound147
  %1 = or i64 %i.g, %.16.val
  %i.r = icmp slt i64 %1, 0
  %i.s = or i1 %found.conflict48, %i.r
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  %i.t = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br label %.lr.ph17.split.us

.lr.ph17.split.us:                                ; preds = %.lr.ph17.split.us.preheader, %..loopexit_crit_edge.us
  %.016.us = phi i64 [ %i.y, %..loopexit_crit_edge.us ], [ 0, %.lr.ph17.split.us.preheader ] ; 5 uses
  %.not.us = icmp eq i64 %.016.us, 0
  %i.u = add nsw i64 %.016.us, -1
  %i.v = mul i64 %i.g, %i.u
  %.sink.idx = select i1 %.not.us, i64 0, i64 %i.v ; 3 uses
  %.sink = getelementptr inbounds nuw i8, ptr %.fr, i64 %.sink.idx ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sink, i64 64) ]
  %i.w = mul i64 %i.g, %.016.us                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.fr, i64 %i.w ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.x, i64 64) ]
  %i.y = add nuw nsw i64 %.016.us, 1              ; 4 uses
  %i.z = icmp samesign ult i64 %i.y, %i.c
  %i.aa = mul i64 %i.g, %i.y
  %spec.select.us = select i1 %i.z, i64 %i.aa, i64 %i.w ; 3 uses
  %i.ab = mul i64 %.016.us, %.16.val
  %i.ac = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.ab ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.fr, i64 %spec.select.us ; 3 uses
  %i.ae = load float, ptr %i.x, align 64, !tbaa !112 ; 5 uses
  %.in.us.peel = getelementptr inbounds nuw i8, ptr %i.x, i64 %.in.us.peel.idx
  %i.af = load float, ptr %.in.us.peel, align 4, !tbaa !112
  %i.ag = load float, ptr %.sink, align 64, !tbaa !112
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !112
  %i.ai = fsub float %i.ae, %i.ae
  %i.aj = tail call noundef float @llvm.fabs.f32(float %i.ai) ; 2 uses
  %i.ak = fsub float %i.ae, %i.af
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.ak) ; 4 uses
  %i.am = fsub float %i.ae, %i.ag
  %i.an = tail call noundef float @llvm.fabs.f32(float %i.am) ; 4 uses
  %i.ao = fsub float %i.ae, %i.ah
  %i.ap = tail call noundef float @llvm.fabs.f32(float %i.ao) ; 3 uses
  %i.aq = fcmp olt float %i.aj, f0x7F7FFFFF
  %.110.us.peel = select i1 %i.aq, float %i.aj, float f0x7F7FFFFF ; 4 uses
  %i.ar = fcmp olt float %i.al, f0x7F7FFFFF
  br i1 %i.ar, label %bb.b, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel

bb.b:                                             ; preds = %.lr.ph17.split.us
  %i.as = fcmp olt float %i.al, %.110.us.peel
  br i1 %i.as, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel, label %.sink.split.i55.sroa.store.us.peel

.sink.split.i55.sroa.store.us.peel:               ; preds = %bb.b
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel: ; preds = %.sink.split.i55.sroa.store.us.peel, %bb.b, %.lr.ph17.split.us
  %.312.us.peel = phi float [ %.110.us.peel, %.lr.ph17.split.us ], [ %.110.us.peel, %.sink.split.i55.sroa.store.us.peel ], [ %i.al, %bb.b ] ; 4 uses
  %.3.us.peel = phi float [ f0x7F7FFFFF, %.lr.ph17.split.us ], [ %i.al, %.sink.split.i55.sroa.store.us.peel ], [ %.110.us.peel, %bb.b ] ; 2 uses
  %i.at = fcmp olt float %i.an, %.3.us.peel
  br i1 %i.at, label %bb.c, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel

bb.c:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel
  %i.au = fcmp olt float %i.an, %.312.us.peel
  br i1 %i.au, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel, label %.sink.split.i58.sroa.store.us.peel

.sink.split.i58.sroa.store.us.peel:               ; preds = %bb.c
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel: ; preds = %.sink.split.i58.sroa.store.us.peel, %bb.c, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel
  %.514.us.peel = phi float [ %.312.us.peel, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel ], [ %.312.us.peel, %.sink.split.i58.sroa.store.us.peel ], [ %i.an, %bb.c ] ; 2 uses
  %.5.us.peel = phi float [ %.3.us.peel, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel ], [ %i.an, %.sink.split.i58.sroa.store.us.peel ], [ %.312.us.peel, %bb.c ] ; 2 uses
  %i.av = fcmp olt float %i.ap, %.5.us.peel
  br i1 %i.av, label %bb.d, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel

bb.d:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel
  %i.aw = fcmp olt float %i.ap, %.514.us.peel
  br i1 %i.aw, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel, label %.sink.split.i61.sroa.store.us.peel

.sink.split.i61.sroa.store.us.peel:               ; preds = %bb.d
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel: ; preds = %.sink.split.i61.sroa.store.us.peel, %bb.d, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel
  %.7.us.peel = phi float [ %.5.us.peel, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel ], [ %i.ap, %.sink.split.i61.sroa.store.us.peel ], [ %.514.us.peel, %bb.d ]
  store float %.7.us.peel, ptr %i.ac, align 64, !tbaa !112
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge.us, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader: ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel
  br i1 %min.iters.check, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader
  %scevgep34 = getelementptr i8, ptr %scevgep33, i64 %spec.select.us
  %scevgep36 = getelementptr i8, ptr %scevgep35, i64 %spec.select.us
  %scevgep38 = getelementptr i8, ptr %scevgep37, i64 %.sink.idx
  %scevgep40 = getelementptr i8, ptr %scevgep39, i64 %.sink.idx
  %bound0 = icmp ult ptr %scevgep, %scevgep36
  %bound1 = icmp ult ptr %scevgep34, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %scevgep, %scevgep40
  %bound143.a = icmp ult ptr %scevgep38, %scevgep32
  %found.conflict44 = and i1 %bound042, %bound143.a
  %2 = or i1 %found.conflict44, %stride.check45
  %conflict.rdx = or i1 %found.conflict, %2
  %conflict.rdx51 = or i1 %conflict.rdx, %i.s
  br i1 %conflict.rdx51, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader63, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 9 uses
  %i.ax = or disjoint i64 %index, 1               ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = getelementptr [4 x i8], ptr %i.x, i64 %index
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %wide.load = load <4 x float>, ptr %i.ay, align 4, !tbaa !112, !alias.scope !719 ; 4 uses
  %i.bf = getelementptr i8, ptr %i.ay, i64 -4
  %wide.load52.a = load <4 x float>, ptr %i.bf, align 16, !tbaa !112, !alias.scope !719
  %i.bg = or disjoint i64 %index, 2               ; 2 uses
  %i.bh = or disjoint i64 %index, 3               ; 2 uses
  %i.bi = add nuw nsw i64 %index, 4               ; 2 uses
  %i.bj = add i64 %index, 5                       ; 2 uses
  %i.bk = icmp samesign ult i64 %i.bg, %i.i
  %i.bl = icmp samesign ult i64 %i.bh, %i.i
  %i.bm = icmp samesign ult i64 %i.bi, %i.i
  %i.bn = icmp samesign ult i64 %i.bj, %i.i
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bg
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bh
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bi
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bj
  %i.bs = select i1 %i.bk, ptr %i.bo, ptr %i.ay
  %i.bt = select i1 %i.bl, ptr %i.bp, ptr %i.ba
  %i.bu = select i1 %i.bm, ptr %i.bq, ptr %i.bc
  %i.bv = select i1 %i.bn, ptr %i.br, ptr %i.be
  %i.bw = load float, ptr %i.bs, align 4, !tbaa !112, !alias.scope !719
  %i.bx = load float, ptr %i.bt, align 4, !tbaa !112, !alias.scope !719
  %i.by = load float, ptr %i.bu, align 4, !tbaa !112, !alias.scope !719
  %i.bz = load float, ptr %i.bv, align 4, !tbaa !112, !alias.scope !719
  %i.ca = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 1
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 2
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 3
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %i.ax
  %wide.load53 = load <4 x float>, ptr %i.ce, align 4, !tbaa !112, !alias.scope !720
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ax
  %wide.load54 = load <4 x float>, ptr %i.cf, align 4, !tbaa !112, !alias.scope !721
  %i.cg = fsub <4 x float> %wide.load, %wide.load52.a
  %i.ch = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cg) ; 2 uses
  %i.ci = fsub <4 x float> %wide.load, %i.cd
  %i.cj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ci) ; 4 uses
  %i.ck = fsub <4 x float> %wide.load, %wide.load53
  %i.cl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ck) ; 4 uses
  %i.cm = fsub <4 x float> %wide.load, %wide.load54
  %i.cn = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cm) ; 3 uses
  %i.co = fcmp olt <4 x float> %i.ch, splat (float f0x7F7FFFFF)
  %i.cp = select <4 x i1> %i.co, <4 x float> %i.ch, <4 x float> splat (float f0x7F7FFFFF) ; 3 uses
  %i.cq = fcmp olt <4 x float> %i.cj, splat (float f0x7F7FFFFF) ; 2 uses
  %i.cr = fcmp olt <4 x float> %i.cj, %i.cp
  %i.cs = select <4 x i1> %i.cq, <4 x i1> %i.cr, <4 x i1> zeroinitializer ; 2 uses
  %predphi = select <4 x i1> %i.cs, <4 x float> %i.cj, <4 x float> %i.cp ; 3 uses
  %predphi55.a = select <4 x i1> %i.cs, <4 x float> %i.cp, <4 x float> %i.cj
  %predphi56.a = select <4 x i1> %i.cq, <4 x float> %predphi55.a, <4 x float> splat (float f0x7F7FFFFF) ; 2 uses
  %i.ct = fcmp olt <4 x float> %i.cl, %predphi56.a ; 2 uses
  %i.cu = fcmp olt <4 x float> %i.cl, %predphi
  %i.cv = select <4 x i1> %i.ct, <4 x i1> %i.cu, <4 x i1> zeroinitializer ; 2 uses
  %predphi57.a = select <4 x i1> %i.cv, <4 x float> %i.cl, <4 x float> %predphi ; 2 uses
  %predphi58.a = select <4 x i1> %i.cv, <4 x float> %predphi, <4 x float> %i.cl
  %predphi59.a = select <4 x i1> %i.ct, <4 x float> %predphi58.a, <4 x float> %predphi56.a ; 2 uses
  %i.cw = fcmp olt <4 x float> %i.cn, %predphi59.a ; 2 uses
  %i.cx = fcmp olt <4 x float> %i.cn, %predphi57.a
  %i.cy = select <4 x i1> %i.cw, <4 x i1> %i.cx, <4 x i1> zeroinitializer
  %predphi60 = select <4 x i1> %i.cy, <4 x float> %predphi57.a, <4 x float> %i.cn
  %predphi61 = select <4 x i1> %i.cw, <4 x float> %predphi60, <4 x float> %predphi59.a
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ax
  store <4 x float> %predphi61, ptr %i.cz, align 4, !tbaa !112, !alias.scope !722, !noalias !723
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !716

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader63

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader63: ; preds = %vector.memcheck, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader, %middle.block
  %.05115.us.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader ], [ %i.t, %middle.block ]
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us:   ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader63, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us
  %.05115.us = phi i64 [ %i.df, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us ], [ %.05115.us.ph, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader63 ] ; 5 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.05115.us ; 3 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !112 ; 4 uses
  %i.dd = getelementptr i8, ptr %i.db, i64 -4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !112
  %i.df = add nuw nsw i64 %.05115.us, 1           ; 4 uses
  %i.dg = icmp samesign ult i64 %i.df, %i.i
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.df
  %.in.us = select i1 %i.dg, ptr %i.dh, ptr %i.db
  %i.di = load float, ptr %.in.us, align 4, !tbaa !112
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %.05115.us
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !112
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.05115.us
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !112
  %i.dn = fsub float %i.dc, %i.de
  %i.do = tail call noundef float @llvm.fabs.f32(float %i.dn) ; 2 uses
  %i.dp = fsub float %i.dc, %i.di
  %i.dq = tail call noundef float @llvm.fabs.f32(float %i.dp) ; 4 uses
  %i.dr = fsub float %i.dc, %i.dk
  %i.ds = tail call noundef float @llvm.fabs.f32(float %i.dr) ; 4 uses
  %i.dt = fsub float %i.dc, %i.dm
  %i.du = tail call noundef float @llvm.fabs.f32(float %i.dt) ; 3 uses
  %i.dv = fcmp olt float %i.do, f0x7F7FFFFF
  %.110.us = select i1 %i.dv, float %i.do, float f0x7F7FFFFF ; 4 uses
  %i.dw = fcmp olt float %i.dq, f0x7F7FFFFF
  br i1 %i.dw, label %bb.e, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us

bb.e:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us
  %i.dx = fcmp olt float %i.dq, %.110.us
  br i1 %i.dx, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us, label %.sink.split.i55.sroa.store.us

.sink.split.i55.sroa.store.us:                    ; preds = %bb.e
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us: ; preds = %.sink.split.i55.sroa.store.us, %bb.e, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us
  %.312.us = phi float [ %.110.us, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us ], [ %.110.us, %.sink.split.i55.sroa.store.us ], [ %i.dq, %bb.e ] ; 4 uses
  %.3.us = phi float [ f0x7F7FFFFF, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us ], [ %i.dq, %.sink.split.i55.sroa.store.us ], [ %.110.us, %bb.e ] ; 2 uses
  %i.dy = fcmp olt float %i.ds, %.3.us
  br i1 %i.dy, label %bb.f, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us

bb.f:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us
  %i.dz = fcmp olt float %i.ds, %.312.us
  br i1 %i.dz, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us, label %.sink.split.i58.sroa.store.us

.sink.split.i58.sroa.store.us:                    ; preds = %bb.f
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us: ; preds = %.sink.split.i58.sroa.store.us, %bb.f, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us
  %.514.us = phi float [ %.312.us, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us ], [ %.312.us, %.sink.split.i58.sroa.store.us ], [ %i.ds, %bb.f ] ; 2 uses
  %.5.us = phi float [ %.3.us, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us ], [ %i.ds, %.sink.split.i58.sroa.store.us ], [ %.312.us, %bb.f ] ; 2 uses
  %i.ea = fcmp olt float %i.du, %.5.us
  br i1 %i.ea, label %bb.g, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us

bb.g:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us
  %i.eb = fcmp olt float %i.du, %.514.us
  br i1 %i.eb, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us, label %.sink.split.i61.sroa.store.us

.sink.split.i61.sroa.store.us:                    ; preds = %bb.g
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us: ; preds = %.sink.split.i61.sroa.store.us, %bb.g, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us
  %.7.us = phi float [ %.5.us, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us ], [ %i.du, %.sink.split.i61.sroa.store.us ], [ %.514.us, %bb.g ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.05115.us
  store float %.7.us, ptr %i.ec, align 4, !tbaa !112
  %exitcond.not = icmp eq i64 %i.df, %i.i
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us, !llvm.loop !717

..loopexit_crit_edge.us:                          ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us, %middle.block, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel
  %exitcond22.not = icmp eq i64 %i.y, %i.c
  br i1 %exitcond22.not, label %._crit_edge, label %.lr.ph17.split.us, !llvm.loop !718

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %.lr.ph17, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZN3jxl12_GLOBAL__N_112AntiUpsampleERKNS_5PlaneIfEEPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !88
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89
  %i.e = zext i32 %i.d to i64
  %i.f = load i32, ptr %1, align 8, !tbaa !88     ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !89   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !92
  %.not88 = icmp eq i32 %i.f, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = load i64, ptr %i.p, align 8
  br i1 %.not88, label %._crit_edge84, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph83
  %i.s = shl nuw nsw i64 %i.g, 2
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05480.us = phi i64 [ %i.ce, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.t = mul i64 %i.n, %.05480.us
  %i.u = getelementptr i8, ptr %i.l, i64 %i.t     ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.u, i64 64) ]
end_hunk_0
begin_hunk_1_@_ZN3jxl12_GLOBAL__N_113UpsampleImageERKNS_5PlaneIfEEPS2_:bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %.087, i64 28
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !112
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.ff, float %i.fc)
  %i.fh = load float, ptr %i.bu, align 4, !tbaa !112
  %i.fi = getelementptr inbounds nuw i8, ptr %.087, i64 32
  %i.fj = load float, ptr %i.fi, align 16, !tbaa !112
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fj, float %i.fg)
  %i.fl = load float, ptr %i.by, align 4, !tbaa !112
  %i.fm = getelementptr inbounds nuw i8, ptr %.087, i64 36
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !112
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.fn, float %i.fk)
  %i.fp = getelementptr inbounds nuw i8, ptr %.087, i64 40
  %i.fq = load float, ptr %i.cc, align 4, !tbaa !112
  %i.fr = load float, ptr %i.fp, align 8, !tbaa !112
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.fr, float %i.fo)
  %i.ft = load float, ptr %i.cg, align 4, !tbaa !112
  %i.fu = getelementptr inbounds nuw i8, ptr %.087, i64 44
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !112
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.fv, float %i.fs)
  %i.fx = load float, ptr %i.ck, align 4, !tbaa !112
  %i.fy = getelementptr inbounds nuw i8, ptr %.087, i64 48
  %i.fz = load float, ptr %i.fy, align 16, !tbaa !112
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.fz, float %i.fw)
  %i.gb = load float, ptr %i.co, align 4, !tbaa !112
  %i.gc = getelementptr inbounds nuw i8, ptr %.087, i64 52
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !112
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.gd, float %i.ga)
  %i.gf = load float, ptr %i.cs, align 4, !tbaa !112
  %i.gg = getelementptr inbounds nuw i8, ptr %.087, i64 56
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !112
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.gf, float %i.gh, float %i.ge)
  %i.gj = getelementptr inbounds nuw i8, ptr %.087, i64 60
  %i.gk = load float, ptr %i.cw, align 4, !tbaa !112
  %i.gl = load float, ptr %i.gj, align 4, !tbaa !112
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gl, float %i.gi)
  %i.gn = load float, ptr %i.da, align 4, !tbaa !112
  %i.go = getelementptr inbounds nuw i8, ptr %.087, i64 64
  %i.gp = load float, ptr %i.go, align 16, !tbaa !112
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.gp, float %i.gm)
  %i.gr = load float, ptr %i.de, align 4, !tbaa !112
  %i.gs = getelementptr inbounds nuw i8, ptr %.087, i64 68
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !112
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.gt, float %i.gq)
  %i.gv = load float, ptr %i.di, align 4, !tbaa !112
  %i.gw = getelementptr inbounds nuw i8, ptr %.087, i64 72
  %i.gx = load float, ptr %i.gw, align 8, !tbaa !112
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gv, float %i.gx, float %i.gu)
  %i.gz = load float, ptr %i.dm, align 4, !tbaa !112
  %i.ha = getelementptr inbounds nuw i8, ptr %.087, i64 76
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !112
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.hb, float %i.gy)
  %i.hd = getelementptr inbounds nuw i8, ptr %.087, i64 80
  %i.he = load float, ptr %i.dq, align 4, !tbaa !112
  %i.hf = load float, ptr %i.hd, align 16, !tbaa !112
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.he, float %i.hf, float %i.hc)
  %i.hh = load float, ptr %i.ds, align 4, !tbaa !112
  %i.hi = getelementptr inbounds nuw i8, ptr %.087, i64 84
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !112
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hh, float %i.hj, float %i.hg)
  %i.hl = load float, ptr %i.du, align 4, !tbaa !112
  %i.hm = getelementptr inbounds nuw i8, ptr %.087, i64 88
  %i.hn = load float, ptr %i.hm, align 8, !tbaa !112
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.hn, float %i.hk)
  %i.hp = load float, ptr %i.dw, align 4, !tbaa !112
  %i.hq = getelementptr inbounds nuw i8, ptr %.087, i64 92
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !112
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.hr, float %i.ho)
  %i.ht = load float, ptr %i.dy, align 4, !tbaa !112
  %i.hu = getelementptr inbounds nuw i8, ptr %.087, i64 96
  %i.hv = load float, ptr %i.hu, align 16, !tbaa !112
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.hv, float %i.hs) ; 2 uses
  %i.hx = fcmp olt float %i.dr, %.sroa.speculated101.4.3
  %.sroa.speculated101.4136 = select i1 %i.hx, float %i.dr, float %.sroa.speculated101.4.3 ; 2 uses
  %i.hy = fcmp olt float %.sroa.speculated.4.3, %i.dr
  %.sroa.speculated.4137 = select i1 %i.hy, float %i.dr, float %.sroa.speculated.4.3 ; 2 uses
  %i.hz = fcmp olt float %i.dt, %.sroa.speculated101.4136
  %.sroa.speculated101.1.4 = select i1 %i.hz, float %i.dt, float %.sroa.speculated101.4136 ; 2 uses
  %i.ia = fcmp olt float %.sroa.speculated.4137, %i.dt
  %.sroa.speculated.1.4 = select i1 %i.ia, float %i.dt, float %.sroa.speculated.4137 ; 2 uses
  %i.ib = fcmp olt float %i.dv, %.sroa.speculated101.1.4
  %.sroa.speculated101.2.4 = select i1 %i.ib, float %i.dv, float %.sroa.speculated101.1.4 ; 2 uses
  %i.ic = fcmp olt float %.sroa.speculated.1.4, %i.dv
  %.sroa.speculated.2.4 = select i1 %i.ic, float %i.dv, float %.sroa.speculated.1.4 ; 2 uses
  %i.id = fcmp olt float %i.dx, %.sroa.speculated101.2.4
  %.sroa.speculated101.3.4 = select i1 %i.id, float %i.dx, float %.sroa.speculated101.2.4 ; 2 uses
  %i.ie = fcmp olt float %.sroa.speculated.2.4, %i.dx
  %.sroa.speculated.3.4 = select i1 %i.ie, float %i.dx, float %.sroa.speculated.2.4 ; 2 uses
  %i.if = fcmp olt float %i.dz, %.sroa.speculated101.3.4
  %.sroa.speculated101.4.4 = select i1 %i.if, float %i.dz, float %.sroa.speculated101.3.4 ; 2 uses
  %i.ig = fcmp olt float %.sroa.speculated.3.4, %i.dz
  %.sroa.speculated.4.4 = select i1 %i.ig, float %i.dz, float %.sroa.speculated.3.4 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.088124
  %i.ii = fcmp olt float %i.hw, %.sroa.speculated101.4.4
  %spec.store.select127 = select i1 %i.ii, float %.sroa.speculated101.4.4, float %i.hw ; 2 uses
  %i.ij = fcmp ogt float %spec.store.select127, %.sroa.speculated.4.4
  %spec.store.select128 = select i1 %i.ij, float %.sroa.speculated.4.4, float %spec.store.select127
  store float %spec.store.select128, ptr %i.ih, align 4, !tbaa !112
  %i.ik = add nuw nsw i64 %.088124, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ik, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.preheader111, !llvm.loop !730
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl7LinCombIfEENS_8StatusOrINS_5PlaneIT_EEEES3_RKS4_S3_S7_(ptr dead_on_unwind noalias writable sret(%"class.jxl::StatusOr.62") align 8 %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, float noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"class.jxl::Plane.61", align 8     ; 8 uses
  %6 = alloca %"class.jxl::StatusOr.62", align 8  ; 9 uses
  %7 = alloca %"class.jxl::Plane.61", align 8     ; 8 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !88     ; 5 uses
  %i.b = zext i32 %i.a to i64                     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89   ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = load i32, ptr %4, align 8, !tbaa !88
  %i.g = icmp eq i32 %i.a, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.h, align 8, !tbaa !111
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  %i.k = icmp eq i32 %i.d, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.l, align 8, !tbaa !111
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !742
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef %i.a, i32 noundef %i.d, i64 noundef 4) #28, !noalias !742
  %i.o = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.n, i64 noundef 0) #28, !noalias !742 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  br i1 %i.p, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.o, ptr %i.q, align 8, !tbaa !111, !alias.scope !742
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.e
  store i32 0, ptr %i.q, align 8, !tbaa !111, !alias.scope !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s) #28
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !108, !noalias !742
  store i64 %i.v, ptr %i.t, align 8, !tbaa !108, !alias.scope !742
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.f, %.critedge.i
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.w) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !742
  %i.x = load i32, ptr %i.q, align 8, !tbaa !111  ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.critedge, label %.thread

.thread:                                          ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.x, ptr %i.z, align 8, !tbaa !111
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

.critedge:                                        ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(60) %6, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab) #28
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !108, !noalias !743
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !108, !alias.scope !743
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %.critedge
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !92 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !91 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !92 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !91 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !92 ; 4 uses
  %.not48 = icmp eq i32 %i.a, 0
  br i1 %.not48, label %._crit_edge47, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph46
  %i.ar = add nsw i64 %i.e, -1                    ; 3 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = shl nuw nsw i64 %i.b, 2                 ; 3 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 %i.as
  %scevgep = getelementptr i8, ptr %i.au, i64 %i.at ; 2 uses
  %i.av = mul i64 %i.ai, %i.ar
  %i.aw = getelementptr i8, ptr %i.ag, i64 %i.av
  %scevgep56 = getelementptr i8, ptr %i.aw, i64 %i.at
  %i.ax = mul i64 %i.am, %i.ar
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.ax
  %scevgep57 = getelementptr i8, ptr %i.ay, i64 %i.at
  %min.iters.check = icmp ult i32 %i.a, 8
  %bound0 = icmp ult ptr %i.ao, %scevgep56
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.az = or i64 %i.ai, %i.aq
  %i.ba = icmp slt i64 %i.az, 0
  %i.bb = or i1 %found.conflict, %i.ba
  %bound059 = icmp ult ptr %i.ao, %scevgep57
  %bound160 = icmp ult ptr %i.ak, %scevgep
  %found.conflict61 = and i1 %bound059, %bound160
  %8 = or i64 %i.am, %i.aq
  %i.bc = icmp slt i64 %8, 0
  %i.bd = or i1 %found.conflict61, %i.bc
  %conflict.rdx = or i1 %i.bb, %i.bd
  %n.vec = and i64 %i.b, 4294967288               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert64 = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat65 = shufflevector <4 x float> %broadcast.splatinsert64, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.b
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.be = add nsw i64 %i.b, -1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.03345.us = phi i64 [ %i.cv, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.bf = mul i64 %i.ai, %.03345.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bf ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bg, i64 64) ]
  %i.bh = mul i64 %i.am, %.03345.us
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bh ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bi, i64 64) ]
  %i.bj = mul i64 %i.aq, %.03345.us
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bj ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 64) ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <4 x float>, ptr %i.bl, align 32, !tbaa !112, !alias.scope !744
  %wide.load66.a = load <4 x float>, ptr %i.bm, align 16, !tbaa !112, !alias.scope !744
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load67.a = load <4 x float>, ptr %i.bn, align 32, !tbaa !112, !alias.scope !745
  %wide.load68 = load <4 x float>, ptr %i.bo, align 16, !tbaa !112, !alias.scope !745
  %i.bp = fmul <4 x float> %broadcast.splat, %wide.load67.a
  %i.bq = fmul <4 x float> %broadcast.splat, %wide.load68
  %i.br = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat65, <4 x float> %wide.load, <4 x float> %i.bp)
  %i.bs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat65, <4 x float> %wide.load66.a, <4 x float> %i.bq)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <4 x float> %i.br, ptr %i.bt, align 32, !tbaa !112, !alias.scope !746, !noalias !747
  store <4 x float> %i.bs, ptr %i.bu, align 16, !tbaa !112, !alias.scope !746, !noalias !747
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !739

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %.044.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.044.us.ph
  %i.bx = load float, ptr %i.bw, align 32, !tbaa !112
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.044.us.ph
  %i.bz = load float, ptr %i.by, align 32, !tbaa !112
  %i.ca = fmul float %3, %i.bz
  %i.cb = call float @llvm.fmuladd.f32(float %1, float %i.bx, float %i.ca)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.044.us.ph
  store float %i.cb, ptr %i.cc, align 32, !tbaa !112
  %i.cd = or disjoint i64 %.044.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.044.us.unr = phi i64 [ %.044.us.ph, %scalar.ph.preheader ], [ %i.cd, %scalar.ph.prol ]
  %i.ce = icmp eq i64 %.044.us.ph, %i.be
  br i1 %i.ce, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.044.us = phi i64 [ %i.cu, %scalar.ph ], [ %.044.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.044.us
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !112
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.044.us
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !112
  %i.cj = fmul float %3, %i.ci
  %i.ck = call float @llvm.fmuladd.f32(float %1, float %i.cg, float %i.cj)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.044.us
  store float %i.ck, ptr %i.cl, align 4, !tbaa !112
  %i.cm = add nuw nsw i64 %.044.us, 1             ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !112
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cm
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !112
  %i.cr = fmul float %3, %i.cq
  %i.cs = call float @llvm.fmuladd.f32(float %1, float %i.co, float %i.cr)
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cm
  store float %i.cs, ptr %i.ct, align 4, !tbaa !112
  %i.cu = add nuw nsw i64 %.044.us, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cu, %i.b
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !740

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cv = add nuw nsw i64 %.03345.us, 1           ; 2 uses
  %exitcond50.not = icmp eq i64 %i.cv, %i.e
  br i1 %exitcond50.not, label %._crit_edge47, label %.lr.ph.us, !llvm.loop !741

._crit_edge47:                                    ; preds = %._crit_edge.us, %.lr.ph46, %.critedge
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.cw, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 24, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #28
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cz = load i64, ptr %i.ac, align 8, !tbaa !108
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !108
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.pr = load i32, ptr %i.q, align 8, !tbaa !111
  %i.da = icmp eq i32 %.pr, 0
  br i1 %i.da, label %bb.g, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.g:                                             ; preds = %._crit_edge47
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #28
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit:         ; preds = %.thread, %._crit_edge47, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.h

bb.h:                                             ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @_ZN3jxl12_GLOBAL__N_19ElwiseMulIfEENS_6StatusERKNS_5PlaneIT_EES7_PS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.b = zext i32 %i.a to i64                     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89   ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !88
  %i.g = icmp eq i32 %i.a, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.d, %i.i
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %2, align 8, !tbaa !88
  %i.l = icmp eq i32 %i.a, %i.k
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !89
  %i.o = icmp eq i32 %i.d, %i.n
  br i1 %i.o, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !91   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !92   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !92   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !92  ; 4 uses
  %.not43 = icmp eq i32 %i.a, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph42
  %i.ab = add nsw i64 %i.e, -1                    ; 3 uses
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = shl nuw nsw i64 %i.b, 2                 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.y, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.ad ; 2 uses
  %i.af = mul i64 %i.s, %i.ab
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.af
  %scevgep49 = getelementptr i8, ptr %i.ag, i64 %i.ad
  %i.ah = mul i64 %i.w, %i.ab
  %i.ai = getelementptr i8, ptr %i.u, i64 %i.ah
  %scevgep50 = getelementptr i8, ptr %i.ai, i64 %i.ad
  %min.iters.check = icmp ult i32 %i.a, 12
  %bound0 = icmp ult ptr %i.y, %scevgep49
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.aj = or i64 %i.s, %i.aa
  %i.ak = icmp slt i64 %i.aj, 0
  %i.al = or i1 %found.conflict, %i.ak
  %bound052 = icmp ult ptr %i.y, %scevgep50
  %bound153 = icmp ult ptr %i.u, %scevgep
  %found.conflict54 = and i1 %bound052, %bound153
  %3 = or i64 %i.w, %i.aa
  %i.am = icmp slt i64 %3, 0
  %i.an = or i1 %found.conflict54, %i.am
  %conflict.rdx = or i1 %i.al, %i.an
  %n.vec = and i64 %i.b, 4294967288               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.b
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.03041.us = phi i64 [ %i.co, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.ao = mul i64 %i.s, %.03041.us
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ao ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ap, i64 64) ]
  %i.aq = mul i64 %i.w, %.03041.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aq ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 64) ]
  %i.as = mul i64 %i.aa, %.03041.us
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.as ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.at, i64 64) ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <4 x float>, ptr %i.au, align 32, !tbaa !112, !alias.scope !756
  %wide.load57.a = load <4 x float>, ptr %i.av, align 16, !tbaa !112, !alias.scope !756
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load58.a = load <4 x float>, ptr %i.aw, align 32, !tbaa !112, !alias.scope !757
  %wide.load59 = load <4 x float>, ptr %i.ax, align 16, !tbaa !112, !alias.scope !757
  %i.ay = fmul <4 x float> %wide.load, %wide.load58.a
  %i.az = fmul <4 x float> %wide.load57.a, %wide.load59
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x float> %i.ay, ptr %i.ba, align 32, !tbaa !112, !alias.scope !758, !noalias !759
  store <4 x float> %i.az, ptr %i.bb, align 16, !tbaa !112, !alias.scope !758, !noalias !759
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !752

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %.040.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.040.us.prol = phi i64 [ %i.bj, %scalar.ph.prol ], [ %.040.us.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.040.us.prol
  %i.be = load float, ptr %i.bd, align 4, !tbaa !112
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.040.us.prol
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !112
  %i.bh = fmul float %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.040.us.prol
  store float %i.bh, ptr %i.bi, align 4, !tbaa !112
  %i.bj = add nuw nsw i64 %.040.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !753

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.040.us.unr = phi i64 [ %.040.us.ph, %scalar.ph.preheader ], [ %i.bj, %scalar.ph.prol ]
  %i.bk = sub nsw i64 %.040.us.ph, %i.b
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.040.us = phi i64 [ %i.cn, %scalar.ph ], [ %.040.us.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.040.us
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !112
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.040.us
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !112
  %i.bq = fmul float %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.040.us
  store float %i.bq, ptr %i.br, align 4, !tbaa !112
  %i.bs = add nuw nsw i64 %.040.us, 1             ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !112
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bs
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !112
  %i.bx = fmul float %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bs
  store float %i.bx, ptr %i.by, align 4, !tbaa !112
  %i.bz = add nuw nsw i64 %.040.us, 2             ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !112
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bz
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !112
  %i.ce = fmul float %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bz
  store float %i.ce, ptr %i.cf, align 4, !tbaa !112
  %i.cg = add nuw nsw i64 %.040.us, 3             ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !112
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cg
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !112
  %i.cl = fmul float %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cg
  store float %i.cl, ptr %i.cm, align 4, !tbaa !112
  %i.cn = add nuw nsw i64 %.040.us, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cn, %i.b
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !754

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.co = add nuw nsw i64 %.03041.us, 1           ; 2 uses
  %exitcond45.not = icmp eq i64 %i.co, %i.e
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !755

.loopexit:                                        ; preds = %._crit_edge.us, %.lr.ph42, %.preheader, %bb.c, %bb.b, %bb.a
  %.sroa.036.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %.lr.ph42 ], [ 0, %.preheader ], [ 0, %._crit_edge.us ]
  ret i32 %.sroa.036.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @_ZN3jxl12_GLOBAL__N_19ElwiseDivIfEENS_6StatusERKNS_5PlaneIT_EES7_PS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.b = zext i32 %i.a to i64                     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89   ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !88
  %i.g = icmp eq i32 %i.a, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.d, %i.i
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %2, align 8, !tbaa !88
  %i.l = icmp eq i32 %i.a, %i.k
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !89
  %i.o = icmp eq i32 %i.d, %i.n
  br i1 %i.o, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !91   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !92   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !92   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !92  ; 4 uses
  %.not43 = icmp eq i32 %i.a, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph42
  %i.ab = add nsw i64 %i.e, -1                    ; 3 uses
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = shl nuw nsw i64 %i.b, 2                 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.y, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.ad ; 2 uses
  %i.af = mul i64 %i.s, %i.ab
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.af
  %scevgep49 = getelementptr i8, ptr %i.ag, i64 %i.ad
  %i.ah = mul i64 %i.w, %i.ab
  %i.ai = getelementptr i8, ptr %i.u, i64 %i.ah
  %scevgep50 = getelementptr i8, ptr %i.ai, i64 %i.ad
  %min.iters.check = icmp ult i32 %i.a, 4
  %bound0 = icmp ult ptr %i.y, %scevgep49
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.aj = or i64 %i.s, %i.aa
  %i.ak = icmp slt i64 %i.aj, 0
  %i.al = or i1 %found.conflict, %i.ak
  %bound052 = icmp ult ptr %i.y, %scevgep50
  %bound153 = icmp ult ptr %i.u, %scevgep
  %found.conflict54 = and i1 %bound052, %bound153
  %3 = or i64 %i.w, %i.aa
  %i.am = icmp slt i64 %3, 0
  %i.an = or i1 %found.conflict54, %i.am
  %conflict.rdx = or i1 %i.al, %i.an
  %n.vec = and i64 %i.b, 4294967292               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.b
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.03041.us = phi i64 [ %i.ck, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.ao = mul i64 %i.s, %.03041.us
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ao ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ap, i64 64) ]
  %i.aq = mul i64 %i.w, %.03041.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aq ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 64) ]
  %i.as = mul i64 %i.aa, %.03041.us
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.as ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.at, i64 64) ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index
  %wide.load = load <4 x float>, ptr %i.au, align 16, !tbaa !112, !alias.scope !768
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index
  %wide.load57 = load <4 x float>, ptr %i.av, align 16, !tbaa !112, !alias.scope !769
  %i.aw = fdiv <4 x float> %wide.load, %wide.load57
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index
  store <4 x float> %i.aw, ptr %i.ax, align 16, !tbaa !112, !alias.scope !770, !noalias !771
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !764

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %.040.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.040.us.prol = phi i64 [ %i.bf, %scalar.ph.prol ], [ %.040.us.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.040.us.prol
  %i.ba = load float, ptr %i.az, align 4, !tbaa !112
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.040.us.prol
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !112
  %i.bd = fdiv float %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.040.us.prol
  store float %i.bd, ptr %i.be, align 4, !tbaa !112
  %i.bf = add nuw nsw i64 %.040.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !765

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.040.us.unr = phi i64 [ %.040.us.ph, %scalar.ph.preheader ], [ %i.bf, %scalar.ph.prol ]
  %i.bg = sub nsw i64 %.040.us.ph, %i.b
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.040.us = phi i64 [ %i.cj, %scalar.ph ], [ %.040.us.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.040.us
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !112
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.040.us
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !112
  %i.bm = fdiv float %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.040.us
  store float %i.bm, ptr %i.bn, align 4, !tbaa !112
  %i.bo = add nuw nsw i64 %.040.us, 1             ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !112
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bo
  %i.bs = load float, ptr %i.br, align 4, !tbaa !112
  %i.bt = fdiv float %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bo
  store float %i.bt, ptr %i.bu, align 4, !tbaa !112
  %i.bv = add nuw nsw i64 %.040.us, 2             ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !112
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !112
  %i.ca = fdiv float %i.bx, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bv
  store float %i.ca, ptr %i.cb, align 4, !tbaa !112
  %i.cc = add nuw nsw i64 %.040.us, 3             ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !112
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cc
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !112
  %i.ch = fdiv float %i.ce, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cc
  store float %i.ch, ptr %i.ci, align 4, !tbaa !112
  %i.cj = add nuw nsw i64 %.040.us, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cj, %i.b
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !766

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ck = add nuw nsw i64 %.03041.us, 1           ; 2 uses
  %exitcond45.not = icmp eq i64 %i.ck, %i.e
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !767

.loopexit:                                        ; preds = %._crit_edge.us, %.lr.ph42, %.preheader, %bb.c, %bb.b, %bb.a
  %.sroa.036.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %.lr.ph42 ], [ 0, %.preheader ], [ 0, %._crit_edge.us ]
  ret i32 %.sroa.036.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZN3jxl12_GLOBAL__N_113ReduceRingingERKNS_5PlaneIfEES4_RS2_(i64 %.16.val, ptr nofree readonly captures(none) %.40.val, i64 %.16.val1, ptr nofree readonly captures(none) %.40.val3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !92
  %.not33 = icmp eq i32 %i.a, 0
  br i1 %.not33, label %._crit_edge29, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph28, %._crit_edge.us
  %.06226.us = phi i64 [ %i.t, %._crit_edge.us ], [ 0, %.lr.ph28 ] ; 5 uses
  %i.j = mul i64 %.06226.us, %.16.val1
  %i.k = getelementptr inbounds nuw i8, ptr %.40.val3, i64 %i.j ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 64) ]
  %i.l = mul i64 %i.i, %.06226.us
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 64) ]
  %i.n = mul i64 %.06226.us, %.16.val
  %i.o = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.n ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.p = add nsw i64 %.06226.us, -1               ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.e
  %i.r = mul i64 %i.p, %.16.val
  %i.s = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.r ; 9 uses
  %.fr.us = freeze i1 %i.q
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.t = add nuw nsw i64 %.06226.us, 1            ; 4 uses
  %i.u = icmp samesign ult i64 %i.t, %i.e
  %i.v = mul i64 %i.t, %.16.val
  %i.w = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.v ; 9 uses
  %.fr.us.2 = freeze i1 %i.u
  br label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph.us, %bb.i
  %.06125.us = phi i64 [ 0, %.lr.ph.us ], [ %i.ce, %bb.i ] ; 12 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.06125.us ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !112 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.06125.us
  %i.aa = load float, ptr %i.z, align 4, !tbaa !112 ; 12 uses
  br i1 %.fr.us, label %.preheader.split.us30.preheader, label %.preheader.split.us30.preheader.1

.preheader.split.us30.preheader:                  ; preds = %.preheader.us
  %i.ab = add nsw i64 %.06125.us, -1              ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.b
  br i1 %i.ac, label %bb.b, label %.preheader.split.us30.2

bb.b:                                             ; preds = %.preheader.split.us30.preheader
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ab
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !112 ; 4 uses
  %i.af = fcmp olt float %i.ae, %i.aa
  %.sroa.speculated8.us = select i1 %i.af, float %i.ae, float %i.aa
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.ag = fcmp olt float %i.aa, %i.ae
  %.sroa.speculated.us = select i1 %i.ag, float %i.ae, float %i.aa
  br label %.preheader.split.us30.2

.preheader.split.us30.2:                          ; preds = %bb.b, %.preheader.split.us30.preheader
  %.214.us = phi float [ %.sroa.speculated8.us, %bb.b ], [ %i.aa, %.preheader.split.us30.preheader ] ; 2 uses
  %.2.us = phi float [ %.sroa.speculated.us, %bb.b ], [ %i.aa, %.preheader.split.us30.preheader ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.06125.us
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !112 ; 4 uses
  %i.aj = fcmp olt float %i.ai, %.214.us
  %.sroa.speculated8.us.1 = select i1 %i.aj, float %i.ai, float %.214.us ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.ak = fcmp olt float %.2.us, %i.ai
  %.sroa.speculated.us.1 = select i1 %i.ak, float %i.ai, float %.2.us ; 3 uses
  %i.al = add nuw nsw i64 %.06125.us, 1           ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %i.b
  br i1 %i.am, label %bb.c, label %.preheader.split.us30.preheader.1

bb.c:                                             ; preds = %.preheader.split.us30.2
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.al
  %i.ao = load float, ptr %i.an, align 4, !tbaa !112 ; 4 uses
  %i.ap = fcmp olt float %i.ao, %.sroa.speculated8.us.1
  %.sroa.speculated8.us.2 = select i1 %i.ap, float %i.ao, float %.sroa.speculated8.us.1
end_hunk_1
