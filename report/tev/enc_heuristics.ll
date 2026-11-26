Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_heuristics?download=true
inline.NumInlined: 3479
inline.NumDeleted: 1820
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3jxl7SplinesD2Ev:bb.a
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.h) #25
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit

_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.j, ptr %i.k, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !98
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #25
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
  %i.f = freeze ptr %i.e                          ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.j = zext i32 %i.i to i64                     ; 8 uses
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph17.split.us.preheader

.lr.ph17.split.us.preheader:                      ; preds = %.lr.ph17
  %.not = icmp eq i32 %i.i, 1
  %.in.us.peel.idx = select i1 %.not, i64 0, i64 4
  %exitcond.peel.not = icmp eq i32 %i.i, 1
  %1 = add nsw i64 %i.c, -1                       ; 2 uses
  %2 = mul i64 %i.h, %1
  %i.k = shl nuw nsw i64 %i.j, 2                  ; 3 uses
  %i.l = getelementptr i8, ptr %i.f, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %.fr = freeze ptr %i.m
  %scevgep = getelementptr i8, ptr %.fr, i64 4
  %scevgep50 = getelementptr i8, ptr %i.f, i64 %i.k ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.f, i64 4  ; 2 uses
  %i.n = mul i64 %.16.val, %1
  %i.o = getelementptr i8, ptr %.40.val, i64 %i.n
  %scevgep52 = getelementptr i8, ptr %i.o, i64 %i.k ; 3 uses
  %scevgep53 = getelementptr i8, ptr %.40.val, i64 4 ; 3 uses
  %i.p = add nsw i64 %i.j, -1                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 5
  %stride.check = icmp slt i64 %.16.val, 0
  %bound057 = icmp ult ptr %scevgep53, %scevgep
  %bound158 = icmp ult ptr %i.f, %scevgep52
  %found.conflict59 = and i1 %bound057, %bound158
  %stride.check60 = icmp slt i64 %i.h, 0
  %i.q = or i1 %found.conflict59, %stride.check60
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %i.r = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.lr.ph17.split.us

.lr.ph17.split.us:                                ; preds = %.lr.ph17.split.us.preheader, %..loopexit_crit_edge.us
  %.016.us = phi i64 [ %i.w, %..loopexit_crit_edge.us ], [ 0, %.lr.ph17.split.us.preheader ] ; 5 uses
  %.not.us = icmp eq i64 %.016.us, 0
  %i.s = add nsw i64 %.016.us, -1
  %i.t = mul i64 %i.h, %i.s
  %.sink.idx = select i1 %.not.us, i64 0, i64 %i.t ; 3 uses
  %.sink = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink.idx ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sink, i64 64) ]
  %i.u = mul i64 %i.h, %.016.us                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.v, i64 64) ]
  %i.w = add nuw nsw i64 %.016.us, 1              ; 4 uses
  %i.x = icmp samesign ult i64 %i.w, %i.c
  %i.y = mul i64 %i.h, %i.w
  %spec.select.us = select i1 %i.x, i64 %i.y, i64 %i.u ; 3 uses
  %i.z = mul i64 %.016.us, %.16.val
  %i.aa = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.z ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 64) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select.us ; 3 uses
  %i.ac = load float, ptr %i.v, align 64, !tbaa !112 ; 5 uses
  %.in.us.peel = getelementptr inbounds nuw i8, ptr %i.v, i64 %.in.us.peel.idx
  %i.ad = load float, ptr %.in.us.peel, align 4, !tbaa !112
  %i.ae = load float, ptr %.sink, align 64, !tbaa !112
  %i.af = load float, ptr %i.ab, align 4, !tbaa !112
  %i.ag = fsub float %i.ac, %i.ac
  %i.ah = tail call noundef float @llvm.fabs.f32(float %i.ag) ; 2 uses
  %i.ai = fsub float %i.ac, %i.ad
  %i.aj = tail call noundef float @llvm.fabs.f32(float %i.ai) ; 4 uses
  %i.ak = fsub float %i.ac, %i.ae
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.ak) ; 4 uses
  %i.am = fsub float %i.ac, %i.af
  %i.an = tail call noundef float @llvm.fabs.f32(float %i.am) ; 3 uses
  %i.ao = fcmp olt float %i.ah, f0x7F7FFFFF
  %.110.us.peel = select i1 %i.ao, float %i.ah, float f0x7F7FFFFF ; 4 uses
  %i.ap = fcmp olt float %i.aj, f0x7F7FFFFF
  br i1 %i.ap, label %bb.b, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel

bb.b:                                             ; preds = %.lr.ph17.split.us
  %i.aq = fcmp olt float %i.aj, %.110.us.peel
  br i1 %i.aq, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel, label %.sink.split.i55.sroa.store.us.peel

