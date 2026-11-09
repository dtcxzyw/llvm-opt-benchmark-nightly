Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/CompilerDriver?download=true
inline.NumInlined: 6807
inline.NumDeleted: 3462
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN12_GLOBAL__N_121initializeDumpOptionsERN6hermes35CodeGenerationSettings_DumpSettingsERKN4llvh2cl3optIbLb0ENS4_6parserIbEEEERKNS4_4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS6_ISH_EEEE:bb.a
  br i1 %i.g, label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E20InsertIntoBucketImplIS2_EEPS8_RKS2_RKT_SC_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.h), !noalias !1762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !594, !noalias !1762
  br label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit.i

_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !1760
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %.160.val
  br i1 %.not.i, label %_ZN12_GLOBAL__N_123stringListOptToDenseSetERKN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS1_6parserIS8_EEEE.exit, label %bb.b

_ZN12_GLOBAL__N_123stringListOptToDenseSetERKN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS1_6parserIS8_EEEE.exit: ; preds = %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit.i, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 1
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEaSEOS4_.exit

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_123stringListOptToDenseSetERKN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS1_6parserIS8_EEEE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !670
  call void @_ZdlPv(ptr noundef %i.o) #26
  br label %_ZN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEaSEOS4_.exit

_ZN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEaSEOS4_.exit: ; preds = %_ZN12_GLOBAL__N_123stringListOptToDenseSetERKN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS1_6parserIS8_EEEE.exit, %bb.d
  store i32 1, ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !660
  %.06.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.ptr.i.i.i, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !469
  %.06.i.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.ptr.1.i.i.i, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i.1.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.1.i.i.i, align 8, !tbaa !469
  %.06.i.i.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.ptr.2.i.i.i, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.2.i.i.i, align 8, !tbaa !469
  %.06.i.i.ptr.3.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.ptr.3.i.i.i, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i.3.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.3.i.i.i, align 8, !tbaa !469
  call void @_ZN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE4swapERS8_(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.q = load i32, ptr %2, align 8
  %i.r = and i32 %i.q, 1
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit

bb.e:                                             ; preds = %_ZN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEaSEOS4_.exit
  %i.s = load ptr, ptr %.06.i.i.i.i.ptr.i.i, align 8, !tbaa !670
  call void @_ZdlPv(ptr noundef %i.s) #26
  br label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit

_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit: ; preds = %_ZN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEaSEOS4_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 !guid !1764 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i, i32 %i.g, i32 4     ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !468
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !469
  %i.j = tail call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #26
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.h, -1                         ; 2 uses
  %i.m = and i32 %i.l, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.044 = phi i32 [ 1, %bb.b ], [ %i.y, %bb.g ]   ; 2 uses
  %.042 = phi i32 [ %i.m, %bb.b ], [ %i.aa, %bb.g ] ; 2 uses
  %.039 = phi ptr [ null, %bb.b ], [ %spec.select, %bb.g ] ; 4 uses
  %i.n = zext i32 %.042 to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.n ; 9 uses
  %.sroa.010.0.copyload = load ptr, ptr %1, align 8, !tbaa !468 ; 3 uses
  %.sroa.211.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !469 ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !468 ; 3 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !469 ; 2 uses
  %magicptr.i = ptrtoint ptr %.sroa.08.0.copyload to i64
  switch i64 %magicptr.i, label %bb.d [
    i64 -1, label %.split
    i64 -2, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  ]

.split:                                           ; preds = %bb.c
  %i.p = icmp eq ptr %.sroa.010.0.copyload, inttoptr (i64 -1 to ptr)
  br i1 %i.p, label %.thread, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50, !prof !866

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %.sroa.211.0.copyload, %.sroa.29.0.copyload
  br i1 %i.q, label %bb.e, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50, !prof !867

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %.sroa.211.0.copyload, 0
  br i1 %i.r, label %.thread, label %.split52

.split52:                                         ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.010.0.copyload, ptr %.sroa.08.0.copyload, i64 %.sroa.211.0.copyload)
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %.thread, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50, !prof !866

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit: ; preds = %bb.c
  %i.t = icmp eq ptr %.sroa.010.0.copyload, inttoptr (i64 -2 to ptr)
  br i1 %i.t, label %.thread, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50, !prof !866

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50: ; preds = %bb.d, %.split52, %.split, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  %i.u = tail call noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_(ptr %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload, ptr nonnull inttoptr (i64 -1 to ptr), i64 0)
  br i1 %i.u, label %bb.f, label %bb.g, !prof !474

