Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.03?download=true
inline.NumInlined: 3264
inline.NumDeleted: 1494
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4anki9scheduler6states10relearning12RelearnState11next_states17h439018b829d71618E:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, i32 } @_ZN4anki9scheduler6states12StateContext28min_and_max_review_intervals17h5a6a72f15e7c2d1dE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(200) %0, i32 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality !guid !5840 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load i32, ptr %i.a, align 4, !noundef !37
  %.sroa.0.0.i = tail call noundef i32 @llvm.umax.i32(i32 %i.b, i32 1) ; 2 uses
  %i.c = icmp eq i32 %1, 0
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %1, i32 %.sroa.0.0.i)
  %.sroa.0.0.i1 = select i1 %i.c, i32 1, i32 %spec.select.i
  %i.d = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i1, 0
  %i.e = insertvalue { i32, i32 } %i.d, i32 %.sroa.0.0.i, 1
  ret { i32, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki9scheduler6states19rescheduling_filter23ReschedulingFilterState11next_states17hfddc846cc7f290bfE(ptr dead_on_unwind noalias noundef writable sret([300 x i8]) align 4 captures(address) dereferenceable(300) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %2) unnamed_addr #0 !guid !5853 {
bb.a:
  %i.a = alloca [56 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.a, ptr noundef nonnull align 4 dereferenceable(56) %1, i64 56, i1 false)
  call void @_ZN4anki9scheduler6states6normal11NormalState11next_states17h936baa7f6bc043cbE(ptr noalias noundef nonnull sret([300 x i8]) align 4 captures(address) dereferenceable(300) %0, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 194
  %i.c = load i8, ptr %i.b, align 2, !range !40, !noundef !37
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.sroa.017.0.copyload = load i32, ptr %i.e, align 4
  %i.f = trunc nuw i32 %.sroa.017.0.copyload to i1
  br i1 %i.f, label %bb.c, label %_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit, !prof !46

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @701) #33, !noalias !5854
  unreachable

_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit: ; preds = %bb.b
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.518.0.copyload = load i32, ptr %.sroa.518.0..sroa_idx, align 4
  %i.g = icmp ne i32 %.sroa.518.0.copyload, 4
  %. = zext i1 %i.g to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.sroa.026.0.copyload = load i32, ptr %i.h, align 4
  %i.i = trunc nuw i32 %.sroa.026.0.copyload to i1
  br i1 %i.i, label %bb.d, label %_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit4, !prof !46

bb.d:                                             ; preds = %_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit
  call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @701) #33, !noalias !5855
  unreachable

_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit4: ; preds = %_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.527.0.copyload = load i32, ptr %.sroa.527.0..sroa_idx, align 4
  %i.j = icmp ne i32 %.sroa.527.0.copyload, 4
  %.49 = zext i1 %i.j to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %.sroa.036.0.copyload = load i32, ptr %i.k, align 4
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.537.0.copyload = load i32, ptr %.sroa.537.0..sroa_idx, align 4
  %i.l = trunc nuw i32 %.sroa.036.0.copyload to i1
  br i1 %i.l, label %bb.e, label %_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit8, !prof !46

bb.e:                                             ; preds = %_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit4
  call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @701) #33, !noalias !5856
  unreachable

_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit8: ; preds = %_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %.sroa.046.0.copyload = load i32, ptr %i.m, align 4
  %i.n = trunc nuw i32 %.sroa.046.0.copyload to i1
  br i1 %i.n, label %bb.f, label %_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit12, !prof !46

bb.f:                                             ; preds = %_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit8
  call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @701) #33, !noalias !5857
  unreachable

