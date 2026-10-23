Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/DicomImageLoader?download=true
inline.NumInlined: 15066
inline.NumDeleted: 4736
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZNSt3__16vectorINS_4__fs10filesystem4pathENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_:bb.a
  %i.ae = phi ptr [ %i.af, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem4pathEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i ], [ %i.ab, %.loopexit ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -24 ; 4 uses
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = trunc i8 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem4pathEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !91
  %i.ak = load i64, ptr %i.af, align 8
  %i.al = and i64 %i.ak, -2
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.al) #44
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem4pathEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem4pathEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.af
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4__fs10filesystem4pathERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_4__fs10filesystem4pathERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem4pathEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %i.ac, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferINS_4__fs10filesystem4pathERNS_9allocatorIS3_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__114__split_bufferINS_4__fs10filesystem4pathERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.am = ptrtoint ptr %i.ad to i64
  %i.an = ptrtoint ptr %i.ac to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ao) #44
  br label %_ZNSt3__114__split_bufferINS_4__fs10filesystem4pathERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_4__fs10filesystem4pathERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_4__fs10filesystem4pathERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.e
  ret ptr %i.v
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_4__fs10filesystem4pathENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.90) #42
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__16vectorIN3tev4TaskINS0_INS1_14DicomImageDataENS_9allocatorIS3_EEEEEENS4_IS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !444
  %i.d = load ptr, ptr %0, align 8, !tbaa !458
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 5
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorIN3tev4TaskINS0_INS1_14DicomImageDataENS_9allocatorIS3_EEEEEENS4_IS7_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorIN3tev4TaskINS0_INS1_14DicomImageDataENS_9allocatorIS3_EEEEEENS4_IS7_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #42
  unreachable

_ZNKSt3__16vectorIN3tev4TaskINS0_INS1_14DicomImageDataENS_9allocatorIS3_EEEEEENS4_IS7_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !445
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.not.i = icmp ult i64 %i.m, 9223372036854775776
  %i.n = ashr exact i64 %i.m, 4
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 576460752303423487 ; 4 uses
  %i.o = icmp ne i64 %.0.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ugt i64 %.0.i, 576460752303423487
  br i1 %i.p, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskINS_6vectorINS2_14DicomImageDataENS1_IS5_EEEEEEEEEEDaRT_m.exit.i

