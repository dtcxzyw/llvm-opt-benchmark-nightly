inline.NumInlined: 545
inline.NumDeleted: 270
begin_hunk_0_@_ZN5folly5IOBuf17decrementRefcountEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !3804
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = atomicrmw sub ptr %i.g, i32 1 acq_rel, align 4
  %i.i = icmp ult i32 %i.h, 2
  br i1 %i.i, label %bb.d, label %_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !3804
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 29
  %i.l = load i8, ptr %i.k, align 1, !tbaa !25
  tail call void @_ZN5folly5IOBuf13freeExtBufferEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #35
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !3804 ; 5 uses
  switch i8 %i.l, label %_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit [
    i8 2, label %bb.g
    i8 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #37
  br label %_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -56
  %i.p = icmp eq ptr %i.o, %0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -62
  store atomic i8 1, ptr %i.q monotonic, align 1
  br label %_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 -64
  tail call void @_ZN5folly5IOBuf24decrementStorageRefcountEPNS0_11HeapStorageE(ptr noundef nonnull %i.r) #35
  br label %_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit

_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN5folly5IOBufaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.folly::IOBuf", align 8      ; 5 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZN5folly5IOBufC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.a = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5folly5IOBufaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2) #35 ; 0 uses
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5folly5IOBuf5emptyEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %0) local_unnamed_addr #26 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.c, %bb.c ]    ; 2 uses
  %i.a = load i64, ptr %.0, align 8, !tbaa !3810
  %.not = icmp eq i64 %i.a, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3802 ; 2 uses
  %.not7 = icmp eq ptr %i.c, %0
  br i1 %.not7, label %bb.d, label %bb.b, !llvm.loop !3876

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5folly5IOBuf18countChainElementsEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %0) local_unnamed_addr #26 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04 = phi i64 [ 1, %bb.a ], [ %i.a, %bb.b ]    ; 2 uses
  %.pn = phi ptr [ %0, %bb.a ], [ %.0, %bb.b ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !3802 ; 2 uses
  %.not = icmp eq ptr %.0, %0
  %i.a = add i64 %.04, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !3877

bb.c:                                             ; preds = %bb.b
  ret i64 %.04
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5folly5IOBuf22computeChainDataLengthEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %0) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !3810   ; 2 uses
  %.0.in6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.07 = load ptr, ptr %.0.in6, align 8, !tbaa !3802 ; 2 uses
  %.not8 = icmp eq ptr %.07, %0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.05.lcssa = phi i64 [ %i.a, %bb.a ], [ %i.c, %.lr.ph ]
  ret i64 %.05.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %.0, %.lr.ph ], [ %.07, %bb.a ] ; 2 uses
  %.059 = phi i64 [ %i.c, %.lr.ph ], [ %i.a, %bb.a ]
  %i.b = load i64, ptr %.010, align 8, !tbaa !3810
  %i.c = add i64 %i.b, %.059                      ; 2 uses
  %.0.in = getelementptr inbounds nuw i8, ptr %.010, i64 32
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !3802 ; 2 uses
  %.not = icmp eq ptr %.0, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3878
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5folly5IOBuf20computeChainCapacityEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %0) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3837 ; 2 uses
  %.0.in6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.07 = load ptr, ptr %.0.in6, align 8, !tbaa !3802 ; 2 uses
  %.not8 = icmp eq ptr %.07, %0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.05.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.e, %.lr.ph ]
  ret i64 %.05.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %.0, %.lr.ph ], [ %.07, %bb.a ] ; 2 uses
  %.059 = phi i64 [ %i.e, %.lr.ph ], [ %i.b, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !3837
  %i.e = add i64 %i.d, %.059                      ; 2 uses
  %.0.in = getelementptr inbounds nuw i8, ptr %.010, i64 32
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !3802 ; 2 uses
  %.not = icmp eq ptr %.0, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3879
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly5IOBuf9cloneImplEPNSt3pmr15memory_resourceE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %1, ptr noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3880)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3804, !noalias !3880 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = atomicrmw add ptr %i.c, i32 1 acq_rel, align 4, !noalias !3880 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = icmp ne ptr %2, null                     ; 3 uses
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #39, !noalias !3880 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.e, label %_ZN5folly13checkedMallocEm.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #15, !noalias !3880
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %2, align 8, !tbaa !31, !noalias !3880
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noalias !3880
  %i.j = tail call noundef nonnull align 16 ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 80, i64 noundef 16), !noalias !3880, !call_target !3883, !inline_history !3886 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %2, ptr %i.l, align 8, !noalias !3880
  br label %_ZN5folly13checkedMallocEm.exit.i