.sink.split.i55.sroa.store.us.peel:               ; preds = %bb.b
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel: ; preds = %.sink.split.i55.sroa.store.us.peel, %bb.b, %.lr.ph17.split.us
  %.312.us.peel = phi float [ %.110.us.peel, %.lr.ph17.split.us ], [ %.110.us.peel, %.sink.split.i55.sroa.store.us.peel ], [ %i.aj, %bb.b ] ; 4 uses
  %.3.us.peel = phi float [ f0x7F7FFFFF, %.lr.ph17.split.us ], [ %i.aj, %.sink.split.i55.sroa.store.us.peel ], [ %.110.us.peel, %bb.b ] ; 2 uses
  %i.ar = fcmp olt float %i.al, %.3.us.peel
  br i1 %i.ar, label %bb.c, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel

bb.c:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel
  %i.as = fcmp olt float %i.al, %.312.us.peel
  br i1 %i.as, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel, label %.sink.split.i58.sroa.store.us.peel

.sink.split.i58.sroa.store.us.peel:               ; preds = %bb.c
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel: ; preds = %.sink.split.i58.sroa.store.us.peel, %bb.c, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel
  %.514.us.peel = phi float [ %.312.us.peel, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel ], [ %.312.us.peel, %.sink.split.i58.sroa.store.us.peel ], [ %i.al, %bb.c ] ; 2 uses
  %.5.us.peel = phi float [ %.3.us.peel, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel ], [ %i.al, %.sink.split.i58.sroa.store.us.peel ], [ %.312.us.peel, %bb.c ] ; 2 uses
  %i.at = fcmp olt float %i.an, %.5.us.peel
  br i1 %i.at, label %bb.d, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel

bb.d:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel
  %i.au = fcmp olt float %i.an, %.514.us.peel
  br i1 %i.au, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel, label %.sink.split.i61.sroa.store.us.peel