bb.c:                                             ; preds = %_ZNKSt3__16vectorIN3tev4TaskINS0_INS1_14DicomImageDataENS_9allocatorIS3_EEEEEENS4_IS7_EEE11__recommendB8ne180100Em.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #42
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskINS_6vectorINS2_14DicomImageDataENS1_IS5_EEEEEEEEEEDaRT_m.exit.i: ; preds = %_ZNKSt3__16vectorIN3tev4TaskINS0_INS1_14DicomImageDataENS_9allocatorIS3_EEEEEENS4_IS7_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #43 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 6 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %1, align 8, !tbaa !102
  store i64 %i.v, ptr %i.s, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !102
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !446
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !446
  store <4 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !102
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !444 ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !458   ; 3 uses
  %.not27.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskINS_6vectorINS2_14DicomImageDataENS1_IS5_EEEEEEEEEEDaRT_m.exit.i, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskINS_6vectorINS2_14DicomImageDataENS1_IS5_EEEEEEEEEEDaRT_m.exit.i ] ; 4 uses
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskINS_6vectorINS2_14DicomImageDataENS1_IS5_EEEEEEEEEEDaRT_m.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -32 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !102
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !102
  store ptr null, ptr %i.ag, align 8, !tbaa !102
  %i.aj = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !102
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !102
  store ptr null, ptr %i.aj, align 8, !tbaa !2955
  store ptr null, ptr %i.ak, align 8, !tbaa !663
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.an = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !446
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !446
  store ptr null, ptr %i.an, align 8, !tbaa !446
  %.not.i.i = icmp eq ptr %i.ag, %i.ad
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !2954

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !445
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !445
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskINS_6vectorINS2_14DicomImageDataENS1_IS5_EEEEEEEEEEDaRT_m.exit.i
  %i.ap = phi ptr [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskINS_6vectorINS2_14DicomImageDataENS1_IS5_EEEEEEEEEEDaRT_m.exit.i ], [ %.pre9, %.loopexit.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskINS_6vectorINS2_14DicomImageDataENS1_IS5_EEEEEEEEEEDaRT_m.exit.i ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.lcssa.i.i = phi ptr [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskINS_6vectorINS2_14DicomImageDataENS1_IS5_EEEEEEEEEEDaRT_m.exit.i ], [ %i.af, %.loopexit.loopexit ]
  store ptr %.lcssa.i.i, ptr %0, align 8, !tbaa !445
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !445
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !445
  store ptr %i.t, ptr %i.a, align 8, !tbaa !445
  %.not2.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskINS_6vectorINS1_14DicomImageDataENS_9allocatorIS4_EEEEEERNS5_IS8_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ap, %.loopexit ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_14DicomImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.at) #41
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskINS_6vectorINS1_14DicomImageDataENS_9allocatorIS4_EEEEEERNS5_IS8_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferIN3tev4TaskINS_6vectorINS1_14DicomImageDataENS_9allocatorIS4_EEEEEERNS5_IS8_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferIN3tev4TaskINS_6vectorINS1_14DicomImageDataENS_9allocatorIS4_EEEEEERNS5_IS8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskINS_6vectorINS1_14DicomImageDataENS_9allocatorIS4_EEEEEERNS5_IS8_EEE5clearB8ne180100Ev.exit.i
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.aw) #44
  br label %_ZNSt3__114__split_bufferIN3tev4TaskINS_6vectorINS1_14DicomImageDataENS_9allocatorIS4_EEEEEERNS5_IS8_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3tev4TaskINS_6vectorINS1_14DicomImageDataENS_9allocatorIS4_EEEEEERNS5_IS8_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskINS_6vectorINS1_14DicomImageDataENS_9allocatorIS4_EEEEEERNS5_IS8_EEE5clearB8ne180100Ev.exit.i, %bb.d
  ret ptr %i.ab
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3tev4TaskINS0_INS1_14DicomImageDataENS_9allocatorIS3_EEEEEENS4_IS7_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.90) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorIN3tev14DicomImageDataENS_9allocatorIS2_EEEC2INS_13move_iteratorINS_6ranges9join_viewINS8_11owning_viewINS0_IS5_NS3_IS5_EEEEEEE10__iteratorILb0EEEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISJ_E9referenceEEE5valueEiE4typeELi0EEESJ_SJ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef byval(%"class.std::__1::move_iterator.813") align 8 %1, ptr noundef byval(%"class.std::__1::move_iterator.813") align 8 %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__exception_guard_exceptions.833", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.sroa.03.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %.sroa.03.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.sroa.2.0.copyload = load ptr, ptr %.sroa.03.sroa.2.0..sroa_idx, align 8
  %.sroa.03.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.03.sroa.3.0.copyload = load i8, ptr %.sroa.03.sroa.3.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.03.sroa.5.0.copyload = load ptr, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.0.0.copyload = load ptr, ptr %2, align 8
  %.sroa.02.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.02.sroa.2.0.copyload = load ptr, ptr %.sroa.02.sroa.2.0..sroa_idx, align 8
  %.sroa.02.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.02.sroa.3.0.copyload = load i8, ptr %.sroa.02.sroa.3.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.sroa.5.0.copyload, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i, %bb.a
  %.pre.i.i = phi ptr [ %.sroa.03.sroa.2.0.copyload, %bb.a ], [ %.pre17.i.i, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i ] ; 2 uses
  %i.d = phi i8 [ %.sroa.03.sroa.3.0.copyload, %bb.a ], [ %i.ac, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i ] ; 3 uses
  %.lcssa49.i.i = phi ptr [ %.sroa.03.sroa.0.0.copyload, %bb.a ], [ %.lcssa48.i.i, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i ] ; 8 uses
  %.0.i.i = phi i64 [ 0, %bb.a ], [ %i.h, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i ] ; 5 uses
  %i.e = icmp eq ptr %.lcssa49.i.i, %.sroa.02.sroa.0.0.copyload
  br i1 %i.e, label %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.i.i, label %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread.i.i

_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.i.i: ; preds = %bb.b
  %4 = trunc nuw i8 %i.d to i1
  %i.f = icmp eq i8 %i.d, %.sroa.02.sroa.3.0.copyload ; 2 uses
  %brmerge.not.i.i.i.i.i = and i1 %i.f, %4
  %i.g = icmp eq ptr %.pre.i.i, %.sroa.02.sroa.2.0.copyload
  %.0.i.i.i.i.i = select i1 %brmerge.not.i.i.i.i.i, i1 %i.g, i1 %i.f
  br i1 %.0.i.i.i.i.i, label %_ZNSt3__18distanceB8ne180100INS_13move_iteratorINS_6ranges9join_viewINS2_11owning_viewINS_6vectorINS5_IN3tev14DicomImageDataENS_9allocatorIS7_EEEENS8_ISA_EEEEEEE10__iteratorILb0EEEEEEENS_15iterator_traitsIT_E15difference_typeESJ_SJ_.exit, label %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread.i.i

_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread.i.i: ; preds = %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.i.i, %bb.b
  %i.h = add nuw nsw i64 %.0.i.i, 1
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 360 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa49.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !315
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i

bb.c:                                             ; preds = %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa49.i.i, i64 24 ; 4 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !456  ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i, label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !319  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa49.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !315
  %.not6.i.peel.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not6.i.peel.i.i.i.i, label %bb.d, label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa49.i.i, i64 48 ; 5 uses
  %.not.i.peel.i.i.i.i = icmp eq ptr %i.r, %i.n
  br i1 %.not.i.peel.i.i.i.i, label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i, label %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader.i.i

_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader.i.i: ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !319  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa49.i.i, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !315
  %.not6.i.i.i5.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not6.i.i.i5.i.i, label %.lr.ph.i.preheader.i, label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i

.lr.ph.i.preheader.i:                             ; preds = %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa49.i.i, i64 72 ; 3 uses
  %.not.i.i.i.i6.i = icmp eq ptr %i.v, %i.n
  br i1 %.not.i.i.i.i6.i, label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i, label %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i.lr.ph.i, !llvm.loop !74

_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i.lr.ph.i: ; preds = %.lr.ph.i.preheader.i
  br label %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i.i, !llvm.loop !74