_ZN5folly13checkedMallocEm.exit.i:                ; preds = %bb.f, %bb.d
  %.0.i = phi i64 [ 80, %bb.f ], [ 64, %bb.d ]    ; 2 uses
  %storemerge.i.i = phi ptr [ %i.k, %bb.f ], [ %i.f, %bb.d ] ; 8 uses
  %.0.i.i = trunc nuw nsw i64 %.0.i to i32
  %i.m = zext i1 %i.e to i8                       ; 5 uses
  store i16 -23131, ptr %storemerge.i.i, align 4, !tbaa !3785, !noalias !3880
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 2
  store i8 1, ptr %i.n, align 2, !tbaa !3786, !noalias !3880
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 3
  store i8 %i.m, ptr %i.o, align 1, !tbaa !3787, !noalias !3880
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 4
  store i32 %.0.i.i, ptr %i.p, align 4, !tbaa !3788, !noalias !3880
  %.not17.i.i = icmp eq ptr @_Z15io_buf_alloc_cbPvm, null ; 3 uses
  br i1 %.not17.i.i, label %_ZNK5folly5IOBuf12cloneOneImplEPNSt3pmr15memory_resourceE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly13checkedMallocEm.exit.i
  tail call void @_Z15io_buf_alloc_cbPvm(ptr noundef nonnull %storemerge.i.i, i64 noundef %.0.i) #35, !noalias !3880
  br label %_ZNK5folly5IOBuf12cloneOneImplEPNSt3pmr15memory_resourceE.exit

_ZNK5folly5IOBuf12cloneOneImplEPNSt3pmr15memory_resourceE.exit: ; preds = %_ZN5folly13checkedMallocEm.exit.i, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8 ; 7 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !3804, !noalias !3880
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3806, !noalias !3880
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !3837, !noalias !3880
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3807, !noalias !3880
  %i.y = load i64, ptr %1, align 8, !tbaa !3810, !noalias !3880
  tail call void @_ZN5folly5IOBufC1ENS0_19InternalConstructorEPNS0_10SharedInfoEPhmS4_m(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef %i.r, ptr noundef %i.t, i64 noundef %i.v, ptr noundef %i.x, i64 noundef %i.y) #35, !noalias !3880
  store ptr %i.q, ptr %0, align 8, !tbaa !3818, !alias.scope !3880
  %.0.in22 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.023 = load ptr, ptr %.0.in22, align 8, !tbaa !3802 ; 5 uses
  %.not24 = icmp eq ptr %.023, %1
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5folly5IOBuf12cloneOneImplEPNSt3pmr15memory_resourceE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 48 ; 8 uses
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not17.i.i, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.noexc15.us.us
  %.025.us.us = phi ptr [ %.0.us.us, %.noexc15.us.us ], [ %.023, %.lr.ph.split.us ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.025.us.us, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3804, !noalias !3887 ; 2 uses
  %.not.i8.us.us = icmp eq ptr %i.ab, null
  br i1 %.not.i8.us.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.split.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = atomicrmw add ptr %i.ac, i32 1 acq_rel, align 4, !noalias !3887 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.us.split.us
  %i.ae = load ptr, ptr %2, align 8, !tbaa !31, !noalias !3887
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3887
  %i.ah = invoke noundef nonnull align 16 ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 80, i64 noundef 16)
          to label %.noexc15.us.us unwind label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20.loopexit.split.us.split.us, !inline_history !3890 ; 7 uses