_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit12: ; preds = %_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 244
  %.sroa.547.0.copyload = load i32, ptr %.sroa.547.0..sroa_idx, align 4
  %i.o = icmp ne i32 %.sroa.537.0.copyload, 4
  %.50 = zext i1 %i.o to i32
  %i.p = icmp ne i32 %.sroa.547.0.copyload, 4
  %.51 = zext i1 %i.p to i32
  store i32 1, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(56) %1, i64 56, i1 false)
  store i32 %., ptr %i.e, align 4
  store i32 %.49, ptr %i.h, align 4
  store i32 %.50, ptr %i.k, align 4
  store i32 %.51, ptr %i.m, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN4anki9scheduler6states19rescheduling_filter10maybe_wrap17ha31461c67d7e4bdbE.exit12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 0, 4) i8 @_ZN4anki9scheduler6states19rescheduling_filter23ReschedulingFilterState11revlog_kind17h087ac249e7bed261E(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #8 !guid !5858 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %i.a = add nsw i32 %.sroa.0.0.copyload, -2
  %i.b = icmp samesign ugt i32 %.sroa.0.0.copyload, 1
  %narrow.i = select i1 %i.b, i32 %i.a, i32 3
  switch i32 %narrow.i, label %bb.b [
    i32 0, label %_ZN4anki9scheduler6states6normal11NormalState11revlog_kind17h9718a264281c54a4E.exit
    i32 1, label %_ZN4anki9scheduler6states6normal11NormalState11revlog_kind17h9718a264281c54a4E.exit
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load i32, ptr %.sroa.41.0..sroa_idx, align 4
  %i.c = sub i32 %.sroa.5.0.copyload, %.sroa.41.0.copyload
  %i.d = icmp slt i32 %i.c, 0
  %..i = select i1 %i.d, i8 3, i8 1
  br label %_ZN4anki9scheduler6states6normal11NormalState11revlog_kind17h9718a264281c54a4E.exit

bb.d:                                             ; preds = %bb.a
  br label %_ZN4anki9scheduler6states6normal11NormalState11revlog_kind17h9718a264281c54a4E.exit

_ZN4anki9scheduler6states6normal11NormalState11revlog_kind17h9718a264281c54a4E.exit: ; preds = %bb.a, %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi i8 [ 2, %bb.d ], [ 0, %bb.a ], [ %..i, %bb.c ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, i32 } @_ZN4anki9scheduler6states19rescheduling_filter23ReschedulingFilterState13interval_kind17h17552dc6f933f9f6E(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #8 !guid !5859 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load i32, ptr %.sroa.41.0..sroa_idx, align 4 ; 2 uses
  %i.a = add nsw i32 %.sroa.0.0.copyload, -2
  %i.b = icmp samesign ugt i32 %.sroa.0.0.copyload, 1
  %narrow.i = select i1 %i.b, i32 %i.a, i32 3     ; 3 uses
  switch i32 %narrow.i, label %bb.b [
    i32 0, label %_ZN4anki9scheduler6states6normal11NormalState13interval_kind17ha1f7280a9a154ce7E.exit
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  br label %_ZN4anki9scheduler6states6normal11NormalState13interval_kind17ha1f7280a9a154ce7E.exit

bb.d:                                             ; preds = %bb.a
  br label %_ZN4anki9scheduler6states6normal11NormalState13interval_kind17ha1f7280a9a154ce7E.exit

bb.e:                                             ; preds = %bb.a
  br label %_ZN4anki9scheduler6states6normal11NormalState13interval_kind17ha1f7280a9a154ce7E.exit

_ZN4anki9scheduler6states6normal11NormalState13interval_kind17ha1f7280a9a154ce7E.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.5.0.i = phi i32 [ %.sroa.41.0.copyload, %bb.e ], [ %.sroa.6.0.copyload, %bb.c ], [ %.sroa.41.0.copyload, %bb.d ], [ %narrow.i, %bb.a ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ], [ %narrow.i, %bb.a ]
  %i.c = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.d = insertvalue { i32, i32 } %i.c, i32 %.sroa.5.0.i, 1
  ret { i32, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_ZN4anki9scheduler6states4fuzz16with_review_fuzz17hb5d845038d5d5049E(i32 noundef range(i32 0, 2) %0, float %1, float noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5860 {
bb.a:
  %i.a = trunc nuw i32 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.i.i = tail call noundef i32 @llvm.umin.i32(i32 %4, i32 %3) ; 3 uses
  %i.b = uitofp i32 %.sroa.0.0.i.i to float       ; 4 uses
  %i.c = uitofp i32 %4 to float                   ; 4 uses
  %i.d = fcmp ugt float %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.d, !prof !46

bb.c:                                             ; preds = %bb.b
  tail call void @"_ZN4core3f3221_$LT$impl$u20$f32$GT$5clamp8do_panic7runtime17h4bb5aa526cdbb331E"(float noundef %i.b, float noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @703) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = fcmp olt float %2, %i.b
  %spec.store.select.i = select i1 %i.e, float %i.b, float %2 ; 2 uses
  %i.f = fcmp ogt float %spec.store.select.i, %i.c
  %spec.store.select4.i = select i1 %i.f, float %i.c, float %spec.store.select.i ; 5 uses
  %i.g = fcmp olt float %spec.store.select4.i, 2.500000e+00
  br i1 %i.g, label %_ZN4anki9scheduler6states4fuzz23constrained_fuzz_bounds17ha023cefcae0a7c52E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call nsz float @llvm.minnum.f32(float %spec.store.select4.i, float 7.000000e+00)
  %i.i = fadd nnan float %i.h, -2.500000e+00
  %i.j = tail call nnan nsz float @llvm.maxnum.f32(float %i.i, float 0.000000e+00)
  %i.k = insertelement <2 x float> poison, float %spec.store.select4.i, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.l, <2 x float> <float 2.000000e+01, float f0x7F7FFFFF>)
  %i.n = fadd nnan <2 x float> %i.m, <float -7.000000e+00, float -2.000000e+01>
  %i.o = tail call nnan nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.n, <2 x float> zeroinitializer)
  %i.p = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.j, i64 1
  %i.q = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.r = shufflevector <4 x float> %i.p, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.s = fmul nnan <4 x float> %i.r, <float 1.000000e+00, float 1.500000e-01, float 1.000000e-01, float 5.000000e-02>
  %i.t = tail call float @llvm.vector.reduce.fadd.v4f32(float -0.000000e+00, <4 x float> %i.s)
  br label %_ZN4anki9scheduler6states4fuzz23constrained_fuzz_bounds17ha023cefcae0a7c52E.exit

_ZN4anki9scheduler6states4fuzz23constrained_fuzz_bounds17ha023cefcae0a7c52E.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i = phi float [ %i.t, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.u = fsub float %spec.store.select4.i, %.sroa.0.0.i.i.i
  %i.v = tail call float @llvm.round.f32(float %i.u)
  %i.w = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.v) ; 2 uses
  %i.x = fadd float %spec.store.select4.i, %.sroa.0.0.i.i.i
  %i.y = tail call float @llvm.round.f32(float %i.x)
  %i.z = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.y) ; 2 uses
  %i.aa = icmp ult i32 %i.w, %.sroa.0.0.i.i
  %minmaxop.i = select i1 %i.aa, i32 %3, i32 %i.w
  %.sroa.0.0.i19.i = tail call i32 @llvm.umin.i32(i32 %minmaxop.i, i32 %4) ; 4 uses
  %i.ab = icmp ult i32 %i.z, %.sroa.0.0.i.i
  %minmaxop22.i = select i1 %i.ab, i32 %3, i32 %i.z ; 2 uses
  %.sroa.0.0.i21.i = tail call i32 @llvm.umin.i32(i32 %minmaxop22.i, i32 %4) ; 3 uses
  %i.ac = icmp eq i32 %.sroa.0.0.i21.i, %.sroa.0.0.i19.i
  %i.ad = icmp ugt i32 %.sroa.0.0.i21.i, 2
  %or.cond.i = and i1 %i.ac, %i.ad
  %i.ae = icmp ult i32 %minmaxop22.i, %4
  %or.cond3.i = and i1 %i.ae, %or.cond.i
  %i.af = add i32 %.sroa.0.0.i19.i, 1
  %spec.select.i = select i1 %or.cond3.i, i32 %i.af, i32 %.sroa.0.0.i21.i
  %i.ag = uitofp i32 %.sroa.0.0.i19.i to float
  %reass.sub = sub i32 %spec.select.i, %.sroa.0.0.i19.i
  %i.ah = add i32 %reass.sub, 1
  %i.ai = uitofp i32 %i.ah to float
  %i.aj = fmul float %1, %i.ai
  %i.ak = fadd float %i.aj, %i.ag
  %i.al = tail call float @llvm.floor.f32(float %i.ak)
  %i.am = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.al)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %.not.i = icmp ugt i32 %3, %4
  br i1 %.not.i, label %bb.g, label %_ZN4core3cmp3Ord5clamp17h4d1ffea400892ef4E.exit, !prof !46

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @717, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @719) #33
  unreachable

_ZN4core3cmp3Ord5clamp17h4d1ffea400892ef4E.exit:  ; preds = %bb.f
  %i.an = tail call float @llvm.round.f32(float %2)
  %i.ao = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.an) ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %3
  %spec.select.i5 = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 %4)
  %.sroa.0.0.i = select i1 %i.ap, i32 %3, i32 %spec.select.i5
  br label %bb.h