_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i.lr.ph.i
  %i.w = phi ptr [ %i.v, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i.lr.ph.i ], [ %i.ab, %.lr.ph.i.i ] ; 4 uses
  %i.x = phi ptr [ %i.r, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i.lr.ph.i ], [ %i.w, %.lr.ph.i.i ]
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !319  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !315
  %.not6.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not6.i.i.i.i.i, label %.lr.ph.i.i, label %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i._ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.sink.split.i.loopexit_crit_edge.i, !llvm.loop !74

.lr.ph.i.i:                                       ; preds = %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.n
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i._ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.sink.split.i.loopexit_crit_edge.i, label %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i.i, !llvm.loop !74

_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i._ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.sink.split.i.loopexit_crit_edge.i: ; preds = %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i.i
  br label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i, !llvm.loop !74

.lr.ph.i._ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.sink.split.i.loopexit_crit_edge.i: ; preds = %.lr.ph.i.i
  br label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i, !llvm.loop !74

_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.i.i: ; preds = %.lr.ph.i._ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.sink.split.i.loopexit_crit_edge.i, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i._ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.sink.split.i.loopexit_crit_edge.i, %.lr.ph.i.preheader.i, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader.i.i, %bb.d, %.lr.ph.i.i.i.i.i, %bb.c, %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread.i.i
  %.pre17.i.i = phi ptr [ %i.i, %bb.c ], [ %i.i, %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.d ], [ %i.s, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader.i.i ], [ %i.y, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i._ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.sink.split.i.loopexit_crit_edge.i ], [ %i.y, %.lr.ph.i._ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.sink.split.i.loopexit_crit_edge.i ], [ %i.s, %.lr.ph.i.preheader.i ]
  %i.ac = phi i8 [ 0, %bb.c ], [ %i.d, %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread.i.i ], [ 1, %.lr.ph.i.i.i.i.i ], [ 0, %bb.d ], [ 1, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader.i.i ], [ 1, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i._ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.sink.split.i.loopexit_crit_edge.i ], [ 0, %.lr.ph.i._ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.sink.split.i.loopexit_crit_edge.i ], [ 0, %.lr.ph.i.preheader.i ]
  %.lcssa48.i.i = phi ptr [ %i.m, %bb.c ], [ %.lcssa49.i.i, %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread.i.i ], [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.r, %bb.d ], [ %i.r, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader.i.i ], [ %i.w, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.i._ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.sink.split.i.loopexit_crit_edge.i ], [ %i.ab, %.lr.ph.i._ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.sink.split.i.loopexit_crit_edge.i ], [ %i.v, %.lr.ph.i.preheader.i ]
  br label %bb.b, !llvm.loop !2956

_ZNSt3__18distanceB8ne180100INS_13move_iteratorINS_6ranges9join_viewINS2_11owning_viewINS_6vectorINS5_IN3tev14DicomImageDataENS_9allocatorIS7_EEEENS8_ISA_EEEEEEE10__iteratorILb0EEEEEEENS_15iterator_traitsIT_E15difference_typeESJ_SJ_.exit: ; preds = %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store ptr %0, ptr %3, align 8, !tbaa !366, !alias.scope !2959
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.ad, align 8, !tbaa !2961, !alias.scope !2959
  %.not.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev14DicomImageDataENS_9allocatorIS2_EEE16__init_with_sizeB8ne180100INS_13move_iteratorINS_6ranges9join_viewINS8_11owning_viewINS0_IS5_NS3_IS5_EEEEEEE10__iteratorILb0EEEEESH_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__18distanceB8ne180100INS_13move_iteratorINS_6ranges9join_viewINS2_11owning_viewINS_6vectorINS5_IN3tev14DicomImageDataENS_9allocatorIS7_EEEENS8_ISA_EEEEEEE10__iteratorILb0EEEEEEENS_15iterator_traitsIT_E15difference_typeESJ_SJ_.exit
  %i.ae = icmp samesign ugt i64 %.0.i.i, 51240955760304310
  br i1 %i.ae, label %bb.f, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev14DicomImageDataEEEEEDaRT_m.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNKSt3__16vectorIN3tev14DicomImageDataENS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #42
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.f
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev14DicomImageDataEEEEEDaRT_m.exit.i.i: ; preds = %bb.e
  %i.af = mul nuw i64 %.0.i.i, 360
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #43
          to label %bb.g unwind label %bb.i       ; 7 uses