.noexc15.us.us:                                   ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %2, ptr %i.aj, align 8, !noalias !3887
  store i16 -23131, ptr %i.ai, align 16, !tbaa !3785, !noalias !3887
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 18
  store i8 1, ptr %i.ak, align 2, !tbaa !3786, !noalias !3887
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 19
  store i8 %i.m, ptr %i.al, align 1, !tbaa !3787, !noalias !3887
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 80, ptr %i.am, align 4, !tbaa !3788, !noalias !3887
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !3804, !noalias !3887
  %i.ap = getelementptr inbounds nuw i8, ptr %.025.us.us, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !3806, !noalias !3887
  %i.ar = getelementptr inbounds nuw i8, ptr %.025.us.us, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !3837, !noalias !3887
  %i.at = getelementptr inbounds nuw i8, ptr %.025.us.us, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !3807, !noalias !3887
  %i.av = load i64, ptr %.025.us.us, align 8, !tbaa !3810, !noalias !3887
  tail call void @_ZN5folly5IOBufC1ENS0_19InternalConstructorEPNS0_10SharedInfoEPhmS4_m(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef %i.ao, ptr noundef %i.aq, i64 noundef %i.as, ptr noundef %i.au, i64 noundef %i.av) #35, !noalias !3887
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !3803 ; 2 uses
  %i.ay = load ptr, ptr %i.z, align 8, !tbaa !3803 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.an, ptr %i.az, align 8, !tbaa !3802
  store ptr %i.ay, ptr %i.aw, align 16, !tbaa !3803
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.q, ptr %i.ba, align 8, !tbaa !3802
  store ptr %i.ax, ptr %i.z, align 8, !tbaa !3803
  %.0.in.us.us = getelementptr inbounds nuw i8, ptr %.025.us.us, i64 32
  %.0.us.us = load ptr, ptr %.0.in.us.us, align 8, !tbaa !3802 ; 2 uses
  %.not.us.us = icmp eq ptr %.0.us.us, %1
  br i1 %.not.us.us, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !3891

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20.loopexit.split.us.split.us: ; preds = %bb.i
  %lpad.loopexit.us.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.noexc15.us
  %.025.us = phi ptr [ %.0.us, %.noexc15.us ], [ %.023, %.lr.ph.split.us ] ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.025.us, i64 48 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !3804, !noalias !3887 ; 2 uses
  %.not.i8.us = icmp eq ptr %i.bc, null
  br i1 %.not.i8.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.split
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = atomicrmw add ptr %i.bd, i32 1 acq_rel, align 4, !noalias !3887 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.us.split
  %i.bf = load ptr, ptr %2, align 8, !tbaa !31, !noalias !3887
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !3887
  %i.bi = invoke noundef nonnull align 16 ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 80, i64 noundef 16)
          to label %.noexc15.us unwind label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20.loopexit.split.us.split, !inline_history !3890 ; 7 uses

