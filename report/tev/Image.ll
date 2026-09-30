Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Image?download=true
inline.NumInlined: 33261
inline.NumDeleted: 8209
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne180100Ev:bb.a
  %i.i = load i8, ptr %i.h, align 8
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.k = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !126
  %i.m = load i64, ptr %i.h, align 8
  %i.n = and i64 %i.m, -2
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.n) #45
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.e, %i.h
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !3079 ; 2 uses
  %.pre1.i = load ptr, ptr %.pre.i, align 8, !tbaa !205
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.c
  %i.o = phi ptr [ %.pre1.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.d, %bb.c ]
  store ptr %i.e, ptr %i.f, align 8, !tbaa !206
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !272
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.u) #45
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !483, !range !174, !noundef !175
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3081, !nonnull !175, !align !773
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !272  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3082, !nonnull !175, !align !773
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !272  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.f, %i.i
  br i1 %.not5.i.i, label %_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne180100Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i
  %.sroa.12.06.i.i = phi ptr [ %i.j, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.12.06.i.i, i64 -24 ; 4 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds i8, ptr %.sroa.12.06.i.i, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126
  %i.o = load i64, ptr %i.j, align 8
  %i.p = and i64 %i.o, -2
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #45
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i, label %_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne180100Ev.exit, label %.lr.ph.i.i, !llvm.loop !3080

_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne180100Ev.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNKSt3__120__move_backward_loopINS_17_ClassicAlgPolicyEEclB8ne180100IPN3tev12ChannelGroupES6_S6_EENS_4pairIT_T1_EES8_T0_S9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not8 = icmp eq ptr %1, %2
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN3tev12ChannelGroupaSEOS0_.exit
  %.010 = phi ptr [ %i.a, %_ZN3tev12ChannelGroupaSEOS0_.exit ], [ %2, %bb.a ] ; 4 uses
  %.079 = phi ptr [ %i.b, %_ZN3tev12ChannelGroupaSEOS0_.exit ], [ %3, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds i8, ptr %.010, i64 -48 ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %.079, i64 -48 ; 5 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds i8, ptr %.079, i64 -32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.g = load i64, ptr %i.b, align 8
  %i.h = and i64 %i.g, -2
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.h) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i: ; preds = %bb.b, %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds i8, ptr %.010, i64 -47
  store i8 0, ptr %i.i, align 1, !tbaa !126
  %i.j = getelementptr inbounds i8, ptr %.079, i64 -24 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !205  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN3tev12ChannelGroupaSEOS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i
  %i.l = getelementptr inbounds i8, ptr %.079, i64 -16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !206  ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126
  %i.s = load i64, ptr %i.n, align 8
  %i.t = and i64 %i.s, -2
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.t) #45
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !205
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i, %bb.c
  %i.u = phi ptr [ %.pre.i.i.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !206
  %i.v = getelementptr inbounds i8, ptr %.079, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !272
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  br label %_ZN3tev12ChannelGroupaSEOS0_.exit

_ZN3tev12ChannelGroupaSEOS0_.exit:                ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %.010, i64 -24 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !272
  store <2 x ptr> %i.ab, ptr %i.j, align 8, !tbaa !272
  %i.ac = getelementptr inbounds i8, ptr %.010, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !272
  %i.ae = getelementptr inbounds i8, ptr %.079, i64 -8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %1, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3083

._crit_edge:                                      ; preds = %_ZN3tev12ChannelGroupaSEOS0_.exit, %bb.a
  %.07.lcssa = phi ptr [ %3, %bb.a ], [ %i.b, %_ZN3tev12ChannelGroupaSEOS0_.exit ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %2, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.07.lcssa, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %2, 23
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.c = trunc nuw nsw i64 %2 to i8
  %i.d = shl nuw nsw i8 %i.c, 1
  store i8 %i.d, ptr %0, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.b, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

bb.d:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, -10
  br i1 %i.e, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #47
  unreachable

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %2, i64 44)
  %i.g = or i64 %.sroa.speculated.i, 7
  %i.h = add nuw i64 %i.g, 1                      ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #46 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %1, i64 %2, i1 false)
  store ptr %i.i, ptr %i.f, align 8, !tbaa !126
  %3 = or disjoint i64 %i.h, 1
  store i64 %3, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.j, align 8, !tbaa !126
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit: ; preds = %bb.c, %bb.b, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit
  %.sink23 = phi ptr [ %i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sink23, i64 %2
  store i8 0, ptr %i.k, align 1, !tbaa !126
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, -2                         ; 5 uses
  %i.c = icmp ult i64 %2, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126  ; 3 uses
  store i64 %2, ptr %i.d, align 8, !tbaa !126
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

bb.d:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, -1                         ; 2 uses
  %i.h = add i64 %2, 1
  %i.i = sub i64 %i.h, %i.b
  %i.j = sub i64 -9, %i.b
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #47
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = trunc i64 %i.a to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = select i1 %i.l, ptr %i.n, ptr %i.o
  %i.q = icmp ult i64 %i.g, 9223372036854775795
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = shl nuw i64 %i.g, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.r) ; 2 uses
  %i.s = or i64 %.sroa.speculated.i, 7            ; 2 uses
  %i.t = icmp eq i64 %i.s, 23
  %i.u = add i64 %i.s, 1
  %i.v = select i1 %i.t, i64 25, i64 %i.u
  %.inv.i.inv.i = icmp ult i64 %.sroa.speculated.i, 23
  %i.w = select i1 %.inv.i.inv.i, i64 23, i64 %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = phi i64 [ %i.w, %bb.g ], [ -9, %bb.f ]   ; 2 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #46 ; 3 uses
  %.not49.i = icmp eq i64 %2, 0
  br i1 %.not49.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit, label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit53.i

_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit53.i: ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit: ; preds = %bb.h, %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit53.i
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.b) #45
  store ptr %i.y, ptr %i.m, align 8, !tbaa !126
  %i.z = or i64 %i.x, 1
  store i64 %i.z, ptr %0, align 8
  store i64 %2, ptr %i.d, align 8, !tbaa !126
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit: ; preds = %bb.c, %bb.b, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit
  %.sink26 = phi ptr [ %i.y, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit ], [ %i.f, %bb.b ], [ %i.f, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink26, i64 %2
  store i8 0, ptr %i.aa, align 1, !tbaa !126
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__assign_with_sizeB8ne180100IPS6_SA_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"struct.std::__1::__exception_guard_exceptions.746", align 8 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"struct.std::__1::__exception_guard_exceptions.746", align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !272  ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !205    ; 11 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = sdiv exact i64 %i.j, 24
  %.not = icmp ugt i64 %3, %i.k
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !206  ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.i                       ; 2 uses
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = icmp ugt i64 %3, %i.p
  br i1 %i.q, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.o ; 3 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i
  %storemerge8.i.i.i.i.i = phi ptr [ %i.am, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i ], [ %i.g, %bb.c ] ; 6 uses
  %.07.i.i.i.i.i = phi ptr [ %i.al, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i ], [ %1, %bb.c ] ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %storemerge8.i.i.i.i.i, %.07.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = load i8, ptr %storemerge8.i.i.i.i.i, align 8
  %i.t = trunc i8 %i.s to i1
  %i.u = load i8, ptr %.07.i.i.i.i.i, align 8     ; 2 uses
  %i.v = trunc i8 %i.u to i1                      ; 3 uses
  br i1 %i.t, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.07.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !431
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %storemerge8.i.i.i.i.i, ptr noundef %i.x, i64 noundef %i.z) ; 0 uses
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 1
  %i.ae = select i1 %i.v, ptr %i.ac, ptr %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = lshr i8 %i.u, 1
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = select i1 %i.v, i64 %i.ag, i64 %i.ai
  %i.ak = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %storemerge8.i.i.i.i.i, ptr noundef %i.ae, i64 noundef %i.aj) ; 0 uses
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3084

