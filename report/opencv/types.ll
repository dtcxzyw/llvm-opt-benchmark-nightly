Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/types?download=true
inline.NumInlined: 249
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8KeyPoint7convertERKSt6vectorINS_6Point_IfEESaIS3_EERS1_IS0_SaIS0_EEffii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv8KeyPoint7convertERKSt6vectorINS_6Point_IfEESaIS3_EERS1_IS0_SaIS0_EEffiiE24__cv_trace_location_fn96)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 28                  ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  invoke void @_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.p)
          to label %._ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit_crit_edge unwind label %bb.g

._ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !23  ; 2 uses
  %.pre17 = ptrtoint ptr %.pre to i64
  %.pre18 = ptrtoint ptr %.pre16 to i64
  %.pre20 = sub i64 %.pre17, %.pre18
  %.pre22 = ashr exact i64 %.pre20, 3
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [28 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.r, ptr %i.h, align 8, !tbaa !18
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit: ; preds = %._ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit_crit_edge, %bb.c, %bb.d, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i
  %.pre-phi23 = phi i64 [ %.pre22, %._ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.s = phi ptr [ %.pre16, %._ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit_crit_edge ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.t = phi ptr [ %.pre, %._ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit_crit_edge ], [ %i.b, %bb.c ], [ %i.b, %bb.d ], [ %i.b, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit
  %i.u = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %.pre-phi23, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %i.v = icmp ult i64 %.pre-phi23, 2
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %umax, -2
  br label %bb.h

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.015.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.015.epil.init
  %.sroa.0.0.copyload.epil = load <2 x float>, ptr %i.w, align 4, !tbaa !24
  %i.x = getelementptr inbounds nuw [28 x i8], ptr %i.u, i64 %.015.epil.init ; 6 uses
  store <2 x float> %.sroa.0.0.copyload.epil, ptr %i.x, align 4, !tbaa !24
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store float %2, ptr %.sroa.4.0..sroa_idx.epil, align 4, !tbaa !24
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store float -1.000000e+00, ptr %.sroa.5.0..sroa_idx.epil, align 4, !tbaa !24
  %.sroa.6.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store float %3, ptr %.sroa.6.0..sroa_idx.epil, align 4, !tbaa !24
  %.sroa.7.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  store i32 %4, ptr %.sroa.7.0..sroa_idx.epil, align 4, !tbaa !26
  %.sroa.8.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 %5, ptr %.sroa.8.0..sroa_idx.epil, align 4, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !36
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #23
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void

bb.g:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %i.ac

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %.015 = phi i64 [ 0, %.lr.ph.new ], [ %i.ai, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.015
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ad, align 4, !tbaa !24
  %i.ae = getelementptr inbounds nuw [28 x i8], ptr %i.u, i64 %.015 ; 6 uses
  store <2 x float> %.sroa.0.0.copyload, ptr %i.ae, align 4, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store float %2, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store float -1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store float %3, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  store i32 %4, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !26
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 %5, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !26
  %i.af = or disjoint i64 %.015, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.af
  %.sroa.0.0.copyload.1 = load <2 x float>, ptr %i.ag, align 4, !tbaa !24
  %i.ah = getelementptr inbounds nuw [28 x i8], ptr %i.u, i64 %i.af ; 6 uses
  store <2 x float> %.sroa.0.0.copyload.1, ptr %i.ah, align 4, !tbaa !24
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store float %2, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !24
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store float -1.000000e+00, ptr %.sroa.5.0..sroa_idx.1, align 4, !tbaa !24
  %.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store float %3, ptr %.sroa.6.0..sroa_idx.1, align 4, !tbaa !24
  %.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 %4, ptr %.sroa.7.0..sroa_idx.1, align 4, !tbaa !26
  %.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 %5, ptr %.sroa.8.0..sroa_idx.1, align 4, !tbaa !26
  %i.ai = add nuw i64 %.015, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef float @_ZN2cv8KeyPoint7overlapERKS0_S2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x float>, ptr %i.c, align 4
  %i.e = insertelement <2 x float> %i.d, float %i.b, i64 1 ; 2 uses
  %i.f = fmul <2 x float> %i.e, splat (float 5.000000e-01) ; 5 uses
  %i.g = fmul <2 x float> %i.f, %i.f              ; 7 uses
  %i.h = load <2 x float>, ptr %0, align 4
  %i.i = load <2 x float>, ptr %1, align 4
  %i.j = fsub <2 x float> %i.h, %i.i              ; 2 uses
  %i.k = extractelement <2 x float> %i.j, i64 0
  %i.l = fpext float %i.k to double               ; 2 uses
  %i.m = extractelement <2 x float> %i.j, i64 1
  %i.n = fpext float %i.m to double               ; 2 uses
  %i.o = fmul double %i.n, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.o)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.p)
  %i.q = fptrunc double %sqrt.i to float          ; 5 uses
  %i.r = extractelement <2 x float> %i.f, i64 0   ; 4 uses
  %i.s = extractelement <2 x float> %i.f, i64 1   ; 4 uses
  %i.t = fcmp olt float %i.r, %i.s
  %.sroa.speculated64 = select i1 %i.t, float %i.r, float %i.s
  %i.u = fadd float %.sroa.speculated64, %i.q
  %i.v = fcmp olt float %i.s, %i.r
  %.sroa.speculated61 = select i1 %i.v, float %i.r, float %i.s
  %i.w = fcmp ugt float %i.u, %.sroa.speculated61
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = extractelement <2 x float> %i.g, i64 0   ; 4 uses
  %i.y = extractelement <2 x float> %i.g, i64 1   ; 4 uses
  %i.z = fcmp olt float %i.x, %i.y
  %.sroa.speculated54 = select i1 %i.z, float %i.x, float %i.y
  %i.aa = fcmp olt float %i.y, %i.x
  %.sroa.speculated = select i1 %i.aa, float %i.x, float %i.y
  %i.ab = fdiv float %.sroa.speculated54, %.sroa.speculated
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ac = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.f)
  %i.ad = fcmp ogt float %i.ac, %i.q
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = fmul float %i.q, %i.q
  %i.af = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.e, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fadd <2 x float> %i.g, %i.aj
  %i.al = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.am = fsub <2 x float> %i.ak, %i.al
  %i.an = fdiv <2 x float> %i.am, %i.ah           ; 3 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0
  %i.ap = tail call noundef float @acosf(float noundef %i.ao) #20 ; 2 uses
  %i.aq = extractelement <2 x float> %i.an, i64 1
  %i.ar = tail call noundef float @acosf(float noundef %i.aq) #20 ; 2 uses
  %i.as = tail call noundef float @sinf(float noundef %i.ap) #20
  %i.at = tail call noundef float @sinf(float noundef %i.ar) #20
  %i.au = extractelement <2 x float> %i.g, i64 1  ; 2 uses
  %i.av = fmul float %i.au, %i.ar
  %i.aw = extractelement <2 x float> %i.g, i64 0  ; 2 uses
  %i.ax = fmul float %i.aw, %i.ap
  %i.ay = insertelement <2 x float> poison, float %i.as, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.at, i64 1
  %i.ba = fmul <2 x float> %i.g, %i.az
  %i.bb = fmul <2 x float> %i.an, %i.ba           ; 2 uses
  %i.bc = fadd float %i.ax, %i.av
  %i.bd = extractelement <2 x float> %i.bb, i64 1
  %i.be = fsub float %i.bc, %i.bd
  %i.bf = extractelement <2 x float> %i.bb, i64 0
  %i.bg = fsub float %i.be, %i.bf                 ; 2 uses
  %i.bh = fadd float %i.au, %i.aw
  %i.bi = fneg float %i.bg
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bh, float f0x40490FDB, float %i.bi)
  %i.bk = fdiv float %i.bg, %i.bj
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi float [ %i.ab, %bb.b ], [ %i.bk, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11RotatedRectC2ERKNS_6Point_IfEES4_S4_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(20) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !24 ; 4 uses
  %.val39 = load float, ptr %i.a, align 4, !tbaa !37 ; 2 uses
  %i.e = load <2 x float>, ptr %3, align 4, !tbaa !24 ; 4 uses
  %.val41 = load float, ptr %i.b, align 4, !tbaa !37 ; 2 uses
  %i.f = load <2 x float>, ptr %2, align 4, !tbaa !24 ; 5 uses
  %.val31 = load float, ptr %i.c, align 4, !tbaa !37
  %i.g = shufflevector <2 x float> %i.f, <2 x float> %i.d, <2 x i32> <i32 0, i32 2>
  %i.h = shufflevector <2 x float> %i.e, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %i.i = fsub <2 x float> %i.g, %i.h              ; 4 uses
  %i.j = shufflevector <2 x float> %i.f, <2 x float> %i.d, <2 x i32> <i32 1, i32 3>
  %i.k = shufflevector <2 x float> %i.e, <2 x float> %i.f, <2 x i32> <i32 1, i32 3>
  %i.l = fsub <2 x float> %i.j, %i.k              ; 4 uses
  %i.m = extractelement <2 x float> %i.d, i64 0
  %i.n = fpext float %i.m to double               ; 2 uses
  %i.o = fpext float %.val39 to double            ; 2 uses
  %i.p = fmul double %i.o, %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.p)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.q) ; 2 uses
  %i.r = shufflevector <2 x float> %i.f, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.s = fpext <2 x float> %i.r to <2 x double>   ; 2 uses
  %i.t = insertelement <2 x float> poison, float %.val31, i64 0
  %i.u = insertelement <2 x float> %i.t, float %.val41, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 2 uses
  %i.w = fmul <2 x double> %i.v, %i.v
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.s, <2 x double> %i.w)
  %6 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.x) ; 2 uses
  %i.y = extractelement <2 x double> %6, i64 0    ; 2 uses
  %7 = extractelement <2 x double> %6, i64 1      ; 2 uses
  %i.z = fcmp olt double %i.y, %7
  %i.aa = select i1 %i.z, double %7, double %i.y  ; 2 uses
  %i.ab = fcmp olt double %sqrt.i, %i.aa
  %.sroa.speculated76 = select i1 %i.ab, double %i.aa, double %sqrt.i
  %i.ac = fpext <2 x float> %i.i to <2 x double>  ; 4 uses
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ac, <2 x double> zeroinitializer)
  %i.ae = fpext <2 x float> %i.l to <2 x double>  ; 4 uses
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ae, <2 x double> %i.ad)
  %i.ag = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.af) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0 ; 3 uses
  %i.ai = extractelement <2 x double> %i.ag, i64 1 ; 3 uses
  %i.aj = fcmp olt double %i.ah, %i.ai
  %.sroa.speculated = select i1 %i.aj, double %i.ah, double %i.ai
  %i.ak = extractelement <2 x double> %i.ac, i64 0
  %i.al = extractelement <2 x double> %i.ac, i64 1
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ak, double 0.000000e+00)
  %i.an = extractelement <2 x double> %i.ae, i64 0
  %i.ao = extractelement <2 x double> %i.ae, i64 1
  %i.ap = tail call noundef double @llvm.fmuladd.f64(double %i.ao, double %i.an, double %i.am)
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap)
  %i.ar = fmul double %i.aq, %.sroa.speculated
  %i.as = fmul double %.sroa.speculated76, f0x3EB2000000000000
  %i.at = fmul double %i.ai, %i.ah
  %i.au = fmul double %i.as, %i.at
  %i.av = fcmp ugt double %i.ar, %i.au
  br i1 %i.av, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv11RotatedRectC2ERKNS_6Point_IfEES4_S4_, ptr noundef nonnull @.str.1, i32 noundef 156) #21
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !32
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.aw

