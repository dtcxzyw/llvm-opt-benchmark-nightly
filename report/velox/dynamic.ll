inline.NumInlined: 2716
inline.NumDeleted: 1112
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm:bb.a

bb.ae:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !129
  %i.fc = load i64, ptr %i.d, align 8, !tbaa !63
  %.not.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = load ptr, ptr %i.c, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fe = load i64, ptr %i.e, align 8, !tbaa !63
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fe) #33
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE26buildFromF14TableCatchColdEPS9_(ptr noundef %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #33
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #33
  tail call void @__cxa_rethrow() #37
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #24

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !35
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !35
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !261, !range !102, !noundef !39
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !282, !nonnull !39
  %i.e = load i8, ptr %i.d, align 1, !tbaa !129, !range !102, !noundef !39
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !62

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !284, !nonnull !39, !align !40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !285, !nonnull !39, !align !40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !256
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !286, !nonnull !39, !align !40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !63
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !287  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !288, !nonnull !39, !align !40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !289, !nonnull !39, !align !40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !285, !nonnull !39, !align !40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !256
  store ptr %i.z, ptr %i.q, align 8, !tbaa !226
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !290, !nonnull !39, !align !40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !63 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !219
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !219
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #33
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #24

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #28

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE15directBuildFromIRKS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !219  ; 2 uses
  %i.d = and i64 %i.c, 255
  %i.e = load ptr, ptr %0, align 8, !tbaa !226
  %i.f = load ptr, ptr %1, align 8, !tbaa !226
  %i.g = shl nuw i64 1, %i.d                      ; 2 uses
  %i.h = getelementptr [128 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr [128 x i8], ptr %i.e, i64 %i.g
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %i.j = phi i64 [ %i.c, %bb.a ], [ %i.bf, %._crit_edge ]
  %.pn49 = phi ptr [ %i.i, %bb.a ], [ %.045, %._crit_edge ] ; 4 uses
  %.pn48 = phi ptr [ %i.h, %bb.a ], [ %.044, %._crit_edge ] ; 4 uses
  %.045 = getelementptr i8, ptr %.pn49, i64 -128  ; 2 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -128  ; 4 uses
  %i.k = getelementptr i8, ptr %.pn48, i64 -114
  %i.l = load i8, ptr %i.k, align 2, !tbaa !260
  %i.m = and i8 %i.l, -16
  %i.n = getelementptr i8, ptr %.pn49, i64 -114   ; 2 uses
  %i.o = load i8, ptr %i.n, align 2, !tbaa !260
  %i.p = add i8 %i.o, %i.m
  store i8 %i.p, ptr %i.n, align 2, !tbaa !260
  %i.q = getelementptr i8, ptr %.pn48, i64 -113
  %i.r = load i8, ptr %i.q, align 1, !tbaa !232
  %i.s = getelementptr i8, ptr %.pn49, i64 -113
  store i8 %i.r, ptr %i.s, align 1, !tbaa !232
  %i.t = load <16 x i8>, ptr %.044, align 16, !tbaa !33
  %i.u = icmp slt <16 x i8> %i.t, zeroinitializer
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = and i16 %i.v, 16383                      ; 2 uses
  %.sroa.070.0.extract.trunc = zext nneg i16 %i.w to i32 ; 2 uses
  %cond = icmp eq i16 %i.w, 0
  br i1 %cond, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = getelementptr i8, ptr %.pn48, i64 -112   ; 2 uses
  br label %bb.c

.lr.ph98:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %i.y = icmp ne ptr %.044, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr i8, ptr %.pn49, i64 -112   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.093 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.092 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph ], [ %.sroa.067.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.aa = and i32 %.sroa.067.092, 1
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.d, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.ab = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.092, i1 true) ; 2 uses
  %i.ac = add i32 %.sroa.8.093, %i.ab
  %i.ad = add nuw nsw i32 %i.ab, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.c, %bb.d
  %.pn88 = phi i32 [ %i.ad, %bb.d ], [ 1, %bb.c ]
  %.sroa.8.1.in = phi i32 [ %i.ac, %bb.d ], [ %.sroa.8.093, %bb.c ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.067.1 = lshr i32 %.sroa.067.092, %.pn88  ; 2 uses
  %i.ae = zext i32 %.sroa.8.1.in to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !223
  tail call void @llvm.prefetch.p0(ptr %i.ag, i32 0, i32 3, i32 1)
  %.not86 = icmp eq i32 %.sroa.067.1, 0
  br i1 %.not86, label %.lr.ph98, label %bb.c

bb.e:                                             ; preds = %.lr.ph98, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.04697 = phi i64 [ 0, %.lr.ph98 ], [ %i.be, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ] ; 3 uses
  %.sroa.872.096 = phi i32 [ 0, %.lr.ph98 ], [ %.sroa.872.1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ] ; 2 uses
  %.sroa.070.095 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph98 ], [ %.sroa.070.1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ] ; 3 uses
  %i.ah = and i32 %.sroa.070.095, 1
  %.not.i63 = icmp eq i32 %i.ah, 0
  br i1 %.not.i63, label %bb.f, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit65, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.ai = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.070.095, i1 true) ; 2 uses
  %i.aj = add i32 %.sroa.872.096, %i.ai
  %i.ak = add nuw nsw i32 %i.ai, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit65

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit65: ; preds = %bb.e, %bb.f
  %.pn = phi i32 [ %i.ak, %bb.f ], [ 1, %bb.e ]
  %.sroa.872.1.in = phi i32 [ %i.aj, %bb.f ], [ %.sroa.872.096, %bb.e ] ; 2 uses
  %.sroa.872.1 = add i32 %.sroa.872.1.in, 1
  %.sroa.070.1 = lshr i32 %.sroa.070.095, %.pn    ; 2 uses
  %i.al = zext i32 %.sroa.872.1.in to i64         ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !223 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.04697
  %i.ap = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #38, !inline_history !291 ; 5 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !223
  invoke void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(80) %i.an)
          to label %.noexc.i unwind label %bb.h, !inline_history !292