_ZNSt3__14copyB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i
  %.pre37 = load ptr, ptr %i.l, align 8, !tbaa !206 ; 2 uses
  %.pre44 = ptrtoint ptr %.pre37 to i64
  br label %_ZNSt3__14copyB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit

_ZNSt3__14copyB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit: ; preds = %_ZNSt3__14copyB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit, %bb.c
  %.pre-phi45 = phi i64 [ %.pre44, %_ZNSt3__14copyB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit ], [ %i.n, %bb.c ] ; 2 uses
  %i.an = phi ptr [ %.pre37, %_ZNSt3__14copyB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit ], [ %i.m, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.an, ptr %i.c, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #44
  store ptr %i.an, ptr %i.d, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  store ptr %i.e, ptr %5, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.ao, align 8, !tbaa !483, !alias.scope !3089
  %.not8.i.i.i = icmp eq ptr %i.r, %2
  br i1 %.not8.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPS6_SA_EEvT_T0_m.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14copyB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i.i.i
  %i.ap = phi ptr [ %i.ay, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i.i.i ], [ %i.an, %_ZNSt3__14copyB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit ] ; 3 uses
  %.09.i.i.i = phi ptr [ %i.ax, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i.i.i ], [ %i.r, %_ZNSt3__14copyB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit ] ; 5 uses
  %i.aq = load i8, ptr %.09.i.i.i, align 8
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
end_hunk_0