bb.h:                                             ; preds = %_ZN4core3cmp3Ord5clamp17h4d1ffea400892ef4E.exit, %_ZN4anki9scheduler6states4fuzz23constrained_fuzz_bounds17ha023cefcae0a7c52E.exit
  %.sroa.02.0 = phi i32 [ %i.am, %_ZN4anki9scheduler6states4fuzz23constrained_fuzz_bounds17ha023cefcae0a7c52E.exit ], [ %.sroa.0.0.i, %_ZN4core3cmp3Ord5clamp17h4d1ffea400892ef4E.exit ]
  ret i32 %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_ZN4anki9scheduler6states4fuzz23constrained_fuzz_bounds17ha023cefcae0a7c52E(float noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5861 {
bb.a:
  %.sroa.0.0.i = tail call noundef i32 @llvm.umin.i32(i32 %2, i32 %1) ; 3 uses
  %i.a = uitofp i32 %.sroa.0.0.i to float         ; 4 uses
  %i.b = uitofp i32 %2 to float                   ; 4 uses
  %i.c = fcmp ugt float %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !46

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN4core3f3221_$LT$impl$u20$f32$GT$5clamp8do_panic7runtime17h4bb5aa526cdbb331E"(float noundef %i.a, float noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @703) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp olt float %0, %i.a
  %spec.store.select = select i1 %i.d, float %i.a, float %0 ; 2 uses
  %i.e = fcmp ogt float %spec.store.select, %i.b
  %spec.store.select4 = select i1 %i.e, float %i.b, float %spec.store.select ; 5 uses
  %i.f = fcmp olt float %spec.store.select4, 2.500000e+00
  br i1 %i.f, label %_ZN4anki9scheduler6states4fuzz11fuzz_bounds17he68cab735a46ad0cE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call nsz float @llvm.minnum.f32(float %spec.store.select4, float 7.000000e+00)
  %i.h = fadd nnan float %i.g, -2.500000e+00
  %i.i = tail call nnan nsz float @llvm.maxnum.f32(float %i.h, float 0.000000e+00)
  %i.j = insertelement <2 x float> poison, float %spec.store.select4, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.k, <2 x float> <float 2.000000e+01, float f0x7F7FFFFF>)
  %i.m = fadd nnan <2 x float> %i.l, <float -7.000000e+00, float -2.000000e+01>
  %i.n = tail call nnan nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.m, <2 x float> zeroinitializer)
  %i.o = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.i, i64 1
  %i.p = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.q = shufflevector <4 x float> %i.o, <4 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.r = fmul nnan <4 x float> %i.q, <float 1.000000e+00, float 1.500000e-01, float 1.000000e-01, float 5.000000e-02>
  %i.s = tail call float @llvm.vector.reduce.fadd.v4f32(float -0.000000e+00, <4 x float> %i.r)
  br label %_ZN4anki9scheduler6states4fuzz11fuzz_bounds17he68cab735a46ad0cE.exit

