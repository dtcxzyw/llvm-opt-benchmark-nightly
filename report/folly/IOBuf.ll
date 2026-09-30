Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/IOBuf?download=true
inline.NumInlined: 553
inline.NumDeleted: 274
begin_hunk_0_@_ZN5folly5IOBuf6createEm:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZN5folly5IOBuf14createCombinedEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, i64 noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not14.i = icmp eq i64 %1, 0
  br i1 %.not14.i, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = add nuw i64 %1, 96                       ; 4 uses
  %i.c = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !3763

.split.i:                                         ; preds = %bb.d
  %i.d = icmp sgt i8 %i.c, 0
  br i1 %i.d, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #39
  br i1 %i.e, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

bb.e:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.f = tail call i64 @nallocx(i64 noundef %i.b, i32 noundef 0) #35 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = select i1 %.not.i, i64 %i.b, i64 %i.f
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %bb.e, %_ZN5folly10canNallocxEv.exit.i, %.split.i, %bb.c
  %.0 = phi i64 [ 96, %bb.c ], [ %i.b, %.split.i ], [ %i.g, %bb.e ], [ %i.b, %_ZN5folly10canNallocxEv.exit.i ] ; 4 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %.0) #38 ; 9 uses
  %.not.i14 = icmp eq ptr %i.h, null
  br i1 %.not.i14, label %bb.f, label %_ZN5folly13checkedMallocEm.exit

bb.f:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable

_ZN5folly13checkedMallocEm.exit:                  ; preds = %_ZN5folly14goodMallocSizeEm.exit
  %spec.store.select16.i = tail call i64 @llvm.umin.i64(i64 %.0, i64 4294967296)
  %.0.i = trunc i64 %spec.store.select16.i to i32
  store i16 -23131, ptr %i.h, align 4, !tbaa !3759
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 2, ptr %i.i, align 2, !tbaa !3760
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  store i8 0, ptr %i.j, align 1, !tbaa !3761
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %.0.i, ptr %i.k, align 4, !tbaa !3762
  %.not17.i = icmp eq ptr @_Z15io_buf_alloc_cbPvm, null
  br i1 %.not17.i, label %_ZN5folly5IOBuf15allocateStorageINS0_15HeapFullStorageEEESt4pairIPT_mEPNSt3pmr15memory_resourceEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly13checkedMallocEm.exit
  tail call void @_Z15io_buf_alloc_cbPvm(ptr noundef nonnull %i.h, i64 noundef %.0) #35
  br label %_ZN5folly5IOBuf15allocateStorageINS0_15HeapFullStorageEEESt4pairIPT_mEPNSt3pmr15memory_resourceEm.exit

_ZN5folly5IOBuf15allocateStorageINS0_15HeapFullStorageEEESt4pairIPT_mEPNSt3pmr15memory_resourceEm.exit: ; preds = %_ZN5folly13checkedMallocEm.exit, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  tail call void @_ZN5folly5IOBuf10SharedInfoC1EPFvPvS2_ES2_NS1_11StorageTypeE(ptr noundef nonnull align 8 dereferenceable(31) %i.l, ptr noundef nonnull @"_ZZN5folly5IOBuf14createCombinedEmEN3$_08__invokeEPvS2_", ptr noundef null, i8 noundef zeroext 2)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %gepdiff = add nsw i64 %.0, -96
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  tail call void @_ZN5folly5IOBufC1ENS0_19InternalConstructorEPNS0_10SharedInfoEPhmS4_m(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef %gepdiff, ptr noundef nonnull %i.m, i64 noundef 0) #35
  store ptr %i.n, ptr %0, align 8, !tbaa !3778
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly5IOBuf14createSeparateEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, i64 noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3847)
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #38, !noalias !3847 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN5folly13checkedMallocEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16, !noalias !3847
  unreachable

_ZN5folly13checkedMallocEm.exit.i.i:              ; preds = %bb.a
  store i16 -23131, ptr %i.a, align 4, !tbaa !3759, !noalias !3847
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 1, ptr %i.b, align 2, !tbaa !3760, !noalias !3847
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 0, ptr %i.c, align 1, !tbaa !3761, !noalias !3847
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 64, ptr %i.d, align 4, !tbaa !3762, !noalias !3847
  %.not17.i7.i.i = icmp eq ptr @_Z15io_buf_alloc_cbPvm, null
  br i1 %.not17.i7.i.i, label %_ZN5folly5IOBufnwEm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5folly13checkedMallocEm.exit.i.i
  tail call void @_Z15io_buf_alloc_cbPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35, !noalias !3847
  br label %_ZN5folly5IOBufnwEm.exit.i