bb.e:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %foldExtExtBinop = fadd <2 x float> %i.d, %i.e
  %i.bd = fadd float %.val39, %.val41
  %i.be = insertelement <2 x float> %foldExtExtBinop, float %i.bd, i64 1
  %i.bf = fmul <2 x float> %i.be, splat (float 5.000000e-01)
  %i.bg = extractelement <2 x float> %i.l, i64 0
  %i.bh = tail call noundef float @llvm.fabs.f32(float %i.bg)
  %i.bi = extractelement <2 x float> %i.i, i64 0
  %i.bj = tail call noundef float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp uge float %i.bh, %i.bj
  %i.bl = insertelement <2 x i1> poison, i1 %i.bk, i64 0
  %i.bm = shufflevector <2 x i1> %i.bl, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bn = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = select <2 x i1> %i.bm, <2 x float> %i.i, <2 x float> %i.bn ; 2 uses
  %i.bp = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = select <2 x i1> %i.bm, <2 x float> %i.l, <2 x float> %i.bp ; 2 uses
  %i.br = extractelement <2 x float> %i.bq, i64 1
  %i.bs = extractelement <2 x float> %i.bo, i64 1
  %i.bt = fdiv float %i.br, %i.bs
  %i.bu = tail call noundef float @atanf(float noundef %i.bt) #20
  %i.bv = fmul float %i.bu, 1.800000e+02
  %i.bw = fdiv float %i.bv, f0x40490FDB
  %i.bx = fpext <2 x float> %i.bo to <2 x double> ; 2 uses
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bx, <2 x double> zeroinitializer)
  %i.bz = fpext <2 x float> %i.bq to <2 x double> ; 2 uses
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.bz, <2 x double> %i.by)
  store <2 x float> %i.bf, ptr %0, align 4, !tbaa !24
  %i.cb = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ca)
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = fptrunc <2 x double> %i.cc to <2 x float>
  store <2 x float> %i.cd, ptr %i.bc, align 4, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bw, ptr %i.ce, align 4, !tbaa !40
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 20
  %i.d = add i64 %i.a, 32
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !41

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !40
  %i.g = fpext float %i.f to double
  %i.h = fmul double %i.g, f0x400921FB54442D18
  %i.i = fdiv double %i.h, 1.800000e+02           ; 2 uses
  %i.j = tail call double @cos(double noundef %i.i) #20
  %i.k = tail call double @sin(double noundef %i.i) #20
  %i.l = load <4 x float>, ptr %0, align 4        ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.j, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 1
  %i.o = fptrunc <2 x double> %i.n to <2 x float>
  %i.p = fmul <2 x float> %i.o, splat (float 5.000000e-01) ; 2 uses
  %i.q = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.r = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.s = fmul <4 x float> %i.q, %i.r              ; 4 uses
  %i.t = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.u = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.v = fmul <4 x float> %i.t, %i.u              ; 2 uses
  %i.w = load <2 x float>, ptr %0, align 4, !tbaa !24
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.y = fsub <4 x float> %i.x, %i.s
  %i.z = fadd <4 x float> %i.x, %i.s
  %i.aa = shufflevector <4 x float> %i.y, <4 x float> %i.z, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ab = fsub <4 x float> %i.aa, %i.v
  store <4 x float> %i.ab, ptr %1, align 4, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load <2 x float>, ptr %0, align 4, !tbaa !24
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.af = fadd <4 x float> %i.ae, %i.s
  %i.ag = fsub <4 x float> %i.ae, %i.s
  %i.ah = shufflevector <4 x float> %i.af, <4 x float> %i.ag, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ai = fadd <4 x float> %i.v, %i.ah
  store <4 x float> %i.ai, ptr %i.ac, align 4, !tbaa !24
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !40
  %i.al = fpext float %i.ak to double
  %i.am = fmul double %i.al, f0x400921FB54442D18
  %i.an = fdiv double %i.am, 1.800000e+02         ; 2 uses
  %i.ao = tail call double @cos(double noundef %i.an) #20
  %i.ap = fptrunc double %i.ao to float
  %i.aq = fmul float %i.ap, 5.000000e-01          ; 2 uses
  %i.ar = tail call double @sin(double noundef %i.an) #20
  %i.as = fptrunc double %i.ar to float
  %i.at = fmul float %i.as, 5.000000e-01          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aw = load float, ptr %i.av, align 4, !tbaa !42 ; 2 uses
  %i.ax = fmul float %i.aw, %i.at                 ; 4 uses
  %i.ay = load float, ptr %i.au, align 4, !tbaa !43 ; 2 uses
  %i.az = fmul float %i.at, %i.ay                 ; 4 uses
  %i.ba = fmul float %i.aq, %i.aw                 ; 4 uses
  %i.bb = fmul float %i.aq, %i.ay                 ; 4 uses
  %i.bc = load float, ptr %0, align 4, !tbaa !44
  %i.bd = fsub float %i.bc, %i.ax
  %i.be = fsub float %i.bd, %i.bb
  store float %i.be, ptr %1, align 4, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !46
  %i.bh = fadd float %i.ba, %i.bg
  %i.bi = fsub float %i.bh, %i.az
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bi, ptr %i.bj, align 4, !tbaa !37
  %i.bk = load float, ptr %0, align 4, !tbaa !44
  %i.bl = fadd float %i.ax, %i.bk
  %i.bm = fsub float %i.bl, %i.bb
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.bm, ptr %i.bn, align 4, !tbaa !45
  %i.bo = load float, ptr %i.bf, align 4, !tbaa !46
  %i.bp = fsub float %i.bo, %i.ba
  %i.bq = fsub float %i.bp, %i.az
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.bq, ptr %i.br, align 4, !tbaa !37
  %i.bs = load float, ptr %0, align 4, !tbaa !44
  %i.bt = fadd float %i.ax, %i.bs
  %i.bu = fadd float %i.bb, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.bu, ptr %i.bv, align 4, !tbaa !45
  %i.bw = load float, ptr %i.bf, align 4, !tbaa !46
  %i.bx = fsub float %i.bw, %i.ba
  %i.by = fadd float %i.az, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.by, ptr %i.bz, align 4, !tbaa !37
  %i.ca = load float, ptr %0, align 4, !tbaa !44
  %i.cb = fsub float %i.ca, %i.ax
  %i.cc = fadd float %i.bb, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.cc, ptr %i.cd, align 4, !tbaa !45
  %i.ce = load float, ptr %i.bf, align 4, !tbaa !46
  %i.cf = fadd float %i.ba, %i.ce
  %i.cg = fadd float %i.az, %i.cf
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_default_appendEm:bb.a
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 28                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 329406144173384851
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 329406144173384850, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.01012.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i.prol, align 4, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 16
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24
  store i32 -1, ptr %i.r, align 4, !tbaa !14
  %i.s = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 28 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !69

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i, align 4, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  store i32 -1, ptr %i.x, align 4, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 28
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.y, align 4, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 44
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store i32 0, ptr %i.aa, align 4, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 52
  store i32 -1, ptr %i.ab, align 4, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ac, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 76
  store i32 0, ptr %i.ae, align 4, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store i32 -1, ptr %i.af, align 4, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 84
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ag, align 4, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 100
  store float 0.000000e+00, ptr %i.ah, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store i32 0, ptr %i.ai, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 108
  store i32 -1, ptr %i.aj, align 4, !tbaa !14
  %i.ak = add nsw i64 %.01012.i.i.i, -4           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !70