_ZN4anki9scheduler6states4fuzz11fuzz_bounds17he68cab735a46ad0cE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi float [ %i.s, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.t = fsub float %spec.store.select4, %.sroa.0.0.i.i
  %i.u = tail call float @llvm.round.f32(float %i.t)
  %i.v = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.u) ; 2 uses
  %i.w = fadd float %spec.store.select4, %.sroa.0.0.i.i
  %i.x = tail call float @llvm.round.f32(float %i.w)
  %i.y = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.x) ; 2 uses
  %i.z = icmp ult i32 %i.v, %.sroa.0.0.i
  %minmaxop = select i1 %i.z, i32 %1, i32 %i.v
  %.sroa.0.0.i19 = tail call i32 @llvm.umin.i32(i32 %minmaxop, i32 %2) ; 3 uses
  %i.aa = icmp ult i32 %i.y, %.sroa.0.0.i
  %minmaxop22 = select i1 %i.aa, i32 %1, i32 %i.y ; 2 uses
  %.sroa.0.0.i21 = tail call i32 @llvm.umin.i32(i32 %minmaxop22, i32 %2) ; 3 uses
  %i.ab = icmp eq i32 %.sroa.0.0.i21, %.sroa.0.0.i19
  %i.ac = icmp ugt i32 %.sroa.0.0.i21, 2
  %or.cond = and i1 %i.ab, %i.ac
  %i.ad = icmp ult i32 %minmaxop22, %2
  %or.cond3 = and i1 %i.ad, %or.cond
  %i.ae = add i32 %.sroa.0.0.i19, 1
  %spec.select = select i1 %or.cond3, i32 %i.ae, i32 %.sroa.0.0.i21
  %i.af = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i19, 0
  %i.ag = insertvalue { i32, i32 } %i.af, i32 %spec.select, 1
  ret { i32, i32 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_ZN4anki9scheduler6states4fuzz28minimum_review_fuzz_interval17h44d079407eebbb09E(float noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5862 {
bb.a:
  %i.a = icmp ne i32 %2, 0                        ; 2 uses
  %i.b = uitofp i1 %i.a to float                  ; 4 uses
  %i.c = uitofp i32 %2 to float                   ; 4 uses
  %i.d = fcmp ugt float %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c, !prof !46

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN4core3f3221_$LT$impl$u20$f32$GT$5clamp8do_panic7runtime17h4bb5aa526cdbb331E"(float noundef %i.b, float noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @703) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp olt float %0, %i.b
  %spec.store.select.i = select i1 %i.e, float %i.b, float %0 ; 2 uses
  %i.f = fcmp ogt float %spec.store.select.i, %i.c
  %spec.store.select4.i = select i1 %i.f, float %i.c, float %spec.store.select.i ; 5 uses
  %i.g = fcmp olt float %spec.store.select4.i, 2.500000e+00
  br i1 %i.g, label %_ZN4anki9scheduler6states4fuzz23constrained_fuzz_bounds17ha023cefcae0a7c52E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call nsz float @llvm.minnum.f32(float %spec.store.select4.i, float 7.000000e+00)
  %i.i = fadd nnan float %i.h, -2.500000e+00
  %i.j = tail call nnan nsz float @llvm.maxnum.f32(float %i.i, float 0.000000e+00)
  %i.k = insertelement <2 x float> poison, float %spec.store.select4.i, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.l, <2 x float> <float 2.000000e+01, float f0x7F7FFFFF>)
  %i.n = fadd nnan <2 x float> %i.m, <float -7.000000e+00, float -2.000000e+01>
  %i.o = tail call nnan nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.n, <2 x float> zeroinitializer)
  %i.p = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.j, i64 1
  %i.q = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.r = shufflevector <4 x float> %i.p, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.s = fmul nnan <4 x float> %i.r, <float 1.000000e+00, float 1.500000e-01, float 1.000000e-01, float 5.000000e-02>
  %i.t = tail call float @llvm.vector.reduce.fadd.v4f32(float -0.000000e+00, <4 x float> %i.s)
  br label %_ZN4anki9scheduler6states4fuzz23constrained_fuzz_bounds17ha023cefcae0a7c52E.exit

_ZN4anki9scheduler6states4fuzz23constrained_fuzz_bounds17ha023cefcae0a7c52E.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i = phi float [ %i.t, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %.sroa.0.0.i.i = zext i1 %i.a to i32            ; 2 uses
  %i.u = tail call float @llvm.round.f32(float %0)
  %i.v = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.u)
  %i.w = fsub float %spec.store.select4.i, %.sroa.0.0.i.i.i
  %i.x = tail call float @llvm.round.f32(float %i.w)
  %i.y = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.x) ; 2 uses
  %i.z = fadd float %spec.store.select4.i, %.sroa.0.0.i.i.i
  %i.aa = tail call float @llvm.round.f32(float %i.z)
  %i.ab = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.aa) ; 2 uses
  %i.ac = icmp ult i32 %i.y, %.sroa.0.0.i.i
  %minmaxop.i = select i1 %i.ac, i32 1, i32 %i.y
  %.sroa.0.0.i19.i = tail call i32 @llvm.umin.i32(i32 %minmaxop.i, i32 %2) ; 2 uses
  %i.ad = icmp ult i32 %i.ab, %.sroa.0.0.i.i
  %minmaxop22.i = select i1 %i.ad, i32 1, i32 %i.ab ; 2 uses
  %.sroa.0.0.i21.i = tail call i32 @llvm.umin.i32(i32 %minmaxop22.i, i32 %2) ; 3 uses
  %i.ae = icmp eq i32 %.sroa.0.0.i21.i, %.sroa.0.0.i19.i
  %i.af = icmp ugt i32 %.sroa.0.0.i21.i, 2
  %or.cond.i = and i1 %i.ae, %i.af
  %i.ag = icmp ult i32 %minmaxop22.i, %2
  %or.cond3.i = and i1 %i.ag, %or.cond.i
  %i.ah = add i32 %.sroa.0.0.i19.i, 1
  %spec.select.i = select i1 %or.cond3.i, i32 %i.ah, i32 %.sroa.0.0.i21.i
  %i.ai = icmp ugt i32 %i.v, %1
  %i.aj = add nuw i32 %1, 1
  %.not = icmp ugt i32 %1, %spec.select.i
  %. = select i1 %.not, i32 0, i32 %1
  %.sroa.0.0 = select i1 %i.ai, i32 %i.aj, i32 %.
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @"_ZN4anki9scheduler6states4fuzz55_$LT$impl$u20$anki..scheduler..states..StateContext$GT$16with_review_fuzz17h10e3c565bf27795dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %0, float noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !guid !5863 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !49, !noundef !37
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32 } @_ZN4anki9scheduler6states13load_balancer19LoadBalancerContext13find_interval17h5a8139b23720197eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, float noundef %1, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %i.d = trunc i32 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !range !43, !noundef !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.h = load float, ptr %i.g, align 4
  %i.i = tail call noundef i32 @_ZN4anki9scheduler6states4fuzz16with_review_fuzz17hb5d845038d5d5049E(i32 noundef %i.f, float %i.h, float noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = extractvalue { i32, i32 } %i.b, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi i32 [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki9scheduler6states6review11ReviewState11next_states17h2ff164c412d4638bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([300 x i8]) align 4 captures(none) dereferenceable(300) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5923 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4 ; 9 uses
  %.sroa.5.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx140, align 4 ; 2 uses
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.6141.0.copyload = load float, ptr %.sroa.6141.0..sroa_idx, align 4 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5924)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load i32, ptr %i.a, align 8, !range !43, !alias.scope !5924, !noundef !37
  %i.c = trunc nuw i32 %i.b to i1                 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5926)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.e = load float, ptr %i.d, align 8, !alias.scope !5927, !noundef !37 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.g = load i32, ptr %i.f, align 4, !alias.scope !5928, !noundef !37 ; 6 uses
  %i.h = tail call noundef i32 @_ZN4anki9scheduler6states4fuzz28minimum_review_fuzz_interval17h44d079407eebbb09E(float noundef %i.e, i32 noundef %.sroa.3.0.copyload, i32 noundef %i.g), !noalias !5929
  %.sroa.0.0.i.i.i = tail call noundef i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %.sroa.0.0.i.i.i.i.i = tail call noundef i32 @llvm.umax.i32(i32 %i.g, i32 1) ; 9 uses
  %spec.select.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.i.i.i, i32 %.sroa.0.0.i.i.i.i.i) ; 2 uses
  %i.i = load i64, ptr %2, align 8, !range !49, !alias.scope !5930, !noundef !37
  %.not.i4.i.i.i = icmp eq i64 %i.i, 2            ; 3 uses
  br i1 %.not.i4.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call { i32, i32 } @_ZN4anki9scheduler6states13load_balancer19LoadBalancerContext13find_interval17h5a8139b23720197eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %2, float noundef %i.e, i32 noundef %spec.select.i.i.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i.i), !noalias !5931 ; 2 uses
  %i.k = extractvalue { i32, i32 } %i.j, 0
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = load i32, ptr %i.m, align 8, !range !43, !alias.scope !5930, !noundef !37
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.p = load float, ptr %i.o, align 4, !alias.scope !5930
  %i.q = tail call noundef i32 @_ZN4anki9scheduler6states4fuzz16with_review_fuzz17hb5d845038d5d5049E(i32 noundef %i.n, float %i.p, float noundef %i.e, i32 noundef %spec.select.i.i.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i.i), !noalias !5931
  br label %_ZN4anki9scheduler6states6review26constrain_passing_interval17haa63b204c908c454E.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = extractvalue { i32, i32 } %i.j, 1
  br label %_ZN4anki9scheduler6states6review26constrain_passing_interval17haa63b204c908c454E.exit.i.i