.noexc15.us:                                      ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %2, ptr %i.bk, align 8, !noalias !3887
  store i16 -23131, ptr %i.bj, align 16, !tbaa !3785, !noalias !3887
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 18
  store i8 1, ptr %i.bl, align 2, !tbaa !3786, !noalias !3887
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 19
  store i8 %i.m, ptr %i.bm, align 1, !tbaa !3787, !noalias !3887
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  store i32 80, ptr %i.bn, align 4, !tbaa !3788, !noalias !3887
  tail call void @_Z15io_buf_alloc_cbPvm(ptr noundef nonnull %i.bj, i64 noundef 80) #35, !noalias !3887
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !3804, !noalias !3887
  %i.bq = getelementptr inbounds nuw i8, ptr %.025.us, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !3806, !noalias !3887
  %i.bs = getelementptr inbounds nuw i8, ptr %.025.us, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !3837, !noalias !3887
  %i.bu = getelementptr inbounds nuw i8, ptr %.025.us, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !3807, !noalias !3887
  %i.bw = load i64, ptr %.025.us, align 8, !tbaa !3810, !noalias !3887
  tail call void @_ZN5folly5IOBufC1ENS0_19InternalConstructorEPNS0_10SharedInfoEPhmS4_m(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef %i.bp, ptr noundef %i.br, i64 noundef %i.bt, ptr noundef %i.bv, i64 noundef %i.bw) #35, !noalias !3887
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 64 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !3803 ; 2 uses
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !3803 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store ptr %i.bo, ptr %i.ca, align 8, !tbaa !3802
  store ptr %i.bz, ptr %i.bx, align 16, !tbaa !3803
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store ptr %i.q, ptr %i.cb, align 8, !tbaa !3802
  store ptr %i.by, ptr %i.z, align 8, !tbaa !3803
  %.0.in.us = getelementptr inbounds nuw i8, ptr %.025.us, i64 32
  %.0.us = load ptr, ptr %.0.in.us, align 8, !tbaa !3802 ; 2 uses
  %.not.us = icmp eq ptr %.0.us, %1
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !3891

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20.loopexit.split.us.split: ; preds = %bb.k
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not17.i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZN5folly13checkedMallocEm.exit.i10.us28
  %.025.us26 = phi ptr [ %.0.us31, %_ZN5folly13checkedMallocEm.exit.i10.us28 ], [ %.023, %.lr.ph.split ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.025.us26, i64 48 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !3804, !noalias !3887 ; 2 uses
  %.not.i8.us27 = icmp eq ptr %i.cd, null
  br i1 %.not.i8.us27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split.us
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = atomicrmw add ptr %i.ce, i32 1 acq_rel, align 4, !noalias !3887 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.split.us
  %i.cg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #39, !noalias !3887 ; 7 uses
  %.not.i.i9.us = icmp eq ptr %i.cg, null
  br i1 %.not.i.i9.us, label %.split.us, label %_ZN5folly13checkedMallocEm.exit.i10.us28

_ZN5folly13checkedMallocEm.exit.i10.us28:         ; preds = %bb.m
  store i16 -23131, ptr %i.cg, align 4, !tbaa !3785, !noalias !3887
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  store i8 1, ptr %i.ch, align 2, !tbaa !3786, !noalias !3887
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 3
  store i8 %i.m, ptr %i.ci, align 1, !tbaa !3787, !noalias !3887
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 64, ptr %i.cj, align 4, !tbaa !3788, !noalias !3887
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !3804, !noalias !3887
  %i.cm = getelementptr inbounds nuw i8, ptr %.025.us26, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !3806, !noalias !3887
  %i.co = getelementptr inbounds nuw i8, ptr %.025.us26, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !3837, !noalias !3887
  %i.cq = getelementptr inbounds nuw i8, ptr %.025.us26, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !3807, !noalias !3887
  %i.cs = load i64, ptr %.025.us26, align 8, !tbaa !3810, !noalias !3887
  tail call void @_ZN5folly5IOBufC1ENS0_19InternalConstructorEPNS0_10SharedInfoEPhmS4_m(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef %i.cl, ptr noundef %i.cn, i64 noundef %i.cp, ptr noundef %i.cr, i64 noundef %i.cs) #35, !noalias !3887
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !3803 ; 2 uses
  %i.cv = load ptr, ptr %i.z, align 8, !tbaa !3803 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store ptr %i.ck, ptr %i.cw, align 8, !tbaa !3802
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !3803
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr %i.q, ptr %i.cx, align 8, !tbaa !3802
  store ptr %i.cu, ptr %i.z, align 8, !tbaa !3803
  %.0.in.us30 = getelementptr inbounds nuw i8, ptr %.025.us26, i64 32
  %.0.us31 = load ptr, ptr %.0.in.us30, align 8, !tbaa !3802 ; 2 uses
  %.not.us32 = icmp eq ptr %.0.us31, %1
  br i1 %.not.us32, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !3891

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5folly13checkedMallocEm.exit.i10
  %.025 = phi ptr [ %.0, %_ZN5folly13checkedMallocEm.exit.i10 ], [ %.023, %.lr.ph.split ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.025, i64 48 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !3804, !noalias !3887 ; 2 uses
  %.not.i8 = icmp eq ptr %i.cz, null
  br i1 %.not.i8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = atomicrmw add ptr %i.da, i32 1 acq_rel, align 4, !noalias !3887 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.split
  %i.dc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #39, !noalias !3887 ; 8 uses
  %.not.i.i9 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i9, label %.split.us, label %_ZN5folly13checkedMallocEm.exit.i10

.split.us:                                        ; preds = %bb.o, %bb.m
  invoke void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #15
          to label %.noexc unwind label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20.loopexit.split-lp

.noexc:                                           ; preds = %.split.us
  unreachable

_ZN5folly13checkedMallocEm.exit.i10:              ; preds = %bb.o
  store i16 -23131, ptr %i.dc, align 4, !tbaa !3785, !noalias !3887
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i8 1, ptr %i.dd, align 2, !tbaa !3786, !noalias !3887
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 3
  store i8 %i.m, ptr %i.de, align 1, !tbaa !3787, !noalias !3887
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 64, ptr %i.df, align 4, !tbaa !3788, !noalias !3887
  tail call void @_Z15io_buf_alloc_cbPvm(ptr noundef nonnull %i.dc, i64 noundef 64) #35, !noalias !3887
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !3804, !noalias !3887
  %i.di = getelementptr inbounds nuw i8, ptr %.025, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !3806, !noalias !3887
  %i.dk = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !3837, !noalias !3887
  %i.dm = getelementptr inbounds nuw i8, ptr %.025, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !3807, !noalias !3887
  %i.do = load i64, ptr %.025, align 8, !tbaa !3810, !noalias !3887
  tail call void @_ZN5folly5IOBufC1ENS0_19InternalConstructorEPNS0_10SharedInfoEPhmS4_m(ptr noundef nonnull align 8 dereferenceable(56) %i.dg, ptr noundef %i.dh, ptr noundef %i.dj, i64 noundef %i.dl, ptr noundef %i.dn, i64 noundef %i.do) #35, !noalias !3887
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 48 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !3803 ; 2 uses
  %i.dr = load ptr, ptr %i.z, align 8, !tbaa !3803 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !3802
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !3803
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  store ptr %i.q, ptr %i.dt, align 8, !tbaa !3802
  store ptr %i.dq, ptr %i.z, align 8, !tbaa !3803
  %.0.in = getelementptr inbounds nuw i8, ptr %.025, i64 32
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !3802 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !3891

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20.loopexit.split-lp: ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20: ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20.loopexit.split.us.split.us, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20.loopexit.split.us.split, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20.loopexit.split-lp ], [ %lpad.loopexit.us, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20.loopexit.split.us.split ], [ %lpad.loopexit.us.us, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20.loopexit.split.us.split.us ]
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.q) #35, !inline_history !3839
  tail call void @_ZN5folly5IOBuf24decrementStorageRefcountEPNS0_11HeapStorageE(ptr noundef nonnull %storemerge.i.i) #35, !inline_history !3839
  resume { ptr, i32 } %lpad.phi

