Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/store-store-elimination-phase?download=true
inline.NumInlined: 42520
inline.NumDeleted: 14381
loop-unroll.NumCompletelyUnrolled: 193
loop-unroll.NumRuntimeUnrolled: 136
loop-unroll.NumUnrolled: 329
begin_hunk_0_@_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE8LogEntryEE4GrowEm:bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 3
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 1152921504606846975
  br i1 %i.q, label %bb.c, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEE8LogEntryEA_S9_EEPT_m.exit, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #25
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEE8LogEntryEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEE8LogEntryEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEE8LogEntryEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEE8LogEntryEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEE8LogEntryEA_S9_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable10map_to_keyENS2_7OpIndexEih(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %5 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry.571", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.579", align 8    ; 9 uses
  %7 = alloca %"struct.std::pair.687", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %i.c = call { ptr, ptr } @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE4findIS9_EENSO_8iteratorERSL_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %6) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 4 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = icmp eq ptr %i.d, null                   ; 2 uses
  %i.g = icmp eq ptr %i.d, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.d, align 1
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.b, %bb.a
  br i1 %i.g, label %bb.d, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorESR_.exit, !prof !40

bb.d:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #25
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorESR_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorESR_.exit
  %i.j = load i8, ptr %i.d, align 1
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorptEv.exit, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #25
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorptEv.exit: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr
  br label %bb.r

bb.g:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorESR_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i32 %1, ptr %5, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %2, ptr %.sroa.412.0..sroa_idx, align 4
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %3, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 -1, ptr %.sroa.7.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 -1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 -1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -40
  %.not.i.i.i = icmp eq ptr %i.s, %i.v
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.w = load ptr, ptr %i.r, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  store ptr %i.x, ptr %i.r, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.y, ptr noundef nonnull align 8 dereferenceable(36) %5)
  %.pre.i.i.i = load ptr, ptr %i.r, align 8, !noalias !145
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = phi ptr [ %.pre.i.i.i, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !145
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.k, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_25MaybeRedundantStoresTableENS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE6NewKeyES6_S5_.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !145
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 480
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_25MaybeRedundantStoresTableENS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE6NewKeyES6_S5_.exit

_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_25MaybeRedundantStoresTableENS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE6NewKeyES6_S5_.exit: ; preds = %bb.j, %bb.k
  %i.ai = phi ptr [ %i.ah, %bb.k ], [ %i.z, %bb.j ]
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.ak = load i64, ptr %i.b, align 8, !noalias !153
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_25MaybeRedundantStoresTableENS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE6NewKeyES6_S5_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noalias !156
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.an, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 131072, ptr %i.am, align 8, !noalias !156
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.aq = load <2 x i32>, ptr %i.ap, align 8, !noalias !156
  %i.ar = load <2 x i32>, ptr %6, align 8, !noalias !156
  %i.as = icmp eq <2 x i32> %i.aq, %i.ar
  %8 = freeze <2 x i1> %i.as
  %9 = bitcast <2 x i1> %8 to i2
  %10 = icmp eq i2 %9, -1
  br i1 %10, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !156
  store ptr %i.b, ptr %4, align 8, !noalias !156
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %6, ptr %i.at, align 8, !noalias !156
  %i.au = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %4, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiEEESC_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #25, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !156
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !156
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.au
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %.sink16.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.o ], [ %i.ao, %bb.m ], [ %i.ap, %bb.n ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.o ], [ 1, %bb.m ], [ 0, %bb.n ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sink16.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !156
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE22find_or_prepare_insertIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_25MaybeRedundantStoresTableENS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE6NewKeyES6_S5_.exit
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_largeIS9_EES3_INSO_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.687") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %6)
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !range !38, !alias.scope !157
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE22find_or_prepare_insertIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE22find_or_prepare_insertIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %bb.p, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %i.ax = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %bb.p ]
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.q, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE7emplaceIJRS9_RSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES3_INSO_8iteratorEbEDpOST_.exit

bb.q:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE22find_or_prepare_insertIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !157 ; 2 uses
  %i.az = load i64, ptr %6, align 8, !noalias !158
  store i64 %i.az, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  %i.bb = ptrtoint ptr %i.aj to i64
  store i64 %i.bb, ptr %i.ba, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE7emplaceIJRS9_RSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES3_INSO_8iteratorEbEDpOST_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE7emplaceIJRS9_RSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES3_INSO_8iteratorEbEDpOST_.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE22find_or_prepare_insertIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.r

