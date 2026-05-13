inline.NumInlined: 545
inline.NumDeleted: 270
begin_hunk_0_@_ZN5folly5IOBuf17takeOwnershipImplEPvmmmPFvS1_S1_ES1_bNS0_19TakeOwnershipOptionEPNSt3pmr15memory_resourceE:bb.a
  br label %.noexc26

.noexc26:                                         ; preds = %bb.e, %.noexc27
  %.0 = phi i64 [ 112, %.noexc27 ], [ 96, %bb.e ] ; 2 uses
  %storemerge.i = phi ptr [ %i.p, %.noexc27 ], [ %i.k, %bb.e ] ; 7 uses
  %.0.i = trunc nuw nsw i64 %.0 to i32
  %i.r = zext i1 %i.j to i8
  store i16 -23131, ptr %storemerge.i, align 4, !tbaa !3784
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 2
  store i8 2, ptr %i.s, align 2, !tbaa !3785
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 3
  store i8 %i.r, ptr %i.t, align 1, !tbaa !3786
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 4
  store i32 %.0.i, ptr %i.u, align 4, !tbaa !3787
  %.not17.i = icmp eq ptr @_Z15io_buf_alloc_cbPvm, null
  br i1 %.not17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc26
  call void @_Z15io_buf_alloc_cbPvm(ptr noundef nonnull %storemerge.i, i64 noundef %.0) #35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.noexc26
  store ptr %storemerge.i, ptr %i.e, align 8, !tbaa !3822
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 64
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !3821
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !3821
  invoke void @_ZN5folly5IOBuf10SharedInfoC1EPFvPvS2_ES2_NS1_11StorageTypeE(ptr noundef nonnull align 8 dereferenceable(31) %i.v, ptr noundef %i.w, ptr noundef %i.x, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !3822 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !3821 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %3
  call void @_ZN5folly5IOBufC1ENS0_19InternalConstructorEPNS0_10SharedInfoEPhmS4_m(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull %i.aa, ptr noundef %i.ab, i64 noundef %2, ptr noundef %i.ac, i64 noundef %4) #35
  store ptr %i.z, ptr %0, align 8, !tbaa !3817
  %i.ad = icmp ne ptr @_Z15io_buf_alloc_cbPvm, null
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = icmp ne ptr %i.ae, null
  %or.cond.not19.not23 = select i1 %i.ad, i1 %i.af, i1 false
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = icmp eq ptr %i.ag, null
  %or.cond3.not20 = select i1 %or.cond.not19.not23, i1 %i.ah, i1 false
  %i.ai = icmp eq i32 %8, 1
  %or.cond5 = and i1 %i.ai, %or.cond3.not20
  br i1 %or.cond5, label %bb.k, label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EED2Ev.exit"

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !3821
  call void @_Z15io_buf_alloc_cbPvm(ptr noundef %i.aj, i64 noundef %2) #35
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EED2Ev.exit"

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EED2Ev.exit": ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  ret void

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.c
  %.pn24 = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.al, %bb.m ], [ %i.ak, %bb.l ]
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EED2Ev"(ptr noundef nonnull align 8 dereferenceable(48) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  resume { ptr, i32 } %.pn24
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZZN5folly5IOBuf14createCombinedEmEN3$_08__invokeEPvS2_"(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #21 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly5IOBuf11createChainEmm(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %.sroa.speculated14 = tail call i64 @llvm.umin.i64(i64 %2, i64 %1)
  tail call void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, i64 noundef %.sroa.speculated14)
  %i.a = load ptr, ptr %0, align 8, !tbaa !3817   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3836 ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  %.021 = phi i64 [ %i.c, %.lr.ph ], [ %i.j, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.f = sub nuw i64 %1, %.021
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.f)
  invoke void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, i64 noundef %.sroa.speculated)
          to label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit10

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %3, align 8, !tbaa !3817   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !3836
  %i.j = add i64 %i.i, %.021                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3802 ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !3802 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.g, ptr %i.n, align 8, !tbaa !3801
  store ptr %i.m, ptr %i.k, align 8, !tbaa !3802
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.a, ptr %i.o, align 8, !tbaa !3801
  store ptr %i.l, ptr %i.e, align 8, !tbaa !3802
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.p = icmp ult i64 %i.j, %1
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !3837

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit10: ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #35, !inline_history !3838
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 -8
  tail call void @_ZN5folly5IOBuf24decrementStorageRefcountEPNS0_11HeapStorageE(ptr noundef nonnull %i.r) #35, !inline_history !3838
  resume { ptr, i32 } %i.q

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5folly5IOBuf13appendToChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3817   ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !3817
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3802 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3802 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.a, ptr %i.f, align 8, !tbaa !3801
  store ptr %i.e, ptr %i.b, align 8, !tbaa !3802
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %0, ptr %i.g, align 8, !tbaa !3801
  store ptr %i.c, ptr %i.d, align 8, !tbaa !3802
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN5folly5IOBuf8goodSizeEmNS0_14CombinedOptionE(i64 noundef %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = icmp ult i64 %0, 1025
  %i.c = icmp eq i32 %1, 1
  %i.d = select i1 %i.a, i1 %i.b, i1 %i.c         ; 2 uses
  %i.e = add i64 %0, 7
  %i.f = and i64 %i.e, -8
  %i.g = add i64 %0, 96
  %i.h = add i64 %i.f, 32
  %i.i = select i1 %i.d, i64 %i.g, i64 %i.h       ; 5 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %bb.c, !prof !3783

bb.c:                                             ; preds = %bb.b
  %i.l = icmp sgt i8 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #38
  br i1 %i.m, label %bb.d, label %_ZN5folly14goodMallocSizeEm.exit

bb.d:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %bb.c
  %i.n = tail call i64 @nallocx(i64 noundef %i.i, i32 noundef 0) #35 ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not.i, i64 %i.i, i64 %i.n
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %bb.a, %bb.c, %_ZN5folly10canNallocxEv.exit.i, %bb.d
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.o, %bb.d ], [ %i.i, %_ZN5folly10canNallocxEv.exit.i ], [ %i.i, %bb.c ]
  %.08.neg = select i1 %i.d, i64 -96, i64 -32
  %i.p = add i64 %.0.i, %.08.neg
  ret i64 %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly5IOBufC2ENS0_15TakeOwnershipOpEPvmmmPFvS2_S2_ES2_b(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 32)) %0, i32 %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i8, align 1                       ; 2 uses
  %9 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 9 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !3821
  store ptr %6, ptr %i.b, align 8, !tbaa !3821
  store ptr %7, ptr %i.c, align 8, !tbaa !3821
  %i.e = zext i1 %8 to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !3789
  store i64 %5, ptr %0, align 8, !tbaa !3809
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %4
  store ptr %i.g, ptr %i.f, align 8, !tbaa !3806
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.h, align 8, !tbaa !3836
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.i, align 8, !tbaa !3805
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.j, align 8, !tbaa !3801
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %0, ptr %i.k, align 8, !tbaa !3802
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !3803
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store i8 0, ptr %9, align 8, !tbaa !3824, !alias.scope !3839
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.d, ptr %i.m, align 8, !tbaa !3832
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3834
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !3834
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !3834
  %i.n = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #41
          to label %bb.b unwind label %bb.c       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %10 = load ptr, ptr %i.b, align 8, !tbaa !3821
  %11 = load ptr, ptr %i.c, align 8, !tbaa !3821
  invoke void @_ZN5folly5IOBuf10SharedInfoC1EPFvPvS2_ES2_NS1_11StorageTypeE(ptr noundef nonnull align 8 dereferenceable(31) %i.n, ptr noundef %10, ptr noundef %11, i8 noundef zeroext 1)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpEPvmmmPFvS4_S4_ES4_bE3$_0Lb1EED2Ev.exit" unwind label %bb.d