bb.f:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50
  %.not = icmp eq ptr %.039, null
  %i.v = select i1 %.not, ptr %i.o, ptr %.039
  br label %.thread

bb.g:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50
  %.sroa.02.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !468
  %.sroa.23.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !469
  %i.w = tail call noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_(ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, ptr nonnull inttoptr (i64 -2 to ptr), i64 0)
  %i.x = icmp eq ptr %.039, null
  %or.cond.not = select i1 %i.w, i1 %i.x, i1 false
  %spec.select = select i1 %or.cond.not, ptr %i.o, ptr %.039
  %i.y = add i32 %.044, 1
  %i.z = add i32 %.042, %.044
  %i.aa = and i32 %i.z, %i.l
  br label %bb.c, !llvm.loop !1763

.thread:                                          ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit, %.split, %.split52, %bb.e, %bb.a, %bb.f
  %.sink = phi ptr [ %i.v, %bb.f ], [ null, %bb.a ], [ %i.o, %bb.e ], [ %i.o, %.split52 ], [ %i.o, %.split ], [ %i.o, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit ]
  %.2 = phi i1 [ false, %bb.f ], [ false, %bb.a ], [ true, %bb.e ], [ true, %.split52 ], [ true, %.split ], [ true, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit ]
  store ptr %.sink, ptr %2, align 8, !tbaa !668
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E20InsertIntoBucketImplIS2_EEPS8_RKS2_RKT_SC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 !guid !1765 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %i.d = lshr i32 %i.c, 1                         ; 2 uses
  %i.e = and i32 %i.c, 1
  %.not.i.i = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i, i32 %i.g, i32 4     ; 5 uses
  %i.i = shl i32 %i.d, 2
  %i.j = add i32 %i.i, 4
  %i.k = mul i32 %i.h, 3
  %.not = icmp ult i32 %i.j, %i.k
  br i1 %.not, label %bb.c, label %bb.b, !prof !474

bb.b:                                             ; preds = %bb.a
  %i.l = shl i32 %i.h, 1
  tail call void @_ZN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.m = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !660
  %.neg = xor i32 %i.d, -1
  %.neg16 = add i32 %i.h, %.neg
  %i.q = sub i32 %.neg16, %i.p
  %i.r = lshr i32 %i.h, 3
  %.not12 = icmp ugt i32 %i.q, %i.r
  br i1 %.not12, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit, label %bb.d, !prof !474

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.s = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %3, %bb.c ], [ %i.t, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.u = load i32, ptr %0, align 8
  %i.v = add i32 %i.u, 2
  store i32 %i.v, ptr %0, align 8
  %.sroa.01.0.copyload = load ptr, ptr %.0, align 8, !tbaa !468
  %i.w = icmp eq ptr %.sroa.01.0.copyload, inttoptr (i64 -1 to ptr)
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !660
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !660
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !guid !1770 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.llvh::AlignedCharArrayUnion.497", align 8 ; 7 uses
  %i.c = icmp ugt i32 %1, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
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
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %.sroa.speculated, %bb.b ], [ %1, %bb.a ] ; 8 uses
  %i.r = load i32, ptr %0, align 8
  %i.s = and i32 %i.r, 1
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ult i32 %.0, 4
  br i1 %i.t, label %bb.p, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !468
  %switch = icmp ugt ptr %.sroa.08.0.copyload, inttoptr (i64 -3 to ptr)
  br i1 %switch, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.1, label %bb.g