bb.g:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev14DicomImageDataEEEEEDaRT_m.exit.i.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !319
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !315
  %i.ah = getelementptr inbounds nuw [360 x i8], ptr %i.ag, i64 %.0.i.i
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !316
  %i.ai = invoke noundef ptr @_ZNSt3__135__uninitialized_allocator_copy_implB8ne180100INS_9allocatorIN3tev14DicomImageDataEEENS_13move_iteratorINS_6ranges9join_viewINS6_11owning_viewINS_6vectorINS9_IS3_S4_EENS1_ISA_EEEEEEE10__iteratorILb0EEEEESH_PS3_EET2_RT_T0_T1_SJ_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull byval(%"class.std::__1::move_iterator.813") align 8 %1, ptr noundef nonnull byval(%"class.std::__1::move_iterator.813") align 8 %2, ptr noundef nonnull %i.ag)
          to label %_ZNSt3__16vectorIN3tev14DicomImageDataENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorINS_6ranges9join_viewINS8_11owning_viewINS0_IS5_NS3_IS5_EEEEEEE10__iteratorILb0EEEEESH_EEvT_T0_m.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !315
  br label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIN3tev14DicomImageDataENS_9allocatorIS3_EEE16__destroy_vectorEED2B8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev14DicomImageDataENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorINS_6ranges9join_viewINS8_11owning_viewINS0_IS5_NS3_IS5_EEEEEEE10__iteratorILb0EEEEESH_EEvT_T0_m.exit.i: ; preds = %bb.g
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds i8, ptr %i.ag, i64 %i.am
  store ptr %i.an, ptr %i.a, align 8, !tbaa !315
  br label %_ZNSt3__16vectorIN3tev14DicomImageDataENS_9allocatorIS2_EEE16__init_with_sizeB8ne180100INS_13move_iteratorINS_6ranges9join_viewINS8_11owning_viewINS0_IS5_NS3_IS5_EEEEEEE10__iteratorILb0EEEEESH_EEvT_T0_m.exit

bb.i:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev14DicomImageDataEEEEEDaRT_m.exit.i.i, %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIN3tev14DicomImageDataENS_9allocatorIS3_EEE16__destroy_vectorEED2B8ne180100Ev.exit.i

_ZNSt3__128__exception_guard_exceptionsINS_6vectorIN3tev14DicomImageDataENS_9allocatorIS3_EEE16__destroy_vectorEED2B8ne180100Ev.exit.i: ; preds = %bb.i, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.aj, %bb.h ]
  call void @_ZNSt3__16vectorIN3tev14DicomImageDataENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(9) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt3__16vectorIN3tev14DicomImageDataENS_9allocatorIS2_EEE16__init_with_sizeB8ne180100INS_13move_iteratorINS_6ranges9join_viewINS8_11owning_viewINS0_IS5_NS3_IS5_EEEEEEE10__iteratorILb0EEEEESH_EEvT_T0_m.exit: ; preds = %_ZNSt3__18distanceB8ne180100INS_13move_iteratorINS_6ranges9join_viewINS2_11owning_viewINS_6vectorINS5_IN3tev14DicomImageDataENS_9allocatorIS7_EEEENS8_ISA_EEEEEEE10__iteratorILb0EEEEEEENS_15iterator_traitsIT_E15difference_typeESJ_SJ_.exit, %_ZNSt3__16vectorIN3tev14DicomImageDataENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorINS_6ranges9join_viewINS8_11owning_viewINS0_IS5_NS3_IS5_EEEEEEE10__iteratorILb0EEEEESH_EEvT_T0_m.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__135__uninitialized_allocator_copy_implB8ne180100INS_9allocatorIN3tev14DicomImageDataEEENS_13move_iteratorINS_6ranges9join_viewINS6_11owning_viewINS_6vectorINS9_IS3_S4_EENS1_ISA_EEEEEEE10__iteratorILb0EEEEESH_PS3_EET2_RT_T0_T1_SJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef byval(%"class.std::__1::move_iterator.813") align 8 %1, ptr noundef byval(%"class.std::__1::move_iterator.813") align 8 %2, ptr noundef %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !2964
  %.promoted12 = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !202
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.promoted = load i8, ptr %i.d, align 8
  %.pre.pre = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit, %bb.a
  %.pre = phi ptr [ %.pre.pre, %bb.a ], [ %.pre22, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit ] ; 17 uses
  %i.k = phi i8 [ %.promoted, %bb.a ], [ %i.bz, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit ] ; 4 uses
  %.lcssa814 = phi ptr [ %.promoted12, %bb.a ], [ %.lcssa813, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit ] ; 8 uses
  %storemerge = phi ptr [ %3, %bb.a ], [ %i.ca, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit ] ; 17 uses
  %i.l = icmp eq ptr %.lcssa814, %i.a
  br i1 %i.l, label %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit, label %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread

_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit: ; preds = %bb.b
  %4 = trunc nuw i8 %i.k to i1
  %i.m = icmp eq i8 %i.k, %i.f                    ; 2 uses
  %brmerge.not.i.i.i = and i1 %i.m, %4
  %i.n = icmp eq ptr %.pre, %i.g
  %.0.i.i.i = select i1 %brmerge.not.i.i.i, i1 %i.n, i1 %i.m
  br i1 %.0.i.i.i, label %_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN3tev14DicomImageDataEEEPS4_EEED2B8ne180100Ev.exit, label %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread

_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread: ; preds = %bb.b, %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %storemerge, i8 0, i64 24, i1 false)
  %i.p = load <2 x ptr>, ptr %.pre, align 8, !tbaa !342
  store <2 x ptr> %i.p, ptr %storemerge, align 8, !tbaa !342
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !342
  store ptr %i.r, ptr %i.o, align 8, !tbaa !342
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.pre, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !420
  store <2 x ptr> %i.v, ptr %i.s, align 8, !tbaa !420
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !420
  store ptr %i.x, ptr %i.u, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.y, ptr noundef nonnull align 8 dereferenceable(44) %i.z, i64 44, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge, i64 96 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !257
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !257
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !257
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !257
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %storemerge, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ag, ptr noundef nonnull align 8 dereferenceable(136) %i.ah, i64 136, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %storemerge, i64 256
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 256 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %storemerge, i64 280
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ak, ptr noundef nonnull align 8 dereferenceable(13) %i.al, i64 13, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge, i64 296 ; 2 uses
  store i8 0, ptr %i.am, align 8, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge, i64 320 ; 2 uses
  store i8 0, ptr %i.an, align 8, !tbaa !368
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre, i64 320
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !368, !range !202, !noundef !203
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.c, label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i.i.i