bb.r:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE7emplaceIJRS9_RSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES3_INSO_8iteratorEbEDpOST_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorptEv.exit
  %.sroa.010.0 = phi ptr [ %i.n, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorptEv.exit ], [ %i.aj, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE7emplaceIJRS9_RSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES3_INSO_8iteratorEbEDpOST_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret ptr %.sroa.010.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE4findIS9_EENSO_8iteratorERSL_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_smallIS9_EENSO_8iteratorERSL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load <2 x i32>, ptr %i.e, align 8
  %i.g = load <2 x i32>, ptr %1, align 4
  %i.h = icmp eq <2 x i32> %i.f, %i.g
  %2 = freeze <2 x i1> %i.h
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i = select i1 %4, { ptr, ptr } %.fca.1.insert.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_smallIS9_EENSO_8iteratorERSL_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = shl i64 %i.k, 48
  %i.m = ashr exact i64 %i.l, 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4 ; 2 uses
  %i.o = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.p = xor i64 %i.m, %i.o
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw nsw i128 %i.q, 8779197792823184629 ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = xor i128 %i.s, %i.r
  %i.u = trunc i128 %i.t to i64
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.n, align 4 ; 2 uses
  %i.v = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.w = xor i64 %i.u, %i.v
  %i.x = zext i64 %i.w to i128
  %i.y = mul nuw nsw i128 %i.x, 8779197792823184629 ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64                 ; 2 uses
  %i.ac = lshr i64 %i.ab, 57
  %i.ad = trunc nuw nsw i64 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %i.ae, align 8 ; 2 uses
  %i.af = insertelement <16 x i8> poison, i8 %i.ad, i64 0
  %i.ag = shufflevector <16 x i8> %i.af, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8 = phi i64 [ %i.ab, %bb.d ], [ %i.bd, %bb.g ]
  %.sroa.13.0.i = phi i64 [ 0, %bb.d ], [ %i.bc, %bb.g ]
  %.sroa.6.0.i = and i64 %.pn.i8, %i.a            ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ah, i32 0, i32 3, i32 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  %i.aj = load <16 x i8>, ptr %i.ai, align 1      ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.ag, %i.aj
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %.not46.i = icmp eq i16 %i.al, 0
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.017.047.i = phi i16 [ %i.az, %bb.f ], [ %i.al, %bb.e ] ; 3 uses
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add i64 %.sroa.6.0.i, %i.an
  %i.ap = and i64 %i.ao, %i.a                     ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.ap ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %i.ar, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp eq i32 %i.au, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = select i1 %i.as, i1 %i.av, i1 false
  br i1 %i.aw, label %.thread33.i, label %bb.f, !prof !43

.thread33.i:                                      ; preds = %.lr.ph.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_largeIS9_EENSO_8iteratorERSL_m.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.ay = add i16 %.sroa.017.047.i, -1
  %i.az = and i16 %i.ay, %.sroa.017.047.i         ; 2 uses
  %.not.i = icmp eq i16 %i.az, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %i.ba = icmp eq <16 x i8> %i.aj, splat (i8 -128)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %.not44.i = icmp eq i16 %i.bb, 0
  br i1 %.not44.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_largeIS9_EENSO_8iteratorERSL_m.exit, !prof !40

bb.g:                                             ; preds = %._crit_edge.i
  %i.bc = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bd = add i64 %i.bc, %.sroa.6.0.i
  br label %bb.e, !llvm.loop !159

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_largeIS9_EENSO_8iteratorERSL_m.exit: ; preds = %._crit_edge.i, %.thread33.i
  %.sroa.0.4.ph.i = phi ptr [ %i.ax, %.thread33.i ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.aq, %.thread33.i ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_smallIS9_EENSO_8iteratorERSL_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_smallIS9_EENSO_8iteratorERSL_.exit: ; preds = %bb.c, %bb.b, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_largeIS9_EENSO_8iteratorERSL_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_largeIS9_EENSO_8iteratorERSL_m.exit ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i, %bb.c ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 12
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 40
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 40
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 461168601842738790
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.g, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.d, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %.not5.i.i.i = icmp ult i64 %i.aq, 12
  br i1 %.not5.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ao, align 8
  store ptr %i.ar, ptr %i.an, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_allocate_nodeEv.exit

bb.g:                                             ; preds = %bb.e, %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = icmp ult i64 %i.ax, 480
  br i1 %i.ay, label %bb.h, label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE8allocateEm.exit.i.i.i, !prof !40

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.as, i64 noundef 480) #25
  %.pre.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  br label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE8allocateEm.exit.i.i.i

_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE8allocateEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.az = phi i64 [ %.pre.i.i.i.i.i.i, %bb.h ], [ %i.aw, %bb.g ] ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = add i64 %i.az, 480
  store i64 %i.bb, ptr %i.av, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15AssertNotNullOpEJNS2_14ShadowyOpIndexENS0_4wasm9ValueTypeENS1_6TrapIdEEEENS2_7OpIndexEDpT0_:bb.a

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15AssertNotNullOpEEEvRKT_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 200 ; 2 uses
  %i.bg = lshr i64 %i.aw, 1
  %i.bh = add nuw nsw i64 %i.aw, 32
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.az, align 8
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bp)
  %.pre.i.i = load ptr, ptr %i.az, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15AssertNotNullOpEEEvRKT_.exit, %bb.d
  %i.bq = phi ptr [ %.pre.i.i, %bb.d ], [ %i.ba, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15AssertNotNullOpEEEvRKT_.exit ]
  %i.br = trunc i64 %i.i to i32
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aw
  store i32 %.sroa.0.0.copyload.i, ptr %i.bs, align 4
  ret i32 %i.br
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE32AssembleOutputGraphWasmTypeCheckERKNS2_15WasmTypeCheckOpE(ptr noundef nonnull align 8 dereferenceable(2968) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp ugt i16 %i.n, 1
  br i1 %i.o, label %_ZNK2v88internal8compiler10turboshaft15WasmTypeCheckOp3rttEv.exit, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_15OptionalOpIndexE.exit

_ZNK2v88internal8compiler10turboshaft15WasmTypeCheckOp3rttEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_7OpIndexE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i3 = load i32, ptr %i.p, align 4 ; 2 uses
  %.not.i.i4 = icmp eq i32 %.sroa.0.0.copyload.i.i3, -1
  br i1 %.not.i.i4, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_15OptionalOpIndexE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft15WasmTypeCheckOp3rttEv.exit
  %i.q = lshr i32 %.sroa.0.0.copyload.i.i3, 4
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_15OptionalOpIndexE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.r ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.x = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.x, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.y, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_15OptionalOpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_15OptionalOpIndexE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_7OpIndexE.exit, %_ZNK2v88internal8compiler10turboshaft15WasmTypeCheckOp3rttEv.exit, %bb.d, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i
  %.sroa.03.0.i.i = phi i32 [ -1, %_ZNK2v88internal8compiler10turboshaft15WasmTypeCheckOp3rttEv.exit ], [ %i.t, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ], [ -1, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_7OpIndexE.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.01.0.copyload.i = load i64, ptr %i.z, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.22.0.copyload.i = load i8, ptr %.sroa.22.0..sroa_idx.i, align 4
  %i.aa = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15WasmTypeCheckOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENS1_19WasmTypeCheckConfigEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %.sroa.014.0.i.i, i32 %.sroa.03.0.i.i, i64 %.sroa.01.0.copyload.i, i8 %.sroa.22.0.copyload.i)
  %i.ab = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_15WasmTypeCheckOpEEENS2_7OpIndexESN_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.aa)
  ret i32 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_15WasmTypeCheckOpEEENS2_7OpIndexESN_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !39, !align !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 4 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = tail call noundef i64 @_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE10hash_valueENS2_15HashingStrategyE(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i32 noundef 0)
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.l, i64 1) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %..i.i, %i.n                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.thread.i, %.lr.ph.i
  %.pre.pre = phi i64 [ %i.t, %.lr.ph.i ], [ %i.bb, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.thread.i ]
  %i.y = phi ptr [ %i.r, %.lr.ph.i ], [ %i.az, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.thread.i ] ; 2 uses
  %.02632.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.ay, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.thread.i ]
  %i.z = icmp eq i64 %.pre.pre, %..i.i
  br i1 %i.z, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.d, align 8, !nonnull !39, !align !41
  %.sroa.0.0.copyload.i = load i32, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = zext i32 %.sroa.0.0.copyload.i to i64
  %i.af = add i64 %i.ad, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr               ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = icmp eq i8 %i.ah, 18
  br i1 %i.ai, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.al = load i16, ptr %i.ak, align 2            ; 3 uses
  %i.am = zext i16 %i.al to i64
  %i.an = load i16, ptr %i.v, align 2
  %.idx.i.i.i.i = shl nuw nsw i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i16 %i.al, %i.an
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %.0711.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.as, %bb.g ], [ %i.w, %bb.f ] ; 2 uses
  %.0810.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0711.i.i.i.i.i.i.i.i.i.i, align 4
  %i.ap = load i32, ptr %.0810.i.i.i.i.i.i.i.i.i.i, align 4
  %i.aq = icmp eq i32 %i.ap, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aq, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0711.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !16

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.i: ; preds = %bb.g, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.au = load <2 x i32>, ptr %i.at, align 4
  %i.av = load <2 x i32>, ptr %i.x, align 4
  %i.aw = icmp eq <2 x i32> %i.au, %i.av
  %2 = freeze <2 x i1> %i.aw
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  br i1 %4, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_15WasmTypeCheckOpEEEPNSK_5EntryERKT_Pm.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.i, %bb.e, %bb.d, %bb.c
  %i.ax = add i64 %.02632.i, 1
  %i.ay = and i64 %i.ax, %i.n                     ; 2 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.loopexit, label %bb.c, !llvm.loop !772

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.thread.i, %bb.b
  %.ph = phi ptr [ %i.r, %bb.b ], [ %i.az, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.thread.i ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3312
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 52
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bm = load i32, ptr %i.bl, align 4
  store i32 %1, ptr %.ph, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  store i32 %.sroa.0.0.copyload.i16, ptr %.sroa.4.0..sroa_idx, align 4
  store i64 %..i.i, ptr %i.bd, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 16
  store ptr %i.bk, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 24
  store i32 %i.bm, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bn = load ptr, ptr %i.bh, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -8
  store ptr %.ph, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8
  br label %bb.k

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_15WasmTypeCheckOpEEEPNSK_5EntryERKT_Pm.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15WasmTypeCheckOpEE12EqualsForGVNERKS5_.exit.i
  %i.bs = load ptr, ptr %i.d, align 8, !nonnull !39, !align !41 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !775 ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !775 ; 4 uses
  %i.by = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.bz = sub i64 %i.bv, %i.by                    ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = lshr i32 %i.ca, 4
  %i.ce = add nsw i32 %i.cd, -1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = zext i16 %i.ch to i64                   ; 2 uses
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = sub i64 %i.bz, %i.cj
  %i.cl = and i64 %i.ck, 4294967295
  %i.cm = add i64 %i.cl, %i.by
  %i.cn = inttoptr i64 %i.cm to ptr               ; 3 uses
  %i.co = load i8, ptr %i.cn, align 4
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cr ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.cu = load i16, ptr %i.ct, align 2            ; 2 uses
  %i.cv = zext i16 %i.cu to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.cv, 2          ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx.i.i.i
  %.not10.i.i.i = icmp eq i16 %i.cu, 0
  br i1 %.not10.i.i.i, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_15WasmTypeCheckOpEEEPNSK_5EntryERKT_Pm.exit
  %i.cx = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.cy = and i64 %i.cx, 4
  %lcmp.mod.not.not = icmp eq i64 %i.cy, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %.sroa.01.0.copyload.i.i.i.prol = load i32, ptr %i.cs, align 4
  %i.cz = ptrtoint ptr %i.bx to i64
  %i.da = zext i32 %.sroa.01.0.copyload.i.i.i.prol to i64
  %i.db = add i64 %i.da, %i.cz
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = add i8 %i.de, -1                        ; 2 uses
  %spec.select.i.i.i.i.prol = icmp ult i8 %i.df, -2
  br i1 %spec.select.i.i.i.i.prol, label %bb.h, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol, !prof !43

bb.h:                                             ; preds = %.lr.ph.i.i.i.prol
  store i8 %i.df, ptr %i.dd, align 1
  %.pre.i.i.i.prol = load ptr, ptr %i.bw, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol: ; preds = %bb.h, %.lr.ph.i.i.i.prol
  %i.dg = phi ptr [ %i.bx, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i.prol, %bb.h ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.dg, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol ]
  %.unr = phi ptr [ %i.bx, %.lr.ph.i.i.i.preheader ], [ %i.dg, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol ]
  %.011.i.i.i.unr = phi ptr [ %i.cs, %.lr.ph.i.i.i.preheader ], [ %i.dh, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol ]
  %i.di = icmp eq i64 %i.cx, 0
  br i1 %i.di, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1
  %i.dj = phi ptr [ %i.ea, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1 ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.011.i.i.i = phi ptr [ %i.eb, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1 ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %.011.i.i.i, align 4
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = zext i32 %.sroa.01.0.copyload.i.i.i to i64
  %i.dm = add i64 %i.dl, %i.dk
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = add i8 %i.dp, -1                        ; 2 uses
  %spec.select.i.i.i.i = icmp ult i8 %i.dq, -2
  br i1 %spec.select.i.i.i.i, label %bb.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i, !prof !43

bb.i:                                             ; preds = %.lr.ph.i.i.i
  store i8 %i.dq, ptr %i.do, align 1
  %.pre.i.i.i = load ptr, ptr %i.bw, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i
  %i.dr = phi ptr [ %i.dj, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %bb.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.sroa.01.0.copyload.i.i.i.1 = load i32, ptr %i.ds, align 4
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = zext i32 %.sroa.01.0.copyload.i.i.i.1 to i64
  %i.dv = add i64 %i.du, %i.dt
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = add i8 %i.dy, -1                        ; 2 uses
  %spec.select.i.i.i.i.1 = icmp ult i8 %i.dz, -2
  br i1 %spec.select.i.i.i.i.1, label %bb.j, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1, !prof !43

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i
  store i8 %i.dz, ptr %i.dx, align 1
  %.pre.i.i.i.1 = load ptr, ptr %i.bw, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1: ; preds = %bb.j, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i
  %i.ea = phi ptr [ %i.dr, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i ], [ %.pre.i.i.i.1, %bb.j ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.eb, %i.cw
  br i1 %.not.i.i.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i, label %.lr.ph.i.i.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ea, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1 ]
  %.pre.i.i = load ptr, ptr %i.cb, align 8
  %.pre8.i.i = load ptr, ptr %i.bt, align 8       ; 2 uses
  %.pre9.i.i = ptrtoint ptr %.pre8.i.i to i64
  %.pre10.i.i = ptrtoint ptr %.lcssa to i64
  %.pre12.i.i = sub i64 %.pre9.i.i, %.pre10.i.i
  %.pre14.i.i = trunc i64 %.pre12.i.i to i32
  %.pre16.i.i = lshr i32 %.pre14.i.i, 4
  %.pre18.i.i = add nsw i32 %.pre16.i.i, -1
  %.pre20.i.i = zext i32 %.pre18.i.i to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %.pre20.i.i
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  %.pre1.i = zext i16 %.pre.i to i64
  br label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_15WasmTypeCheckOpEEEPNSK_5EntryERKT_Pm.exit, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i
  %.pre-phi.i = phi i64 [ %i.ci, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_15WasmTypeCheckOpEEEPNSK_5EntryERKT_Pm.exit ], [ %.pre1.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i ]
  %i.ec = phi ptr [ %i.bu, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_15WasmTypeCheckOpEEEPNSK_5EntryERKT_Pm.exit ], [ %.pre8.i.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i ]
  %i.ed = sub nsw i64 0, %.pre-phi.i
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ed
  store ptr %i.ee, ptr %i.bt, align 8
  %.sroa.015.0.copyload = load i32, ptr %i.y, align 8
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit, %bb.a
  %.sroa.015.2 = phi i32 [ %1, %bb.a ], [ %1, %.loopexit ], [ %.sroa.015.0.copyload, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit ]
  ret i32 %.sroa.015.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15WasmTypeCheckOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENS1_19WasmTypeCheckConfigEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i64 %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_14WasmTypeCastOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENS1_19WasmTypeCheckConfigEEEENS2_7OpIndexEDpT0_:bb.a

.prol.loopexit:                                   ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, %.lr.ph.i
  %.unr = phi ptr [ %.pre12.i, %.lr.ph.i ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol ]
  %.011.i.unr = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.ay, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol ]
  %i.az = icmp eq i64 %i.ao, 0
  br i1 %i.az, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14WasmTypeCastOpEEEvRKT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1
  %i.ba = phi ptr [ %i.br, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %.011.i = phi ptr [ %i.bs, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1 ], [ %.011.i.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = zext i32 %.sroa.01.0.copyload.i to i64
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.bg, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.e, !prof !40

bb.e:                                             ; preds = %.lr.ph.i.new
  %i.bh = add nuw i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.e, %.lr.ph.i.new
  %i.bi = phi ptr [ %i.ba, %.lr.ph.i.new ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.bj, align 4
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1             ; 2 uses
  %.not.i.i.1 = icmp eq i8 %i.bp, -1
  br i1 %.not.i.i.1, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, label %bb.f, !prof !40

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bq = add nuw i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 1
  %.pre.i.1 = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1: ; preds = %bb.f, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.br = phi ptr [ %i.bi, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ], [ %.pre.i.1, %bb.f ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.bs, %i.an
  br i1 %.not.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14WasmTypeCastOpEEEvRKT_.exit, label %.lr.ph.i.new

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14WasmTypeCastOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, %.prol.loopexit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3332
  %.sroa.0.0.copyload.i17 = load i32, ptr %i.bt, align 4
  %i.bu = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 4 uses
  %i.bv = lshr i64 %i.i, 4
  %i.bw = and i64 %i.bv, 268435455                ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 216
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 208 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 2
  %.not.i.i18 = icmp ugt i64 %i.ce, %i.bw
  br i1 %.not.i.i18, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.g, !prof !43

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14WasmTypeCastOpEEEvRKT_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 200 ; 2 uses
  %i.cg = lshr i64 %i.bw, 1
  %i.ch = add nuw nsw i64 %i.bw, 32
  %i.ci = add nuw nsw i64 %i.ch, %i.cg
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 224
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load ptr, ptr %i.bz, align 8
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef %i.cp)
  %.pre.i.i = load ptr, ptr %i.bz, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14WasmTypeCastOpEEEvRKT_.exit, %bb.g
  %i.cq = phi ptr [ %.pre.i.i, %bb.g ], [ %i.ca, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14WasmTypeCastOpEEEvRKT_.exit ]
  %i.cr = trunc i64 %i.i to i32
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.bw
  store i32 %.sroa.0.0.copyload.i17, ptr %i.cs, align 4
  ret i32 %i.cr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_14WasmTypeCastOpEEEPNSK_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_14WasmTypeCastOpEEEmRKT0_b.exit:
  %i.a = tail call noundef i64 @_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE10hash_valueENS2_15HashingStrategyE(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = xor i32 %i.c, -1
  %i.e = shl i32 %i.c, 15
  %i.f = add i32 %i.e, %i.d                       ; 2 uses
  %i.g = lshr i32 %i.f, 12
  %i.h = xor i32 %i.g, %i.f
  %i.i = mul i32 %i.h, 5                          ; 2 uses
  %i.j = lshr i32 %i.i, 4
  %i.k = xor i32 %i.j, %i.i
  %i.l = mul i32 %i.k, 2057                       ; 2 uses
  %i.m = lshr i32 %i.l, 16
  %i.n = xor i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = mul i64 %i.a, 17
  %i.q = add i64 %i.p, %i.o
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.q, i64 1) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = and i64 %..i, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.t ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_14WasmTypeCastOpEEEmRKT0_b.exit
  %i.aa = getelementptr inbounds i8, ptr %0, i64 -8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_14WasmTypeCastOpEEEmRKT0_b.exit
  %.lcssa = phi ptr [ %i.w, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_14WasmTypeCastOpEEEmRKT0_b.exit ], [ %i.bj, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  store i64 %..i, ptr %2, align 8
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread
  %i.ae = phi i64 [ %i.y, %.lr.ph ], [ %i.bl, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.af = phi ptr [ %i.w, %.lr.ph ], [ %i.bj, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02632 = phi i64 [ %i.t, %.lr.ph ], [ %i.bi, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.ag = icmp eq i64 %i.ae, %..i
  br i1 %i.ag, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.aa, align 8, !nonnull !39, !align !41
  %.sroa.0.0.copyload = load i32, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = zext i32 %.sroa.0.0.copyload to i64
  %i.am = add i64 %i.ak, %i.al
  %i.an = inttoptr i64 %i.am to ptr               ; 4 uses
  %i.ao = load i8, ptr %i.an, align 4
  %i.ap = icmp eq i8 %i.ao, 19
  br i1 %i.ap, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp eq i32 %i.c, %i.ar
  br i1 %i.as, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.av = load i16, ptr %i.au, align 2            ; 3 uses
  %i.aw = zext i16 %i.av to i64
  %i.ax = load i16, ptr %i.ab, align 2
  %.idx.i.i.i = shl nuw nsw i64 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i.i
  %.not.i.i.i.i.i = icmp eq i16 %i.av, %i.ax
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f, %bb.g
  %.0711.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %.0810.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.at, %bb.f ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %.0711.i.i.i.i.i.i.i.i.i, align 4
  %i.az = load i32, ptr %.0810.i.i.i.i.i.i.i.i.i, align 4
  %i.ba = icmp eq i32 %i.az, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.ba, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0711.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ay
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !16

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.g, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.be = load <2 x i32>, ptr %i.bd, align 4
  %i.bf = load <2 x i32>, ptr %i.ad, align 4
  %i.bg = icmp eq <2 x i32> %i.be, %i.bf
  %3 = freeze <2 x i1> %i.bg
  %4 = bitcast <2 x i1> %3 to i2
  %5 = icmp eq i2 %4, -1
  br i1 %5, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.c, %bb.d, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit, %bb.e, %bb.b
  %i.bh = add i64 %.02632, 1
  %i.bi = and i64 %i.s, %i.bh                     ; 2 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %._crit_edge, label %bb.b, !llvm.loop !779

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.a
  %i.bn = phi ptr [ %.lcssa, %bb.a ], [ %.lcssa, %._crit_edge ], [ %i.af, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.bn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE10hash_valueENS2_15HashingStrategyE(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2              ; 2 uses
  %i.e = zext i16 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %.not.i.i11.i = icmp eq i16 %i.d, 0
  br i1 %.not.i.i11.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE15HashWithOptionsIJSt5tupleIJNS1_19WasmTypeCheckConfigEEEEEEmDpRKT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i.i13.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %.012.i = phi i64 [ %i.v, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %.0.i.i13.i, align 4
  %i.g = lshr i32 %.sroa.0.0.copyload.i.i.i, 4
  %i.h = zext nneg i32 %i.g to i64
  %i.i = xor i64 %.012.i, -1
  %i.j = shl i64 %.012.i, 21
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = lshr i64 %i.k, 24
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, 265                        ; 2 uses
  %i.o = lshr i64 %i.n, 14
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, 21                         ; 2 uses
  %i.r = lshr i64 %i.q, 28
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, 2147483649
  %i.u = mul nuw nsw i64 %i.h, 17
  %i.v = add i64 %i.t, %i.u                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i13.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.f
  br i1 %.not.i.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE15HashWithOptionsIJSt5tupleIJNS1_19WasmTypeCheckConfigEEEEEEmDpRKT_.exit, label %.lr.ph.i, !llvm.loop !15

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_14WasmTypeCastOpEE15HashWithOptionsIJSt5tupleIJNS1_19WasmTypeCheckConfigEEEEEEmDpRKT_.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.v, %.lr.ph.i ]
  %i.x = shl i32 %.sroa.4.0.copyload, 15
  %i.y = xor i32 %.sroa.4.0.copyload, -1
  %i.z = add i32 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i32 %i.z, 12
  %i.ab = xor i32 %i.aa, %i.z
  %i.ac = mul i32 %i.ab, 5                        ; 2 uses
  %i.ad = lshr i32 %i.ac, 4
  %i.ae = xor i32 %i.ad, %i.ac
  %i.af = mul i32 %i.ae, 2057                     ; 2 uses
  %i.ag = lshr i32 %i.af, 16
  %i.ah = xor i32 %i.ag, %i.af
  %i.ai = zext i32 %i.ah to i64
  %i.aj = mul i64 %i.ai, -4132994306676758123     ; 2 uses
  %i.ak = lshr i64 %i.aj, 47
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = mul i64 %i.al, -4132994306676758123
  %i.an = shl i32 %.sroa.0.0.copyload, 15
  %i.ao = xor i32 %.sroa.0.0.copyload, -1
  %i.ap = add i32 %i.an, %i.ao                    ; 2 uses
  %i.aq = lshr i32 %i.ap, 12
  %i.ar = xor i32 %i.aq, %i.ap
  %i.as = mul i32 %i.ar, 5                        ; 2 uses
  %i.at = lshr i32 %i.as, 4
  %i.au = xor i32 %i.at, %i.as
  %i.av = mul i32 %i.au, 2057                     ; 2 uses
  %i.aw = lshr i32 %i.av, 16
  %i.ax = xor i32 %i.aw, %i.av
  %i.ay = zext i32 %i.ax to i64
  %i.az = mul i64 %i.ay, -4132994306676758123     ; 2 uses
  %i.ba = lshr i64 %i.az, 47
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, 3866779316627607737
  %i.bd = xor i64 %i.am, %i.bc
  %i.be = mul i64 %i.bd, 3526073081333318373
  %i.bf = add i64 %.0.lcssa.i, %i.be
  %i.bg = mul i64 %i.bf, 17
  %i.bh = add i64 %i.bg, 19
  ret i64 %i.bh
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_18AnyConvertExternOpEJNS2_14ShadowyOpIndexEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_18AnyConvertExternOpEE3NewIJNS2_14ShadowyOpIndexEbEEERS4_PNS2_5GraphEDpT_.exit, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre8 = ptrtoint ptr %.pre to i64
  %.pre9 = sub i64 %.pre10.i.i.i.i, %.pre8
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_18AnyConvertExternOpEE3NewIJNS2_14ShadowyOpIndexEbEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_18AnyConvertExternOpEE3NewIJNS2_14ShadowyOpIndexEbEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi10 = phi i64 [ %i.i, %bb.a ], [ %.pre9, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi10 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi10, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  %i.ag = zext i1 %2 to i8
  store i8 20, ptr %i.s, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %i.ag, ptr %i.ak, align 4
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = zext i32 %1 to i64
  %i.ao = add i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_18AnyConvertExternOpEEEvRKT_.exit, label %bb.c, !prof !40

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_18AnyConvertExternOpEE3NewIJNS2_14ShadowyOpIndexEbEEERS4_PNS2_5GraphEDpT_.exit
  %i.as = add nuw i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_18AnyConvertExternOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_18AnyConvertExternOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_18AnyConvertExternOpEE3NewIJNS2_14ShadowyOpIndexEbEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3332
  %.sroa.0.0.copyload.i = load i32, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 4 uses
  %i.av = lshr i64 %i.i, 4
  %i.aw = and i64 %i.av, 268435455                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 208 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %.not.i.i6 = icmp ugt i64 %i.be, %i.aw
  br i1 %.not.i.i6, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !43

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_18AnyConvertExternOpEEEvRKT_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 200 ; 2 uses
  %i.bg = lshr i64 %i.aw, 1
  %i.bh = add nuw nsw i64 %i.aw, 32
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.az, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_26WordBinopDeoptOnOverflowOpEJNS2_14ShadowyOpIndexESK_SK_NSJ_4KindENS2_18WordRepresentationENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeEEEENS2_7OpIndexEDpT0_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  store i8 115, ptr %i.s, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 3, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 %1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 36 ; 2 uses
  store i32 %2, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  store i32 %3, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %4, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %5, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i8 %7, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = zext i32 %1 to i64
  %i.as = add i64 %i.aq, %i.ar
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.av, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !40

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_26WordBinopDeoptOnOverflowOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4KindENS2_18WordRepresentationENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeEEEERS4_PNS2_5GraphEDpT_.exit
  %i.aw = add nuw i8 %i.av, 1
  store i8 %i.aw, ptr %i.au, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre13.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.ak, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_26WordBinopDeoptOnOverflowOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4KindENS2_18WordRepresentationENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_26WordBinopDeoptOnOverflowOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4KindENS2_18WordRepresentationENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.aq, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_26WordBinopDeoptOnOverflowOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4KindENS2_18WordRepresentationENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre13.i, %bb.c ] ; 2 uses
  %i.ax = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.ay = add i64 %.pre-phi.i, %i.ax
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.bb, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i, label %bb.d, !prof !40

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bc = add nuw i8 %i.bb, 1
  store i8 %i.bc, ptr %i.ba, align 1
  %.pre12.i = load ptr, ptr %i.f, align 8
  %.pre14.i = ptrtoint ptr %.pre12.i to i64
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %.pre-phi15.i = phi i64 [ %.pre14.i, %bb.d ], [ %.pre-phi.i, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ]
  %.sroa.01.0.copyload.2.i = load i32, ptr %i.al, align 8
  %i.bd = zext i32 %.sroa.01.0.copyload.2.i to i64
  %i.be = add i64 %.pre-phi15.i, %i.bd
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %.not.i.2.i = icmp eq i8 %i.bh, -1
  br i1 %.not.i.2.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_26WordBinopDeoptOnOverflowOpEEEvRKT_.exit, label %bb.e, !prof !40

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i
  %i.bi = add nuw i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_26WordBinopDeoptOnOverflowOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_26WordBinopDeoptOnOverflowOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3332
  %.sroa.0.0.copyload.i = load i32, ptr %i.bj, align 4
  %i.bk = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 4 uses
  %i.bl = lshr i64 %i.i, 4
  %i.bm = and i64 %i.bl, 268435455                ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 216
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 208 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2
  %.not.i.i13 = icmp ugt i64 %i.bu, %i.bm
  br i1 %.not.i.i13, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.f, !prof !43

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_26WordBinopDeoptOnOverflowOpEEEvRKT_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 200 ; 2 uses
  %i.bw = lshr i64 %i.bm, 1
  %i.bx = add nuw nsw i64 %i.bm, 32
  %i.by = add nuw nsw i64 %i.bx, %i.bw
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 224
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.bp, align 8
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef %i.cf)
  %.pre.i.i = load ptr, ptr %i.bp, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_26WordBinopDeoptOnOverflowOpEEEvRKT_.exit, %bb.f
  %i.cg = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bq, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_26WordBinopDeoptOnOverflowOpEEEvRKT_.exit ]
  %i.ch = trunc i64 %i.i to i32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.bm
  store i32 %.sroa.0.0.copyload.i, ptr %i.ci, align 4
  ret i32 %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_26WordBinopDeoptOnOverflowOpEEEPNSK_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_26WordBinopDeoptOnOverflowOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, %i.a                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.d ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread, %bb.a
  %.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.bc, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %i.a, ptr %2, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread
  %i.s = phi i64 [ %i.i, %.lr.ph ], [ %i.be, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.t = phi ptr [ %i.g, %.lr.ph ], [ %i.bc, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02632 = phi i64 [ %i.d, %.lr.ph ], [ %i.bb, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.u = icmp eq i64 %i.s, %i.a
  br i1 %i.u, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.k, align 8, !nonnull !39, !align !41
  %.sroa.0.0.copyload = load i32, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = zext i32 %.sroa.0.0.copyload to i64
  %i.aa = add i64 %i.y, %i.z
  %i.ab = inttoptr i64 %i.aa to ptr               ; 8 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = icmp eq i8 %i.ac, 115
  br i1 %i.ad, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %i.l, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.m, align 8
  %i.ai = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.aj = icmp eq i32 %i.ai, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.f
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i = load i32, ptr %i.n, align 4
  %i.ak = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.al = icmp eq i32 %i.ak, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i.2.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.2.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %.0810.i.i.i.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.2.i.i = load i32, ptr %i.o, align 8
  %i.am = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.2.i.i, align 4
  %i.an = icmp eq i32 %i.am, %.sroa.0.0.copyload.i.i.i.i.i.i.i.2.i.i
  br i1 %i.an, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.2.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ap = load <2 x i8>, ptr %i.ao, align 4, !noalias !1434
  %i.aq = load <2 x i8>, ptr %i.p, align 4, !noalias !1435
  %i.ar = icmp eq <2 x i8> %i.ap, %i.aq
  %3 = freeze <2 x i1> %i.ar
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond.i.i = icmp eq i2 %4, -1
  br i1 %or.cond.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.g
  %.sroa.6.8.copyload.i.i = load i32, ptr %.sroa.6.8..sroa_idx.i.i, align 8
  %.sroa.45.8.copyload.i.i = load ptr, ptr %i.q, align 8
  %i.as = load i8, ptr %i.r, align 8, !noalias !1435
  %.sroa.610.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.610.8.copyload.i.i = load i32, ptr %.sroa.610.8..sroa_idx.i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.49.8.copyload.i.i = load ptr, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.av = load i8, ptr %i.au, align 8, !noalias !1434
  %i.aw = icmp eq ptr %.sroa.49.8.copyload.i.i, %.sroa.45.8.copyload.i.i
  %i.ax = icmp eq i32 %.sroa.610.8.copyload.i.i, %.sroa.6.8.copyload.i.i
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  %i.az = icmp eq i8 %i.av, %i.as
  %spec.select.i.i = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %spec.select.i.i, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.d, %bb.e, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit, %bb.g, %.lr.ph.i.i.i.i.i.i.i.2.i.i, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.f, %bb.c
  %i.ba = add i64 %.02632, 1
  %i.bb = and i64 %i.c, %i.ba                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %._crit_edge, label %bb.c, !llvm.loop !1433

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.b
  %i.bg = phi ptr [ %.lcssa, %bb.b ], [ %.lcssa, %._crit_edge ], [ %i.t, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.bg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_26WordBinopDeoptOnOverflowOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !noalias !1438
  %.sroa.41.8.copyload.i = load ptr, ptr %i.c, align 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.8.copyload.i = load i32, ptr %.sroa.6.8..sroa_idx.i, align 8
  %i.f = load i8, ptr %i.b, align 1, !noalias !1438
  %i.g = load i8, ptr %i.a, align 4, !noalias !1438
  %.0.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i, align 8
  %i.h = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.i = zext nneg i32 %i.h to i64
  %.0.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i.i.1.i.i = load i32, ptr %.0.i.i.ptr.1.i.i, align 4
  %i.j = lshr i32 %.sroa.0.0.copyload.i.i.1.i.i, 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = mul nuw nsw i64 %i.i, 35651567
  %i.m = add nuw nsw i64 %i.l, -4175292557550144145 ; 2 uses
  %i.n = lshr i64 %i.m, 24
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, 265                        ; 2 uses
  %i.q = lshr i64 %i.p, 14
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 21                         ; 2 uses
  %i.t = lshr i64 %i.s, 28
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, 2147483649
  %i.w = mul nuw nsw i64 %i.k, 17
  %i.x = add i64 %i.v, %i.w                       ; 2 uses
  %.0.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i.i.2.i.i = load i32, ptr %.0.i.i.ptr.2.i.i, align 8
  %i.y = lshr i32 %.sroa.0.0.copyload.i.i.2.i.i, 4
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = xor i64 %i.x, -1
  %i.ab = shl i64 %i.x, 21
  %i.ac = add i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = lshr i64 %i.ac, 24
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 265                      ; 2 uses
  %i.ag = lshr i64 %i.af, 14
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, 21                       ; 2 uses
  %i.aj = lshr i64 %i.ai, 28
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, 2147483649
  %i.am = ptrtoint ptr %.sroa.41.8.copyload.i to i64 ; 2 uses
  %i.an = shl i64 %i.am, 21
  %i.ao = xor i64 %i.am, -1
  %i.ap = add i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 24
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, 265                      ; 2 uses
  %i.at = lshr i64 %i.as, 14
  %i.au = xor i64 %i.at, %i.as
  %i.av = mul i64 %i.au, 21                       ; 2 uses
  %i.aw = lshr i64 %i.av, 28
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, 8398540807049701781      ; 2 uses
  %i.az = lshr i64 %i.ay, 47
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = mul i64 %i.ba, 3866779316627607737
  %i.bc = sext i32 %.sroa.6.8.copyload.i to i64
  %i.bd = mul i64 %i.bc, -4132994306676758123     ; 2 uses
  %i.be = lshr i64 %i.bd, 47
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = mul i64 %i.bf, -4132994306676758123
  %i.bh = xor i64 %i.bb, %i.bg
  %i.bi = mul i64 %i.bh, -4132994306676758123
  %i.bj = zext i8 %i.e to i64
  %i.bk = mul nuw nsw i64 %i.bj, 17
  %i.bl = add i64 %i.bi, %i.bk
  %i.bm = mul i64 %i.bl, 17
  %i.bn = zext i8 %i.f to i64
  %i.bo = add i64 %i.bm, %i.bn
  %i.bp = mul i64 %i.bo, 17
  %i.bq = zext i8 %i.g to i64
  %i.br = add nuw nsw i64 %i.z, %i.bq
  %reass.add.i = add i64 %i.br, %i.bp
  %reass.mul.i = mul i64 %reass.add.i, 17
  %i.bs = add i64 %i.al, %reass.mul.i
  %i.bt = mul i64 %i.bs, 17
  %i.bu = add i64 %i.bt, 115                      ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.bx = xor i32 %i.bw, -1
  %i.by = shl i32 %i.bw, 15
  %i.bz = add i32 %i.by, %i.bx                    ; 2 uses
  %i.ca = lshr i32 %i.bz, 12
  %i.cb = xor i32 %i.ca, %i.bz
  %i.cc = mul i32 %i.cb, 5                        ; 2 uses
  %i.cd = lshr i32 %i.cc, 4
  %i.ce = xor i32 %i.cd, %i.cc
  %i.cf = mul i32 %i.ce, 2057                     ; 2 uses
  %i.cg = lshr i32 %i.cf, 16
  %i.ch = xor i32 %i.cg, %i.cf
  %i.ci = zext i32 %i.ch to i64
  %i.cj = mul i64 %i.bu, 17
  %i.ck = add i64 %i.cj, %i.ci
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.ck, %bb.b ], [ %i.bu, %bb.a ]
  %. = tail call i64 @llvm.umax.i64(i64 %.0, i64 1)
  ret i64 %.
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE48AssembleOutputGraphCheckEqualsInternalizedStringERKNS2_31CheckEqualsInternalizedStringOpE(ptr noundef nonnull align 8 dereferenceable(2968) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i4 = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i4, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i3 = load i32, ptr %i.m, align 4
  %i.n = lshr i32 %.sroa.0.0.copyload.i3, 4
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not.i.i7 = icmp eq i32 %i.q, -1
  br i1 %.not.i.i7, label %bb.d, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_7OpIndexE.exit14

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISS_EEE3MapENS2_7OpIndexE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.o ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i9 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.2.0.copyload.i.i.i10 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i9, align 8
  %i.u = trunc nuw i8 %.sroa.2.0.copyload.i.i.i10 to i1
  br i1 %i.u, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11, label %bb.e

end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15ChangeOrDeoptOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEENS2_7OpIndexEDpT0_:bb.a
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 4
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre12 = ptrtoint ptr %.pre to i64
  %.pre13 = sub i64 %.pre10.i.i.i.i, %.pre12
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_15ChangeOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_15ChangeOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi14 = phi i64 [ %i.i, %bb.a ], [ %.pre13, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi14 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi14, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 4, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 32
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 4, ptr %i.af, align 2
  store i8 124, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 2, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  store i32 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %4, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.an = load ptr, ptr %i.f, align 8
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = zext i32 %1 to i64
  %i.aq = add i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.at, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !40

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_15ChangeOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %i.au = add nuw i8 %i.at, 1
  store i8 %i.au, ptr %i.as, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre12.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_15ChangeOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_15ChangeOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.ao, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_15ChangeOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre12.i, %bb.c ]
  %i.av = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.aw = add i64 %.pre-phi.i, %i.av
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.az, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15ChangeOrDeoptOpEEEvRKT_.exit, label %bb.d, !prof !40

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.ba = add nuw i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15ChangeOrDeoptOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15ChangeOrDeoptOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3332
  %.sroa.0.0.copyload.i = load i32, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 4 uses
  %i.bd = lshr i64 %i.i, 4
  %i.be = and i64 %i.bd, 268435455                ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 216
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 208 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  %.not.i.i9 = icmp ugt i64 %i.bm, %i.be
  br i1 %.not.i.i9, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !43

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15ChangeOrDeoptOpEEEvRKT_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 200 ; 2 uses
  %i.bo = lshr i64 %i.be, 1
  %i.bp = add nuw nsw i64 %i.be, 32
  %i.bq = add nuw nsw i64 %i.bp, %i.bo
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 224
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bh, align 8
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef %i.bx)
  %.pre.i.i = load ptr, ptr %i.bh, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15ChangeOrDeoptOpEEEvRKT_.exit, %bb.e
  %i.by = phi ptr [ %.pre.i.i, %bb.e ], [ %i.bi, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15ChangeOrDeoptOpEEEvRKT_.exit ]
  %i.bz = trunc i64 %i.i to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.be
  store i32 %.sroa.0.0.copyload.i, ptr %i.ca, align 4
  ret i32 %i.bz
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_15ChangeOrDeoptOpEEEPNSK_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_15ChangeOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, %i.a                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.d ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread, %bb.a
  %.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.au, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %i.a, ptr %2, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread
  %i.q = phi i64 [ %i.i, %.lr.ph ], [ %i.aw, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.r = phi ptr [ %i.g, %.lr.ph ], [ %i.au, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02632 = phi i64 [ %i.d, %.lr.ph ], [ %i.at, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.s = icmp eq i64 %i.q, %i.a
  br i1 %i.s, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.k, align 8, !nonnull !39, !align !41
  %.sroa.0.0.copyload = load i32, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = zext i32 %.sroa.0.0.copyload to i64
  %i.y = add i64 %i.w, %i.x
  %i.z = inttoptr i64 %i.y to ptr                 ; 6 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = icmp eq i8 %i.aa, 124
  br i1 %i.ab, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.l, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.m, align 8
  %i.ag = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.ah = icmp eq i32 %i.ag, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.f
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i = load i32, ptr %i.n, align 4
  %i.ai = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.aj = icmp eq i32 %i.ai, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i
  br i1 %i.aj, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.al = load <2 x i8>, ptr %i.ak, align 4, !noalias !1505
  %i.am = load <2 x i8>, ptr %i.o, align 4, !noalias !1506
  %i.an = icmp eq <2 x i8> %i.al, %i.am
  %3 = freeze <2 x i1> %i.an
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond.i.i = icmp eq i2 %4, -1
  br i1 %or.cond.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.g
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.p, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.47.0.copyload.i.i = load i32, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.ao, align 8
  %i.ap = icmp eq ptr %.sroa.06.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.aq = icmp eq i32 %.sroa.47.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.d, %bb.e, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit, %bb.g, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.f, %bb.c
  %i.as = add i64 %.02632, 1
  %i.at = and i64 %i.c, %i.as                     ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %._crit_edge, label %bb.c, !llvm.loop !1504

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.b
  %i.ay = phi ptr [ %.lcssa, %bb.b ], [ %.lcssa, %._crit_edge ], [ %i.r, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_15ChangeOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.d = load i8, ptr %i.b, align 1, !noalias !1509
  %i.e = load i8, ptr %i.a, align 4, !noalias !1509
  %.0.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i, align 8
  %i.f = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.g = zext nneg i32 %i.f to i64
  %.0.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i.1.i.i = load i32, ptr %.0.i.i.ptr.1.i.i, align 4
  %i.h = lshr i32 %.sroa.0.0.copyload.i.i.1.i.i, 4
  %i.i = zext nneg i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.g, 35651567
  %i.k = add nuw nsw i64 %i.j, -4175292557550144145 ; 2 uses
  %i.l = lshr i64 %i.k, 24
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, 265                        ; 2 uses
  %i.o = lshr i64 %i.n, 14
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, 21                         ; 2 uses
  %i.r = lshr i64 %i.q, 28
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, 2147483649
  %i.u = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.v = shl i64 %i.u, 21
  %i.w = xor i64 %i.u, -1
  %i.x = add i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr i64 %i.x, 24
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 265                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 14
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, 21                       ; 2 uses
  %i.ae = lshr i64 %i.ad, 28
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = mul i64 %i.af, 8398540807049701781      ; 2 uses
  %i.ah = lshr i64 %i.ag, 47
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, 3866779316627607737
  %i.ak = sext i32 %.sroa.4.0.copyload.i to i64
  %i.al = mul i64 %i.ak, -4132994306676758123     ; 2 uses
  %i.am = lshr i64 %i.al, 47
  %i.an = xor i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, -4132994306676758123
  %i.ap = xor i64 %i.aj, %i.ao
  %i.aq = mul i64 %i.ap, 3526073081333318373
  %i.ar = zext i8 %i.d to i64
  %i.as = add i64 %i.aq, %i.ar
  %i.at = mul i64 %i.as, 17
  %i.au = zext i8 %i.e to i64
  %i.av = add nuw nsw i64 %i.i, %i.au
  %reass.add.i = add i64 %i.av, %i.at
  %reass.mul.i = mul i64 %reass.add.i, 17
  %i.aw = add i64 %reass.mul.i, %i.t
  %i.ax = mul i64 %i.aw, 17
  %i.ay = add i64 %i.ax, 124                      ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bb = xor i32 %i.ba, -1
  %i.bc = shl i32 %i.ba, 15
  %i.bd = add i32 %i.bc, %i.bb                    ; 2 uses
  %i.be = lshr i32 %i.bd, 12
  %i.bf = xor i32 %i.be, %i.bd
  %i.bg = mul i32 %i.bf, 5                        ; 2 uses
  %i.bh = lshr i32 %i.bg, 4
  %i.bi = xor i32 %i.bh, %i.bg
  %i.bj = mul i32 %i.bi, 2057                     ; 2 uses
  %i.bk = lshr i32 %i.bj, 16
  %i.bl = xor i32 %i.bk, %i.bj
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul i64 %i.ay, 17
  %i.bo = add i64 %i.bn, %i.bm
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.bo, %bb.b ], [ %i.ay, %bb.a ]
  %. = tail call i64 @llvm.umax.i64(i64 %.0, i64 1)
  ret i64 %.
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_9ConvertOpEEENS2_7OpIndexESN_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !39, !align !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.n = load i8, ptr %i.m, align 1, !noalias !1517 ; 2 uses
  %i.o = load i8, ptr %i.l, align 1, !noalias !1517 ; 2 uses
  %.0.i.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i.i.i, align 4 ; 2 uses
  %i.p = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.q = zext nneg i32 %i.p to i64
  %i.r = zext i8 %i.n to i64
  %i.s = mul nuw nsw i64 %i.r, 17
  %i.t = zext i8 %i.o to i64
  %i.u = add nuw nsw i64 %i.s, %i.t
  %reass.add.i.i.i = add nuw nsw i64 %i.u, %i.q
  %i.v = mul nuw nsw i64 %reass.add.i.i.i, 289
  %i.w = add nuw nsw i64 %i.v, -807902598658493427 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = and i64 %i.w, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.z ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_9ConvertOpEE12EqualsForGVNERKS5_.exit.thread.i
  %.pre.pre = phi i64 [ %i.be, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_9ConvertOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ae, %bb.b ]
  %i.ag = phi ptr [ %i.bc, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_9ConvertOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ac, %bb.b ] ; 2 uses
  %.02632.i = phi i64 [ %i.bb, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_9ConvertOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.z, %bb.b ]
  %i.ah = icmp eq i64 %.pre.pre, %i.w
  br i1 %i.ah, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_9ConvertOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %i.d, align 8, !nonnull !39, !align !41
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %.sroa.0.0.copyload.i to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr               ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = icmp eq i8 %i.ap, 125
  br i1 %i.aq, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_9ConvertOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.0810.i.i.i.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i.i, align 4
  %i.as = icmp eq i32 %i.ar, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.as, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_9ConvertOpEE12EqualsForGVNERKS5_.exit.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_9ConvertOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_9ConvertOpEE12EqualsForGVNERKS5_.exit.i: ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.av = load i8, ptr %i.au, align 1, !noalias !1518
  %i.aw = load i8, ptr %i.at, align 4, !noalias !1518
  %i.ax = icmp eq i8 %i.aw, %i.o
  %i.ay = icmp eq i8 %i.av, %i.n
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_9ConvertOpEEEPNSK_5EntryERKT_Pm.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_9ConvertOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_9ConvertOpEE12EqualsForGVNERKS5_.exit.thread.i: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_9ConvertOpEE12EqualsForGVNERKS5_.exit.i, %bb.d, %bb.c, %.lr.ph.i
  %i.ba = add i64 %.02632.i, 1
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEJNS2_14ShadowyOpIndexESK_NSJ_15JSPrimitiveKindENSJ_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEENS2_7OpIndexEDpT0_:bb.a
  %.pre = load ptr, ptr %i.f, align 8
  %.pre13 = ptrtoint ptr %.pre to i64
  %.pre14 = sub i64 %.pre10.i.i.i.i, %.pre13
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS4_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS4_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi15 = phi i64 [ %i.i, %bb.a ], [ %.pre14, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi15 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi15, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 4, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 32
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 4, ptr %i.af, align 2
  store i8 -128, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 2, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  store i32 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %4, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %5, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.f, align 8
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = zext i32 %1 to i64
  %i.ar = add i64 %i.ap, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.au, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !40

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS4_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %i.av = add nuw i8 %i.au, 1
  store i8 %i.av, ptr %i.at, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre12.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS4_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS4_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS4_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre12.i, %bb.c ]
  %i.aw = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.ax = add i64 %.pre-phi.i, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.ba, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit, label %bb.d, !prof !40

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bb = add nuw i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3332
  %.sroa.0.0.copyload.i = load i32, ptr %i.bc, align 4
  %i.bd = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 4 uses
  %i.be = lshr i64 %i.i, 4
  %i.bf = and i64 %i.be, 268435455                ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 216
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 208 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.not.i.i10 = icmp ugt i64 %i.bn, %i.bf
  br i1 %.not.i.i10, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !43

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 200 ; 2 uses
  %i.bp = lshr i64 %i.bf, 1
  %i.bq = add nuw nsw i64 %i.bf, 32
  %i.br = add nuw nsw i64 %i.bq, %i.bp
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 noundef %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 224
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.bi, align 8
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 noundef %i.by)
  %.pre.i.i = load ptr, ptr %i.bi, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit, %bb.e
  %i.bz = phi ptr [ %.pre.i.i, %bb.e ], [ %i.bj, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit ]
  %i.ca = trunc i64 %i.i to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bf
  store i32 %.sroa.0.0.copyload.i, ptr %i.cb, align 4
  ret i32 %i.ca
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEPNSK_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, %i.a                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.d ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread, %bb.a
  %.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.az, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %i.a, ptr %2, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread
  %i.r = phi i64 [ %i.i, %.lr.ph ], [ %i.bb, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.s = phi ptr [ %i.g, %.lr.ph ], [ %i.az, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02632 = phi i64 [ %i.d, %.lr.ph ], [ %i.ay, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.t = icmp eq i64 %i.r, %i.a
  br i1 %i.t, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !nonnull !39, !align !41
  %.sroa.0.0.copyload = load i32, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = zext i32 %.sroa.0.0.copyload to i64
  %i.z = add i64 %i.x, %i.y
  %i.aa = inttoptr i64 %i.z to ptr                ; 7 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = icmp eq i8 %i.ab, -128
  br i1 %i.ac, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.l, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.m, align 8
  %i.ah = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.ai = icmp eq i32 %i.ah, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.f
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i = load i32, ptr %i.n, align 4
  %i.aj = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.ak = icmp eq i32 %i.aj, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i
  br i1 %i.ak, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.an = load i8, ptr %i.am, align 2, !noalias !1544
  %i.ao = load i8, ptr %i.p, align 2, !noalias !1545
  %i.ap = load <2 x i8>, ptr %i.al, align 4, !noalias !1544
  %i.aq = load <2 x i8>, ptr %i.o, align 4, !noalias !1545
  %i.ar = icmp eq <2 x i8> %i.ap, %i.aq
  %3 = freeze <2 x i1> %i.ar
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond.i.i = icmp eq i2 %4, -1
  %i.as = icmp eq i8 %i.an, %i.ao
  %or.cond18.i.i = select i1 %or.cond.i.i, i1 %i.as, i1 false
  br i1 %or.cond18.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.g
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.q, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.47.0.copyload.i.i = load i32, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.at, align 8
  %i.au = icmp eq ptr %.sroa.06.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.av = icmp eq i32 %.sroa.47.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.d, %bb.e, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit, %bb.g, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.f, %bb.c
  %i.ax = add i64 %.02632, 1
  %i.ay = and i64 %i.c, %i.ax                     ; 2 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %._crit_edge, label %bb.c, !llvm.loop !1543

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.b
  %i.bd = phi ptr [ %.lcssa, %bb.b ], [ %.lcssa, %._crit_edge ], [ %i.s, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.e = load i8, ptr %i.c, align 2, !noalias !1548
  %i.f = load i8, ptr %i.b, align 1, !noalias !1548
  %i.g = load i8, ptr %i.a, align 4, !noalias !1548
  %.0.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i, align 8
  %i.h = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.i = zext nneg i32 %i.h to i64
  %.0.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i.1.i.i = load i32, ptr %.0.i.i.ptr.1.i.i, align 4
  %i.j = lshr i32 %.sroa.0.0.copyload.i.i.1.i.i, 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = mul nuw nsw i64 %i.i, 35651567
  %i.m = add nuw nsw i64 %i.l, -4175292557550144145 ; 2 uses
  %i.n = lshr i64 %i.m, 24
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, 265                        ; 2 uses
  %i.q = lshr i64 %i.p, 14
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 21                         ; 2 uses
  %i.t = lshr i64 %i.s, 28
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, 2147483649
  %i.w = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.x = shl i64 %i.w, 21
  %i.y = xor i64 %i.w, -1
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i64 %i.z, 24
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 265                      ; 2 uses
  %i.ad = lshr i64 %i.ac, 14
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 21                       ; 2 uses
  %i.ag = lshr i64 %i.af, 28
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, 8398540807049701781      ; 2 uses
  %i.aj = lshr i64 %i.ai, 47
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, 3866779316627607737
  %i.am = sext i32 %.sroa.4.0.copyload.i to i64
  %i.an = mul i64 %i.am, -4132994306676758123     ; 2 uses
  %i.ao = lshr i64 %i.an, 47
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = mul i64 %i.ap, -4132994306676758123
  %i.ar = xor i64 %i.al, %i.aq
  %i.as = mul i64 %i.ar, 3526073081333318373
  %i.at = zext i8 %i.e to i64
  %i.au = add i64 %i.as, %i.at
  %i.av = mul i64 %i.au, 17
  %i.aw = zext i8 %i.f to i64
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = mul i64 %i.ax, 17
  %i.az = zext i8 %i.g to i64
  %i.ba = add nuw nsw i64 %i.k, %i.az
  %reass.add.i = add i64 %i.ba, %i.ay
  %reass.mul.i = mul i64 %reass.add.i, 17
  %i.bb = add i64 %reass.mul.i, %i.v
  %i.bc = mul i64 %i.bb, 17
  %i.bd = add i64 %i.bc, 128                      ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = xor i32 %i.bf, -1
  %i.bh = shl i32 %i.bf, 15
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 12
  %i.bk = xor i32 %i.bj, %i.bi
  %i.bl = mul i32 %i.bk, 5                        ; 2 uses
  %i.bm = lshr i32 %i.bl, 4
  %i.bn = xor i32 %i.bm, %i.bl
  %i.bo = mul i32 %i.bn, 2057                     ; 2 uses
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = xor i32 %i.bp, %i.bo
  %i.br = zext i32 %i.bq to i64
  %i.bs = mul i64 %i.bd, 17
  %i.bt = add i64 %i.bs, %i.br
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.bt, %bb.b ], [ %i.bd, %bb.a ]
  %. = tail call i64 @llvm.umax.i64(i64 %.0, i64 1)
  ret i64 %.
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_30ConvertUntaggedToJSPrimitiveOpEEENS2_7OpIndexESN_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !39, !align !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 5 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.p = load i8, ptr %i.o, align 1, !noalias !1556 ; 2 uses
  %i.q = load i8, ptr %i.n, align 1, !noalias !1556 ; 2 uses
  %i.r = load i8, ptr %i.m, align 1, !noalias !1556 ; 2 uses
  %i.s = load i8, ptr %i.l, align 1, !noalias !1556 ; 2 uses
  %.0.i.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i.i.i, align 4 ; 2 uses
  %i.t = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.u = zext nneg i32 %i.t to i64
  %i.v = zext i8 %i.p to i64
  %i.w = mul nuw nsw i64 %i.v, 17
  %i.x = zext i8 %i.q to i64
  %i.y = add nuw nsw i64 %i.w, %i.x
  %i.z = mul nuw nsw i64 %i.y, 17
  %i.aa = zext i8 %i.r to i64
  %i.ab = add nuw nsw i64 %i.z, %i.aa
  %i.ac = mul nuw nsw i64 %i.ab, 17
  %i.ad = zext i8 %i.s to i64
  %i.ae = add nuw nsw i64 %i.ac, %i.ad
  %reass.add.i.i.i = add nuw nsw i64 %i.ae, %i.u
  %i.af = mul nuw nsw i64 %reass.add.i.i.i, 289
  %i.ag = add nuw nsw i64 %i.af, -807902598658493423 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = and i64 %i.ag, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.aj ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i
  %.pre.pre = phi i64 [ %i.bu, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ao, %bb.b ]
  %i.aq = phi ptr [ %i.bs, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.am, %bb.b ] ; 2 uses
  %.02632.i = phi i64 [ %i.br, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.aj, %bb.b ]
  %i.ar = icmp eq i64 %.pre.pre, %i.ag
  br i1 %i.ar, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.as = load ptr, ptr %i.d, align 8, !nonnull !39, !align !41
  %.sroa.0.0.copyload.i = load i32, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr               ; 6 uses
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = icmp eq i8 %i.az, -127
  br i1 %i.ba, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.d:                                             ; preds = %bb.c
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEJNS2_14ShadowyOpIndexESK_NSJ_15JSPrimitiveKindENS2_22RegisterRepresentationENSJ_19InputInterpretationENS1_14FeedbackSourceEEEENS2_7OpIndexEDpT0_:bb.a
  %.pre = load ptr, ptr %i.f, align 8
  %.pre14 = ptrtoint ptr %.pre to i64
  %.pre15 = sub i64 %.pre10.i.i.i.i, %.pre14
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS2_22RegisterRepresentationENS4_19InputInterpretationENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS2_22RegisterRepresentationENS4_19InputInterpretationENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi16 = phi i64 [ %i.i, %bb.a ], [ %.pre15, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi16 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi16, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 4, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 32
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 4, ptr %i.af, align 2
  store i8 -126, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 2, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  store i32 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %4, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %5, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.f, align 8
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = zext i32 %1 to i64
  %i.ar = add i64 %i.ap, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.au, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !40

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS2_22RegisterRepresentationENS4_19InputInterpretationENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %i.av = add nuw i8 %i.au, 1
  store i8 %i.av, ptr %i.at, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre12.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS2_22RegisterRepresentationENS4_19InputInterpretationENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS2_22RegisterRepresentationENS4_19InputInterpretationENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS2_22RegisterRepresentationENS4_19InputInterpretationENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre12.i, %bb.c ]
  %i.aw = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.ax = add i64 %.pre-phi.i, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.ba, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEvRKT_.exit, label %bb.d, !prof !40

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bb = add nuw i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3332
  %.sroa.0.0.copyload.i = load i32, ptr %i.bc, align 4
  %i.bd = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 4 uses
  %i.be = lshr i64 %i.i, 4
  %i.bf = and i64 %i.be, 268435455                ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 216
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 208 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.not.i.i11 = icmp ugt i64 %i.bn, %i.bf
  br i1 %.not.i.i11, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !43

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEvRKT_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 200 ; 2 uses
  %i.bp = lshr i64 %i.bf, 1
  %i.bq = add nuw nsw i64 %i.bf, 32
  %i.br = add nuw nsw i64 %i.bq, %i.bp
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 noundef %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 224
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.bi, align 8
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 noundef %i.by)
  %.pre.i.i = load ptr, ptr %i.bi, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEvRKT_.exit, %bb.e
  %i.bz = phi ptr [ %.pre.i.i, %bb.e ], [ %i.bj, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEvRKT_.exit ]
  %i.ca = trunc i64 %i.i to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bf
  store i32 %.sroa.0.0.copyload.i, ptr %i.cb, align 4
  ret i32 %i.ca
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEPNSK_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, %i.a                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.d ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread, %bb.a
  %.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.az, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %i.a, ptr %2, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread
  %i.r = phi i64 [ %i.i, %.lr.ph ], [ %i.bb, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.s = phi ptr [ %i.g, %.lr.ph ], [ %i.az, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02632 = phi i64 [ %i.d, %.lr.ph ], [ %i.ay, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.t = icmp eq i64 %i.r, %i.a
  br i1 %i.t, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !nonnull !39, !align !41
  %.sroa.0.0.copyload = load i32, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = zext i32 %.sroa.0.0.copyload to i64
  %i.z = add i64 %i.x, %i.y
  %i.aa = inttoptr i64 %i.z to ptr                ; 7 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = icmp eq i8 %i.ab, -126
  br i1 %i.ac, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.l, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.m, align 8
  %i.ah = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.ai = icmp eq i32 %i.ah, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.f
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i = load i32, ptr %i.n, align 4
  %i.aj = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.ak = icmp eq i32 %i.aj, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i
  br i1 %i.ak, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.an = load i8, ptr %i.am, align 2, !noalias !1570
  %i.ao = load i8, ptr %i.p, align 2, !noalias !1571
  %i.ap = load <2 x i8>, ptr %i.al, align 4, !noalias !1570
  %i.aq = load <2 x i8>, ptr %i.o, align 4, !noalias !1571
  %i.ar = icmp eq <2 x i8> %i.ap, %i.aq
  %3 = freeze <2 x i1> %i.ar
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond.i.i = icmp eq i2 %4, -1
  %i.as = icmp eq i8 %i.an, %i.ao
  %or.cond18.i.i = select i1 %or.cond.i.i, i1 %i.as, i1 false
  br i1 %or.cond18.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.g
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.q, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.47.0.copyload.i.i = load i32, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.at, align 8
  %i.au = icmp eq ptr %.sroa.06.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.av = icmp eq i32 %.sroa.47.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.d, %bb.e, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit, %bb.g, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.f, %bb.c
  %i.ax = add i64 %.02632, 1
  %i.ay = and i64 %i.c, %i.ax                     ; 2 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %._crit_edge, label %bb.c, !llvm.loop !1569

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.b
  %i.bd = phi ptr [ %.lcssa, %bb.b ], [ %.lcssa, %._crit_edge ], [ %i.s, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.e = load i8, ptr %i.c, align 2, !noalias !1574
  %i.f = load i8, ptr %i.b, align 1, !noalias !1574
  %i.g = load i8, ptr %i.a, align 4, !noalias !1574
  %.0.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i, align 8
  %i.h = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.i = zext nneg i32 %i.h to i64
  %.0.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i.1.i.i = load i32, ptr %.0.i.i.ptr.1.i.i, align 4
  %i.j = lshr i32 %.sroa.0.0.copyload.i.i.1.i.i, 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = mul nuw nsw i64 %i.i, 35651567
  %i.m = add nuw nsw i64 %i.l, -4175292557550144145 ; 2 uses
  %i.n = lshr i64 %i.m, 24
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, 265                        ; 2 uses
  %i.q = lshr i64 %i.p, 14
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 21                         ; 2 uses
  %i.t = lshr i64 %i.s, 28
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, 2147483649
  %i.w = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.x = shl i64 %i.w, 21
  %i.y = xor i64 %i.w, -1
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i64 %i.z, 24
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 265                      ; 2 uses
  %i.ad = lshr i64 %i.ac, 14
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 21                       ; 2 uses
  %i.ag = lshr i64 %i.af, 28
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, 8398540807049701781      ; 2 uses
  %i.aj = lshr i64 %i.ai, 47
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, 3866779316627607737
  %i.am = sext i32 %.sroa.4.0.copyload.i to i64
  %i.an = mul i64 %i.am, -4132994306676758123     ; 2 uses
  %i.ao = lshr i64 %i.an, 47
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = mul i64 %i.ap, -4132994306676758123
  %i.ar = xor i64 %i.al, %i.aq
  %i.as = mul i64 %i.ar, 3526073081333318373
  %i.at = zext i8 %i.e to i64
  %i.au = add i64 %i.as, %i.at
  %i.av = mul i64 %i.au, 17
  %i.aw = zext i8 %i.f to i64
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = mul i64 %i.ax, 17
  %i.az = zext i8 %i.g to i64
  %i.ba = add nuw nsw i64 %i.k, %i.az
  %reass.add.i = add i64 %i.ba, %i.ay
  %reass.mul.i = mul i64 %reass.add.i, 17
  %i.bb = add i64 %reass.mul.i, %i.v
  %i.bc = mul i64 %i.bb, 17
  %i.bd = add i64 %i.bc, 130                      ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = xor i32 %i.bf, -1
  %i.bh = shl i32 %i.bf, 15
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 12
  %i.bk = xor i32 %i.bj, %i.bi
  %i.bl = mul i32 %i.bk, 5                        ; 2 uses
  %i.bm = lshr i32 %i.bl, 4
  %i.bn = xor i32 %i.bm, %i.bl
  %i.bo = mul i32 %i.bn, 2057                     ; 2 uses
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = xor i32 %i.bp, %i.bo
  %i.br = zext i32 %i.bq to i64
  %i.bs = mul i64 %i.bd, 17
  %i.bt = add i64 %i.bs, %i.br
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.bt, %bb.b ], [ %i.bd, %bb.a ]
  %. = tail call i64 @llvm.umax.i64(i64 %.0, i64 1)
  ret i64 %.
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_31TruncateJSPrimitiveToUntaggedOpEEENS2_7OpIndexESN_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !39, !align !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.n = load i8, ptr %i.m, align 1, !noalias !1582 ; 2 uses
  %i.o = load i8, ptr %i.l, align 1, !noalias !1582 ; 2 uses
  %.0.i.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i.i.i, align 4 ; 2 uses
  %i.p = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.q = zext nneg i32 %i.p to i64
  %i.r = zext i8 %i.n to i64
  %i.s = mul nuw nsw i64 %i.r, 17
  %i.t = zext i8 %i.o to i64
  %i.u = add nuw nsw i64 %i.s, %i.t
  %reass.add.i.i.i = add nuw nsw i64 %i.u, %i.q
  %i.v = mul nuw nsw i64 %reass.add.i.i.i, 289
  %i.w = add nuw nsw i64 %i.v, -807902598658493421 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = and i64 %i.w, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.z ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_31TruncateJSPrimitiveToUntaggedOpEE12EqualsForGVNERKS5_.exit.thread.i
  %.pre.pre = phi i64 [ %i.be, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_31TruncateJSPrimitiveToUntaggedOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ae, %bb.b ]
  %i.ag = phi ptr [ %i.bc, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_31TruncateJSPrimitiveToUntaggedOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ac, %bb.b ] ; 2 uses
  %.02632.i = phi i64 [ %i.bb, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_31TruncateJSPrimitiveToUntaggedOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.z, %bb.b ]
  %i.ah = icmp eq i64 %.pre.pre, %i.w
  br i1 %i.ah, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_31TruncateJSPrimitiveToUntaggedOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %i.d, align 8, !nonnull !39, !align !41
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %.sroa.0.0.copyload.i to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr               ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = icmp eq i8 %i.ap, -125
  br i1 %i.aq, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_31TruncateJSPrimitiveToUntaggedOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.0810.i.i.i.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i.i, align 4
  %i.as = icmp eq i32 %i.ar, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.as, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_31TruncateJSPrimitiveToUntaggedOpEE12EqualsForGVNERKS5_.exit.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_31TruncateJSPrimitiveToUntaggedOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_31TruncateJSPrimitiveToUntaggedOpEE12EqualsForGVNERKS5_.exit.i: ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.av = load i8, ptr %i.au, align 1, !noalias !1583
  %i.aw = load i8, ptr %i.at, align 4, !noalias !1583
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEJNS2_14ShadowyOpIndexESK_NSJ_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEENS2_7OpIndexEDpT0_:bb.a
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 4
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre12 = ptrtoint ptr %.pre to i64
  %.pre13 = sub i64 %.pre10.i.i.i.i, %.pre12
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi14 = phi i64 [ %i.i, %bb.a ], [ %.pre13, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi14 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi14, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 4, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 32
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 4, ptr %i.af, align 2
  store i8 -124, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 2, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  store i32 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %4, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.an = load ptr, ptr %i.f, align 8
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = zext i32 %1 to i64
  %i.aq = add i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.at, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !40

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %i.au = add nuw i8 %i.at, 1
  store i8 %i.au, ptr %i.as, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre12.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.ao, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre12.i, %bb.c ]
  %i.av = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.aw = add i64 %.pre-phi.i, %i.av
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.az, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit, label %bb.d, !prof !40

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.ba = add nuw i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3332
  %.sroa.0.0.copyload.i = load i32, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 4 uses
  %i.bd = lshr i64 %i.i, 4
  %i.be = and i64 %i.bd, 268435455                ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 216
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 208 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  %.not.i.i9 = icmp ugt i64 %i.bm, %i.be
  br i1 %.not.i.i9, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !43

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 200 ; 2 uses
  %i.bo = lshr i64 %i.be, 1
  %i.bp = add nuw nsw i64 %i.be, 32
  %i.bq = add nuw nsw i64 %i.bp, %i.bo
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 224
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bh, align 8
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef %i.bx)
  %.pre.i.i = load ptr, ptr %i.bh, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit, %bb.e
  %i.by = phi ptr [ %.pre.i.i, %bb.e ], [ %i.bi, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit ]
  %i.bz = trunc i64 %i.i to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.be
  store i32 %.sroa.0.0.copyload.i, ptr %i.ca, align 4
  ret i32 %i.bz
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4FindINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEPNSK_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, %i.a                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.d ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread, %bb.a
  %.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.au, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %i.a, ptr %2, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread
  %i.q = phi i64 [ %i.i, %.lr.ph ], [ %i.aw, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.r = phi ptr [ %i.g, %.lr.ph ], [ %i.au, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02632 = phi i64 [ %i.d, %.lr.ph ], [ %i.at, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.s = icmp eq i64 %i.q, %i.a
  br i1 %i.s, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.k, align 8, !nonnull !39, !align !41
  %.sroa.0.0.copyload = load i32, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = zext i32 %.sroa.0.0.copyload to i64
  %i.y = add i64 %i.w, %i.x
  %i.z = inttoptr i64 %i.y to ptr                 ; 6 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = icmp eq i8 %i.aa, -124
  br i1 %i.ab, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.l, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.m, align 8
  %i.ag = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.ah = icmp eq i32 %i.ag, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.f
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i = load i32, ptr %i.n, align 4
  %i.ai = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.aj = icmp eq i32 %i.ai, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i
  br i1 %i.aj, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.al = load <2 x i8>, ptr %i.ak, align 4, !noalias !1593
  %i.am = load <2 x i8>, ptr %i.o, align 4, !noalias !1594
  %i.an = icmp eq <2 x i8> %i.al, %i.am
  %3 = freeze <2 x i1> %i.an
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond.i.i = icmp eq i2 %4, -1
  br i1 %or.cond.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.g
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.p, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.47.0.copyload.i.i = load i32, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.ao, align 8
  %i.ap = icmp eq ptr %.sroa.06.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.aq = icmp eq i32 %.sroa.47.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.d, %bb.e, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit, %bb.g, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.f, %bb.c
  %i.as = add i64 %.02632, 1
  %i.at = and i64 %i.c, %i.as                     ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %._crit_edge, label %bb.c, !llvm.loop !1592

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.b
  %i.ay = phi ptr [ %.lcssa, %bb.b ], [ %.lcssa, %._crit_edge ], [ %i.r, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.d = load i8, ptr %i.b, align 1, !noalias !1597
  %i.e = load i8, ptr %i.a, align 4, !noalias !1597
  %.0.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i, align 8
  %i.f = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.g = zext nneg i32 %i.f to i64
  %.0.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i.1.i.i = load i32, ptr %.0.i.i.ptr.1.i.i, align 4
  %i.h = lshr i32 %.sroa.0.0.copyload.i.i.1.i.i, 4
  %i.i = zext nneg i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.g, 35651567
  %i.k = add nuw nsw i64 %i.j, -4175292557550144145 ; 2 uses
  %i.l = lshr i64 %i.k, 24
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, 265                        ; 2 uses
  %i.o = lshr i64 %i.n, 14
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, 21                         ; 2 uses
  %i.r = lshr i64 %i.q, 28
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, 2147483649
  %i.u = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.v = shl i64 %i.u, 21
  %i.w = xor i64 %i.u, -1
  %i.x = add i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr i64 %i.x, 24
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 265                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 14
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, 21                       ; 2 uses
  %i.ae = lshr i64 %i.ad, 28
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = mul i64 %i.af, 8398540807049701781      ; 2 uses
  %i.ah = lshr i64 %i.ag, 47
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, 3866779316627607737
  %i.ak = sext i32 %.sroa.4.0.copyload.i to i64
  %i.al = mul i64 %i.ak, -4132994306676758123     ; 2 uses
  %i.am = lshr i64 %i.al, 47
  %i.an = xor i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, -4132994306676758123
  %i.ap = xor i64 %i.aj, %i.ao
  %i.aq = mul i64 %i.ap, 3526073081333318373
  %i.ar = zext i8 %i.d to i64
  %i.as = add i64 %i.aq, %i.ar
  %i.at = mul i64 %i.as, 17
  %i.au = zext i8 %i.e to i64
  %i.av = add nuw nsw i64 %i.i, %i.au
  %reass.add.i = add i64 %i.av, %i.at
  %reass.mul.i = mul i64 %reass.add.i, 17
  %i.aw = add i64 %reass.mul.i, %i.t
  %i.ax = mul i64 %i.aw, 17
  %i.ay = add i64 %i.ax, 132                      ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bb = xor i32 %i.ba, -1
  %i.bc = shl i32 %i.ba, 15
  %i.bd = add i32 %i.bc, %i.bb                    ; 2 uses
  %i.be = lshr i32 %i.bd, 12
  %i.bf = xor i32 %i.be, %i.bd
  %i.bg = mul i32 %i.bf, 5                        ; 2 uses
  %i.bh = lshr i32 %i.bg, 4
  %i.bi = xor i32 %i.bh, %i.bg
  %i.bj = mul i32 %i.bi, 2057                     ; 2 uses
  %i.bk = lshr i32 %i.bj, 16
  %i.bl = xor i32 %i.bk, %i.bj
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul i64 %i.ay, 17
  %i.bo = add i64 %i.bn, %i.bm
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.bo, %bb.b ], [ %i.ay, %bb.a ]
  %. = tail call i64 @llvm.umax.i64(i64 %.0, i64 1)
  ret i64 %.
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_19DoubleArrayMinMaxOpEEENS2_7OpIndexESN_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !39, !align !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i8, ptr %i.l, align 1, !noalias !1605 ; 2 uses
  %.0.i.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i.i.i, align 4 ; 2 uses
  %i.n = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.o = zext nneg i32 %i.n to i64
  %i.p = zext i8 %i.m to i64
  %reass.add.i.i.i = add nuw nsw i64 %i.o, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.r = load i32, ptr %i.q, align 4              ; 4 uses
  %i.s = xor i32 %i.r, -1
  %i.t = shl i32 %i.r, 15
  %i.u = add i32 %i.t, %i.s                       ; 2 uses
  %i.v = lshr i32 %i.u, 12
  %i.w = xor i32 %i.v, %i.u
  %i.x = mul i32 %i.w, 5                          ; 2 uses
  %i.y = lshr i32 %i.x, 4
  %i.z = xor i32 %i.y, %i.x
  %i.aa = mul i32 %i.z, 2057                      ; 2 uses
  %i.ab = lshr i32 %i.aa, 16
  %i.ac = xor i32 %i.ab, %i.aa
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %reass.add.i.i.i, 4913
  %i.af = add nuw nsw i64 %i.ae, 4712399896515163493
  %i.ag = add nuw nsw i64 %i.af, %i.ad            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = and i64 %i.ag, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.aj ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19DoubleArrayMinMaxOpEE12EqualsForGVNERKS5_.exit.thread.i
  %.pre.pre = phi i64 [ %i.bn, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19DoubleArrayMinMaxOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ao, %bb.b ]
  %i.aq = phi ptr [ %i.bl, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19DoubleArrayMinMaxOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.am, %bb.b ] ; 3 uses
  %.02632.i = phi i64 [ %i.bk, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19DoubleArrayMinMaxOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.aj, %bb.b ]
  %i.ar = icmp eq i64 %.pre.pre, %i.ag
  br i1 %i.ar, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19DoubleArrayMinMaxOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.as = load ptr, ptr %i.d, align 8, !nonnull !39, !align !41
  %.sroa.0.0.copyload.i = load i32, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = icmp eq i8 %i.az, -123
  br i1 %i.ba, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19DoubleArrayMinMaxOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = icmp eq i32 %i.r, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19DoubleArrayMinMaxOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %.0810.i.i.i.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
end_hunk_7