._crit_edge:                                      ; preds = %_ZN5folly13checkedMallocEm.exit.i10, %_ZN5folly13checkedMallocEm.exit.i10.us28, %.noexc15.us, %.noexc15.us.us, %_ZNK5folly5IOBuf12cloneOneImplEPNSt3pmr15memory_resourceE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly5IOBuf12cloneOneImplEPNSt3pmr15memory_resourceE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3804 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = atomicrmw add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = icmp ne ptr %2, null                     ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #39 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %_ZN5folly13checkedMallocEm.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #15
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %2, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 16 ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 80, i64 noundef 16), !call_target !3883, !inline_history !3836 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %2, ptr %i.l, align 8
  br label %_ZN5folly13checkedMallocEm.exit

_ZN5folly13checkedMallocEm.exit:                  ; preds = %bb.d, %bb.f
  %.0 = phi i64 [ 80, %bb.f ], [ 64, %bb.d ]      ; 2 uses
  %storemerge.i = phi ptr [ %i.k, %bb.f ], [ %i.f, %bb.d ] ; 6 uses
  %.0.i = trunc nuw nsw i64 %.0 to i32
  %i.m = zext i1 %i.e to i8
  store i16 -23131, ptr %storemerge.i, align 4, !tbaa !3785
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 2
  store i8 1, ptr %i.n, align 2, !tbaa !3786
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 3
  store i8 %i.m, ptr %i.o, align 1, !tbaa !3787
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 4
  store i32 %.0.i, ptr %i.p, align 4, !tbaa !3788
  %.not17.i = icmp eq ptr @_Z15io_buf_alloc_cbPvm, null
  br i1 %.not17.i, label %_ZN5folly5IOBuf15allocateStorageINS0_11HeapStorageEEESt4pairIPT_mEPNSt3pmr15memory_resourceEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly13checkedMallocEm.exit
  tail call void @_Z15io_buf_alloc_cbPvm(ptr noundef nonnull %storemerge.i, i64 noundef %.0) #35
  br label %_ZN5folly5IOBuf15allocateStorageINS0_11HeapStorageEEESt4pairIPT_mEPNSt3pmr15memory_resourceEm.exit