.sink.split.i61.sroa.store.us.peel:               ; preds = %bb.d
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel: ; preds = %.sink.split.i61.sroa.store.us.peel, %bb.d, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel
  %.7.us.peel = phi float [ %.5.us.peel, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel ], [ %i.an, %.sink.split.i61.sroa.store.us.peel ], [ %.514.us.peel, %bb.d ]
  store float %.7.us.peel, ptr %i.aa, align 64, !tbaa !112
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge.us, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader: ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel
  br i1 %min.iters.check, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader
  %i.av = getelementptr i8, ptr %scevgep51, i64 %spec.select.us
  %i.aw = getelementptr i8, ptr %scevgep50, i64 %spec.select.us
  %i.ax = getelementptr i8, ptr %scevgep51, i64 %.sink.idx
  %i.ay = getelementptr i8, ptr %scevgep50, i64 %.sink.idx
  %bound0.a = icmp ult ptr %scevgep53, %i.aw
  %bound1 = icmp ult ptr %i.av, %scevgep52
  %found.conflict.a = and i1 %bound0.a, %bound1
  %i.az = or i1 %found.conflict.a, %stride.check
  %bound054 = icmp ult ptr %scevgep53, %i.ay
  %bound155 = icmp ult ptr %i.ax, %scevgep52
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx = or i1 %i.az, %found.conflict56
  %conflict.rdx61 = or i1 %conflict.rdx, %i.q
  br i1 %conflict.rdx61, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader72, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 9 uses
  %i.ba = or disjoint i64 %index, 1               ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = getelementptr [4 x i8], ptr %i.v, i64 %index
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !112, !alias.scope !719 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bb, i64 -4
  %wide.load62 = load <4 x float>, ptr %i.bi, align 16, !tbaa !112, !alias.scope !719
  %i.bj = or disjoint i64 %index, 2               ; 2 uses
  %i.bk = or disjoint i64 %index, 3               ; 2 uses
  %i.bl = add nuw nsw i64 %index, 4               ; 2 uses
  %i.bm = add i64 %index, 5                       ; 2 uses
  %i.bn = icmp ult i64 %i.bj, %i.j
  %i.bo = icmp ult i64 %i.bk, %i.j
  %i.bp = icmp ult i64 %i.bl, %i.j
  %i.bq = icmp ult i64 %i.bm, %i.j
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bj
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bk
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bl
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bm
  %i.bv = select i1 %i.bn, ptr %i.br, ptr %i.bb
  %i.bw = select i1 %i.bo, ptr %i.bs, ptr %i.bd
  %i.bx = select i1 %i.bp, ptr %i.bt, ptr %i.bf
  %i.by = select i1 %i.bq, ptr %i.bu, ptr %i.bh
  %i.bz = load float, ptr %i.bv, align 4, !tbaa !112, !alias.scope !719
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !112, !alias.scope !719
  %i.cb = load float, ptr %i.bx, align 4, !tbaa !112, !alias.scope !719
  %i.cc = load float, ptr %i.by, align 4, !tbaa !112, !alias.scope !719
  %i.cd = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 1
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 2
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 3
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %i.ba
  %wide.load63 = load <4 x float>, ptr %i.ch, align 4, !tbaa !112, !alias.scope !720
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ba
  %wide.load64 = load <4 x float>, ptr %i.ci, align 4, !tbaa !112, !alias.scope !721
  %i.cj = fsub <4 x float> %wide.load, %wide.load62
  %i.ck = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cj) ; 2 uses
  %i.cl = fsub <4 x float> %wide.load, %i.cg
  %i.cm = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cl) ; 4 uses
  %i.cn = fsub <4 x float> %wide.load, %wide.load63
  %i.co = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cn) ; 4 uses
  %i.cp = fsub <4 x float> %wide.load, %wide.load64
  %i.cq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cp) ; 3 uses
  %i.cr = fcmp olt <4 x float> %i.ck, splat (float f0x7F7FFFFF)
  %i.cs = select <4 x i1> %i.cr, <4 x float> %i.ck, <4 x float> splat (float f0x7F7FFFFF) ; 3 uses
  %i.ct = fcmp olt <4 x float> %i.cm, splat (float f0x7F7FFFFF) ; 2 uses
  %i.cu = fcmp olt <4 x float> %i.cm, %i.cs
  %i.cv = select <4 x i1> %i.ct, <4 x i1> %i.cu, <4 x i1> zeroinitializer ; 2 uses
  %predphi = select <4 x i1> %i.cv, <4 x float> %i.cm, <4 x float> %i.cs ; 3 uses
  %predphi65 = select <4 x i1> %i.cv, <4 x float> %i.cs, <4 x float> %i.cm
  %predphi66 = select <4 x i1> %i.ct, <4 x float> %predphi65, <4 x float> splat (float f0x7F7FFFFF) ; 2 uses
  %i.cw = fcmp olt <4 x float> %i.co, %predphi66  ; 2 uses
  %i.cx = fcmp olt <4 x float> %i.co, %predphi
  %i.cy = select <4 x i1> %i.cw, <4 x i1> %i.cx, <4 x i1> zeroinitializer ; 2 uses
  %predphi67 = select <4 x i1> %i.cy, <4 x float> %i.co, <4 x float> %predphi ; 2 uses
  %predphi68 = select <4 x i1> %i.cy, <4 x float> %predphi, <4 x float> %i.co
  %predphi69 = select <4 x i1> %i.cw, <4 x float> %predphi68, <4 x float> %predphi66 ; 2 uses
  %i.cz = fcmp olt <4 x float> %i.cq, %predphi69
  %i.da = fcmp olt <4 x float> %i.cq, %predphi67
  %predphi70 = select <4 x i1> %i.da, <4 x float> %predphi67, <4 x float> %i.cq
  %predphi71 = select <4 x i1> %i.cz, <4 x float> %predphi70, <4 x float> %predphi69
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ba
  store <4 x float> %predphi71, ptr %i.db, align 4, !tbaa !112, !alias.scope !722, !noalias !723
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !716

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader72

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader72: ; preds = %vector.memcheck, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader, %middle.block
  %.05115.us.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader ], [ %i.r, %middle.block ]
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us:   ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader72, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us
  %.05115.us = phi i64 [ %i.dh, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us ], [ %.05115.us.ph, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader72 ] ; 5 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.05115.us ; 3 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !112 ; 4 uses
  %i.df = getelementptr i8, ptr %i.dd, i64 -4
  %i.dg = load float, ptr %i.df, align 4, !tbaa !112
  %i.dh = add nuw nsw i64 %.05115.us, 1           ; 4 uses
  %i.di = icmp samesign ult i64 %i.dh, %i.j
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.dh
  %.in.us = select i1 %i.di, ptr %i.dj, ptr %i.dd
  %i.dk = load float, ptr %.in.us, align 4, !tbaa !112
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %.05115.us
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !112
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.05115.us
  %i.do = load float, ptr %i.dn, align 4, !tbaa !112
  %i.dp = fsub float %i.de, %i.dg
  %i.dq = tail call noundef float @llvm.fabs.f32(float %i.dp) ; 2 uses
  %i.dr = fsub float %i.de, %i.dk
  %i.ds = tail call noundef float @llvm.fabs.f32(float %i.dr) ; 4 uses
  %i.dt = fsub float %i.de, %i.dm
  %i.du = tail call noundef float @llvm.fabs.f32(float %i.dt) ; 4 uses
  %i.dv = fsub float %i.de, %i.do
  %i.dw = tail call noundef float @llvm.fabs.f32(float %i.dv) ; 3 uses
  %i.dx = fcmp olt float %i.dq, f0x7F7FFFFF
  %.110.us = select i1 %i.dx, float %i.dq, float f0x7F7FFFFF ; 4 uses
  %i.dy = fcmp olt float %i.ds, f0x7F7FFFFF
  br i1 %i.dy, label %bb.e, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us

bb.e:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us
  %i.dz = fcmp olt float %i.ds, %.110.us
  br i1 %i.dz, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us, label %.sink.split.i55.sroa.store.us