_ZN4anki9scheduler6states6review26constrain_passing_interval17haa63b204c908c454E.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i1.i.i = phi i32 [ %i.q, %bb.d ], [ %i.r, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.t = load float, ptr %i.s, align 4, !alias.scope !5927, !noundef !37 ; 3 uses
  %i.u = tail call noundef i32 @_ZN4anki9scheduler6states4fuzz28minimum_review_fuzz_interval17h44d079407eebbb09E(float noundef %i.t, i32 noundef %.sroa.3.0.copyload, i32 noundef %i.g), !noalias !5931
  %i.v = add i32 %.sroa.0.0.i1.i.i, 1
  %.sroa.0.0.i2.i.i = tail call noundef i32 @llvm.umax.i32(i32 %i.v, i32 %i.u) ; 2 uses
  %i.w = icmp eq i32 %.sroa.0.0.i2.i.i, 0
  %spec.select.i.i.i6.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.i2.i.i, i32 %.sroa.0.0.i.i.i.i.i)
  %.sroa.0.0.i1.i.i.i.i = select i1 %i.w, i32 1, i32 %spec.select.i.i.i6.i.i ; 2 uses
  br i1 %.not.i4.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4anki9scheduler6states6review26constrain_passing_interval17haa63b204c908c454E.exit.i.i
  %i.x = tail call { i32, i32 } @_ZN4anki9scheduler6states13load_balancer19LoadBalancerContext13find_interval17h5a8139b23720197eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %2, float noundef %i.t, i32 noundef %.sroa.0.0.i1.i.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i.i), !noalias !5931 ; 2 uses
  %i.y = extractvalue { i32, i32 } %i.x, 0
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4anki9scheduler6states6review26constrain_passing_interval17haa63b204c908c454E.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load i32, ptr %i.aa, align 8, !range !43, !alias.scope !5932, !noundef !37
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ad = load float, ptr %i.ac, align 4, !alias.scope !5932
  %i.ae = tail call noundef i32 @_ZN4anki9scheduler6states4fuzz16with_review_fuzz17hb5d845038d5d5049E(i32 noundef %i.ab, float %i.ad, float noundef %i.t, i32 noundef %.sroa.0.0.i1.i.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i.i), !noalias !5931
  br label %_ZN4anki9scheduler6states6review26constrain_passing_interval17haa63b204c908c454E.exit9.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = extractvalue { i32, i32 } %i.x, 1
  br label %_ZN4anki9scheduler6states6review26constrain_passing_interval17haa63b204c908c454E.exit9.i.i