bb.c:                                             ; preds = %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 296 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.am, ptr noundef nonnull align 8 dereferenceable(25) %i.ar, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ar, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.an, align 8, !tbaa !368
  br label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i.i.i

_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i.i.i: ; preds = %bb.c, %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge, i64 328 ; 2 uses
  store i8 0, ptr %i.as, align 8, !tbaa !91
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge, i64 352 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !368
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 352
  %i.av = load i8, ptr %i.au, align 8, !tbaa !368, !range !202, !noundef !203
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev14DicomImageDataEEEE9constructB8ne180100IS3_JS3_EvvEEvRS4_PT_DpOT0_.exit

bb.d:                                             ; preds = %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre, i64 328 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.as, ptr noundef nonnull align 8 dereferenceable(25) %i.ax, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ax, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.at, align 8, !tbaa !368
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev14DicomImageDataEEEE9constructB8ne180100IS3_JS3_EvvEEvRS4_PT_DpOT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev14DicomImageDataEEEE9constructB8ne180100IS3_JS3_EvvEEvRS4_PT_DpOT0_.exit: ; preds = %bb.d, %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre, i64 360 ; 5 uses
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !2966
  %i.az = getelementptr inbounds nuw i8, ptr %.lcssa814, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !315
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit

bb.e:                                             ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev14DicomImageDataEEEE9constructB8ne180100IS3_JS3_EvvEEvRS4_PT_DpOT0_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.lcssa814, i64 24 ; 5 uses
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !456 ; 4 uses
  %.not7.i.i.i = icmp eq ptr %i.bc, %i.bd
  %i.be = trunc nuw i8 %i.k to i1                 ; 2 uses
  br i1 %.not7.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !319 ; 4 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  br i1 %i.be, label %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.peel.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store i8 1, ptr %i.d, align 8, !tbaa !2968
  br label %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.peel.i.i

_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.peel.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !316
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa814, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !315
  %.not6.i.peel.i.i = icmp eq ptr %i.bf, %i.bi
  br i1 %.not6.i.peel.i.i, label %bb.g, label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit

bb.g:                                             ; preds = %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.peel.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa814, i64 48 ; 5 uses
  %.not.i.peel.i.i = icmp eq ptr %i.bj, %i.bd
  br i1 %.not.i.peel.i.i, label %._crit_edge.i.thread.i.i, label %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader

_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader: ; preds = %bb.g
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !319 ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.lcssa814, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !315
  %.not6.i.i.i9 = icmp eq ptr %i.bk, %i.bn
  br i1 %.not6.i.i.i9, label %.lr.ph.preheader, label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.loopexit

.lr.ph.preheader:                                 ; preds = %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa814, i64 72 ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.bo, %i.bd
  br i1 %.not.i.i.i43, label %._crit_edge.i.thread.i.i.loopexit, label %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.lr.ph, !llvm.loop !74

_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.lr.ph: ; preds = %.lr.ph.preheader
  br label %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i, !llvm.loop !74

_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i: ; preds = %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.lr.ph, %.lr.ph
  %i.bp = phi ptr [ %i.bo, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.lr.ph ], [ %i.bu, %.lr.ph ] ; 4 uses
  %i.bq = phi ptr [ %i.bj, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.lr.ph ], [ %i.bp, %.lr.ph ]
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !319 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !315
  %.not6.i.i.i = icmp eq ptr %i.br, %i.bt
  br i1 %.not6.i.i.i, label %.lr.ph, label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.loopexit.loopexit, !llvm.loop !74

.lr.ph:                                           ; preds = %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bu, %i.bd
  br i1 %.not.i.i.i, label %.lr.ph.._crit_edge.i.thread.i.i.loopexit_crit_edge, label %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i, !llvm.loop !74

._crit_edge.i.i.i:                                ; preds = %bb.e
  br i1 %i.be, label %._crit_edge.i.thread.i.i, label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit

.lr.ph.._crit_edge.i.thread.i.i.loopexit_crit_edge: ; preds = %.lr.ph
  %i.bv = ptrtoint ptr %i.br to i64
  br label %._crit_edge.i.thread.i.i.loopexit, !llvm.loop !74

._crit_edge.i.thread.i.i.loopexit:                ; preds = %.lr.ph.._crit_edge.i.thread.i.i.loopexit_crit_edge, %.lr.ph.preheader
  %.lcssa40 = phi i64 [ %i.bv, %.lr.ph.._crit_edge.i.thread.i.i.loopexit_crit_edge ], [ %i.bl, %.lr.ph.preheader ] ; 2 uses
  %.lcssa38 = phi ptr [ %i.bu, %.lr.ph.._crit_edge.i.thread.i.i.loopexit_crit_edge ], [ %i.bo, %.lr.ph.preheader ]
  store i64 %.lcssa40, ptr %i.b, align 8, !tbaa !316
  %i.bw = inttoptr i64 %.lcssa40 to ptr
  br label %._crit_edge.i.thread.i.i

