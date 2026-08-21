inline.NumInlined: 2446
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb11clock_cache15ClockCacheShardINS0_19AutoHyperClockTableEE6LookupERKNS_5SliceERKSt5arrayImLm2EEPKNS_5Cache15CacheItemHelperEPNSB_13CreateContextENSB_8PriorityEPNS_10StatisticsE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = tail call noundef ptr @_ZN7rocksdb11clock_cache19AutoHyperClockTable6LookupERKSt5arrayImLm2EE(ptr noundef nonnull align 64 dereferenceable(208) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN7rocksdb11clock_cache15ClockCacheShardINS0_19AutoHyperClockTableEE6LookupERKNS_5SliceERKSt5arrayImLm2EE.exit

_ZN7rocksdb11clock_cache15ClockCacheShardINS0_19AutoHyperClockTableEE6LookupERKNS_5SliceERKSt5arrayImLm2EE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 64 dereferenceable(208) ptr @_ZN7rocksdb11clock_cache15ClockCacheShardINS0_19AutoHyperClockTableEE8GetTableEv(ptr noundef nonnull align 64 dereferenceable(320) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 64 dereferenceable(208) ptr @_ZNK7rocksdb11clock_cache15ClockCacheShardINS0_19AutoHyperClockTableEE8GetTableEv(ptr noundef nonnull align 64 dereferenceable(320) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !26
  tail call void %i.c(ptr noundef %i.d, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7rocksdb11clock_cache14BaseClockTableC2EmbiNS_25CacheMetadataChargePolicyEPNS_15MemoryAllocatorEPKSt8functionIFbRKNS_5SliceEPNS_5Cache6HandleEbEEPKj(ptr nofree noundef nonnull writeonly align 64 captures(none) dereferenceable(160) initializes((0, 24), (64, 100), (128, 132), (136, 160)) %0, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i64 %1, ptr %i.b, align 8, !tbaa !159
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.speculated.i = tail call noundef range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %3, i32 1)
  %i.d = select i1 %2, i32 -2147483648, i32 0
  %i.e = or disjoint i32 %.sroa.speculated.i, %i.d
  store i32 %i.e, ptr %i.c, align 32, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %4, ptr %i.f, align 64, !tbaa !161
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %5, ptr %i.g, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %6, ptr %i.h, align 16, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %7, ptr %i.i, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb11clock_cache14BaseClockTable27TrackAndReleaseEvictedEntryEPNS0_11ClockHandleE(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"struct.std::array", align 8       ; 7 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !100, !nonnull !101, !align !102 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103
  %.not.i.i.not = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !114, !nonnull !101, !align !115
  %i.j = load i32, ptr %i.i, align 4, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !12
  %i.m = load i64, ptr %i.g, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN7rocksdb19BijectiveUnhash2x64EmmPmS0_(i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %2)
  %i.o = zext i32 %i.j to i64
  %i.p = load i64, ptr %2, align 8, !tbaa !12
  %i.q = xor i64 %i.p, %i.o
  store i64 %i.q, ptr %2, align 8, !tbaa !12
  store ptr %2, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 16, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load atomic i64, ptr %i.s monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.a, align 8, !tbaa !164
  %i.u = lshr i64 %i.t, 60
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = and i8 %i.v, 1
  store i8 %i.w, ptr %i.b, align 1, !tbaa !166
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !103
  %.not.i.i6 = icmp eq ptr %i.x, null
  br i1 %.not.i.i6, label %bb.c, label %_ZNKSt8functionIFbRKN7rocksdb5SliceEPNS0_5Cache6HandleEbEEclES3_S6_b.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZSt25__throw_bad_function_callv() #33
  unreachable

_ZNKSt8functionIFbRKN7rocksdb5SliceEPNS0_5Cache6HandleEbEEclES3_S6_b.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !167
  %i.aa = call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %i.aa, label %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit, label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZNKSt8functionIFbRKN7rocksdb5SliceEPNS0_5Cache6HandleEbEEclES3_S6_b.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !73 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.ag = load ptr, ptr %1, align 8, !tbaa !26
  call void %i.ad(ptr noundef %i.ag, ptr noundef %i.af), !inline_history !77
  br label %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit

_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit: ; preds = %bb.d, %.critedge, %_ZNKSt8functionIFbRKN7rocksdb5SliceEPNS0_5Cache6HandleEbEEclES3_S6_b.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  store atomic i64 0, ptr %i.ah release, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK7rocksdb11clock_cache14BaseClockTable24IsEvictionEffortExceededERKNS1_12EvictionDataE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load atomic i32, ptr %i.a monotonic, align 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  %i.e = add i64 %i.d, 1
  %i.f = zext i32 %i.b to i64
  %i.g = mul i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !170
  %i.j = icmp ule i64 %i.g, %i.i
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb11clock_cache20FixedHyperClockTableC2EmbNS_25CacheMetadataChargePolicyEPNS_15MemoryAllocatorEPKSt8functionIFbRKNS_5SliceEPNS_5Cache6HandleEbEEPKjRKNS1_4OptsE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(192) initializes((0, 24), (64, 100), (128, 132), (136, 160)) %0, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %7, align 8, !tbaa !171
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(160) %0, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i64 %1, ptr %i.c, align 8, !tbaa !159
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.speculated.i.i = tail call noundef range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %i.e = select i1 %2, i32 -2147483648, i32 0
  %i.f = or disjoint i32 %.sroa.speculated.i.i, %i.e
  store i32 %i.f, ptr %i.d, align 32, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %3, ptr %i.g, align 64, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %4, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %5, ptr %i.i, align 16, !tbaa !162
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %6, ptr %i.j, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !173
  %i.n = uitofp i64 %i.m to double
  %i.o = fmul nnan double %i.n, f0x3FE6666666666666 ; 2 uses
  %i.p = icmp eq i32 %3, 1                        ; 3 uses
  %i.q = fadd double %i.o, 6.400000e+01
  %spec.select.i = select i1 %i.p, double %i.q, double %i.o
  %i.r = uitofp i64 %1 to double
  %i.s = fdiv double %i.r, %spec.select.i
  %i.t = fadd double %i.s, f0x3FEFFFFDE7210BE9
  %i.u = fptoui double %i.t to i64
  %i.v = shl i64 %i.u, 1
  %i.w = add i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = xor i32 %i.y, 63                         ; 2 uses
  br i1 %i.p, label %._ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit_crit_edge, label %_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit

._ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit_crit_edge: ; preds = %bb.a
  %.pre = zext nneg i32 %i.z to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %._ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit_crit_edge
  %indvars.iv.i = phi i64 [ %.pre, %._ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit_crit_edge ], [ %indvars.iv.next.i, %.preheader.i ] ; 4 uses
  %i.aa = icmp ne i64 %indvars.iv.i, 0
  %i.ab = shl i64 64, %indvars.iv.i
  %i.ac = icmp ugt i64 %i.ab, %1
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.ad, label %.preheader.i, label %.loopexit.loopexit.i, !llvm.loop !175

.loopexit.loopexit.i:                             ; preds = %.preheader.i
  %8 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit

_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit: ; preds = %bb.a, %.loopexit.loopexit.i
  %.1.i = phi i32 [ %i.z, %bb.a ], [ %8, %.loopexit.loopexit.i ] ; 3 uses
  store i32 %.1.i, ptr %i.k, align 32, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %9 = zext nneg i32 %.1.i to i64                 ; 4 uses
  %notmask = shl nsw i64 -1, %9
  %i.af = xor i64 %notmask, -1
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !99
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ah = shl nuw i64 1, %9                       ; 2 uses
  %i.ai = uitofp i64 %i.ah to double
  %i.aj = fmul nnan double %i.ai, 8.400000e-01
  %i.ak = fptoui double %i.aj to i64
  store i64 %i.ak, ptr %i.ag, align 16, !tbaa !36
  %i.al = icmp ugt i32 %.1.i, 57
  %10 = shl i64 64, %9                            ; 2 uses
  %i.am = select i1 %i.al, i64 -1, i64 %10
  %i.an = tail call noalias noundef nonnull align 64 ptr @_ZnamSt11align_val_t(i64 noundef %i.am, i64 noundef 64) #34 ; 4 uses
  %i.ao = getelementptr inbounds [64 x i8], ptr %i.an, i64 %i.ah
  %i.ap = shl i64 64, %9
  %i.aq = add i64 %i.ap, -64                      ; 2 uses
  %i.ar = lshr exact i64 %i.aq, 6
  %i.as = add nuw nsw i64 %i.ar, 1
  %xtraiter = and i64 %i.as, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit, %.prol.preheader
  %i.at = phi ptr [ %i.au, %.prol.preheader ], [ %i.an, %_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(53) %i.at, i8 0, i64 53, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !176

.prol.loopexit:                                   ; preds = %.prol.preheader, %_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit
  %.unr = phi ptr [ %i.an, %_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit ], [ %i.au, %.prol.preheader ]
  %i.av = icmp ult i64 %i.aq, 448
  br i1 %i.av, label %.unr-lcssa, label %_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit.new

_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit.new: ; preds = %.prol.loopexit, %_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit.new
  %i.aw = phi ptr [ %i.be, %_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit.new ], [ %.unr, %.prol.loopexit ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(53) %i.aw, i8 0, i64 53, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(53) %i.ax, i8 0, i64 53, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(53) %i.ay, i8 0, i64 53, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(53) %i.az, i8 0, i64 53, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(53) %i.ba, i8 0, i64 53, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(53) %i.bb, i8 0, i64 53, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(53) %i.bc, i8 0, i64 53, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(53) %i.bd, i8 0, i64 53, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 512 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ao
  br i1 %i.bf, label %.unr-lcssa, label %_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit.new

.unr-lcssa:                                       ; preds = %_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE.exit.new, %.prol.loopexit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.an, ptr %i.bg, align 8, !tbaa !82
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.unr-lcssa
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = atomicrmw add ptr %i.bh, i64 %10 monotonic, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.unr-lcssa
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN7rocksdb11clock_cache20FixedHyperClockTable12CalcHashBitsEmmNS_25CacheMetadataChargePolicyE(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = uitofp i64 %1 to double
  %i.b = fmul nnan double %i.a, f0x3FE6666666666666 ; 2 uses
  %i.c = icmp eq i32 %2, 1                        ; 2 uses
  %i.d = fadd double %i.b, 6.400000e+01
  %spec.select = select i1 %i.c, double %i.d, double %i.b
  %i.e = uitofp i64 %0 to double
  %i.f = fdiv double %i.e, %spec.select
  %i.g = fadd double %i.f, f0x3FEFFFFDE7210BE9
  %i.h = fptoui double %i.g to i64
  %i.i = shl i64 %i.h, 1
  %i.j = add i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = xor i32 %i.l, 63                         ; 2 uses
  br i1 %i.c, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %3 = zext nneg i32 %i.m to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %3, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 4 uses
  %i.n = icmp ne i64 %indvars.iv, 0
  %i.o = shl i64 64, %indvars.iv
  %i.p = icmp ugt i64 %i.o, %0
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.q, label %.preheader, label %.loopexit.loopexit, !llvm.loop !175

.loopexit.loopexit:                               ; preds = %.preheader
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.1 = phi i32 [ %i.m, %bb.a ], [ %4, %.loopexit.loopexit ]
  ret i32 %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnamSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvSt11align_val_t(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb11clock_cache20FixedHyperClockTableD2Ev(ptr nofree noundef nonnull readonly align 64 captures(none) dead_on_return(192) dereferenceable(192) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.c

bb.b:                                             ; preds = %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N7rocksdb11clock_cache20FixedHyperClockTable10HandleImplESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N7rocksdb11clock_cache20FixedHyperClockTable10HandleImplEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i

_ZNKSt14default_deleteIA_N7rocksdb11clock_cache20FixedHyperClockTable10HandleImplEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i: ; preds = %bb.b
  tail call void @_ZdaPvSt11align_val_t(ptr noundef nonnull %i.d, i64 noundef 64) #32
  br label %_ZNSt10unique_ptrIA_N7rocksdb11clock_cache20FixedHyperClockTable10HandleImplESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIA_N7rocksdb11clock_cache20FixedHyperClockTable10HandleImplESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIA_N7rocksdb11clock_cache20FixedHyperClockTable10HandleImplEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit
  %.06 = phi i64 [ 0, %bb.a ], [ %i.o, %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit ] ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.06 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %i.i = and i64 %i.h, 4611686018427387904
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %.not.i5 = icmp eq ptr %i.l, null
  br i1 %.not.i5, label %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !26
  invoke void %i.l(ptr noundef %i.n, ptr noundef %i.m)
          to label %_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit unwind label %bb.f, !inline_history !77

_ZNK7rocksdb11clock_cache20ClockHandleBasicData8FreeDataEPNS_15MemoryAllocatorE.exit: ; preds = %bb.d, %bb.e, %bb.c
  %i.o = add nuw i64 %.06, 1                      ; 2 uses
  %i.p = load i32, ptr %i.a, align 32, !tbaa !112
  %i.q = zext nneg i32 %i.p to i64
  %.0.highbits = lshr i64 %i.o, %i.q
  %i.r = icmp eq i64 %.0.highbits, 0
  br i1 %i.r, label %bb.c, label %bb.b, !llvm.loop !178

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #35
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #31 ; 0 uses
  tail call void @_ZSt9terminatev() #35
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7rocksdb11clock_cache20FixedHyperClockTable11StartInsertERNS1_11InsertStateE(ptr nofree noundef nonnull readnone align 64 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN7rocksdb11clock_cache20FixedHyperClockTable12GrowIfNeededEmRNS1_11InsertStateE(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(192) %0, i64 noundef %1, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i64, ptr %i.a, align 16, !tbaa !36
  %i.c = icmp ule i64 %1, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define noundef ptr @_ZN7rocksdb11clock_cache20FixedHyperClockTable8DoInsertERKNS0_20ClockHandleBasicDataEjbRNS1_11InsertStateE(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree nonnull readnone align 1 captures(none) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.val9 = load i64, ptr %i.b, align 8, !tbaa !12
  %i.c = or i64 %.val, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !99
  %i.f = and i64 %i.e, %.val9                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.h = zext i32 %2 to i64                       ; 4 uses
  %i.i = shl nuw nsw i64 %i.h, 30
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.021.i = phi i64 [ %i.f, %bb.a ], [ %i.ba, %bb.l ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %.021.i ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 7 uses
  %i.m = atomicrmw or ptr %i.l, i64 2305843009213693952 acq_rel, align 8 ; 2 uses
  %or.cond.not.not.i.i.i.i = icmp ugt i64 %i.m, -2305843009213693953
  br i1 %or.cond.not.not.i.i.i.i, label %bb.c, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = atomicrmw add ptr %i.l, i64 %i.h acq_rel, align 8 ; 2 uses
  %spec.select.i13.i.i.i.i = icmp ugt i64 %i.n, -4611686018427387905
  br i1 %spec.select.i13.i.i.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i128, ptr %i.o, align 8
  %i.q = load i128, ptr %i.a, align 8
  %i.r = icmp ne i128 %i.p, %i.q
  %i.s = zext i1 %i.r to i32
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = atomicrmw add ptr %i.l, i64 %i.i acq_rel, align 8
  %i.u = and i64 %i.t, 1152921500311879680
  %i.v = icmp samesign ugt i64 %i.u, 576460755524648960
  br i1 %i.v, label %bb.f, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit.i.i.i, !prof !69

bb.f:                                             ; preds = %bb.e
  %i.w = atomicrmw and ptr %i.l, i64 -576460752840294401 monotonic, align 8 ; 0 uses
  br label %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.x = atomicrmw sub ptr %i.l, i64 %i.h acq_rel, align 8 ; 0 uses
  br label %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.y = icmp sgt i64 %i.n, 4611686018427387903
  br i1 %i.y, label %bb.i, label %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit.i.i.i, !prof !69

bb.i:                                             ; preds = %bb.h
  %i.z = atomicrmw sub ptr %i.l, i64 %i.h acq_rel, align 8 ; 0 uses
  br label %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit.i.i.i

_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit.i.i.i: ; preds = %bb.e, %bb.f, %bb.i, %bb.h, %bb.g, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.h ], [ true, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.aa = and i64 %i.m, 2305843009213693952
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %"_ZZN7rocksdb11clock_cache20FixedHyperClockTable8DoInsertERKNS0_20ClockHandleBasicDataEjbRNS1_11InsertStateEENK3$_0clEPNS1_10HandleImplE.exit.thread.i", label %"_ZZN7rocksdb11clock_cache20FixedHyperClockTable8DoInsertERKNS0_20ClockHandleBasicDataEjbRNS1_11InsertStateEENK3$_0clEPNS1_10HandleImplE.exit.i"

"_ZZN7rocksdb11clock_cache20FixedHyperClockTable8DoInsertERKNS0_20ClockHandleBasicDataEjbRNS1_11InsertStateEENK3$_0clEPNS1_10HandleImplE.exit.thread.i": ; preds = %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit.i.i.i
  %.neg = sext i1 %3 to i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.ab = add i32 %2, %.neg
  %i.ac = and i32 %2, 1073741823
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = and i32 %i.ab, 1073741823
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 30
  %i.ah = or disjoint i64 %i.ag, %i.ad
  %i.ai = or disjoint i64 %i.ah, -2305843009213693952
  store atomic i64 %i.ai, ptr %i.l release, align 8
  %i.aj = select i1 %.1, ptr null, ptr %i.k
  br label %"_ZN7rocksdb11clock_cache20FixedHyperClockTable8FindSlotIZNS1_8DoInsertERKNS0_20ClockHandleBasicDataEjbRNS1_11InsertStateEE3$_0ZNS1_8DoInsertES5_jbS7_E3$_1ZNS1_8DoInsertES5_jbS7_E3$_2EEPNS1_10HandleImplERKSt5arrayImLm2EERKT_RKT0_RKT1_.exit"

"_ZZN7rocksdb11clock_cache20FixedHyperClockTable8DoInsertERKNS0_20ClockHandleBasicDataEjbRNS1_11InsertStateEENK3$_0clEPNS1_10HandleImplE.exit.i": ; preds = %_ZN7rocksdb11clock_cache12_GLOBAL__N_115BeginSlotInsertERKNS0_20ClockHandleBasicDataERNS0_11ClockHandleEjPb.exit.i.i.i
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !99  ; 3 uses
  br i1 %.1, label %bb.j, label %"_ZZN7rocksdb11clock_cache20FixedHyperClockTable8DoInsertERKNS0_20ClockHandleBasicDataEjbRNS1_11InsertStateEENK3$_1clEPNS1_10HandleImplE.exit.i"

bb.j:                                             ; preds = %"_ZZN7rocksdb11clock_cache20FixedHyperClockTable8DoInsertERKNS0_20ClockHandleBasicDataEjbRNS1_11InsertStateEENK3$_0clEPNS1_10HandleImplE.exit.i"
  %i.al = load i64, ptr %i.b, align 8, !tbaa !12
  %i.am = and i64 %i.ak, %i.al                    ; 2 uses
  %i.an = load i64, ptr %i.a, align 8, !tbaa !12
  %i.ao = or i64 %i.an, 1
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %i.am ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.aq, %i.k
  br i1 %.not7.i.i.i, label %"_ZN7rocksdb11clock_cache20FixedHyperClockTable8FindSlotIZNS1_8DoInsertERKNS0_20ClockHandleBasicDataEjbRNS1_11InsertStateEE3$_0ZNS1_8DoInsertES5_jbS7_E3$_1ZNS1_8DoInsertES5_jbS7_E3$_2EEPNS1_10HandleImplERKSt5arrayImLm2EERKT_RKT0_RKT1_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ar = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %i.aq, %bb.j ]
  %.08.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i ], [ %i.am, %bb.j ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = atomicrmw sub ptr %i.as, i32 1 monotonic, align 4 ; 0 uses
  %i.au = add i64 %.08.i.i.i, %i.ao
  %i.av = load i64, ptr %i.d, align 8, !tbaa !99
  %i.aw = and i64 %i.av, %i.au                    ; 2 uses
end_hunk_0