_ZN4anki9scheduler6states6review26constrain_passing_interval17haa63b204c908c454E.exit9.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i8.i.i = phi i32 [ %i.ae, %bb.g ], [ %i.af, %bb.h ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ah = load float, ptr %i.ag, align 8, !alias.scope !5927, !noundef !37 ; 3 uses
  %i.ai = tail call noundef i32 @_ZN4anki9scheduler6states4fuzz28minimum_review_fuzz_interval17h44d079407eebbb09E(float noundef %i.ah, i32 noundef %.sroa.3.0.copyload, i32 noundef %i.g), !noalias !5931
  %i.aj = add i32 %.sroa.0.0.i8.i.i, 1
  %.sroa.0.0.i10.i.i = tail call noundef i32 @llvm.umax.i32(i32 %i.aj, i32 %i.ai) ; 2 uses
  %i.ak = icmp eq i32 %.sroa.0.0.i10.i.i, 0
  %spec.select.i.i.i14.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.i10.i.i, i32 %.sroa.0.0.i.i.i.i.i)
  %.sroa.0.0.i1.i.i15.i.i = select i1 %i.ak, i32 1, i32 %spec.select.i.i.i14.i.i ; 2 uses
  br i1 %.not.i4.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4anki9scheduler6states6review26constrain_passing_interval17haa63b204c908c454E.exit9.i.i
  %i.al = tail call { i32, i32 } @_ZN4anki9scheduler6states13load_balancer19LoadBalancerContext13find_interval17h5a8139b23720197eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %2, float noundef %i.ah, i32 noundef %.sroa.0.0.i1.i.i15.i.i, i32 noundef %.sroa.0.0.i.i.i.i.i), !noalias !5931 ; 2 uses
  %i.am = extractvalue { i32, i32 } %i.al, 0
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4anki9scheduler6states6review26constrain_passing_interval17haa63b204c908c454E.exit9.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ap = load i32, ptr %i.ao, align 8, !range !43, !alias.scope !5933, !noundef !37
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ar = load float, ptr %i.aq, align 4, !alias.scope !5933
  %i.as = tail call noundef i32 @_ZN4anki9scheduler6states4fuzz16with_review_fuzz17hb5d845038d5d5049E(i32 noundef %i.ap, float %i.ar, float noundef %i.ah, i32 noundef %.sroa.0.0.i1.i.i15.i.i, i32 noundef %.sroa.0.0.i.i.i.i.i), !noalias !5931
  br label %_ZN4anki9scheduler6states6review11ReviewState24passing_review_intervals17hfcc5e3da6af1449fE.exit

bb.k:                                             ; preds = %bb.i
  %i.at = extractvalue { i32, i32 } %i.al, 1
  br label %_ZN4anki9scheduler6states6review11ReviewState24passing_review_intervals17hfcc5e3da6af1449fE.exit

bb.l:                                             ; preds = %bb.a
  %i.au = sub i32 %.sroa.5.0.copyload, %.sroa.3.0.copyload ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  %i.aw = uitofp i32 %.sroa.3.0.copyload to float
  %i.ax = tail call float @llvm.maxnum.f32(float %i.aw, float 1.000000e+00) ; 6 uses
  br i1 %i.av, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.az = load float, ptr %i.ay, align 8, !alias.scope !5934, !noundef !37 ; 3 uses
  %i.ba = fcmp ugt float %i.az, 1.000000e+00
  br i1 %i.ba, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bb = add i32 %.sroa.3.0.copyload, 1          ; 2 uses
  %i.bc = fmul float %i.ax, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.be = load float, ptr %i.bd, align 8, !alias.scope !5935 ; 3 uses
  %i.bf = fmul float %i.bc, %i.be                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !5936, !noundef !37 ; 3 uses
end_hunk_0