._crit_edge.i.thread.i.i:                         ; preds = %._crit_edge.i.thread.i.i.loopexit, %._crit_edge.i.i.i, %bb.g
  %.pre23.a = phi ptr [ %i.bw, %._crit_edge.i.thread.i.i.loopexit ], [ %i.ay, %._crit_edge.i.i.i ], [ %i.bf, %bb.g ]
  %.lcssa815 = phi ptr [ %.lcssa38, %._crit_edge.i.thread.i.i.loopexit ], [ %i.bc, %._crit_edge.i.i.i ], [ %i.bj, %bb.g ]
  store i8 0, ptr %i.d, align 8, !tbaa !2968
  br label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit

_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.loopexit.loopexit: ; preds = %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i
  %i.bx = ptrtoint ptr %i.br to i64
  br label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.loopexit

_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.loopexit: ; preds = %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.loopexit.loopexit, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader
  %.lcssa7 = phi ptr [ %i.bj, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader ], [ %i.bp, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.loopexit.loopexit ]
  %.lcssa = phi i64 [ %i.bl, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.i.i.preheader ], [ %i.bx, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.loopexit.loopexit ] ; 2 uses
  store i64 %.lcssa, ptr %i.b, align 8, !tbaa !316
  %i.by = inttoptr i64 %.lcssa to ptr
  br label %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit

_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit: ; preds = %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.loopexit, %._crit_edge.i.thread.i.i, %._crit_edge.i.i.i, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.peel.i.i, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev14DicomImageDataEEEE9constructB8ne180100IS3_JS3_EvvEEvRS4_PT_DpOT0_.exit
  %.pre22 = phi ptr [ %i.by, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.loopexit ], [ %.pre23.a, %._crit_edge.i.thread.i.i ], [ %i.ay, %._crit_edge.i.i.i ], [ %i.bf, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.peel.i.i ], [ %i.ay, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev14DicomImageDataEEEE9constructB8ne180100IS3_JS3_EvvEEvRS4_PT_DpOT0_.exit ]
  %i.bz = phi i8 [ 1, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.loopexit ], [ 0, %._crit_edge.i.thread.i.i ], [ 0, %._crit_edge.i.i.i ], [ 1, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.peel.i.i ], [ %i.k, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev14DicomImageDataEEEE9constructB8ne180100IS3_JS3_EvvEEvRS4_PT_DpOT0_.exit ]
  %.lcssa813 = phi ptr [ %.lcssa7, %_ZNSt3__113move_iteratorINS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEEEppB8ne180100Ev.exit.loopexit ], [ %.lcssa815, %._crit_edge.i.thread.i.i ], [ %i.bc, %._crit_edge.i.i.i ], [ %i.bc, %_ZNSt3__18optionalINS_11__wrap_iterIPN3tev14DicomImageDataEEEEaSB8ne180100IS5_vEERS6_OT_.exit.i.peel.i.i ], [ %.lcssa814, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev14DicomImageDataEEEE9constructB8ne180100IS3_JS3_EvvEEvRS4_PT_DpOT0_.exit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge, i64 360
  br label %bb.b, !llvm.loop !2962

_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN3tev14DicomImageDataEEEPS4_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__1eqB8ne180100INS_6ranges9join_viewINS1_11owning_viewINS_6vectorINS4_IN3tev14DicomImageDataENS_9allocatorIS6_EEEENS7_IS9_EEEEEEE10__iteratorILb0EEESF_EEbRKNS_13move_iteratorIT_EERKNSG_IT0_EE.exit
  ret ptr %storemerge
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__117__assoc_sub_stateE, i64 16), ptr %0, align 8, !tbaa !93
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #41
  tail call void @_ZNSt3__114__shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(144) %0) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@llvm.ceil.f32

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRKS6_EEENS_4pairINS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::unique_ptr.1034", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = load i8, ptr %1, align 8                 ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = select i1 %i.d, ptr %i.f, ptr %i.g       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i8 %i.c, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = select i1 %i.d, i64 %i.j, i64 %i.l       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader.i
  %.pr = phi ptr [ %i.b, %.preheader.i ], [ %.pr.be, %.backedge ] ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pr, i64 32
  %i.o = load i8, ptr %i.n, align 8               ; 2 uses
  %i.p = trunc i8 %i.o to i1                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pr, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.pr, i64 33
  %i.t = select i1 %i.p, ptr %i.r, ptr %i.s       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i8 %i.o, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = select i1 %i.p, i64 %i.v, i64 %i.x       ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.m) ; 2 uses
  %i.z = tail call noundef i32 @memcmp(ptr noundef %i.h, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #41 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.c, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp ult i64 %i.m, %i.y
  br i1 %i.ab, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread36.i, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread.i

_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.i: ; preds = %bb.b
  %i.ac = icmp slt i32 %i.z, 0
  br i1 %i.ac, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread36.i, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread.i

_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread36.i: ; preds = %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.i, %bb.c
  %i.ad = load ptr, ptr %.pr, align 8, !tbaa !171 ; 2 uses
  %.not31.i = icmp eq ptr %i.ad, null
  br i1 %.not31.i, label %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit.thread, label %.backedge

_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread.i: ; preds = %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.i, %bb.c
  %i.ae = tail call noundef i32 @memcmp(ptr noundef %i.t, ptr noundef %i.h, i64 noundef %.sroa.speculated.i.i.i.i.i) #41 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.d, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit34.i

bb.d:                                             ; preds = %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread.i
  %i.ag = icmp ult i64 %i.y, %i.m
  br i1 %i.ag, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit34.thread40.i, label %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit

_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit34.i: ; preds = %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread.i
  %i.ah = icmp slt i32 %i.ae, 0
  br i1 %i.ah, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit34.thread40.i, label %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit

_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit34.thread40.i: ; preds = %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit34.i, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !171 ; 2 uses
  %.not30.i = icmp eq ptr %i.aj, null
  br i1 %.not30.i, label %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit.thread.loopexit.split.loop.exit25, label %.backedge

.backedge:                                        ; preds = %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit34.thread40.i, %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread36.i
  %.pr.be = phi ptr [ %i.ad, %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread36.i ], [ %i.aj, %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit34.thread40.i ]
  br label %bb.b, !llvm.loop !4817

_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit.thread.loopexit.split.loop.exit25: ; preds = %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit34.thread40.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  br label %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit.thread

_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit.thread: ; preds = %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread36.i, %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit.thread.loopexit.split.loop.exit25, %bb.a
  %.026.i13 = phi ptr [ %i.a, %bb.a ], [ %i.ak, %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit.thread.loopexit.split.loop.exit25 ], [ %.pr, %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread36.i ]
  %.sink.i12 = phi ptr [ %i.a, %bb.a ], [ %.pr, %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit.thread.loopexit.split.loop.exit25 ], [ %.pr, %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread36.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4820)
  %i.al = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #43, !noalias !4820 ; 7 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !4822, !alias.scope !4820
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.am, align 8, !tbaa !4823, !alias.scope !4820
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !138, !alias.scope !4820
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.ao = load i8, ptr %2, align 8, !noalias !4820
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !251, !noalias !4820
  br label %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE16__construct_nodeIJRKS6_EEENS_10unique_ptrINS_11__tree_nodeIS6_PvEENS_22__tree_node_destructorINS4_ISH_EEEEEEDpOT_.exit

bb.f:                                             ; preds = %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !91, !noalias !4820
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !91, !noalias !4820
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef %i.ar, i64 noundef %i.at)
          to label %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE16__construct_nodeIJRKS6_EEENS_10unique_ptrINS_11__tree_nodeIS6_PvEENS_22__tree_node_destructorINS4_ISH_EEEEEEDpOT_.exit unwind label %bb.g, !noalias !4820