.sink.split.i55.sroa.store.us:                    ; preds = %bb.e
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us: ; preds = %.sink.split.i55.sroa.store.us, %bb.e, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us
  %.312.us = phi float [ %.110.us, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us ], [ %.110.us, %.sink.split.i55.sroa.store.us ], [ %i.ds, %bb.e ] ; 4 uses
  %.3.us = phi float [ f0x7F7FFFFF, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us ], [ %i.ds, %.sink.split.i55.sroa.store.us ], [ %.110.us, %bb.e ] ; 2 uses
  %i.ea = fcmp olt float %i.du, %.3.us
  br i1 %i.ea, label %bb.f, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us

bb.f:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us
  %i.eb = fcmp olt float %i.du, %.312.us
  br i1 %i.eb, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us, label %.sink.split.i58.sroa.store.us

.sink.split.i58.sroa.store.us:                    ; preds = %bb.f
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us: ; preds = %.sink.split.i58.sroa.store.us, %bb.f, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us
  %.514.us = phi float [ %.312.us, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us ], [ %.312.us, %.sink.split.i58.sroa.store.us ], [ %i.du, %bb.f ] ; 2 uses
  %.5.us = phi float [ %.3.us, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us ], [ %i.du, %.sink.split.i58.sroa.store.us ], [ %.312.us, %bb.f ] ; 2 uses
  %i.ec = fcmp olt float %i.dw, %.5.us
  br i1 %i.ec, label %bb.g, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us

bb.g:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us
  %i.ed = fcmp olt float %i.dw, %.514.us
  br i1 %i.ed, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us, label %.sink.split.i61.sroa.store.us