.lr.ph.i.i.preheader:                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.3, %bb.j
  %.1.3 = phi ptr [ %i.bd, %bb.j ], [ %.1.2, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.3 ] ; 2 uses
  %i.v = load i32, ptr %0, align 8
  %i.w = and i32 %i.v, -2
  store i32 %i.w, ptr %0, align 8
  %i.x = zext i32 %.0 to i64
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #30 ; 2 uses
  store ptr %i.z, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0, ptr %i.aa, align 8
  %i.ab = load i32, ptr %0, align 8
  %i.ac = and i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ac, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ad, align 4, !tbaa !660
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0          ; 2 uses
  %i.ae = select i1 %.not.i.i.i.i.i, ptr %i.z, ptr %i.u ; 3 uses
  %i.af = select i1 %.not.i.i.i.i.i, i32 %.0, i32 4
  %i.ag = zext i32 %i.af to i64
  %.idx.i.i = shl nuw nsw i64 %i.ag, 4            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i.i
  %i.ai = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.aj, 1
  %xtraiter = and i64 %i.ak, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.prol ], [ %i.ae, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.prol, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.prol, align 8, !tbaa !469
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1766

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.ae, %.lr.ph.i.i.preheader ], [ %i.al, %.lr.ph.i.i.prol ]
  %i.am = icmp ult i64 %i.ai, 112
  br i1 %i.am, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 17 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !469
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.an, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.1, align 8, !tbaa !469
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ao, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.2, align 8, !tbaa !469
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ap, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.3, align 8, !tbaa !469
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aq, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 72
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.4, align 8, !tbaa !469
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ar, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 88
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.5, align 8, !tbaa !469
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.as, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.6, align 8, !tbaa !469
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 112
  store ptr inttoptr (i64 -1 to ptr), ptr %i.at, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 120
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.7, align 8, !tbaa !469
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 128 ; 2 uses
  %.not.i.i39.7 = icmp eq ptr %i.au, %i.ah
  br i1 %.not.i.i39.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !1767

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.not27.i = icmp eq ptr %2, %.1.3
  br i1 %.not27.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E18moveFromOldBucketsEPS8_SB_.exit, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i, %bb.f
  %.028.i = phi ptr [ %i.az, %bb.f ], [ %2, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i ] ; 4 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %.028.i, align 8, !tbaa !468
  %switch.i = icmp ugt ptr %.sroa.05.0.copyload.i, inttoptr (i64 -3 to ptr)
  br i1 %switch.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.av = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %.028.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %.028.i, i64 16, i1 false), !tbaa.struct !594
  %i.ax = load i32, ptr %0, align 8
  %i.ay = add i32 %i.ax, 2
  store i32 %i.ay, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.028.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.az, %.1.3
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E18moveFromOldBucketsEPS8_SB_.exit, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i, !llvm.loop !1768

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E18moveFromOldBucketsEPS8_SB_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.p

bb.g:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !594
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.1

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.1: ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit, %bb.g
  %.1 = phi ptr [ %i.ba, %bb.g ], [ %2, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit ] ; 3 uses
  %.035.ptr66.1 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.08.0.copyload.1 = load ptr, ptr %.035.ptr66.1, align 8, !tbaa !468
  %switch.1 = icmp ugt ptr %.sroa.08.0.copyload.1, inttoptr (i64 -3 to ptr)
  br i1 %switch.1, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.2, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1, ptr noundef nonnull align 8 dereferenceable(16) %.035.ptr66.1, i64 16, i1 false), !tbaa.struct !594
  %i.bb = getelementptr inbounds nuw i8, ptr %.1, i64 16
  br label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.2

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.2: ; preds = %bb.h, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.1
  %.1.1 = phi ptr [ %i.bb, %bb.h ], [ %.1, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.1 ] ; 3 uses
  %.035.ptr66.2 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.08.0.copyload.2 = load ptr, ptr %.035.ptr66.2, align 8, !tbaa !468
  %switch.2 = icmp ugt ptr %.sroa.08.0.copyload.2, inttoptr (i64 -3 to ptr)
  br i1 %switch.2, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.3, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.1, ptr noundef nonnull align 8 dereferenceable(16) %.035.ptr66.2, i64 16, i1 false), !tbaa.struct !594
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.1, i64 16
  br label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.3

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.3: ; preds = %bb.i, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.2
  %.1.2 = phi ptr [ %i.bc, %bb.i ], [ %.1.1, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.2 ] ; 3 uses
  %.035.ptr66.3 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.08.0.copyload.3 = load ptr, ptr %.035.ptr66.3, align 8, !tbaa !468
  %switch.3 = icmp ugt ptr %.sroa.08.0.copyload.3, inttoptr (i64 -3 to ptr)
  br i1 %switch.3, label %.lr.ph.i.i.preheader, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.2, ptr noundef nonnull align 8 dereferenceable(16) %.035.ptr66.3, i64 16, i1 false), !tbaa.struct !594
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.2, i64 16
  br label %.lr.ph.i.i.preheader