bb.g:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #41
  resume { ptr, i32 } %i.au

_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE16__construct_nodeIJRKS6_EEENS_10unique_ptrINS_11__tree_nodeIS6_PvEENS_22__tree_node_destructorINS4_ISH_EEEEEEDpOT_.exit: ; preds = %bb.e, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  store ptr %.sink.i12, ptr %i.av, align 8, !tbaa !279
  store ptr %i.al, ptr %.026.i13, align 8, !tbaa !171
  %i.aw = load ptr, ptr %0, align 8, !tbaa !262
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !170 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ax, null
  br i1 %.not.i7, label %_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED2B8ne180100Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE16__construct_nodeIJRKS6_EEENS_10unique_ptrINS_11__tree_nodeIS6_PvEENS_22__tree_node_destructorINS4_ISH_EEEEEEDpOT_.exit
  store ptr %i.ax, ptr %0, align 8, !tbaa !262
  br label %_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED2B8ne180100Ev.exit

_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED2B8ne180100Ev.exit: ; preds = %bb.h, %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE16__construct_nodeIJRKS6_EEENS_10unique_ptrINS_11__tree_nodeIS6_PvEENS_22__tree_node_destructorINS4_ISH_EEEEEEDpOT_.exit
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !170
  tail call void @_ZNSt3__127__tree_balance_after_insertB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %i.ay, ptr noundef nonnull %i.al) #41
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !134
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit

_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_.exit: ; preds = %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit34.i, %bb.d, %_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED2B8ne180100Ev.exit
  %.09 = phi i8 [ 1, %_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED2B8ne180100Ev.exit ], [ 0, %bb.d ], [ 0, %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit34.i ]
  %.0 = phi ptr [ %i.al, %_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED2B8ne180100Ev.exit ], [ %.pr, %bb.d ], [ %.pr, %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit34.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.09, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4824   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !4824
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5resetB8ne180100EPS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !4826, !range !202, !noundef !203
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB8ne180100EPS9_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB8ne180100EPS9_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.j = load i64, ptr %i.e, align 8
  %i.k = and i64 %i.j, -2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #44
  br label %_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB8ne180100EPS9_.exit.i

_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB8ne180100EPS9_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  br label %_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5resetB8ne180100EPS9_.exit

_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5resetB8ne180100EPS9_.exit: ; preds = %bb.a, %_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB8ne180100EPS9_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__127__tree_balance_after_insertB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 8, !tbaa !4828
  br i1 %i.a, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.ad
  %.04469 = phi ptr [ %i.i, %bb.ad ], [ %1, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.04469, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !279  ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !4828, !range !202, !noundef !203
  %2 = trunc nuw i8 %i.g to i1
  br i1 %2, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !279  ; 13 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !170  ; 4 uses
  %i.k = icmp eq ptr %i.e, %i.j
  br i1 %i.k, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !278  ; 2 uses
  %.not50.a = icmp eq ptr %i.m, null
  br i1 %.not50.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !4828, !range !202, !noundef !203
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  store i8 1, ptr %i.f, align 8, !tbaa !4828
  %i.q = icmp eq ptr %i.i, %0
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.s = zext i1 %i.q to i8
  store i8 %i.s, ptr %i.r, align 8, !tbaa !4828
  store i8 1, ptr %i.n, align 8, !tbaa !4828
  br label %bb.ad

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !170
  %i.v = icmp eq ptr %.04469, %i.u
  br i1 %i.v, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !278  ; 8 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !170  ; 3 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !278
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %.thread91, label %bb.g

.thread91:                                        ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.z, align 8, !tbaa !279
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !279
  %.pre76.a = load ptr, ptr %i.t, align 8, !tbaa !279 ; 4 uses
  %.pre77 = load ptr, ptr %.pre76.a, align 8, !tbaa !170
  %i.ab = icmp eq ptr %i.e, %.pre77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store ptr %.pre76.a, ptr %i.ac, align 8, !tbaa !279
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread91, %bb.g
  %i.ad = phi ptr [ %i.z, %.thread91 ], [ %i.ac, %bb.g ]
  %i.ae = phi ptr [ %i.i, %.thread91 ], [ %.pre76.a, %bb.g ]
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !170
  br label %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.pre76.a, i64 8
  store ptr %i.x, ptr %i.af, align 8, !tbaa !278
  br label %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit

_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit: ; preds = %bb.h, %bb.i
  %i.ag = phi ptr [ %i.ad, %bb.h ], [ %i.ac, %bb.i ]
  store ptr %i.e, ptr %i.x, align 8, !tbaa !170
  store ptr %i.x, ptr %i.t, align 8, !tbaa !279
  %.pre78 = load ptr, ptr %i.ag, align 8, !tbaa !279 ; 2 uses
  %.pre79 = load ptr, ptr %.pre78, align 8, !tbaa !170
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit, %bb.e
  %i.ah = phi ptr [ %i.j, %bb.e ], [ %.pre79, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit ] ; 5 uses
  %i.ai = phi ptr [ %i.i, %bb.e ], [ %.pre78, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit ] ; 6 uses
  %i.aj = phi ptr [ %i.e, %bb.e ], [ %i.x, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i8 1, ptr %i.ak, align 8, !tbaa !4828
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i8 0, ptr %i.al, align 8, !tbaa !4828
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !278 ; 3 uses
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !170
  %.not.i51 = icmp eq ptr %i.an, null
  br i1 %.not.i51, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !279
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !279 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !279
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !170
  %i.at = icmp eq ptr %i.ai, %i.as
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.ah, ptr %i.aq, align 8, !tbaa !170
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ah, ptr %i.au, align 8, !tbaa !278
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !278
  store ptr %i.ah, ptr %i.ap, align 8, !tbaa !279
  br label %.critedge

bb.p:                                             ; preds = %bb.b
  %.not49 = icmp eq ptr %i.j, null
  br i1 %.not49, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !4828, !range !202, !noundef !203
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.r, label %.thread58

.thread58:                                        ; preds = %bb.q
  store i8 1, ptr %i.f, align 8, !tbaa !4828
  %i.ay = icmp eq ptr %i.i, %0
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ba = zext i1 %i.ay to i8
  store i8 %i.ba, ptr %i.az, align 8, !tbaa !4828
  store i8 1, ptr %i.av, align 8, !tbaa !4828
  br label %bb.ad

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !170 ; 7 uses
  %i.bd = icmp eq ptr %.04469, %i.bc
  br i1 %i.bd, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !278 ; 3 uses
  store ptr %i.bf, ptr %i.e, align 8, !tbaa !170
  %.not.i52 = icmp eq ptr %i.bf, null
  br i1 %.not.i52, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !279
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !279
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = phi ptr [ %.pre, %bb.t ], [ %i.i, %bb.s ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !279
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !170
  %i.bk = icmp eq ptr %i.e, %i.bj
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !170
  br label %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53

bb.w:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bc, ptr %i.bl, align 8, !tbaa !278
  br label %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53

_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53: ; preds = %bb.v, %bb.w
  store ptr %i.e, ptr %i.be, align 8, !tbaa !278
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !279
  %.pre75 = load ptr, ptr %i.bi, align 8, !tbaa !279
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53, %bb.r
  %i.bm = phi ptr [ %.pre75, %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53 ], [ %i.i, %bb.r ] ; 6 uses
  %i.bn = phi ptr [ %i.bc, %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53 ], [ %i.e, %bb.r ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i8 1, ptr %i.bo, align 8, !tbaa !4828
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i8 0, ptr %i.bp, align 8, !tbaa !4828
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !278 ; 6 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !170 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !278
  %.not.i54 = icmp eq ptr %i.bs, null
  br i1 %.not.i54, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.bm, ptr %i.bt, align 8, !tbaa !279
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
end_hunk_1