_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !18
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 329406144173384850) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 28
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i31.prol, align 4, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 16
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 20
  store i32 0, ptr %i.at, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24
  store i32 -1, ptr %i.au, align 4, !tbaa !14
  %i.av = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 28 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !71

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i31, align 4, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 16
  store float 0.000000e+00, ptr %i.ay, align 4, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 20
  store i32 0, ptr %i.az, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  store i32 -1, ptr %i.ba, align 4, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 28
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.bb, align 4, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 44
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  store i32 0, ptr %i.bd, align 4, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 52
  store i32 -1, ptr %i.be, align 4, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.bf, align 4, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 76
  store i32 0, ptr %i.bh, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  store i32 -1, ptr %i.bi, align 4, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 84
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.bj, align 4, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 100
  store float 0.000000e+00, ptr %i.bk, align 4, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  store i32 0, ptr %i.bl, align 4, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 108
  store i32 -1, ptr %i.bm, align 4, !tbaa !14
  %i.bn = add nsw i64 %.01012.i.i.i32, -4         ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 112
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !70

_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i, i64 28, i1 false), !tbaa.struct !77, !alias.scope !78
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 28 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 28
  %.not.i.i.i38 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !75

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #22
  br label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.aq, ptr %0, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw [28 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"_ZTSN2cv6Point_IfEE", !8, i64 0, !8, i64 4}