_ZN5folly5IOBuf15allocateStorageINS0_11HeapStorageEEESt4pairIPT_mEPNSt3pmr15memory_resourceEm.exit: ; preds = %_ZN5folly13checkedMallocEm.exit, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !3804
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3806
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !3837
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3807
  %i.y = load i64, ptr %1, align 8, !tbaa !3810
  tail call void @_ZN5folly5IOBufC1ENS0_19InternalConstructorEPNS0_10SharedInfoEPhmS4_m(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef %i.r, ptr noundef %i.t, i64 noundef %i.v, ptr noundef %i.x, i64 noundef %i.y) #35
  store ptr %i.q, ptr %0, align 8, !tbaa !3818
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly5IOBuf14cloneCoalescedEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::IOBuf", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3807, !noalias !3892
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3806, !noalias !3892
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3803, !noalias !3892 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3806, !noalias !3892
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !3837, !noalias !3892
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3807, !noalias !3892
  %i.q = load i64, ptr %i.i, align 8, !tbaa !3810, !noalias !3892
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZNK5folly5IOBuf41cloneCoalescedAsValueWithHeadroomTailroomEmm(ptr dead_on_unwind nonnull writable sret(%"class.folly::IOBuf") align 8 %2, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 noundef %i.g, i64 noundef %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !3895)
  %i.v = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #39, !noalias !3895 ; 7 uses
  %.not.i2.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i2.i.i, label %bb.b, label %_ZN5folly13checkedMallocEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #15
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZN5folly13checkedMallocEm.exit.i.i:              ; preds = %bb.a
  store i16 -23131, ptr %i.v, align 4, !tbaa !3785, !noalias !3895
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 1, ptr %i.w, align 2, !tbaa !3786, !noalias !3895
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  store i8 0, ptr %i.x, align 1, !tbaa !3787, !noalias !3895
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 64, ptr %i.y, align 4, !tbaa !3788, !noalias !3895
  %.not17.i.i.i = icmp eq ptr @_Z15io_buf_alloc_cbPvm, null
  br i1 %.not17.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5folly13checkedMallocEm.exit.i.i
  call void @_Z15io_buf_alloc_cbPvm(ptr noundef nonnull %i.v, i64 noundef 64) #35, !noalias !3895
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5folly13checkedMallocEm.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  call void @_ZN5folly5IOBufC1EOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %2) #35, !noalias !3895
  store ptr %i.z, ptr %0, align 8, !tbaa !3818, !alias.scope !3895
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void

bb.e:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly5IOBuf21cloneCoalescedAsValueEv(ptr dead_on_unwind noalias writable sret(%"class.folly::IOBuf") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3807
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3806
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3803 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3806
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !3837
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
end_hunk_0