.noexc.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  invoke void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.ar)
          to label %_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIiJRKSt4pairIKS3_S3_EEEEvOT_PPSB_DpOT0_.exit unwind label %bb.g, !inline_history !293

bb.g:                                             ; preds = %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ap) #33, !inline_history !294
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIiJRKSt4pairIKS5_S5_EEEEvOT_PPSC_DpOT0_EUlvE_Lb1EED2Ev.exit9.i

bb.h:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit65
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIiJRKSt4pairIKS5_S5_EEEEvOT_PPSC_DpOT0_EUlvE_Lb1EED2Ev.exit9.i

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIiJRKSt4pairIKS5_S5_EEEEvOT_PPSC_DpOT0_EUlvE_Lb1EED2Ev.exit9.i: ; preds = %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.as, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 80) #35, !inline_history !291
  resume { ptr, i32 } %eh.lpad-body.i

_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIiJRKSt4pairIKS3_S3_EEEEvOT_PPSB_DpOT0_.exit: ; preds = %.noexc.i
  %i.au = getelementptr inbounds nuw i8, ptr %.045, i64 %.04697 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !33
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIiJRKSt4pairIKS3_S3_EEEEvOT_PPSB_DpOT0_.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.49) #40
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIiJRKSt4pairIKS3_S3_EEEEvOT_PPSB_DpOT0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.044, i64 %i.al
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !33
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !33
  %i.az = load i64, ptr %i.b, align 8, !tbaa !219 ; 2 uses
  %i.ba = and i64 %i.az, -256
  %i.bb = add i64 %i.ba, 256
  %i.bc = and i64 %i.az, 255
  %i.bd = or disjoint i64 %i.bb, %i.bc            ; 2 uses
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !219
  %i.be = add i64 %.04697, 1
  %.not87 = icmp eq i32 %.sroa.070.1, 0
  br i1 %.not87, label %._crit_edge, label %bb.e, !llvm.loop !295

._crit_edge:                                      ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, %bb.b
  %i.bf = phi i64 [ %i.j, %bb.b ], [ %i.bd, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ] ; 2 uses
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !219
  %.not.unshifted = xor i64 %i.bg, %i.bf
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.b, !llvm.loop !296