bb.k:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.be, align 8, !tbaa !668 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !29 ; 3 uses
  %i.bf = icmp ult i32 %.0, 5
  br i1 %i.bf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = zext i32 %.0 to i64
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #30 ; 2 uses
  store ptr %i.bi, ptr %i.be, align 8
  store i32 %.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.pre = load i32, ptr %0, align 8
  %i.bj = and i32 %.pre, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bk = phi i32 [ %.0, %bb.l ], [ %.sroa.6.0.copyload, %bb.k ]
  %i.bl = phi ptr [ %i.bi, %bb.l ], [ %.sroa.0.0.copyload, %bb.k ]
  %i.bm = phi i32 [ %i.bj, %bb.l ], [ 1, %bb.k ]  ; 2 uses
  %i.bn = zext i32 %.sroa.6.0.copyload to i64
  %.idx = shl nuw nsw i64 %i.bn, 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.idx
  store i32 %i.bm, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bp, align 4, !tbaa !660
  %.not.i.i.i.i.i46 = icmp eq i32 %i.bm, 0        ; 2 uses
  %i.bq = select i1 %.not.i.i.i.i.i46, ptr %i.bl, ptr %i.be ; 3 uses
  %i.br = select i1 %.not.i.i.i.i.i46, i32 %i.bk, i32 4 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %.idx.i.i47 = shl nuw nsw i64 %i.bs, 4          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i47
  %.not5.i.i48 = icmp eq i32 %i.br, 0
  br i1 %.not5.i.i48, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i53, label %.lr.ph.i.i49.preheader

.lr.ph.i.i49.preheader:                           ; preds = %bb.m
  %i.bu = add nsw i64 %.idx.i.i47, -16            ; 2 uses
  %i.bv = lshr exact i64 %i.bu, 4
  %i.bw = add nuw nsw i64 %i.bv, 1
  %xtraiter72 = and i64 %i.bw, 7                  ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.lr.ph.i.i49.prol.loopexit, label %.lr.ph.i.i49.prol

.lr.ph.i.i49.prol:                                ; preds = %.lr.ph.i.i49.preheader, %.lr.ph.i.i49.prol
  %.06.i.i50.prol = phi ptr [ %i.bx, %.lr.ph.i.i49.prol ], [ %i.bq, %.lr.ph.i.i49.preheader ] ; 3 uses
  %prol.iter74 = phi i64 [ %prol.iter74.next, %.lr.ph.i.i49.prol ], [ 0, %.lr.ph.i.i49.preheader ]
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i50.prol, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i51.prol = getelementptr inbounds nuw i8, ptr %.06.i.i50.prol, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i51.prol, align 8, !tbaa !469
  %i.bx = getelementptr inbounds nuw i8, ptr %.06.i.i50.prol, i64 16 ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %.lr.ph.i.i49.prol.loopexit, label %.lr.ph.i.i49.prol, !llvm.loop !1769

