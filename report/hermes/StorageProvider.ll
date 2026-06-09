inline.NumInlined: 295
inline.NumDeleted: 173
begin_hunk_0_@_ZN6hermes2vm12_GLOBAL__N_111getMmapHintEv:bb.a
  %i.v = and i64 %i.u, 140737484161024
  %i.w = inttoptr i64 %i.v to ptr
  ret ptr %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i32, ptr } @_ZNK4llvh7ErrorOrIPvE8getErrorEv(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %0, align 8, !tbaa !3
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.31.0.copyload = load ptr, ptr %.sroa.31.0..sroa_idx, align 8, !tbaa !35
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.31.0 = phi ptr [ %.sroa.31.0.copyload, %bb.b ], [ %i.d, %bb.c ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %bb.b ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.31.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK6hermes2vm15StorageProvider18numSucceededAllocsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK6hermes2vm15StorageProvider15numFailedAllocsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK6hermes2vm15StorageProvider16numDeletedAllocsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK6hermes2vm15StorageProvider13numLiveAllocsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34
  %i.e = sub i64 %i.b, %i.d
  ret i64 %i.e
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes2vm15StorageProviderD2Ev(ptr nofree nonnull writeonly align 8 captures(none) dead_on_return(32) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm12_GLOBAL__N_125VMAllocateStorageProviderD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm12_GLOBAL__N_125VMAllocateStorageProvider14newStorageImplEPKc(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::ErrorOr") align 8 captures(none) initializes((0, 4)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.llvh::ErrorOr", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = tail call fastcc noundef ptr @_ZN6hermes2vm12_GLOBAL__N_111getMmapHintEv()
  call void @_ZN6hermes8oscompat19vm_allocate_alignedEmmPv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %3, i64 noundef 4194304, i64 noundef 4194304, ptr noundef %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %_ZNK4llvh7ErrorOrIPvE8getErrorEv.exit.i.i, label %bb.b

_ZNK4llvh7ErrorOrIPvE8getErrorEv.exit.i.i:        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = or i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %3, align 8, !tbaa !3
  %.sroa.31.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.31.0.copyload.i.i.i = load ptr, ptr %.sroa.31.0..sroa_idx.i.i.i, align 8, !tbaa !35
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.31.0.copyload.i.i.i, ptr %i.h, align 8
  br label %_ZN4llvh7ErrorOrIPvEC2EOS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  call void @_ZN6hermes8oscompat7vm_nameEPvmPKc(ptr noundef %i.i, i64 noundef 4194304, ptr noundef %2) #18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.j, align 8
  store ptr %i.i, ptr %0, align 8, !tbaa !28
  br label %_ZN4llvh7ErrorOrIPvEC2EOS2_.exit

_ZN4llvh7ErrorOrIPvEC2EOS2_.exit:                 ; preds = %_ZNK4llvh7ErrorOrIPvE8getErrorEv.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm12_GLOBAL__N_125VMAllocateStorageProvider17deleteStorageImplEPv(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes8oscompat15vm_free_alignedEPvm(ptr noundef nonnull %1, i64 noundef 4194304) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN6hermes8oscompat7vm_nameEPvmPKc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN6hermes8oscompat15vm_free_alignedEPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm12_GLOBAL__N_121MallocStorageProviderD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  tail call void @_ZdlPv(ptr noundef %i.b) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm12_GLOBAL__N_121MallocStorageProviderD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  tail call void @_ZdlPv(ptr noundef %i.b) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm12_GLOBAL__N_121MallocStorageProvider14newStorageImplEPKc(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::ErrorOr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree readnone captures(none) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef 8388608) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 4194303
  %i.e = and i64 %i.d, -4194304
  %i.f = inttoptr i64 %i.e to ptr
  store ptr %i.f, ptr %i.a, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E16FindAndConstructERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.b, ptr %i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.j, align 8
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !28
  store ptr %i.m, ptr %0, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm12_GLOBAL__N_121MallocStorageProvider17deleteStorageImplEPv(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !28
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5eraseERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E16FindAndConstructERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  call void @free(ptr noundef %i.e) #18
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5eraseERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = lshr i32 %i.l, 9
  %i.o = xor i32 %i.m, %i.n
  %i.p = add i32 %i.h, -1                         ; 2 uses
  %.02944.i.i.i = and i32 %i.o, %i.p              ; 2 uses
  %i.q = zext nneg i32 %.02944.i.i.i to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %i.t = icmp eq ptr %i.j, %i.s
  br i1 %i.t, label %.loopexit.i, label %.lr.ph.i.i.i, !prof !49

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.u = phi ptr [ %i.aa, %bb.d ], [ %i.s, %bb.c ]
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.d ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.v = icmp eq ptr %i.u, inttoptr (i64 -4 to ptr)
  br i1 %i.v, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5eraseERKS2_.exit, label %bb.d, !prof !50

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.w = add i32 %.02746.i.i.i, 1
  %i.x = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.x, %i.p                ; 2 uses
  %i.y = zext i32 %.029.i.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %i.ab = icmp eq ptr %i.j, %i.aa
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph.i.i.i, !prof !51, !llvm.loop !52

.loopexit.i:                                      ; preds = %bb.d, %bb.c
  %.sink.i.i.ph.i = phi ptr [ %i.r, %bb.c ], [ %i.z, %bb.d ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.sink.i.i.ph.i, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load <2 x i32>, ptr %i.ac, align 8, !tbaa !3
  %i.ae = add <2 x i32> %i.ad, <i32 -1, i32 1>
  store <2 x i32> %i.ae, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5eraseERKS2_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5eraseERKS2_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

declare noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E16FindAndConstructERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !48   ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !28     ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28   ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !49

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -4 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !50

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !51, !llvm.loop !52

_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !55 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !50

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !56
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !50

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPvS1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !55
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !55
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !28
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -4 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E16InsertIntoBucketIRKS2_JEEEPS7_SD_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !56
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !56
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E16InsertIntoBucketIRKS2_JEEEPS7_SD_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E16InsertIntoBucketIRKS2_JEEEPS7_SD_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %1, align 8, !tbaa !28
  store ptr %i.av, ptr %i.an, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E16InsertIntoBucketIRKS2_JEEEPS7_SD_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E16InsertIntoBucketIRKS2_JEEEPS7_SD_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !28     ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.c, -1                         ; 2 uses
  %.02944.i = and i32 %i.j, %i.k                  ; 2 uses
  %i.l = zext nneg i32 %.02944.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = icmp eq ptr %i.e, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_.exit, label %.lr.ph.i, !prof !49

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.p = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %i.y, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %.02947.i = phi i32 [ %.029.i, %bb.d ], [ %.02944.i, %bb.b ]
  %.02746.i = phi i32 [ %i.v, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.r = icmp eq ptr %i.p, inttoptr (i64 -4 to ptr)
  br i1 %i.r, label %bb.c, label %bb.d, !prof !50

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.03245.i, null
  %i.s = select i1 %.not.i, ptr %i.q, ptr %.03245.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  %i.u = icmp eq ptr %.03245.i, null
  %or.cond.not.i = select i1 %i.t, i1 %i.u, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.q, ptr %.03245.i
  %i.v = add i32 %.02746.i, 1
  %i.w = add i32 %.02746.i, %.02947.i
  %.029.i = and i32 %i.w, %i.k                    ; 2 uses
  %i.x = zext i32 %.029.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28   ; 2 uses
  %i.aa = icmp eq ptr %i.e, %i.z
  br i1 %i.aa, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_.exit, label %.lr.ph.i, !prof !51, !llvm.loop !52

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.s, %bb.c ], [ null, %bb.a ], [ %i.m, %bb.b ], [ %i.y, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !54
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPvS1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
_ZN4llvh8DenseMapIPvS1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !45     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !48
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 7 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !45
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPvS1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !56
  %i.w = load i32, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -4 to ptr), ptr %.07.i.prol, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !57

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -4 to ptr), ptr %.07.i, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -4 to ptr), ptr %i.ae, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -4 to ptr), ptr %i.af, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -4 to ptr), ptr %i.ag, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -4 to ptr), ptr %i.ah, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -4 to ptr), ptr %i.ai, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -4 to ptr), ptr %i.aj, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -4 to ptr), ptr %i.ak, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !59

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPvS1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !56
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !48  ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp ne i32 %i.aq, 0               ; 2 uses
  br i1 %.not6.i.i, label %.lr.ph.i.i.preheader, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E9initEmptyEv.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -4 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !60

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -4 to ptr), ptr %.07.i.i, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -4 to ptr), ptr %i.ay, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -4 to ptr), ptr %i.az, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -4 to ptr), ptr %i.ba, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -4 to ptr), ptr %i.bb, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -4 to ptr), ptr %i.bc, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -4 to ptr), ptr %i.bd, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -4 to ptr), ptr %i.be, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !59