.sink.split.i61.sroa.store.us:                    ; preds = %bb.g
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us: ; preds = %.sink.split.i61.sroa.store.us, %bb.g, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us
  %.7.us = phi float [ %.5.us, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us ], [ %i.dw, %.sink.split.i61.sroa.store.us ], [ %.514.us, %bb.g ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.05115.us
  store float %.7.us, ptr %i.ee, align 4, !tbaa !112
  %exitcond.not = icmp eq i64 %i.dh, %i.j
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us, !llvm.loop !717

..loopexit_crit_edge.us:                          ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us, %middle.block, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel
  %exitcond22.not = icmp eq i64 %i.w, %i.c
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
  br i1 %.not, label %._crit_edge84.split, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !92
  %.not85 = icmp eq i32 %i.f, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = load i64, ptr %i.p, align 8
  br i1 %.not85, label %._crit_edge84.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph83
  %i.s = shl nuw nsw i64 %i.g, 2
  br label %.lr.ph

._crit_edge84.split:                              ; preds = %._crit_edge, %.lr.ph83, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.05480 = phi i64 [ %i.ce, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.t = mul i64 %i.n, %.05480
  %i.u = getelementptr i8, ptr %i.l, i64 %i.t     ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v4f32
!523 = !{!466}
!524 = !{!468}
!525 = !{!470}
!526 = !{!472}
!527 = !{!474}
!528 = !{!476}
!529 = !{!478}
!530 = !{!480}
!531 = !{!482}
!532 = !{!484}
!533 = !{!486}
!534 = !{!488}
!535 = !{!490}
!536 = !{!495}
!537 = !{!498}
!538 = !{!500}
!539 = !{!502}
!540 = !{!503}
!541 = distinct !{!541, i1 true, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl13CodecMetadataEJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!542 = distinct !{!542, !541, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl13CodecMetadataEJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: argument 0"}
!543 = distinct !{null, null, null, null, null}
!544 = distinct !{!544, i1 true, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl18PassesDecoderStateEJRP22JxlMemoryManagerStructEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!545 = distinct !{!545, !544, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl18PassesDecoderStateEJRP22JxlMemoryManagerStructEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: argument 0"}
!546 = distinct !{!546, i1 true, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl8ACImageTIiEEJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!547 = distinct !{!547, !546, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl8ACImageTIiEEJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: argument 0"}
!548 = distinct !{!548, i1 true, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev"}
!549 = distinct !{!549, !548, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev: argument 0"}
!550 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!551 = distinct !{null, null, null, null, null, null, null}
!552 = distinct !{!552, !93}
!553 = !{!182, !27, i64 32}
!554 = !{!542}
!555 = !{!182, !115, i64 408}
!556 = !{!"_ZTSN3jxl10SizeHeaderE", !163, i64 0, !24, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28}
!557 = !{!"_ZTSN3jxl11ToneMappingE", !163, i64 0, !24, i64 8, !18, i64 12, !18, i64 16, !24, i64 20, !18, i64 24}
!558 = !{!"_ZTSN3jxl13PreviewHeaderE", !163, i64 0, !24, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28}
!559 = !{!"_ZTSN3jxl15AnimationHeaderE", !163, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !24, i64 20}
!560 = !{!"_ZTSN3jxl13ImageMetadataE", !163, i64 0, !24, i64 8, !186, i64 16, !24, i64 40, !24, i64 41, !197, i64 48, !15, i64 248, !24, i64 252, !24, i64 253, !24, i64 254, !556, i64 256, !557, i64 288, !15, i64 320, !201, i64 328, !558, i64 352, !559, i64 384, !26, i64 408, !24, i64 416}
!561 = !{!560, !24, i64 8}
!562 = !{!560, !15, i64 320}
!563 = !{!"_ZTSN3jxl18OpsinInverseMatrixE", !163, i64 0, !24, i64 8, !206, i64 12, !14, i64 48, !14, i64 60}
!564 = !{!"_ZTSN3jxl19CustomTransformDataE", !163, i64 0, !24, i64 8, !24, i64 9, !563, i64 16, !15, i64 96, !14, i64 100, !14, i64 160, !14, i64 380}
!565 = !{!"_ZTSN3jxl13CodecMetadataE", !560, i64 0, !556, i64 424, !564, i64 456}
!566 = !{!565, !15, i64 320}
!567 = !{!197, !190, i64 56}
!568 = !{!545}
!569 = !{!547, !545}
!570 = !{!238, !237, i64 0}
!571 = !{!242, !241, i64 0}
!572 = !{!257, !24, i64 868}
!573 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl18PassesDecoderStateELi0ELb0EEE", !264, i64 0}
!574 = !{!573, !264, i64 0}
!575 = !{!254, !249, i64 96}
!576 = !{!549}
!577 = !{!267, !267, i64 0}
!578 = !{!269, !269, i64 0}
!579 = !{!270, !270, i64 0}
!580 = !{!271, !271, i64 0}
!581 = !{!274, !274, i64 0}
!582 = !{!208, !208, i64 0}
!583 = !{!116, !26, i64 112}
!584 = distinct !{!584, !93}
!585 = distinct !{null, null, null}
!586 = distinct !{!586, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!587 = distinct !{!587, !586, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!588 = distinct !{!588, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!589 = distinct !{!589, !588, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!590 = !{!182, !15, i64 68}
!591 = !{!258, !18, i64 2872}
!592 = !{!182, !15, i64 72}
!593 = !{!258, !18, i64 2876}
!594 = !{!258, !19, i64 3016}
!595 = !{!258, !24, i64 3064}
!596 = !{!258, !24, i64 3065}
!597 = !{!258, !231, i64 3068}
!598 = !{!158, !26, i64 80}
!599 = !{!158, !26, i64 88}
!600 = !{!587}
!601 = !{!589}
!602 = distinct !{!602, !93}
!603 = distinct !{null}
!604 = distinct !{!604, !93}
!605 = distinct !{null, null, null}
!606 = !{!253, !250, i64 0}
!607 = !{!253, !250, i64 8}
!608 = !{!245, !245, i64 0}
!609 = distinct !{!609, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!610 = distinct !{!610, !609, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!611 = distinct !{!611, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!612 = distinct !{!612, !611, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!613 = distinct !{!613, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!614 = distinct !{!614, !613, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!615 = distinct !{!615, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!616 = distinct !{!616, !615, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!617 = distinct !{!617, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!618 = distinct !{!618, !617, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!619 = distinct !{!619, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!620 = distinct !{!620, !619, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!621 = distinct !{!621, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!622 = distinct !{!622, !621, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!623 = distinct !{!623, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!624 = distinct !{!624, !623, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!625 = distinct !{!625, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!626 = distinct !{!626, !625, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!627 = distinct !{!627, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!628 = distinct !{!628, !627, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!629 = distinct !{!629, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!630 = distinct !{!630, !629, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!631 = distinct !{!631, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!632 = distinct !{!632, !631, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!633 = distinct !{!633, !103}
!634 = distinct !{!634, !93}
!635 = distinct !{!635, !103}
!636 = distinct !{!636, i1 true, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev"}
!637 = distinct !{!637, !636, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev: argument 0"}
!638 = distinct !{!638, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!639 = distinct !{!639, !638, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!640 = distinct !{!640, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!641 = distinct !{!641, !640, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!642 = distinct !{!642, !93}
!643 = distinct !{!643, !93}
!644 = distinct !{!644, !93}
!645 = distinct !{!645, !93}
!646 = distinct !{!646, !93}
!647 = distinct !{!647, !93}
!648 = distinct !{!648, !103}
!649 = !{!616, !614, !612, !610}
!650 = !{!624, !622, !620, !618}
!651 = !{!632, !630, !628, !626}
!652 = !{!637}
!653 = !{!639}
!654 = !{!641}
!655 = distinct !{!655, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!656 = distinct !{!656, !655, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!657 = distinct !{!657, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!658 = distinct !{!658, !657, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!659 = distinct !{!659, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!660 = distinct !{!660, !659, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!661 = distinct !{!661, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!662 = distinct !{!662, !661, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!663 = distinct !{!663, !93, !100, !101}
!664 = distinct !{!664, !93}
!665 = distinct !{!665, !93, !101, !100}
!666 = distinct !{!666, !93, !100, !101}
!667 = distinct !{!667, !93, !101, !100}
!668 = distinct !{!668, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!669 = distinct !{!669, !668, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!670 = distinct !{!670, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!671 = distinct !{!671, !670, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!672 = distinct !{!672, !93, !100, !101}
!673 = distinct !{!673, !93, !101, !100}
!674 = distinct !{!674, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!675 = distinct !{!675, !674, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!676 = distinct !{!676, i1 true, !"_ZN3jxl13QuantEncoding3DCTERKNS_20DctQuantWeightParamsE"}
!677 = distinct !{!677, !676, !"_ZN3jxl13QuantEncoding3DCTERKNS_20DctQuantWeightParamsE: argument 0"}
!678 = distinct !{!678, !93}
!679 = distinct !{null, null}
!680 = distinct !{!680, !103}
!681 = !{!307, !24, i64 2808}
!682 = !{!307, !24, i64 2809}
!683 = !{!65, !28, i64 87}
!684 = !{!"_ZTSN3jxl9ACSConfigE", !124, i64 0, !20, i64 8, !26, i64 16, !20, i64 24, !26, i64 32, !20, i64 40, !26, i64 48, !26, i64 56, !14, i64 64, !26, i64 88, !18, i64 96, !18, i64 100, !18, i64 104}
!685 = !{!"_ZTSN3jxl20AcStrategyHeuristicsE", !85, i64 0, !317, i64 8, !684, i64 16, !26, i64 128, !86, i64 136, !26, i64 160, !86, i64 168}
!686 = !{!685, !85, i64 0}
!687 = !{!317, !317, i64 0}
!688 = !{!65, !24, i64 48}
!689 = !{!656}
!690 = !{!658}
!691 = !{!660}
!692 = !{!662}
!693 = !{!669}
!694 = !{!671}
!695 = !{!182, !24, i64 425}
!696 = !{!675}
!697 = !{!123, !15, i64 0}
!698 = !{!65, !24, i64 32}
!699 = !{!677}
!700 = !{!322, !322, i64 0}
!701 = !{i64 0, i64 104, !94, i64 104, i64 8, !96, i64 112, i64 204, !94, i64 320, i64 1, !94}
!702 = !{!328, !328, i64 0}
!703 = !{!329, !329, i64 0}
!704 = !{!330, !330, i64 0}
!705 = !{!124, !124, i64 0}
!706 = !{!331, !331, i64 0}
!707 = !{!332, !332, i64 0}
!708 = !{!333, !333, i64 0}
!709 = !{!334, !334, i64 0}
!710 = !{!335, !335, i64 0}
!711 = distinct !{!711, i1 false, !"LVerDomain"}
!712 = distinct !{!712, !711}
!713 = distinct !{!713, !711}
!714 = distinct !{!714, !711}
!715 = distinct !{!715, !711}
!716 = distinct !{!716, !93, !724, !100, !101}
!717 = distinct !{!717, !93, !724, !100}
!718 = distinct !{!718, !93}
!719 = !{!712}
!720 = !{!713}
!721 = !{!714}
!722 = !{!715}
!723 = !{!714, !713, !712}
!724 = !{!"llvm.loop.peeled.count", i32 1}
!725 = distinct !{!725, !93}
!726 = distinct !{!726, !93}
!727 = distinct !{!727, !93}
!728 = distinct !{!728, !93}
!729 = distinct !{!729, !93}
!730 = distinct !{!730, !93}
!731 = distinct !{!731, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!732 = distinct !{!732, !731, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!733 = distinct !{!733, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!734 = distinct !{!734, !733, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!735 = distinct !{!735, i1 false, !"LVerDomain"}
!736 = distinct !{!736, !735}
!737 = distinct !{!737, !735}
!738 = distinct !{!738, !735}
!739 = distinct !{!739, !93, !100, !101}
!740 = distinct !{!740, !93}
!741 = distinct !{!741, !93, !100}
!742 = !{!732}
!743 = !{!734}
!744 = !{!736}
!745 = !{!737}
!746 = !{!738}
!747 = !{!736, !737}
!748 = distinct !{!748, i1 false, !"LVerDomain"}
!749 = distinct !{!749, !748}
!750 = distinct !{!750, !748}
!751 = distinct !{!751, !748}
!752 = distinct !{!752, !93, !100, !101}
!753 = distinct !{!753, !103}
!754 = distinct !{!754, !93}
!755 = distinct !{!755, !93, !100}
!756 = !{!749}
!757 = !{!750}
!758 = !{!751}
!759 = !{!749, !750}
!760 = distinct !{!760, i1 false, !"LVerDomain"}
!761 = distinct !{!761, !760}
!762 = distinct !{!762, !760}
!763 = distinct !{!763, !760}
!764 = distinct !{!764, !93, !100, !101}
!765 = distinct !{!765, !103}
!766 = distinct !{!766, !93}
!767 = distinct !{!767, !93, !100}
!768 = !{!761}
!769 = !{!762}
!770 = !{!763}
!771 = !{!761, !762}
!772 = distinct !{!772, !93}
!773 = distinct !{!773, !93}
!774 = !{!166, !14, i64 20}
!775 = !{!166, !14, i64 21}
!776 = distinct !{!776, !93}
!777 = distinct !{!777, !93}
!778 = distinct !{null, null, null, null}
!779 = distinct !{null, null, null, null, null, null}
!780 = !{!"_ZTSN3jxl12ExtraChannelE", !14, i64 0}
!781 = !{!"_ZTSN3jxl16ExtraChannelInfoE", !163, i64 0, !24, i64 8, !780, i64 12, !186, i64 16, !15, i64 40, !170, i64 48, !24, i64 72, !14, i64 76, !15, i64 92}
!782 = !{!781, !15, i64 40}
!783 = distinct !{!783, !93}
!784 = distinct !{!784, !93}
!785 = distinct !{!785, !93, !100, !101}
!786 = distinct !{!786, !93, !100}
!787 = distinct !{!787, !93}
!788 = distinct !{!788, !93, !100, !101}
!789 = distinct !{!789, !93, !100}
!790 = !{i64 0, i64 8, !96, i64 8, i64 8, !96}
!791 = distinct !{!791, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!792 = distinct !{!792, !791, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!793 = distinct !{!793, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!794 = distinct !{!794, !793, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!795 = distinct !{!795, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!796 = distinct !{!796, !795, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!797 = distinct !{!797, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!798 = distinct !{!798, !797, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!799 = distinct !{!799, !93, !100, !101}
!800 = distinct !{!800, !93, !100, !101}
!801 = distinct !{!801, !93, !101, !100}
!802 = !{!798, !796, !794, !792}
!803 = distinct !{!803, !93}
!804 = distinct !{!804, !93}
!805 = distinct !{!805, !93}
!806 = distinct !{!806, !93}
!807 = distinct !{!807, !93}
!808 = distinct !{!808, !93}
!809 = distinct !{!809, !93}
!810 = distinct !{!810, !93}
!811 = distinct !{!811, !93}
!812 = distinct !{!812, !93}
!813 = distinct !{!813, !93}
!814 = distinct !{!814, !93}
!815 = distinct !{!815, !93}
!816 = distinct !{!816, !93}
!817 = distinct !{!817, !93}
!818 = distinct !{!818, !93}
!819 = distinct !{!819, !93}
!820 = distinct !{!820, !93}
!821 = distinct !{!821, !93}
!822 = distinct !{!822, !93}
!823 = distinct !{!823, !93}
!824 = distinct !{!824, !93}
!825 = distinct !{!825, !93}
!826 = distinct !{!826, !93}
!827 = distinct !{!827, i1 true, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl11ImageBundleEJRP22JxlMemoryManagerStructEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!828 = distinct !{!828, !827, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl11ImageBundleEJRP22JxlMemoryManagerStructEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: argument 0"}
!829 = !{!128, !15, i64 16}
!830 = !{!128, !18, i64 28}
!831 = !{!128, !15, i64 32}
!832 = !{!128, !15, i64 36}
!833 = !{!153, !85, i64 0}
!834 = !{!158, !156, i64 1920}
!835 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl11ImageBundleELi0ELb0EEE", !352, i64 0}
!836 = !{!835, !352, i64 0}
!837 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl11ImageBundleENS_14default_deleteIS2_EEEE", !835, i64 0}
!838 = !{!"_ZTSNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEEE", !837, i64 0}
!839 = !{!"_ZTSN3jxl14ReferenceFrameE", !838, i64 0, !24, i64 8}
!840 = !{!839, !24, i64 8}
!841 = !{!158, !26, i64 2800}
!842 = !{!828}
!843 = distinct !{!843, !93, !844}
!844 = !{!"llvm.loop.unswitch.partial.disable"}
!845 = distinct !{!845, !93}
!846 = distinct !{null, null, null}
!847 = distinct !{null, null, null}
!848 = distinct !{!848, !93}
!849 = distinct !{!849, !93}
!850 = !{!237, !237, i64 0}
!851 = !{!227, !227, i64 0}
!852 = !{!220, !217, i64 0}
!853 = !{!220, !217, i64 8}
!854 = !{!217, !217, i64 0}
!855 = !{!216, !213, i64 0}
!856 = !{!216, !213, i64 8}
!857 = !{!213, !213, i64 0}
!858 = distinct !{!858, !93}
!859 = !{!"p1 _ZTSN3jxl16HybridUintConfigE", !19, i64 0}
!860 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl16HybridUintConfigELi0ELb0EEE", !859, i64 0}
!861 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl16HybridUintConfigENS_9allocatorIS2_EEEE", !860, i64 0}
!862 = !{!"_ZTSNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEEE", !859, i64 0, !859, i64 8, !861, i64 16}
!863 = !{!862, !859, i64 0}
!864 = !{!862, !859, i64 8}
!865 = !{!859, !859, i64 0}
!866 = !{!"p1 _ZTSN3jxl19HuffmanDecodingDataE", !19, i64 0}
!867 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl19HuffmanDecodingDataELi0ELb0EEE", !866, i64 0}
!868 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEEE", !867, i64 0}
!869 = !{!"_ZTSNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEEE", !866, i64 0, !866, i64 8, !868, i64 16}
!870 = !{!869, !866, i64 0}
!871 = !{!869, !866, i64 8}
!872 = !{!"p1 _ZTSN3jxl11HuffmanCodeE", !19, i64 0}
!873 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl11HuffmanCodeELi0ELb0EEE", !872, i64 0}
!874 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl11HuffmanCodeENS_9allocatorIS2_EEEE", !873, i64 0}
!875 = !{!"_ZTSNSt3__16vectorIN3jxl11HuffmanCodeENS_9allocatorIS2_EEEE", !872, i64 0, !872, i64 8, !874, i64 16}
!876 = !{!875, !872, i64 0}
!877 = !{!875, !872, i64 8}
!878 = !{!872, !872, i64 0}
!879 = !{!866, !866, i64 0}
!880 = !{!152, !149, i64 0}
!881 = !{!152, !149, i64 8}
!882 = !{!149, !149, i64 0}
!883 = !{!148, !145, i64 0}
!884 = !{!148, !145, i64 8}
!885 = !{!145, !145, i64 0}
!886 = !{!144, !141, i64 0}
!887 = !{!144, !141, i64 8}
!888 = !{!141, !141, i64 0}
!889 = !{!140, !137, i64 0}
!890 = !{!140, !137, i64 8}
!891 = !{!137, !137, i64 0}
!892 = !{!133, !133, i64 0}
!893 = distinct !{!893, i1 true, !"_ZNO3jxl8StatusOrINS_12AlignedArrayINS_13GroupDecCacheEEEE6value_Ev"}
!894 = distinct !{!894, !893, !"_ZNO3jxl8StatusOrINS_12AlignedArrayINS_13GroupDecCacheEEEE6value_Ev: argument 0"}
!895 = !{!355, !19, i64 0}
!896 = !{!"_ZTSZN3jxl16ReconstructImageERKNS_11FrameHeaderERKNS_17PassesSharedStateERKNSt3__16vectorINS6_10unique_ptrINS_7ACImageENS6_14default_deleteIS9_EEEENS6_9allocatorISC_EEEEPNS_10ThreadPoolEE3$_0", !267, i64 0, !269, i64 8, !270, i64 16}
!897 = !{!896, !267, i64 0}
!898 = !{!896, !269, i64 8}
!899 = !{!894}
!900 = !{!896, !270, i64 16}
!901 = distinct !{!901, i1 true, !"_ZNK3jxl15FrameDimensions14BlockGroupRectEm"}
!902 = distinct !{!902, !901, !"_ZNK3jxl15FrameDimensions14BlockGroupRectEm: argument 0"}
!903 = !{!355, !19, i64 8}
!904 = !{!"_ZTSZN3jxl16ReconstructImageERKNS_11FrameHeaderERKNS_17PassesSharedStateERKNSt3__16vectorINS6_10unique_ptrINS_7ACImageENS6_14default_deleteIS9_EEEENS6_9allocatorISC_EEEEPNS_10ThreadPoolEE3$_1", !271, i64 0, !272, i64 8, !267, i64 16, !274, i64 24, !270, i64 32, !208, i64 40}
!905 = !{!904, !271, i64 0}
!906 = !{!904, !272, i64 8}
!907 = !{!902}
!908 = !{!116, !26, i64 80}
!909 = !{!116, !26, i64 128}
!910 = !{!904, !267, i64 16}
!911 = !{!904, !274, i64 24}
!912 = !{!904, !270, i64 32}
!913 = !{!904, !208, i64 40}
!914 = !{!"p1 _ZTSNSt3__14pairIPN3jxl5PlaneIfEENS1_5RectTImEEEE", !19, i64 0}
!915 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairIPN3jxl5PlaneIfEENS2_5RectTImEEEELi0ELb0EEE", !914, i64 0}
!916 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairIPN3jxl5PlaneIfEENS2_5RectTImEEEENS_9allocatorIS8_EEEE", !915, i64 0}
!917 = !{!"_ZTSNSt3__16vectorINS_4pairIPN3jxl5PlaneIfEENS2_5RectTImEEEENS_9allocatorIS8_EEEE", !914, i64 0, !914, i64 8, !916, i64 16}
!918 = !{!917, !914, i64 0}
!919 = !{!917, !914, i64 8}
!920 = !{!914, !914, i64 0}
!921 = distinct !{!921, !93}
!922 = distinct !{!922, !103}
!923 = !{!365, !19, i64 0}
end_hunk_1