_ZN5folly5IOBufnwEm.exit.i:                       ; preds = %bb.c, %_ZN5folly13checkedMallocEm.exit.i.i
  %.0.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  invoke void @_ZN5folly5IOBufC1ENS0_8CreateOpEm(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i, i32 noundef 0, i64 noundef %1)
          to label %_ZSt11make_uniqueIN5folly5IOBufEJNS1_8CreateOpERmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.d, !noalias !3847

bb.d:                                             ; preds = %_ZN5folly5IOBufnwEm.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5folly5IOBuf24decrementStorageRefcountEPNS0_11HeapStorageE(ptr noundef nonnull %i.a) #35, !noalias !3847
  resume { ptr, i32 } %i.e

_ZSt11make_uniqueIN5folly5IOBufEJNS1_8CreateOpERmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZN5folly5IOBufnwEm.exit.i
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !3778, !alias.scope !3847
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly5IOBuf17takeOwnershipImplEPvmmmPFvS1_S1_ES1_bNS0_19TakeOwnershipOptionEPNSt3pmr15memory_resourceE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 2 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.folly::detail::ScopeGuardImpl.18", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !3779
  store ptr %5, ptr %i.b, align 8, !tbaa !3779
  store ptr %6, ptr %i.c, align 8, !tbaa !3779
  %i.f = zext i1 %7 to i8
  store i8 %i.f, ptr %i.d, align 1, !tbaa !3765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  store ptr null, ptr %i.e, align 8, !tbaa !3781
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  store i8 0, ptr %10, align 8, !tbaa !3783, !alias.scope !3850
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !3851
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.d, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !3787
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.a, ptr %.sroa.533.0..sroa_idx, align 8, !tbaa !3788
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !3788
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !3788
  %i.h = icmp slt i64 %2, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %9, null                     ; 2 uses
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #38 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.f, label %.noexc26

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
          to label %.noexc28 unwind label %bb.l

.noexc28:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %9, align 8, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef nonnull align 16 ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 112, i64 noundef 16)
          to label %.noexc27 unwind label %bb.l, !inline_history !110 ; 2 uses

.noexc27:                                         ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %9, ptr %i.q, align 8
  br label %.noexc26