bb.j:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !221 ; 3 uses
  %i.bj = and i64 %i.bi, -8
  %i.bk = shl i64 %i.bi, 1
  %i.bl = and i64 %i.bk, 14
  %i.bm = shl i64 %i.bi, 60
  %i.bn = ashr i64 %i.bm, 63
  %.neg.i = sub nsw i64 %i.bn, %i.bl
  %.neg.i.i.i = shl nsw i64 %.neg.i, 3
  %i.bo = load ptr, ptr %1, align 8, !tbaa !226
  %i.bp = add i64 %i.bj, -16
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = load ptr, ptr %0, align 8, !tbaa !226
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.br
  %i.bu = getelementptr i8, ptr %i.bt, i64 %.neg.i.i.i ; 3 uses
  %i.bv = load <16 x i8>, ptr %i.bu, align 16, !tbaa !33
  %i.bw = icmp slt <16 x i8> %i.bv, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = and i16 %i.bx, 16383                    ; 2 uses
  %i.bz = zext nneg i16 %i.by to i32
  %i.ca = icmp ne i16 %i.by, 0
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true)
  %i.cc = xor i32 %i.cb, 31
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = icmp ne ptr %i.bu, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = lshr i64 %i.cd, 1
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = or i64 %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE15rehashBuildFromIRKS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.64", align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !219  ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 4 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 3 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !61

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #38
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0129 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %2, %bb.a ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0129, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !221  ; 3 uses
  %i.i = and i64 %i.h, -8
  %i.j = shl i64 %i.h, 1
  %i.k = and i64 %i.j, 14
  %i.l = shl i64 %i.h, 60
  %i.m = ashr i64 %i.l, 63
  %.neg.i = sub nsw i64 %i.m, %i.k
  %.neg.i.i.i = shl nsw i64 %.neg.i, 3
  %i.n = load ptr, ptr %1, align 8, !tbaa !226
  %i.o = add i64 %i.i, -16
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = add i64 %i.q, %.neg.i.i.i
  %i.s = ashr exact i64 %i.r, 7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.u = phi i64 [ %i.b, %bb.d ], [ %i.fo, %.loopexit ] ; 2 uses
  %.0121 = phi i64 [ %i.s, %bb.d ], [ %i.fq, %.loopexit ] ; 5 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !226
  %i.w = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.0121 ; 6 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16       ; 2 uses
  %i.y = icmp slt <16 x i8> %i.x, zeroinitializer
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = and i16 %i.z, 16383                     ; 2 uses
  %.sroa.093.0.extract.trunc = zext nneg i16 %i.aa to i32 ; 3 uses
  %.not132142 = icmp eq i16 %i.aa, 0
  %i.ab = extractelement <16 x i8> %i.x, i64 14
  br i1 %.not132142, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ac = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %i.ae = icmp ult i8 %i.ab, 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  br i1 %i.ae, label %.lr.ph152, label %.lr.ph148

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0144 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.090.0143 = phi i32 [ %.sroa.093.0.extract.trunc, %.lr.ph ], [ %.sroa.090.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.ag = and i32 %.sroa.090.0143, 1
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.090.0143, i1 true) ; 2 uses
  %i.ai = add i32 %.sroa.8.0144, %i.ah
  %i.aj = add nuw nsw i32 %i.ah, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn136 = phi i32 [ %i.aj, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.ai, %bb.g ], [ %.sroa.8.0144, %bb.f ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.090.1 = lshr i32 %.sroa.090.0143, %.pn136 ; 2 uses
  %i.ak = zext i32 %.sroa.8.1.in to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !223
  tail call void @llvm.prefetch.p0(ptr %i.am, i32 0, i32 3, i32 1)
  %.not132 = icmp eq i32 %.sroa.090.1, 0
  br i1 %.not132, label %._crit_edge, label %bb.f

.lr.ph152:                                        ; preds = %._crit_edge, %bb.r
  %i.an = phi i64 [ %i.cw, %bb.r ], [ %i.u, %._crit_edge ]
  %.sroa.12.0151 = phi i32 [ %.sroa.12.2, %bb.r ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.093.0150 = phi i32 [ %.sroa.093.2, %bb.r ], [ %.sroa.093.0.extract.trunc, %._crit_edge ] ; 3 uses
  %i.ao = and i32 %.sroa.093.0150, 1
  %.not.i56 = icmp eq i32 %i.ao, 0
  br i1 %.not.i56, label %bb.h, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit58, !prof !61

end_hunk_0