_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E18moveFromOldBucketsEPS7_SA_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E9initEmptyEv.exit.i
  %i.bg = add i32 %i.aq, -1                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i6
  %i.bh = phi i32 [ 0, %.lr.ph.i6 ], [ %i.ci, %bb.g ] ; 3 uses
  %.020.i = phi ptr [ %i.c, %.lr.ph.i6 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.bi = load ptr, ptr %.020.i, align 8, !tbaa !28 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bi to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.d [
    i64 -4, label %bb.g
    i64 -8, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.bj = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  tail call void @llvm.assume(i1 %.not6.i.i)
  %i.bk = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bl = lshr i32 %i.bk, 4
  %i.bm = lshr i32 %i.bk, 9
  %i.bn = xor i32 %i.bl, %i.bm
  %.02944.i.i.i = and i32 %i.bn, %i.bg            ; 2 uses
  %i.bo = zext nneg i32 %.02944.i.i.i to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bo ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !28 ; 2 uses
  %i.br = icmp eq ptr %i.bi, %i.bq
  br i1 %i.br, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit.i, label %.lr.ph.i.i.i, !prof !49

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.f
  %i.bs = phi ptr [ %i.cc, %bb.f ], [ %i.bq, %bb.d ] ; 2 uses
  %i.bt = phi ptr [ %i.cb, %bb.f ], [ %i.bp, %bb.d ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.f ], [ %.02944.i.i.i, %bb.d ]
  %.02746.i.i.i = phi i32 [ %i.by, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.f ], [ null, %bb.d ] ; 4 uses
  %i.bu = icmp eq ptr %i.bs, inttoptr (i64 -4 to ptr)
  br i1 %i.bu, label %bb.e, label %bb.f, !prof !50

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bv = select i1 %.not.i.i.i, ptr %i.bt, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bw = icmp eq ptr %i.bs, inttoptr (i64 -8 to ptr)
  %i.bx = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bw, i1 %i.bx, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bt, ptr %.03245.i.i.i
  %i.by = add i32 %.02746.i.i.i, 1
  %i.bz = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.bz, %i.bg              ; 2 uses
  %i.ca = zext i32 %.029.i.i.i to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.ca ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !28 ; 2 uses
  %i.cd = icmp eq ptr %i.bi, %i.cc
  br i1 %i.cd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit.i, label %.lr.ph.i.i.i, !prof !51, !llvm.loop !52

_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i.i.i = phi ptr [ %i.bv, %bb.e ], [ %i.bp, %bb.d ], [ %i.cb, %bb.f ] ; 2 uses
  store ptr %i.bi, ptr %.sink.i.i.i, align 8, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !28
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !28
  %i.ch = add i32 %i.bh, 1                        ; 2 uses
  store i32 %i.ch, ptr %i.ao, align 8, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit.i, %bb.c, %bb.c
  %i.ci = phi i32 [ %i.bh, %bb.c ], [ %i.bh, %bb.c ], [ %i.ch, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.cj, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E18moveFromOldBucketsEPS7_SA_.exit, label %bb.c, !llvm.loop !61

_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E18moveFromOldBucketsEPS7_SA_.exit: ; preds = %bb.g, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #18
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPvS2_NS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E18moveFromOldBucketsEPS7_SA_.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #11

declare void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #5

declare void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #5

declare void @_ZN6hermes8oscompat18vm_reserve_alignedEmmPv(ptr dead_on_unwind writable sret(%"class.llvh::ErrorOr") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEN4llvh9StringRefESt10error_code(ptr, i64, i32, ptr) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm12_GLOBAL__N_127ContiguousVAStorageProviderD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  tail call void @_ZN6hermes8oscompat18vm_release_alignedEPvm(ptr noundef %i.b, i64 noundef %i.d) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvh11SmallVectorIPvLj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.f) #18
  br label %_ZN4llvh11SmallVectorIPvLj0EED2Ev.exit

_ZN4llvh11SmallVectorIPvLj0EED2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm12_GLOBAL__N_127ContiguousVAStorageProviderD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  tail call void @_ZN6hermes8oscompat18vm_release_alignedEPvm(ptr noundef %i.b, i64 noundef %i.d) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN6hermes2vm12_GLOBAL__N_127ContiguousVAStorageProviderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.f) #18
  br label %_ZN6hermes2vm12_GLOBAL__N_127ContiguousVAStorageProviderD2Ev.exit

_ZN6hermes2vm12_GLOBAL__N_127ContiguousVAStorageProviderD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm12_GLOBAL__N_127ContiguousVAStorageProvider14newStorageImplEPKc(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = add i32 %i.b, -1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !26
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = icmp ult ptr %i.k, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4194304
  store ptr %i.r, ptr %i.j, align 8, !tbaa !62
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = tail call { i32, ptr } @_ZN6hermes15make_error_codeENS_8OOMErrorE(i32 noundef 2) #18 ; 2 uses
  %i.t = extractvalue { i32, ptr } %i.s, 0
  %i.u = extractvalue { i32, ptr } %i.s, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = or i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 8
  store i32 %i.t, ptr %0, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !35
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.b
  %.0 = phi ptr [ %i.k, %bb.d ], [ %i.h, %bb.b ]  ; 2 uses
  tail call void @_ZN6hermes8oscompat9vm_commitEPvm(ptr dead_on_unwind writable sret(%"class.llvh::ErrorOr") align 8 %0, ptr noundef %.0, i64 noundef 4194304) #18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN6hermes8oscompat7vm_nameEPvmPKc(ptr noundef %.0, i64 noundef 4194304, ptr noundef %2) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm12_GLOBAL__N_127ContiguousVAStorageProvider17deleteStorageImplEPv(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6hermes8oscompat7vm_nameEPvmPKc(ptr noundef %1, i64 noundef 4194304, ptr noundef nonnull @.str.4) #18
  tail call void @_ZN6hermes8oscompat11vm_uncommitEPvm(ptr noundef %1, i64 noundef 4194304) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPvLb1EE9push_backERKS1_.exit, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.f, i64 noundef 0, i64 noundef 8) #18
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !26
  br label %_ZN4llvh23SmallVectorTemplateBaseIPvLb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseIPvLb1EE9push_backERKS1_.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = ptrtoint ptr %1 to i64
  store i64 %i.k, ptr %i.j, align 1
  %i.l = load i32, ptr %i.b, align 8, !tbaa !26
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.b, align 8, !tbaa !26
  ret void
}

declare void @_ZN6hermes8oscompat18vm_release_alignedEPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare { i32, ptr } @_ZN6hermes15make_error_codeENS_8OOMErrorE(i32 noundef) local_unnamed_addr #5

declare void @_ZN6hermes8oscompat9vm_commitEPvm(ptr dead_on_unwind writable sret(%"class.llvh::ErrorOr") align 8, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN6hermes8oscompat11vm_uncommitEPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZSt11make_uniqueIN6hermes2vm12_GLOBAL__N_127ContiguousVAStorageProviderEJRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!14 = distinct !{!14, !"_ZSt11make_uniqueIN6hermes2vm12_GLOBAL__N_127ContiguousVAStorageProviderEJRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!15 = !{!16, !18, i64 32}
!16 = !{!"_ZTSN6hermes2vm12_GLOBAL__N_127ContiguousVAStorageProviderE", !17, i64 0, !18, i64 32, !19, i64 40, !19, i64 48, !20, i64 56}
!17 = !{!"_ZTSN6hermes2vm15StorageProviderE", !18, i64 8, !18, i64 16, !18, i64 24}
!18 = !{!"long", !5, i64 0}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!"_ZTSN4llvh11SmallVectorIPvLj0EEE", !21, i64 0}
!21 = !{!"_ZTSN4llvh15SmallVectorImplIPvEE", !22, i64 0}
!22 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPvLb1EEE", !23, i64 0}
!23 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPvvEE", !24, i64 0}
!24 = !{!"_ZTSN4llvh15SmallVectorBaseE", !11, i64 0, !4, i64 8, !4, i64 12}
!25 = !{!24, !11, i64 0}
!26 = !{!24, !4, i64 8}
!27 = !{!24, !4, i64 12}
!28 = !{!11, !11, i64 0}
!29 = !{!16, !19, i64 40}
!30 = !{!16, !19, i64 48}
!31 = !{!32, !10, i64 0}
!32 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm15StorageProviderELb0EE", !10, i64 0}
!33 = !{!18, !18, i64 0}
!34 = !{!17, !18, i64 24}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSNSt3_V214error_categoryE", !11, i64 0}
!37 = !{!38, !19, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!39 = !{!40, !18, i64 8}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !18, i64 8, !5, i64 16}
!41 = !{!5, !5, i64 0}
!42 = !{!40, !19, i64 0}
!43 = !{!17, !18, i64 8}
!44 = !{!17, !18, i64 16}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSN4llvh8DenseMapIPvS1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEEE", !47, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!47 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPvS2_EE", !11, i64 0}
!48 = !{!46, !4, i64 16}
!49 = !{!"branch_weights", i32 1999, i32 1}
!50 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!51 = !{!"branch_weights", i32 1, i32 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!47, !47, i64 0}
!55 = !{!46, !4, i64 8}
!56 = !{!46, !4, i64 12}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !53}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !53}
!62 = !{!19, !19, i64 0}
end_hunk_0