!10 = !{!"_ZTSN2cv8KeyPointE", !9, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !5, i64 20, !5, i64 24}
!11 = !{!10, !8, i64 8}
!12 = !{!10, !8, i64 16}
!13 = !{!10, !5, i64 20}
!14 = !{!10, !5, i64 24}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 _ZTSN2cv8KeyPointE", !15, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !16, i64 0}
!20 = !{!"p1 _ZTSN2cv6Point_IfEE", !15, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!21, !20, i64 8}
!23 = !{!21, !20, i64 0}
!24 = !{!8, !8, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!5, !5, i64 0}
!27 = !{!"p1 omnipotent char", !15, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!29 = !{!"long", !4, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !29, i64 8, !4, i64 16}
!31 = !{!30, !27, i64 0}
!32 = !{!4, !4, i64 0}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !15, i64 0}
!35 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !34, i64 0, !5, i64 8}
!36 = !{!35, !5, i64 8}
!37 = !{!9, !8, i64 4}
!38 = !{!"_ZTSN2cv5Size_IfEE", !8, i64 0, !8, i64 4}
!39 = !{!"_ZTSN2cv11RotatedRectE", !9, i64 0, !38, i64 8, !8, i64 16}
!40 = !{!39, !8, i64 16}
!41 = !{!"branch_weights", i32 1, i32 1048575}
!42 = !{!39, !8, i64 12}
!43 = !{!39, !8, i64 8}
!44 = !{!39, !8, i64 0}
!45 = !{!9, !8, i64 0}
!46 = !{!39, !8, i64 4}
!47 = !{!10, !8, i64 0}
!48 = !{!10, !8, i64 4}
!49 = !{!10, !8, i64 12}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !33}
!53 = !{!"p1 int", !15, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!56 = !{!55, !53, i64 8}
!57 = !{!55, !53, i64 0}
!58 = !{!28, !27, i64 0}
!59 = !{!29, !29, i64 0}
!60 = !{!30, !29, i64 8}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, i1 false, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_"}
!63 = distinct !{!63, !62, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!64 = distinct !{!64, !62, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!65 = distinct !{!65, !25}
!66 = !{!21, !20, i64 16}
!67 = !{!63}
!68 = !{!64}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !33}
!72 = distinct !{!72, i1 false, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_"}
!73 = distinct !{!73, !72, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!74 = distinct !{!74, !72, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!75 = distinct !{!75, !25}
!76 = !{!17, !16, i64 16}
!77 = !{i64 0, i64 4, !24, i64 4, i64 4, !24, i64 8, i64 4, !24, i64 12, i64 4, !24, i64 16, i64 4, !24, i64 20, i64 4, !26, i64 24, i64 4, !26}
!78 = !{!74, !73}
end_hunk_1