.noexc26:                                         ; preds = %bb.e, %.noexc27
  %.0 = phi i64 [ 112, %.noexc27 ], [ 96, %bb.e ] ; 2 uses
  %storemerge.i = phi ptr [ %i.p, %.noexc27 ], [ %i.k, %bb.e ] ; 7 uses
  %.0.i = trunc nuw nsw i64 %.0 to i32
  %i.r = zext i1 %i.j to i8
  store i16 -23131, ptr %storemerge.i, align 4, !tbaa !3759
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 2
  store i8 2, ptr %i.s, align 2, !tbaa !3760
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 3
  store i8 %i.r, ptr %i.t, align 1, !tbaa !3761
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 4
  store i32 %.0.i, ptr %i.u, align 4, !tbaa !3762
  %.not17.i = icmp eq ptr @_Z15io_buf_alloc_cbPvm, null
  br i1 %.not17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc26
  call void @_Z15io_buf_alloc_cbPvm(ptr noundef nonnull %storemerge.i, i64 noundef %.0) #35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.noexc26
  store ptr %storemerge.i, ptr %i.e, align 8, !tbaa !3781
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 64
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !3779
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !3779
  invoke void @_ZN5folly5IOBuf10SharedInfoC1EPFvPvS2_ES2_NS1_11StorageTypeE(ptr noundef nonnull align 8 dereferenceable(31) %i.v, ptr noundef %i.w, ptr noundef %i.x, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !3781 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !3779 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %3
  call void @_ZN5folly5IOBufC1ENS0_19InternalConstructorEPNS0_10SharedInfoEPhmS4_m(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull %i.aa, ptr noundef %i.ab, i64 noundef %2, ptr noundef %i.ac, i64 noundef %4) #35
  store ptr %i.z, ptr %0, align 8, !tbaa !3778
  %11 = icmp ne ptr @_Z15io_buf_alloc_cbPvm, null
  %i.ad = load ptr, ptr %i.c, align 8
  %i.ae = icmp ne ptr %i.ad, null
  %or.cond.not19.not23 = select i1 %11, i1 %i.ae, i1 false
  %i.af = load ptr, ptr %i.b, align 8
  %i.ag = icmp eq ptr %i.af, null
  %or.cond3.not20 = select i1 %or.cond.not19.not23, i1 %i.ag, i1 false
  %i.ah = icmp eq i32 %8, 1
  %or.cond5 = and i1 %i.ah, %or.cond3.not20
  br i1 %or.cond5, label %bb.k, label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EED2Ev.exit"

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !3779
  call void @_Z15io_buf_alloc_cbPvm(ptr noundef %i.ai, i64 noundef %2) #35
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EED2Ev.exit"

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EED2Ev.exit": ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  ret void

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.c
  %.pn24 = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.ak, %bb.m ], [ %i.aj, %bb.l ]
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBuf17takeOwnershipImplEPvmmmPFvS3_S3_ES3_bNS2_19TakeOwnershipOptionEPNSt3pmr15memory_resourceEE3$_0Lb1EED2Ev"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  resume { ptr, i32 } %.pn24
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZZN5folly5IOBuf14createCombinedEmEN3$_08__invokeEPvS2_"(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #22 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly5IOBuf11createChainEmm(ptr dead_on_unwind noalias nofree writable sret(%"class.std::unique_ptr") align 8 captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %.sroa.speculated14 = tail call i64 @llvm.umin.i64(i64 %2, i64 %1)
  tail call void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, i64 noundef %.sroa.speculated14)
  %i.a = load ptr, ptr %0, align 8, !tbaa !3778   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3789 ; 2 uses
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
  %i.g = load ptr, ptr %3, align 8, !tbaa !3778   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !3789
  %i.j = add i64 %i.i, %.021                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3770 ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !3770 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.g, ptr %i.n, align 8, !tbaa !3769
  store ptr %i.m, ptr %i.k, align 8, !tbaa !3770
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.a, ptr %i.o, align 8, !tbaa !3769
  store ptr %i.l, ptr %i.e, align 8, !tbaa !3770
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.p = icmp ult i64 %i.j, %1
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !3852

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit10: ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #35, !inline_history !111
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 -8
  tail call void @_ZN5folly5IOBuf24decrementStorageRefcountEPNS0_11HeapStorageE(ptr noundef nonnull %i.r) #35, !inline_history !111
  resume { ptr, i32 } %i.q

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5folly5IOBuf13appendToChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3778   ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !3778
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3770 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3770 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.a, ptr %i.f, align 8, !tbaa !3769
  store ptr %i.e, ptr %i.b, align 8, !tbaa !3770
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %0, ptr %i.g, align 8, !tbaa !3769
  store ptr %i.c, ptr %i.d, align 8, !tbaa !3770
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
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !3763

.split.i:                                         ; preds = %bb.b
  %i.l = icmp sgt i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #39
  br i1 %i.m, label %bb.c, label %_ZN5folly14goodMallocSizeEm.exit

bb.c:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.n = tail call i64 @nallocx(i64 noundef %i.i, i32 noundef 0) #35 ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not.i, i64 %i.i, i64 %i.n
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %bb.a, %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.c
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.o, %bb.c ], [ %i.i, %_ZN5folly10canNallocxEv.exit.i ], [ %i.i, %.split.i ]
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
  store ptr %2, ptr %i.a, align 8, !tbaa !3779
  store ptr %6, ptr %i.b, align 8, !tbaa !3779
  store ptr %7, ptr %i.c, align 8, !tbaa !3779
  %i.e = zext i1 %8 to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !3765
  store i64 %5, ptr %0, align 8, !tbaa !3777
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %4
  store ptr %i.g, ptr %i.f, align 8, !tbaa !3774
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.h, align 8, !tbaa !3789
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.i, align 8, !tbaa !3773
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.j, align 8, !tbaa !3769
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %0, ptr %i.k, align 8, !tbaa !3770
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !3771
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store i8 0, ptr %9, align 8, !tbaa !3783, !alias.scope !3855
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.d, ptr %i.m, align 8, !tbaa !3787
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3788
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !3788
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !3788
  %i.n = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #41
          to label %bb.b unwind label %bb.c       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !3779
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !3779
  invoke void @_ZN5folly5IOBuf10SharedInfoC1EPFvPvS2_ES2_NS1_11StorageTypeE(ptr noundef nonnull align 8 dereferenceable(31) %i.n, ptr noundef %i.o, ptr noundef %i.p, i8 noundef zeroext 1)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpEPvmmmPFvS4_S4_ES4_bE3$_0Lb1EED2Ev.exit" unwind label %bb.d
end_hunk_0