.lr.ph.i.i49.prol.loopexit:                       ; preds = %.lr.ph.i.i49.prol, %.lr.ph.i.i49.preheader
  %.06.i.i50.unr = phi ptr [ %i.bq, %.lr.ph.i.i49.preheader ], [ %i.bx, %.lr.ph.i.i49.prol ]
  %i.by = icmp ult i64 %i.bu, 112
  br i1 %i.by, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i53, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %.lr.ph.i.i49.prol.loopexit, %.lr.ph.i.i49
  %.06.i.i50 = phi ptr [ %i.cg, %.lr.ph.i.i49 ], [ %.06.i.i50.unr, %.lr.ph.i.i49.prol.loopexit ] ; 17 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i50, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i51 = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i51, align 8, !tbaa !469
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bz, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i51.1 = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i51.1, align 8, !tbaa !469
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 32
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ca, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i51.2 = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i51.2, align 8, !tbaa !469
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cb, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i51.3 = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 56
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i51.3, align 8, !tbaa !469
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 64
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cc, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i51.4 = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 72
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i51.4, align 8, !tbaa !469
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 80
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cd, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i51.5 = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 88
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i51.5, align 8, !tbaa !469
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ce, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i51.6 = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i51.6, align 8, !tbaa !469
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 112
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cf, align 8, !tbaa !468
  %.sroa.4.0..sroa_idx.i.i51.7 = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 120
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i51.7, align 8, !tbaa !469
  %i.cg = getelementptr inbounds nuw i8, ptr %.06.i.i50, i64 128 ; 2 uses
  %.not.i.i52.7 = icmp eq ptr %i.cg, %i.bt
  br i1 %.not.i.i52.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i53, label %.lr.ph.i.i49, !llvm.loop !1767

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i53: ; preds = %.lr.ph.i.i49.prol.loopexit, %.lr.ph.i.i49, %bb.m
  %.not27.i54 = icmp eq i32 %.sroa.6.0.copyload, 0
  br i1 %.not27.i54, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E18moveFromOldBucketsEPS8_SB_.exit60, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i55

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i55: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i53, %bb.o
  %.028.i56 = phi ptr [ %i.cl, %bb.o ], [ %.sroa.0.0.copyload, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i53 ] ; 4 uses
  %.sroa.05.0.copyload.i57 = load ptr, ptr %.028.i56, align 8, !tbaa !468
  %switch.i58 = icmp ugt ptr %.sroa.05.0.copyload.i57, inttoptr (i64 -3 to ptr)
  br i1 %switch.i58, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ch = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %.028.i56, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %.028.i56, i64 16, i1 false), !tbaa.struct !594
  %i.cj = load i32, ptr %0, align 8
  %i.ck = add i32 %i.cj, 2
  store i32 %i.ck, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i55
  %i.cl = getelementptr inbounds nuw i8, ptr %.028.i56, i64 16 ; 2 uses
  %.not.i59 = icmp eq ptr %i.cl, %i.bo
  br i1 %.not.i59, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E18moveFromOldBucketsEPS8_SB_.exit60, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i55, !llvm.loop !1768

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E18moveFromOldBucketsEPS8_SB_.exit60: ; preds = %bb.o, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E9initEmptyEv.exit.i53
  call void @_ZdlPv(ptr noundef %.sroa.0.0.copyload) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E18moveFromOldBucketsEPS8_SB_.exit60, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E18moveFromOldBucketsEPS8_SB_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE4swapERS8_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 comdat align 2 !guid !1771 {
bb.a:
  %2 = alloca %"class.llvh::StringRef", align 8   ; 32 uses
  %.sroa.0.i = alloca %"class.llvh::StringRef", align 8 ; 16 uses
  %3 = alloca %"struct.llvh::SmallDenseMap<llvh::StringRef, llvh::detail::DenseSetEmpty, 4, llvh::DenseMapInfo<StringRef>, llvh::detail::DenseSetPair<llvh::StringRef>>::LargeRep", align 8 ; 4 uses
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, -2
  %i.c = load i32, ptr %0, align 8
  %i.d = and i32 %i.c, -2
  %i.e = and i32 %i.a, 1
  %i.f = or disjoint i32 %i.d, %i.e
  store i32 %i.f, ptr %1, align 8
  %i.g = load i32, ptr %0, align 8
  %i.h = and i32 %i.g, 1
  %i.i = or disjoint i32 %i.h, %i.b
  store i32 %i.i, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !29
  %i.m = load i32, ptr %i.k, align 4, !tbaa !29
  store i32 %i.m, ptr %i.j, align 4, !tbaa !29
  store i32 %i.l, ptr %i.k, align 4, !tbaa !29
  %i.n = load i32, ptr %0, align 8                ; 2 uses
  %i.o = and i32 %i.n, 1
  %.not = icmp eq i32 %i.o, 0
  %i.p = load i32, ptr %1, align 8                ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not87 = icmp eq i32 %i.q, 0                   ; 2 uses
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not87, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit106, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %.sroa.032.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !468
  %.sroa.032.0.copyload.fr = freeze ptr %.sroa.032.0.copyload ; 2 uses
  %i.t = icmp eq ptr %.sroa.032.0.copyload.fr, inttoptr (i64 -1 to ptr)
  br i1 %i.t, label %.thread112, label %bb.c

bb.c:                                             ; preds = %.preheader
  %.sroa.042.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !468
  %.not132 = icmp eq ptr %.sroa.032.0.copyload.fr, inttoptr (i64 -2 to ptr)
  %i.u = icmp ugt ptr %.sroa.042.0.copyload, inttoptr (i64 -3 to ptr)
  %or.cond = select i1 %.not132, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %.thread113

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !594
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread113

.thread112:                                       ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !594
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread113

.thread113:                                       ; preds = %bb.e, %.thread112, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %.sroa.032.0.copyload.1 = load ptr, ptr %i.w, align 8, !tbaa !468
  %.sroa.032.0.copyload.1.fr = freeze ptr %.sroa.032.0.copyload.1 ; 2 uses
  %i.x = icmp eq ptr %.sroa.032.0.copyload.1.fr, inttoptr (i64 -1 to ptr)
  br i1 %i.x, label %.thread112.1, label %bb.f

bb.f:                                             ; preds = %.thread113
  %.sroa.042.0.copyload.1 = load ptr, ptr %i.v, align 8, !tbaa !468
  %.not133 = icmp eq ptr %.sroa.032.0.copyload.1.fr, inttoptr (i64 -2 to ptr)
  %i.y = icmp ugt ptr %.sroa.042.0.copyload.1, inttoptr (i64 -3 to ptr)
  %or.cond127 = select i1 %.not133, i1 true, i1 %i.y
  br i1 %or.cond127, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !594
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread113.1

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %.thread113.1

.thread112.1:                                     ; preds = %.thread113
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !594
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread113.1

.thread113.1:                                     ; preds = %.thread112.1, %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %.sroa.032.0.copyload.2 = load ptr, ptr %i.aa, align 8, !tbaa !468
  %.sroa.032.0.copyload.2.fr = freeze ptr %.sroa.032.0.copyload.2 ; 2 uses
  %i.ab = icmp eq ptr %.sroa.032.0.copyload.2.fr, inttoptr (i64 -1 to ptr)
  br i1 %i.ab, label %.thread112.2, label %bb.i

bb.i:                                             ; preds = %.thread113.1
  %.sroa.042.0.copyload.2 = load ptr, ptr %i.z, align 8, !tbaa !468
  %.not134 = icmp eq ptr %.sroa.032.0.copyload.2.fr, inttoptr (i64 -2 to ptr)
  %i.ac = icmp ugt ptr %.sroa.042.0.copyload.2, inttoptr (i64 -3 to ptr)
  %or.cond129 = select i1 %.not134, i1 true, i1 %i.ac
  br i1 %or.cond129, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !594
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread113.2

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %.thread113.2

.thread112.2:                                     ; preds = %.thread113.1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !594
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread113.2

.thread113.2:                                     ; preds = %.thread112.2, %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %.sroa.032.0.copyload.3 = load ptr, ptr %i.ae, align 8, !tbaa !468
  %.sroa.032.0.copyload.3.fr = freeze ptr %.sroa.032.0.copyload.3 ; 2 uses
  %i.af = icmp eq ptr %.sroa.032.0.copyload.3.fr, inttoptr (i64 -1 to ptr)
  br i1 %i.af, label %.thread112.3, label %bb.l

bb.l:                                             ; preds = %.thread113.2
  %.sroa.042.0.copyload.3 = load ptr, ptr %i.ad, align 8, !tbaa !468
  %.not135 = icmp eq ptr %.sroa.032.0.copyload.3.fr, inttoptr (i64 -2 to ptr)
  %i.ag = icmp ugt ptr %.sroa.042.0.copyload.3, inttoptr (i64 -3 to ptr)
  %or.cond131 = select i1 %.not135, i1 true, i1 %i.ag
  br i1 %or.cond131, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !594
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !594
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %.loopexit

.thread112.3:                                     ; preds = %.thread113.2
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !594
end_hunk_0