"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpEPvmmmPFvS4_S4_ES4_bE3$_0Lb1EED2Ev.exit": ; preds = %bb.b
  store ptr %i.n, ptr %i.l, align 8, !tbaa !3803
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 32) #37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.o, %bb.c ]
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpEPvmmmPFvS4_S4_ES4_bE3$_0Lb1EED2Ev"(ptr noundef nonnull align 8 dereferenceable(40) %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpEPvmmmPFvS4_S4_ES4_bE3$_0Lb1EED2Ev"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !3824, !range !3790, !noundef !451
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpEPvmmmPFvS4_S4_ES4_bE3$_0Lb1EE7executeEv.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3842, !nonnull !451
  %i.e = load i8, ptr %i.d, align 1, !tbaa !3789, !range !3790, !noundef !451
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3844, !nonnull !451, !align !3845
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3821 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3846, !nonnull !451, !align !3845
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3821 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3847, !nonnull !451, !align !3845
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3821
  br i1 %i.f, label %bb.c, label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpEPvmmmPFvS4_S4_ES4_bE3$_0Lb1EE7executeEv.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.i) #35
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpEPvmmmPFvS4_S4_ES4_bE3$_0Lb1EE7executeEv.exit"

bb.e:                                             ; preds = %bb.c
  invoke void %i.l(ptr noundef %i.i, ptr noundef %i.o)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpEPvmmmPFvS4_S4_ES4_bE3$_0Lb1EE7executeEv.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #36
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpEPvmmmPFvS4_S4_ES4_bE3$_0Lb1EE7executeEv.exit": ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: noreturn nounwind
declare void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN5folly5IOBufC2ENS0_15TakeOwnershipOpENS0_9SizedFreeEPvmmmb(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 32)) %0, i32 %1, i32 %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 %6, ptr %0, align 8, !tbaa !3809
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %5
  store ptr %i.b, ptr %i.a, align 8, !tbaa !3806
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.c, align 8, !tbaa !3836
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !3805
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.e, align 8, !tbaa !3801
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %0, ptr %i.f, align 8, !tbaa !3802
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !3803
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #41
          to label %bb.b unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %4 to ptr
  invoke void @_ZN5folly5IOBuf10SharedInfoC1EPFvPvS2_ES2_NS1_11StorageTypeE(ptr noundef nonnull align 8 dereferenceable(31) %i.h, ptr noundef null, ptr noundef %i.i, i8 noundef zeroext 1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr %i.h, ptr %i.g, align 8, !tbaa !3803
  %i.j = icmp ne ptr @_Z15io_buf_alloc_cbPvm, null
  %i.k = icmp ne i64 %4, 0
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.d, label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpENS2_9SizedFreeEPvmmmbE3$_0Lb1EED2Ev.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @_Z15io_buf_alloc_cbPvm(ptr noundef %3, i64 noundef %4) #35
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpENS2_9SizedFreeEPvmmmbE3$_0Lb1EED2Ev.exit"

bb.e:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #37
  br label %bb.g

"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpENS2_9SizedFreeEPvmmmbE3$_0Lb1EED2Ev.exit": ; preds = %bb.c, %bb.d
  ret void

bb.g:                                             ; preds = %bb.e, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  br i1 %7, label %bb.h, label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpENS2_9SizedFreeEPvmmmbE3$_0Lb1EED2Ev.exit16"

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %3) #35
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpENS2_9SizedFreeEPvmmmbE3$_0Lb1EED2Ev.exit16"

"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpENS2_9SizedFreeEPvmmmbE3$_0Lb1EED2Ev.exit16": ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EED2Ev"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !3824, !range !3790, !noundef !451
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EE7executeEv.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3848, !nonnull !451, !align !3845
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3822 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %.noexc.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5folly5IOBuf11freeStorageEPNS0_11HeapStorageE(ptr noundef nonnull %i.e)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3850, !nonnull !451
  %i.h = load i8, ptr %i.g, align 1, !tbaa !3789, !range !3790, !noundef !451
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3851, !nonnull !451, !align !3845
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3821 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3852, !nonnull !451, !align !3845
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3821 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3853, !nonnull !451, !align !3845
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3821
  br i1 %i.i, label %bb.d, label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EE7executeEv.exit"

bb.d:                                             ; preds = %.noexc.i
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.l) #35
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EE7executeEv.exit"

bb.f:                                             ; preds = %bb.d
  invoke void %i.o(ptr noundef %i.l, ptr noundef %i.r)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EE7executeEv.exit" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #36
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #35 ; 0 uses
  tail call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #35, !inline_history !3854
  unreachable

end_hunk_0
