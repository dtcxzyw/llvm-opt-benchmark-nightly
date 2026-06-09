inline.NumInlined: 4282
inline.NumDeleted: 1948
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft7SLPTree11GetPackNodeENS2_7OpIndexE:bb.a
  %i.ce = load ptr, ptr %.021.i.i.i.i.i, align 8  ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not18.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = urem i64 %i.cg, %i.bn
  %.not19.i.i.i.i.i = icmp eq i64 %i.ch, %i.bo
  br i1 %.not19.i.i.i.i.i, label %bb.n, label %..loopexit_crit_edge22.i.i.i.i.i, !llvm.loop !16

..loopexit_crit_edge22.i.i.i.i.i:                 ; preds = %bb.o
  br label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit, !llvm.loop !16

_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i: ; preds = %bb.n, %bb.k, %bb.m
  %.sroa.07.1.i.i.i = phi ptr [ %.sroa.07.0.i.i.i, %bb.k ], [ %i.bt, %bb.m ], [ %i.ce, %bb.n ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  br label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.j, %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i, %..loopexit_crit_edge22.i.i.i.i.i, %bb.l, %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit
  %.0 = phi ptr [ %i.aq, %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit ], [ %i.cj, %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i ], [ null, %..loopexit_crit_edge22.i.i.i.i.i ], [ null, %bb.j ], [ null, %bb.l ], [ null, %.lr.ph.i.i.i.i.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree21GetIntersectPackNodesENS2_7OpIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %.not.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.0.in.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.07.0.i.i, %bb.d ]
  %.sroa.07.0.i.i = load ptr, ptr %.sroa.07.0.in.i.i, align 8 ; 4 uses
  %i.d = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.d, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.e, align 4
  %i.f = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.f, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit, label %bb.c, !llvm.loop !17

bb.e:                                             ; preds = %bb.a
  %i.g = lshr i32 %1, 4                           ; 2 uses
  %i.h = xor i32 %i.g, -1
  %i.i = shl i32 %i.g, 15
  %i.j = add i32 %i.i, %i.h                       ; 2 uses
  %i.k = lshr i32 %i.j, 12
  %i.l = xor i32 %i.k, %i.j
  %i.m = mul i32 %i.l, 5                          ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = xor i32 %i.n, %i.m
  %i.p = mul i32 %i.o, 2057                       ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %i.r = xor i32 %i.q, %i.p
  %i.s = zext i32 %i.r to i64                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = urem i64 %i.s, %i.u                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.z, align 8             ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ad, %i.s
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i = load i32, ptr %i.ab, align 8
  %i.af = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i20.i.i.i.i
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ai = icmp eq i64 %i.an, %i.s
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.ah, align 8
  %i.aj = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !18

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.021.i.i.i.i = phi ptr [ %i.al, %bb.g ], [ %i.aa, %bb.f ]
  %i.al = load ptr, ptr %.021.i.i.i.i, align 8    ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = urem i64 %i.an, %i.u
  %.not19.i.i.i.i = icmp eq i64 %i.ao, %i.v
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge22.i.i.i.i, !llvm.loop !18

..loopexit_crit_edge22.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit.thread, !llvm.loop !18

_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.d ], [ %i.aa, %bb.f ], [ %i.al, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i, i64 16
  br label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit.thread

_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.e, %..loopexit_crit_edge22.i.i.i.i, %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit
  %.0 = phi ptr [ %i.ap, %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit ], [ null, %..loopexit_crit_edge22.i.i.i.i ], [ null, %bb.c ], [ null, %bb.e ], [ null, %.lr.ph.i.i.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %4 = alloca %"class.absl::flat_hash_set.181", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %7 = alloca %"class.absl::flat_hash_set.181", align 8 ; 12 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZNK2v88internal8compiler10turboshaft8PackNode5PrintEPNS2_5GraphE, i32 noundef 269) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.2, ptr noundef %1, i64 noundef %i.f) #21
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12
  %i.g = trunc nuw i8 %.pre to i1
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.h, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 1, ptr %7, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.i = icmp eq ptr %.val, null
  br i1 %i.i, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_7SLPTree5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.d

._crit_edge.i:                                    ; preds = %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"
  %.pre.i = load i64, ptr %7, align 8             ; 3 uses
  %i.n = icmp ne i64 %.pre.i, 0
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i64 %.pre.i, 2
  br i1 %i.o, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_7SLPTree5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit", label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i: ; preds = %._crit_edge.i
  %i.p = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.q = and i64 %i.p, 65536
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i = load ptr, ptr %i.j, align 8
  %i.r = icmp ne i64 %i.q, 0
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.pre.i, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.r)
  br label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_7SLPTree5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit"

bb.d:                                             ; preds = %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", %.lr.ph.i
  %.sroa.02.026.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.cx, %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.026.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 8 uses
  store ptr %i.t, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %7, align 8                ; 6 uses
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i4.i = icmp ugt i64 %i.w, 131071
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = icmp eq ptr %i.x, %i.t                   ; 2 uses
  %or.cond.i = select i1 %.not.i.i.i.i.i4.i, i1 %i.y, i1 false
  br i1 %or.cond.i, label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", label %.thread9.i

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.z = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %sext.i.i.i.i = shl i64 %i.z, 48
  %i.aa = ashr exact i64 %sext.i.i.i.i, 48
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = xor i64 %i.ab, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw nsw i128 %i.ad, 8779197792823184629 ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae
  %i.ah = trunc i128 %i.ag to i64
  %i.ai = xor i64 %i.aa, %i.ah                    ; 4 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i = load ptr, ptr %i.k, align 8 ; 4 uses
  %i.al = insertelement <16 x i8> poison, i8 %i.ak, i64 0
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i7.i.i.i.i = phi i64 [ %i.ai, %bb.g ], [ %i.be, %bb.j ]
  %.sroa.13.0.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.bd, %bb.j ]
  %.sroa.6.0.i.i.i.i.i = and i64 %.pn.i7.i.i.i.i, %i.u ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.an, i32 0, i32 3, i32 1)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  %i.ap = load <16 x i8>, ptr %i.ao, align 1      ; 2 uses
  %i.aq = icmp eq <16 x i8> %i.am, %i.ap
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not47.i.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not47.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.sroa.017.048.i.i.i.i.i = phi i16 [ %i.ba, %bb.i ], [ %i.ar, %bb.h ] ; 3 uses
  %i.as = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.6.0.i.i.i.i.i, %i.at
  %i.av = and i64 %i.au, %i.u
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %i.ax, %i.t
  br i1 %i.ay, label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", label %bb.i, !prof !19

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.az = add i16 %.sroa.017.048.i.i.i.i.i, -1
  %i.ba = and i16 %i.az, %.sroa.017.048.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i, %bb.h
  %i.bb = icmp eq <16 x i8> %i.ap, splat (i8 -128)
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %.not44.i.i.i.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not44.i.i.i.i.i, label %bb.j, label %bb.n, !prof !20

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bd = add i64 %.sroa.13.0.i.i.i.i.i, 16       ; 2 uses
  %i.be = add i64 %i.bd, %.sroa.6.0.i.i.i.i.i
  br label %bb.h, !llvm.loop !21

.thread9.i:                                       ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.w, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread9.i
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !22
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i

bb.l:                                             ; preds = %.thread9.i
  br i1 %i.y, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !22
  store ptr %7, ptr %6, align 8, !noalias !22
  store ptr %i.b, ptr %i.l, align 8, !noalias !22
  %i.bf = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr nonnull %6, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft8PackNodeEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #21, !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !22
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !22
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bf
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !41
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.pn.i.i = phi i64 [ %i.ai, %bb.n ], [ %i.ce, %bb.p ]
  %.sroa.15.0.i.i = phi i64 [ 0, %bb.n ], [ %i.cd, %bb.p ] ; 2 uses
  %.sroa.7.0.i.i = and i64 %.pn.i.i, %i.u         ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.7.0.i.i
  call void @llvm.prefetch.p0(ptr %i.bh, i32 0, i32 3, i32 1), !noalias !41
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.7.0.i.i
  %i.bj = load <16 x i8>, ptr %i.bi, align 1, !noalias !41 ; 2 uses
  %i.bk = icmp eq <16 x i8> %i.am, %i.bj
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %.not65.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not65.i.i, label %.critedge19.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.critedge.i.i
  %.sroa.035.066.i.i = phi i16 [ %i.bu, %.critedge.i.i ], [ %i.bl, %bb.o ] ; 3 uses
  %i.bm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i.i, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = add i64 %.sroa.7.0.i.i, %i.bn
  %i.bp = and i64 %i.bo, %i.u
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !41
  %i.bs = icmp eq ptr %i.br, %i.t
  br i1 %i.bs, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, label %.critedge.i.i, !prof !19

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bt = add i16 %.sroa.035.066.i.i, -1
  %i.bu = and i16 %i.bt, %.sroa.035.066.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.i, label %.critedge19.i.i, label %.lr.ph.i.i

.critedge19.i.i:                                  ; preds = %.critedge.i.i, %bb.o
  %i.bv = icmp eq <16 x i8> %i.bj, splat (i8 -128)
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not57.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not57.i.i, label %bb.p, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i, !prof !20

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i: ; preds = %.critedge19.i.i
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = add i64 %.sroa.7.0.i.i, %i.by
  %i.ca = and i64 %i.bz, %i.u
  %i.cb = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ai, i64 %i.ca, i64 %.sroa.15.0.i.i) #21, !noalias !41
  %.sroa.0.0.copyload.i.i.i2.i26.i.i = load ptr, ptr %i.k, align 8, !noalias !41
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i.i, i64 %i.cb
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i

bb.p:                                             ; preds = %.critedge19.i.i
  %i.cd = add i64 %.sroa.15.0.i.i, 16             ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.7.0.i.i
  br label %bb.o

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i, %bb.m, %bb.k
  %.sroa.4.011.i = phi ptr [ %i.cc, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i ], [ %i.j, %bb.k ], [ %i.bg, %bb.m ]
  %i.cf = load ptr, ptr %i.b, align 8, !noalias !44 ; 2 uses
  store ptr %i.cf, ptr %.sroa.4.011.i, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i: ; preds = %.lr.ph.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i, %bb.l
  %i.cg = phi ptr [ %i.t, %bb.l ], [ %i.cf, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i ], [ %i.t, %.lr.ph.i.i ] ; 3 uses
  %i.ch = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.q, label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"

bb.q:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i
  %.val.val.i = load ptr, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = ptrtoint ptr %i.ck to i64
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.cg, align 4
  %i.cm = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.cn = add i64 %i.cm, %i.cl
  %i.co = inttoptr i64 %i.cn to ptr
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZNK2v88internal8compiler10turboshaft8PackNode5PrintEPNS2_5GraphE, i32 noundef 217) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.co)
  %i.cp = load ptr, ptr %5, align 8
  %.sroa.0.0.copyload.i3.i.i.i = load i32, ptr %i.cg, align 4
  %i.cq = lshr i32 %.sroa.0.0.copyload.i3.i.i.i, 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %.sroa.0.0.copyload.i4.i.i.i = load i32, ptr %i.cr, align 4
  %i.cs = lshr i32 %.sroa.0.0.copyload.i4.i.i.i, 4
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.1, ptr noundef %i.cp, i32 noundef %i.cq, i32 noundef %i.cs) #21
  %i.ct = load ptr, ptr %5, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.m
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.cv = load i64, ptr %i.m, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"

"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i": ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.cx = load ptr, ptr %.sroa.02.026.i, align 8  ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %._crit_edge.i, label %bb.d

"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_7SLPTree5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit": ; preds = %bb.c, %._crit_edge.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val3 = load ptr, ptr %i.cz, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 1, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i.i.i4 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i4, align 8
  %i.da = icmp eq ptr %.val3, null
  br i1 %i.da, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_7SLPTree5PrintEPKcE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashISA_EESt8equal_toISA_EEE.exit", label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_7SLPTree5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit"
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.r

._crit_edge31.i:                                  ; preds = %._crit_edge.i35
  %.pre.i36 = load i64, ptr %4, align 8           ; 3 uses
  %i.df = icmp ne i64 %.pre.i36, 0
  call void @llvm.assume(i1 %i.df)
  %i.dg = icmp ult i64 %.pre.i36, 2
  br i1 %i.dg, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_7SLPTree5PrintEPKcE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashISA_EESt8equal_toISA_EEE.exit", label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i41

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i41: ; preds = %._crit_edge31.i
  %i.dh = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i4, align 8
  %i.di = and i64 %i.dh, 65536
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i39 = load ptr, ptr %i.db, align 8
  %i.dj = icmp ne i64 %i.di, 0
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.pre.i36, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i39, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.dj)
  br label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_7SLPTree5PrintEPKcE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashISA_EESt8equal_toISA_EEE.exit"

bb.r:                                             ; preds = %._crit_edge.i35, %.lr.ph30.i
  %.sroa.02.028.i = phi ptr [ %.val3, %.lr.ph30.i ], [ %i.do, %._crit_edge.i35 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.028.i, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.02.028.i, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not26.i, label %._crit_edge.i35, label %.lr.ph.i5

._crit_edge.i35:                                  ; preds = %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i", %bb.r
  %i.do = load ptr, ptr %.sroa.02.028.i, align 8  ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %._crit_edge31.i, label %bb.r

.lr.ph.i5:                                        ; preds = %bb.r, %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"
  %.027.i = phi ptr [ %i.gu, %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i" ], [ %i.dl, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.dq = load ptr, ptr %.027.i, align 8          ; 7 uses
  store ptr %i.dq, ptr %i.a, align 8
  %i.dr = load i64, ptr %4, align 8               ; 6 uses
  %i.ds = icmp ult i64 %i.dr, 2
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i4, align 8 ; 2 uses
  %.not.i.i.i.i.i10.i = icmp ugt i64 %i.dt, 131071
  %i.du = load ptr, ptr %i.db, align 8
  %i.dv = icmp eq ptr %i.du, %i.dq                ; 2 uses
  %or.cond.i51 = select i1 %.not.i.i.i.i.i10.i, i1 %i.dv, i1 false
  br i1 %or.cond.i51, label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i", label %.thread9.i52

bb.t:                                             ; preds = %.lr.ph.i5
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i6 = load ptr, ptr %i.db, align 8 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i6, i32 0, i32 1, i32 1)
  %i.dw = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i4, align 8
  %sext.i.i.i.i7 = shl i64 %i.dw, 48
  %i.dx = ashr exact i64 %sext.i.i.i.i7, 48
  %i.dy = ptrtoint ptr %i.dq to i64
  %i.dz = xor i64 %i.dy, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.ea = zext i64 %i.dz to i128
  %i.eb = mul nuw nsw i128 %i.ea, 8779197792823184629 ; 2 uses
  %i.ec = lshr i128 %i.eb, 64
  %i.ed = xor i128 %i.ec, %i.eb
  %i.ee = trunc i128 %i.ed to i64
  %i.ef = xor i64 %i.dx, %i.ee                    ; 4 uses
  %i.eg = lshr i64 %i.ef, 57
  %i.eh = trunc nuw nsw i64 %i.eg to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i8 = load ptr, ptr %i.dc, align 8 ; 4 uses
  %i.ei = insertelement <16 x i8> poison, i8 %i.eh, i64 0
  %i.ej = shufflevector <16 x i8> %i.ei, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.pn.i7.i.i.i.i9 = phi i64 [ %i.ef, %bb.t ], [ %i.fb, %bb.w ]
  %.sroa.13.0.i.i.i.i.i10 = phi i64 [ 0, %bb.t ], [ %i.fa, %bb.w ]
  %.sroa.6.0.i.i.i.i.i11 = and i64 %.pn.i7.i.i.i.i9, %i.dr ; 4 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i8, i64 %.sroa.6.0.i.i.i.i.i11
  call void @llvm.prefetch.p0(ptr %i.ek, i32 0, i32 3, i32 1)
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i6, i64 %.sroa.6.0.i.i.i.i.i11
  %i.em = load <16 x i8>, ptr %i.el, align 1      ; 2 uses
  %i.en = icmp eq <16 x i8> %i.ej, %i.em
  %i.eo = bitcast <16 x i1> %i.en to i16          ; 2 uses
  %.not47.i.i.i.i.i12 = icmp eq i16 %i.eo, 0
  br i1 %.not47.i.i.i.i.i12, label %._crit_edge.i.i.i.i.i16, label %.lr.ph.i.i.i.i.i13

.lr.ph.i.i.i.i.i13:                               ; preds = %bb.u, %bb.v
  %.sroa.017.048.i.i.i.i.i14 = phi i16 [ %i.ex, %bb.v ], [ %i.eo, %bb.u ] ; 3 uses
  %i.ep = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i.i.i14, i1 true)
  %i.eq = zext nneg i16 %i.ep to i64
  %i.er = add i64 %.sroa.6.0.i.i.i.i.i11, %i.eq
  %i.es = and i64 %i.er, %i.dr
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i8, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = icmp eq ptr %i.eu, %i.dq
  br i1 %i.ev, label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i", label %bb.v, !prof !19

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i13
  %i.ew = add i16 %.sroa.017.048.i.i.i.i.i14, -1
  %i.ex = and i16 %i.ew, %.sroa.017.048.i.i.i.i.i14 ; 2 uses
  %.not.i.i.i.i.i15 = icmp eq i16 %i.ex, 0
  br i1 %.not.i.i.i.i.i15, label %._crit_edge.i.i.i.i.i16, label %.lr.ph.i.i.i.i.i13

._crit_edge.i.i.i.i.i16:                          ; preds = %bb.v, %bb.u
  %i.ey = icmp eq <16 x i8> %i.em, splat (i8 -128)
  %i.ez = bitcast <16 x i1> %i.ey to i16
  %.not44.i.i.i.i.i17 = icmp eq i16 %i.ez, 0
  br i1 %.not44.i.i.i.i.i17, label %bb.w, label %bb.aa, !prof !20

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i16
  %i.fa = add i64 %.sroa.13.0.i.i.i.i.i10, 16     ; 2 uses
  %i.fb = add i64 %i.fa, %.sroa.6.0.i.i.i.i.i11
  br label %bb.u, !llvm.loop !21

.thread9.i52:                                     ; preds = %bb.s
  %.not.i.i.i.i.i.i.i.i.i.i.i53 = icmp ult i64 %i.dt, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i53, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread9.i52
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i4, align 8, !noalias !45
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i31

bb.y:                                             ; preds = %.thread9.i52
  br i1 %i.dv, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i33, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !45
  store ptr %4, ptr %3, align 8, !noalias !45
  store ptr %i.a, ptr %i.dd, align 8, !noalias !45
  %i.fc = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft8PackNodeEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #21, !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !45
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i55 = load ptr, ptr %i.dc, align 8, !noalias !45
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i55, i64 %i.fc
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i31

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i16
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i6, i32 0, i32 1, i32 1), !noalias !64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.pn.i.i18 = phi i64 [ %i.ef, %bb.aa ], [ %i.gb, %bb.ac ]
  %.sroa.15.0.i.i19 = phi i64 [ 0, %bb.aa ], [ %i.ga, %bb.ac ] ; 2 uses
  %.sroa.7.0.i.i20 = and i64 %.pn.i.i18, %i.dr    ; 5 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i8, i64 %.sroa.7.0.i.i20
  call void @llvm.prefetch.p0(ptr %i.fe, i32 0, i32 3, i32 1), !noalias !64
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i6, i64 %.sroa.7.0.i.i20
  %i.fg = load <16 x i8>, ptr %i.ff, align 1, !noalias !64 ; 2 uses
  %i.fh = icmp eq <16 x i8> %i.ej, %i.fg
  %i.fi = bitcast <16 x i1> %i.fh to i16          ; 2 uses
  %.not65.i.i21 = icmp eq i16 %i.fi, 0
  br i1 %.not65.i.i21, label %.critedge19.i.i26, label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %bb.ab, %.critedge.i.i24
  %.sroa.035.066.i.i23 = phi i16 [ %i.fr, %.critedge.i.i24 ], [ %i.fi, %bb.ab ] ; 3 uses
  %i.fj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i.i23, i1 true)
  %i.fk = zext nneg i16 %i.fj to i64
  %i.fl = add i64 %.sroa.7.0.i.i20, %i.fk
  %i.fm = and i64 %i.fl, %i.dr
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i8, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !64
  %i.fp = icmp eq ptr %i.fo, %i.dq
  br i1 %i.fp, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i33, label %.critedge.i.i24, !prof !19

.critedge.i.i24:                                  ; preds = %.lr.ph.i.i22
  %i.fq = add i16 %.sroa.035.066.i.i23, -1
  %i.fr = and i16 %i.fq, %.sroa.035.066.i.i23     ; 2 uses
  %.not.i.i25 = icmp eq i16 %i.fr, 0
  br i1 %.not.i.i25, label %.critedge19.i.i26, label %.lr.ph.i.i22

.critedge19.i.i26:                                ; preds = %.critedge.i.i24, %bb.ab
  %i.fs = icmp eq <16 x i8> %i.fg, splat (i8 -128)
  %i.ft = bitcast <16 x i1> %i.fs to i16          ; 2 uses
  %.not57.i.i27 = icmp eq i16 %i.ft, 0
  br i1 %.not57.i.i27, label %bb.ac, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i28, !prof !20

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i28: ; preds = %.critedge19.i.i26
  %i.fu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ft, i1 true)
  %i.fv = zext nneg i16 %i.fu to i64
  %i.fw = add i64 %.sroa.7.0.i.i20, %i.fv
  %i.fx = and i64 %i.fw, %i.dr
  %i.fy = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ef, i64 %i.fx, i64 %.sroa.15.0.i.i19) #21, !noalias !64
  %.sroa.0.0.copyload.i.i.i2.i26.i.i30 = load ptr, ptr %i.dc, align 8, !noalias !64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i.i30, i64 %i.fy
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i31

bb.ac:                                            ; preds = %.critedge19.i.i26
  %i.ga = add i64 %.sroa.15.0.i.i19, 16           ; 2 uses
  %i.gb = add i64 %i.ga, %.sroa.7.0.i.i20
  br label %bb.ab

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i31: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i28, %bb.z, %bb.x
  %.sroa.4.011.i32 = phi ptr [ %i.fz, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i28 ], [ %i.db, %bb.x ], [ %i.fd, %bb.z ]
  %i.gc = load ptr, ptr %i.a, align 8, !noalias !67 ; 2 uses
  store ptr %i.gc, ptr %.sroa.4.011.i32, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i33

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i33: ; preds = %.lr.ph.i.i22, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i31, %bb.y
  %i.gd = phi ptr [ %i.dq, %bb.y ], [ %i.gc, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i31 ], [ %i.dq, %.lr.ph.i.i22 ] ; 3 uses
  %i.ge = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.ad, label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"

bb.ad:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i33
  %.val.val.i42 = load ptr, ptr %0, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.val.val.i42, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %.sroa.0.0.copyload.i.i.i.i43 = load i32, ptr %i.gd, align 4
  %i.gj = zext i32 %.sroa.0.0.copyload.i.i.i.i43 to i64
  %i.gk = add i64 %i.gj, %i.gi
  %i.gl = inttoptr i64 %i.gk to ptr
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZNK2v88internal8compiler10turboshaft8PackNode5PrintEPNS2_5GraphE, i32 noundef 217) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.gl)
  %i.gm = load ptr, ptr %2, align 8
  %.sroa.0.0.copyload.i3.i.i.i44 = load i32, ptr %i.gd, align 4
  %i.gn = lshr i32 %.sroa.0.0.copyload.i3.i.i.i44, 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %.sroa.0.0.copyload.i4.i.i.i45 = load i32, ptr %i.go, align 4
  %i.gp = lshr i32 %.sroa.0.0.copyload.i4.i.i.i45, 4
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.1, ptr noundef %i.gm, i32 noundef %i.gn, i32 noundef %i.gp) #21
  %i.gq = load ptr, ptr %2, align 8               ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.de
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46: ; preds = %bb.ad
  %i.gs = load i64, ptr %i.de, align 8
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"

"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i": ; preds = %.lr.ph.i.i.i.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i33, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.gu = getelementptr inbounds nuw i8, ptr %.027.i, i64 8 ; 2 uses
  %.not.i34 = icmp eq ptr %i.gu, %i.dn
  br i1 %.not.i34, label %._crit_edge.i35, label %.lr.ph.i5

"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_7SLPTree5PrintEPKcE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashISA_EESt8equal_toISA_EEE.exit": ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_7SLPTree5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit", %._crit_edge31.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_7SLPTree5PrintEPKcE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashISA_EESt8equal_toISA_EEE.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft7SLPTree15HasReorderInputERKNS2_9NodeGroupE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8
  %.not.not.i.i = icmp eq i64 %i.b, 0             ; 2 uses
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.0.in.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.07.0.i.i, %bb.d ]
  %.sroa.07.0.i.i = load ptr, ptr %.sroa.07.0.in.i.i, align 8 ; 3 uses
  %i.d = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.d, label %.loopexit58, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.e, align 4
  %i.f = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.f, label %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit, label %bb.c, !llvm.loop !68

bb.e:                                             ; preds = %bb.a
  %i.g = lshr i32 %.sroa.0.0.copyload.i, 4        ; 2 uses
  %i.h = xor i32 %i.g, -1
  %i.i = shl i32 %i.g, 15
  %i.j = add i32 %i.i, %i.h                       ; 2 uses
  %i.k = lshr i32 %i.j, 12
  %i.l = xor i32 %i.k, %i.j
  %i.m = mul i32 %i.l, 5                          ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = xor i32 %i.n, %i.m
  %i.p = mul i32 %i.o, 2057                       ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %i.r = xor i32 %i.q, %i.p
  %i.s = zext i32 %i.r to i64                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = urem i64 %i.s, %i.u                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i642 = load i32, ptr %i.aa, align 4
  br label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ae, %i.s
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i = load i32, ptr %i.ac, align 8
  %i.ag = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i.i.i20.i.i.i.i
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aj = icmp eq i64 %i.ao, %i.s
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !69

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.021.i.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.ab, %bb.f ]
  %i.am = load ptr, ptr %.021.i.i.i.i, align 8    ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not18.i.i.i.i, label %.loopexit58, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = urem i64 %i.ao, %i.u
  %.not19.i.i.i.i = icmp eq i64 %i.ap, %i.v
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge22.i.i.i.i, !llvm.loop !69

..loopexit_crit_edge22.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit58, !llvm.loop !69

.loopexit58:                                      ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge22.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i6 = load i32, ptr %i.aq, align 4 ; 3 uses
  br i1 %.not.not.i.i, label %bb.i, label %.loopexit58._crit_edge

.loopexit58._crit_edge:                           ; preds = %.loopexit58
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre73 = load ptr, ptr %.phi.trans.insert72, align 8
  br label %bb.l

bb.i:                                             ; preds = %.loopexit58
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.07.0.in.i.i18 = phi ptr [ %i.ar, %bb.i ], [ %.sroa.07.0.i.i19, %bb.k ]
  %.sroa.07.0.i.i19 = load ptr, ptr %.sroa.07.0.in.i.i18, align 8 ; 3 uses
  %i.as = icmp eq ptr %.sroa.07.0.i.i19, null
  br i1 %i.as, label %.loopexit54, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i19, i64 8
  %.sroa.0.0.copyload.i.i.i.i20 = load i32, ptr %i.at, align 4
  %i.au = icmp eq i32 %.sroa.0.0.copyload.i6, %.sroa.0.0.copyload.i.i.i.i20
  br i1 %i.au, label %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit, label %bb.j, !llvm.loop !68

bb.l:                                             ; preds = %.loopexit58._crit_edge, %.thread
  %i.av = phi ptr [ %i.x, %.thread ], [ %.pre73, %.loopexit58._crit_edge ]
  %i.aw = phi i64 [ %i.u, %.thread ], [ %.pre, %.loopexit58._crit_edge ] ; 2 uses
  %.sroa.0.0.copyload.i643 = phi i32 [ %.sroa.0.0.copyload.i642, %.thread ], [ %.sroa.0.0.copyload.i6, %.loopexit58._crit_edge ] ; 6 uses
  %i.ax = lshr i32 %.sroa.0.0.copyload.i643, 4    ; 2 uses
  %i.ay = xor i32 %i.ax, -1
  %i.az = shl i32 %i.ax, 15
  %i.ba = add i32 %i.az, %i.ay                    ; 2 uses
  %i.bb = lshr i32 %i.ba, 12
  %i.bc = xor i32 %i.bb, %i.ba
  %i.bd = mul i32 %i.bc, 5                        ; 2 uses
  %i.be = lshr i32 %i.bd, 4
  %i.bf = xor i32 %i.be, %i.bd
  %i.bg = mul i32 %i.bf, 2057                     ; 2 uses
  %i.bh = lshr i32 %i.bg, 16
  %i.bi = xor i32 %i.bh, %i.bg
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %i.bk = urem i64 %i.bj, %i.aw                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i9, label %.loopexit54, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = icmp eq i64 %i.bq, %i.bj
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i10 = load i32, ptr %i.bo, align 8
  %i.bs = icmp eq i32 %.sroa.0.0.copyload.i643, %.sroa.0.0.copyload.i.i.i20.i.i.i.i10
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %i.bt, label %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit, label %.lr.ph.i.i.i.i11

bb.n:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.bv = icmp eq i64 %i.ca, %i.bj
  %.sroa.0.0.copyload.i.i.i.i.i.i.i17 = load i32, ptr %i.bu, align 8
  %i.bw = icmp eq i32 %.sroa.0.0.copyload.i643, %.sroa.0.0.copyload.i.i.i.i.i.i.i17
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit, label %.lr.ph.i.i.i.i11, !llvm.loop !69

.lr.ph.i.i.i.i11:                                 ; preds = %bb.m, %bb.n
  %.021.i.i.i.i12 = phi ptr [ %i.by, %bb.n ], [ %i.bn, %bb.m ]
  %i.by = load ptr, ptr %.021.i.i.i.i12, align 8  ; 4 uses
  %.not18.i.i.i.i13 = icmp eq ptr %i.by, null
  br i1 %.not18.i.i.i.i13, label %.loopexit54, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8            ; 2 uses
  %i.cb = urem i64 %i.ca, %i.aw
  %.not19.i.i.i.i14 = icmp eq i64 %i.cb, %i.bk
  br i1 %.not19.i.i.i.i14, label %bb.n, label %..loopexit_crit_edge22.i.i.i.i15, !llvm.loop !69

..loopexit_crit_edge22.i.i.i.i15:                 ; preds = %bb.o
  br label %.loopexit54, !llvm.loop !69

.loopexit54:                                      ; preds = %.lr.ph.i.i.i.i11, %bb.j, %..loopexit_crit_edge22.i.i.i.i15, %bb.l
  %.sroa.0.0.copyload.i644.ph = phi i32 [ %.sroa.0.0.copyload.i6, %bb.j ], [ %.sroa.0.0.copyload.i643, %bb.l ], [ %.sroa.0.0.copyload.i643, %..loopexit_crit_edge22.i.i.i.i15 ], [ %.sroa.0.0.copyload.i643, %.lr.ph.i.i.i.i11 ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 272
  %i.cf = load i64, ptr %i.ce, align 8
  %.not.not.i.i.i = icmp eq i64 %i.cf, 0          ; 2 uses
  br i1 %.not.not.i.i.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.loopexit54
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 264
  br label %bb.q
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft7SLPTreeC2ERNS2_5GraphEPNS2_17WasmRevecAnalyzerEPNS0_4ZoneE:bb.a
bb.h:                                             ; preds = %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit
  %i.al = icmp eq i64 %i.ai, 1
  br i1 %i.al, label %bb.i, label %bb.j, !prof !20

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.ad, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_10ZoneVectorIPNS3_8PackNodeEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.an = icmp ult i64 %i.ai, 2305843009213693951
  br i1 %i.an, label %bb.l, label %bb.k, !prof !19

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ao = shl nuw i64 %i.ai, 3                    ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = sub i64 %i.aq, %i.as
  %i.au = icmp ugt i64 %i.ao, %i.at
  br i1 %i.au, label %bb.m, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_10ZoneVectorIPNS7_8PackNodeEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, !prof !20

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.am, i64 noundef %i.ao) #21
  %.pre.i.i.i.i.i.i.i.i.i7 = load i64, ptr %i.ar, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_10ZoneVectorIPNS7_8PackNodeEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_10ZoneVectorIPNS7_8PackNodeEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.av = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i7, %bb.m ], [ %i.as, %bb.l ] ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = add i64 %i.av, %i.ao
  store i64 %i.ax, ptr %i.ar, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.ao, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_10ZoneVectorIPNS3_8PackNodeEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_10ZoneVectorIPNS3_8PackNodeEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_10ZoneVectorIPNS7_8PackNodeEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.i
  %.0.i.i.i.i6 = phi ptr [ %i.ad, %bb.i ], [ %i.aw, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_10ZoneVectorIPNS7_8PackNodeEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i ]
  store ptr %.0.i.i.i.i6, ptr %i.ac, align 8
  store i64 %i.ai, ptr %i.ae, align 8
  br label %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexENS0_10ZoneVectorIPNS3_8PackNodeEEENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit

_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexENS0_10ZoneVectorIPNS3_8PackNodeEEENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit: ; preds = %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_10ZoneVectorIPNS3_8PackNodeEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.az = load ptr, ptr %i.b, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  store i64 %i.ba, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  store ptr %i.bc, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store i64 1, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.bh = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 noundef 0) #21 ; 5 uses
  %i.bi = load i64, ptr %i.bd, align 8
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.n, label %_ZN2v88internal16ZoneUnorderedSetINS0_8compiler10turboshaft7OpIndexENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit

bb.n:                                             ; preds = %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexENS0_10ZoneVectorIPNS3_8PackNodeEEENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit
  %i.bk = icmp eq i64 %i.bh, 1
  br i1 %i.bk, label %bb.o, label %bb.p, !prof !20

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.bc, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.bm = icmp ult i64 %i.bh, 2305843009213693951
  br i1 %i.bm, label %bb.r, label %bb.q, !prof !19

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = shl nuw i64 %i.bh, 3                    ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = sub i64 %i.bp, %i.br
  %i.bt = icmp ugt i64 %i.bn, %i.bs
  br i1 %i.bt, label %bb.s, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_8compiler10turboshaft7OpIndexELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, !prof !20

bb.s:                                             ; preds = %bb.r
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i64 noundef %i.bn) #21
  %.pre.i.i.i.i.i.i.i.i.i9 = load i64, ptr %i.bq, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_8compiler10turboshaft7OpIndexELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_8compiler10turboshaft7OpIndexELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %i.bu = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i9, %bb.s ], [ %i.br, %bb.r ] ; 2 uses
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = add i64 %i.bu, %i.bn
  store i64 %i.bw, ptr %i.bq, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bv, i8 0, i64 %i.bn, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_8compiler10turboshaft7OpIndexELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.o
  %.0.i.i.i.i8 = phi ptr [ %i.bc, %bb.o ], [ %i.bv, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_8compiler10turboshaft7OpIndexELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i ]
  store ptr %.0.i.i.i.i8, ptr %i.bb, align 8
  store i64 %i.bh, ptr %i.bd, align 8
  br label %_ZN2v88internal16ZoneUnorderedSetINS0_8compiler10turboshaft7OpIndexENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit

_ZN2v88internal16ZoneUnorderedSetINS0_8compiler10turboshaft7OpIndexENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit: ; preds = %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexENS0_10ZoneVectorIPNS3_8PackNodeEEENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %2 = alloca %"class.absl::flat_hash_set.181", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %4 = alloca %"class.absl::flat_hash_set.181", align 8 ; 12 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv, i32 noundef 1525) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.64) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.val = load ptr, ptr %i.g, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 1, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.d

._crit_edge.i:                                    ; preds = %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i"
  %.pre65.i = load i64, ptr %4, align 8           ; 3 uses
  %i.q = icmp ne i64 %.pre65.i, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = icmp ult i64 %.pre65.i, 2
  br i1 %i.r, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit", label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i: ; preds = %._crit_edge.i
  %i.s = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.t = and i64 %i.s, 65536
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i = load ptr, ptr %i.i, align 8
  %i.u = icmp ne i64 %i.t, 0
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.pre65.i, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.u)
  br label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit"

bb.d:                                             ; preds = %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i", %.lr.ph.i
  %.sroa.02.039.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.gm, %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.039.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 8 uses
  store ptr %i.w, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %4, align 8                ; 6 uses
  %i.y = icmp ult i64 %i.x, 2
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i4.i = icmp ugt i64 %i.z, 131071
  %i.aa = load ptr, ptr %i.i, align 8
  %i.ab = icmp eq ptr %i.aa, %i.w                 ; 2 uses
  %or.cond.i = select i1 %.not.i.i.i.i.i4.i, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i", label %.thread8.i

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.ac = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %sext.i.i.i.i = shl i64 %i.ac, 48
  %i.ad = ashr exact i64 %sext.i.i.i.i, 48
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = xor i64 %i.ae, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.ag = zext i64 %i.af to i128
  %i.ah = mul nuw nsw i128 %i.ag, 8779197792823184629 ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64
  %i.al = xor i64 %i.ad, %i.ak                    ; 4 uses
  %i.am = lshr i64 %i.al, 57
  %i.an = trunc nuw nsw i64 %i.am to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i7.i.i.i.i = phi i64 [ %i.al, %bb.g ], [ %i.bh, %bb.j ]
  %.sroa.13.0.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.bg, %bb.j ]
  %.sroa.6.0.i.i.i.i.i = and i64 %.pn.i7.i.i.i.i, %i.x ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1      ; 2 uses
  %i.at = icmp eq <16 x i8> %i.ap, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not47.i.i.i.i.i = icmp eq i16 %i.au, 0
  br i1 %.not47.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.sroa.017.048.i.i.i.i.i = phi i16 [ %i.bd, %bb.i ], [ %i.au, %bb.h ] ; 3 uses
  %i.av = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.6.0.i.i.i.i.i, %i.aw
  %i.ay = and i64 %i.ax, %i.x
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %i.ba, %i.w
  br i1 %i.bb, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i", label %bb.i, !prof !19

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bc = add i16 %.sroa.017.048.i.i.i.i.i, -1
  %i.bd = and i16 %i.bc, %.sroa.017.048.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i, %bb.h
  %i.be = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bf = bitcast <16 x i1> %i.be to i16
  %.not44.i.i.i.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not44.i.i.i.i.i, label %bb.j, label %bb.n, !prof !20

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bg = add i64 %.sroa.13.0.i.i.i.i.i, 16       ; 2 uses
  %i.bh = add i64 %i.bg, %.sroa.6.0.i.i.i.i.i
  br label %bb.h, !llvm.loop !21

.thread8.i:                                       ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.z, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread8.i
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !103
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i

bb.l:                                             ; preds = %.thread8.i
  br i1 %i.ab, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !103
  store ptr %4, ptr %3, align 8, !noalias !103
  store ptr %i.b, ptr %i.k, align 8, !noalias !103
  %i.bi = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft8PackNodeEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #21, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !103
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !103
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bi
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !122
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.pn.i.i = phi i64 [ %i.al, %bb.n ], [ %i.ch, %bb.p ]
  %.sroa.15.0.i.i = phi i64 [ 0, %bb.n ], [ %i.cg, %bb.p ] ; 2 uses
  %.sroa.7.0.i.i = and i64 %.pn.i.i, %i.x         ; 5 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.7.0.i.i
  call void @llvm.prefetch.p0(ptr %i.bk, i32 0, i32 3, i32 1), !noalias !122
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.7.0.i.i
  %i.bm = load <16 x i8>, ptr %i.bl, align 1, !noalias !122 ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.ap, %i.bm
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not65.i.i = icmp eq i16 %i.bo, 0
  br i1 %.not65.i.i, label %.critedge19.i.i, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %bb.o, %.critedge.i6.i
  %.sroa.035.066.i.i = phi i16 [ %i.bx, %.critedge.i6.i ], [ %i.bo, %bb.o ] ; 3 uses
  %i.bp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.7.0.i.i, %i.bq
  %i.bs = and i64 %i.br, %i.x
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !122
  %i.bv = icmp eq ptr %i.bu, %i.w
  br i1 %i.bv, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, label %.critedge.i6.i, !prof !19

.critedge.i6.i:                                   ; preds = %.lr.ph.i5.i
  %i.bw = add i16 %.sroa.035.066.i.i, -1
  %i.bx = and i16 %i.bw, %.sroa.035.066.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not.i.i, label %.critedge19.i.i, label %.lr.ph.i5.i

.critedge19.i.i:                                  ; preds = %.critedge.i6.i, %bb.o
  %i.by = icmp eq <16 x i8> %i.bm, splat (i8 -128)
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not57.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not57.i.i, label %bb.p, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread13.i, !prof !20

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread13.i: ; preds = %.critedge19.i.i
  %i.ca = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = add i64 %.sroa.7.0.i.i, %i.cb
  %i.cd = and i64 %i.cc, %i.x
  %i.ce = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.al, i64 %i.cd, i64 %.sroa.15.0.i.i) #21, !noalias !122
  %.sroa.0.0.copyload.i.i.i2.i26.i.i = load ptr, ptr %i.j, align 8, !noalias !122
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i.i, i64 %i.ce
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i

bb.p:                                             ; preds = %.critedge19.i.i
  %i.cg = add i64 %.sroa.15.0.i.i, 16             ; 2 uses
  %i.ch = add i64 %i.cg, %.sroa.7.0.i.i
  br label %bb.o

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread13.i, %bb.m, %bb.k
  %.sroa.4.010.i = phi ptr [ %i.cf, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread13.i ], [ %i.i, %bb.k ], [ %i.bj, %bb.m ]
  %i.ci = load ptr, ptr %i.b, align 8, !noalias !125 ; 2 uses
  store ptr %i.ci, ptr %.sroa.4.010.i, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i: ; preds = %.lr.ph.i5.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i, %bb.l
  %i.cj = phi ptr [ %i.w, %bb.l ], [ %i.ci, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i ], [ %i.w, %.lr.ph.i5.i ] ; 4 uses
  %i.ck = load ptr, ptr %i.l, align 8, !nonnull !13, !align !70
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cj, align 4 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.cp = add i64 %i.cn, %i.co
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i8, ptr %i.cq, align 4
  %i.cs = icmp eq i8 %i.cr, 78
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %.sroa.0.0.copyload.i41.i.i = load i32, ptr %i.ct, align 4
  %i.cu = icmp ugt i32 %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.copyload.i41.i.i
  br i1 %i.cu, label %.loopexit79.sink.split.i.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i"

bb.r:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 44
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = icmp eq i8 %i.cw, 1
  br i1 %i.cx, label %.loopexit79.sink.split.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.cy, align 4 ; 2 uses
  %i.cz = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i
  br i1 %i.cz, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i", label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.s
  %.0..0..0.50 = load i32, ptr %i.c, align 4
  %i.da = add nsw i32 %.0..0..0.50, 1
  store i32 %i.da, ptr %i.c, align 4
  %i.db = load ptr, ptr %i.p, align 8
  %i.dc = call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft6UseMap4usesENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(96) %i.db, i32 %.sroa.0.0.copyload.i.i.i.i) #21 ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.dc, 0      ; 2 uses
  %i.de = extractvalue { ptr, i64 } %i.dc, 1      ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.de, 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx.i.i
  %.not3687.i.i = icmp eq i64 %i.de, 0
  br i1 %.not3687.i.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i.i
  %i.dg = load i64, ptr %i.m, align 8
  %.not.not.i.i.i.i.i = icmp eq i64 %i.dg, 0      ; 2 uses
  %i.dh = load i64, ptr %i.n, align 8             ; 4 uses
  %i.di = load ptr, ptr %i.o, align 8             ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ab, %.lr.ph.i.i
  %.03588.i.i = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %i.gj, %bb.ab ] ; 2 uses
  %i.dj = load i32, ptr %.03588.i.i, align 4      ; 10 uses
  br i1 %.not.not.i.i.i.i.i, label %.preheader91.i.i, label %bb.v

.preheader91.i.i:                                 ; preds = %bb.t, %bb.u
  %.sroa.07.0.in.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i, %bb.u ], [ %i.g, %bb.t ]
  %.sroa.07.0.i.i.i.i.i = load ptr, ptr %.sroa.07.0.in.i.i.i.i.i, align 8 ; 4 uses
  %i.dk = icmp eq ptr %.sroa.07.0.i.i.i.i.i, null
  br i1 %i.dk, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %.preheader91.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.dl, align 4
  %i.dm = icmp eq i32 %i.dj, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  br i1 %i.dm, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.i.i, label %.preheader91.i.i, !llvm.loop !14

bb.v:                                             ; preds = %bb.t
  %i.dn = lshr i32 %i.dj, 4                       ; 2 uses
  %i.do = xor i32 %i.dn, -1
  %i.dp = shl i32 %i.dn, 15
  %i.dq = add i32 %i.dp, %i.do                    ; 2 uses
  %i.dr = lshr i32 %i.dq, 12
  %i.ds = xor i32 %i.dr, %i.dq
  %i.dt = mul i32 %i.ds, 5                        ; 2 uses
  %i.du = lshr i32 %i.dt, 4
  %i.dv = xor i32 %i.du, %i.dt
  %i.dw = mul i32 %i.dv, 2057                     ; 2 uses
  %i.dx = lshr i32 %i.dw, 16
  %i.dy = xor i32 %i.dx, %i.dw
  %i.dz = zext i32 %i.dy to i64                   ; 3 uses
  %i.ea = urem i64 %i.dz, %i.dh                   ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = load ptr, ptr %i.ec, align 8            ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = icmp eq i64 %i.eg, %i.dz
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i.i.i = load i32, ptr %i.ee, align 8
  %i.ei = icmp eq i32 %i.dj, %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i.i.i
  %i.ej = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %i.ej, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread72.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.y
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.el = icmp eq i64 %i.eq, %i.dz
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ek, align 8
  %i.em = icmp eq i32 %i.dj, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.en = select i1 %i.el, i1 %i.em, i1 false
  br i1 %i.en, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !16

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.w, %bb.x
  %.021.i.i.i.i.i.i.i = phi ptr [ %i.eo, %bb.x ], [ %i.ed, %bb.w ]
  %i.eo = load ptr, ptr %.021.i.i.i.i.i.i.i, align 8 ; 5 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %i.er = urem i64 %i.eq, %i.dh
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.er, %i.ea
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.x, label %..loopexit_crit_edge22.i.i.i.i.i.i.i, !llvm.loop !16

..loopexit_crit_edge22.i.i.i.i.i.i.i:             ; preds = %bb.y
  br label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, !llvm.loop !16

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.i.i: ; preds = %bb.x, %bb.u
  %.sroa.07.1.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i, %bb.u ], [ %i.eo, %bb.x ]
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  %.not37.i.i = icmp eq ptr %i.et, null
  br i1 %.not37.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, label %bb.z

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread72.i.i: ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %.not3774.i.i = icmp eq ptr %i.ev, null
  br i1 %.not3774.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i

bb.z:                                             ; preds = %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.i.i
  br i1 %.not.not.i.i.i.i.i, label %.preheader.i.i, label %.thread.i.i

.preheader.i.i:                                   ; preds = %bb.z, %.preheader.i.i
  %.sroa.07.0.in.i.i.i57.i.i = phi ptr [ %.sroa.07.0.i.i.i58.i.i, %.preheader.i.i ], [ %i.g, %bb.z ]
  %.sroa.07.0.i.i.i58.i.i = load ptr, ptr %.sroa.07.0.in.i.i.i57.i.i, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i58.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i59.i.i = load i32, ptr %i.ew, align 4
  %i.ex = icmp eq i32 %i.dj, %.sroa.0.0.copyload.i.i.i.i.i59.i.i
  br i1 %i.ex, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i, label %.preheader.i.i, !llvm.loop !14

.thread.i.i:                                      ; preds = %bb.z
  %.pre106.i.i = lshr i32 %i.dj, 4                ; 2 uses
  %.pre107.i.i = xor i32 %.pre106.i.i, -1
  %.pre109.i.i = shl i32 %.pre106.i.i, 15
  %.pre111.i.i = add i32 %.pre109.i.i, %.pre107.i.i ; 2 uses
  %.pre113.i.i = lshr i32 %.pre111.i.i, 12
  %.pre115.i.i = xor i32 %.pre113.i.i, %.pre111.i.i
  %.pre117.i.i = mul i32 %.pre115.i.i, 5          ; 2 uses
  %.pre119.i.i = lshr i32 %.pre117.i.i, 4
  %.pre121.i.i = xor i32 %.pre119.i.i, %.pre117.i.i
  %.pre123.i.i = mul i32 %.pre121.i.i, 2057       ; 2 uses
  %.pre125.i.i = lshr i32 %.pre123.i.i, 16
  %.pre127.i.i = xor i32 %.pre125.i.i, %.pre123.i.i
  %.pre129.i.i = zext i32 %.pre127.i.i to i64     ; 3 uses
  %.pre131.i.i = urem i64 %.pre129.i.i, %i.dh     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.pre131.i.i
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %.pre60.i = load ptr, ptr %.pre.i, align 8      ; 4 uses
  %.phi.trans.insert61.i = getelementptr inbounds nuw i8, ptr %.pre60.i, i64 24
  %.pre62.i = load i64, ptr %.phi.trans.insert61.i, align 8
  %.phi.trans.insert63.i = getelementptr inbounds nuw i8, ptr %.pre60.i, i64 8
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i47.i.pre.i = load i32, ptr %.phi.trans.insert63.i, align 8
  %i.ey = icmp eq i64 %.pre62.i, %.pre129.i.i
  %i.ez = icmp eq i32 %i.dj, %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i47.i.pre.i
  %i.fa = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %i.fa, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i, label %.lr.ph.i.i.i.i.i48.i.i

.lr.ph.i.i.i.i.i48.i.i:                           ; preds = %.thread.i.i, %.lr.ph.i.i.i.i.i48.i.i
  %.021.i.i.i.i.i49.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i48.i.i ], [ %.pre60.i, %.thread.i.i ]
  %i.fb = load ptr, ptr %.021.i.i.i.i.i49.i.i, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load i64, ptr %i.fc, align 8            ; 2 uses
  %i.fe = urem i64 %i.fd, %i.dh
  %.not19.i.i.i.i.i51.i.i = icmp eq i64 %i.fe, %.pre131.i.i
  call void @llvm.assume(i1 %.not19.i.i.i.i.i51.i.i)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fg = icmp eq i64 %i.fd, %.pre129.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i54.i.i = load i32, ptr %i.ff, align 8
  %i.fh = icmp eq i32 %i.dj, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i54.i.i
  %i.fi = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %i.fi, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i, label %.lr.ph.i.i.i.i.i48.i.i, !llvm.loop !16

_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i: ; preds = %.lr.ph.i.i.i.i.i48.i.i, %.preheader.i.i, %.thread.i.i, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread72.i.i
  %.sroa.07.1.i.i.i56.i.i = phi ptr [ %.sroa.07.0.i.i.i58.i.i, %.preheader.i.i ], [ %.pre60.i, %.thread.i.i ], [ %i.ed, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread72.i.i ], [ %i.fb, %.lr.ph.i.i.i.i.i48.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i56.i.i, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 44
  %i.fm = load i8, ptr %i.fl, align 4
  switch i8 %i.fm, label %bb.ab [
    i8 4, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i
    i8 1, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i
  ]

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i: ; preds = %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i, %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread72.i.i, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.i.i, %bb.v, %.lr.ph.i.i.i.i.i.i.i, %.preheader91.i.i, %..loopexit_crit_edge22.i.i.i.i.i.i.i
  %i.fn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.aa, label %.loopexit79.sink.split.i.i

bb.aa:                                            ; preds = %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @"__func__._ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE", i32 noundef 1563) #21
  %i.fp = lshr i32 %i.dj, 4
  %i.fq = load ptr, ptr %i.l, align 8, !nonnull !13, !align !70
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = zext i32 %i.dj to i64
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load i8, ptr %i.fw, align 4
  %i.fy = call noundef ptr @_ZN2v88internal8compiler10turboshaft10OpcodeNameENS2_6OpcodeE(i8 noundef zeroext %i.fx) #21
  %.sroa.0.0.copyload.i61.i.i = load i32, ptr %i.cy, align 4 ; 2 uses
  %i.fz = lshr i32 %.sroa.0.0.copyload.i61.i.i, 4
  %i.ga = load ptr, ptr %i.l, align 8, !nonnull !13, !align !70
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = zext i32 %.sroa.0.0.copyload.i61.i.i to i64
  %i.gf = add i64 %i.gd, %i.ge
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = load i8, ptr %i.gg, align 4
  %i.gi = call noundef ptr @_ZN2v88internal8compiler10turboshaft10OpcodeNameENS2_6OpcodeE(i8 noundef zeroext %i.gh) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.78, i32 noundef %i.fp, ptr noundef %i.fy, i32 noundef %i.fz, ptr noundef %i.gi) #21
  br label %.loopexit79.sink.split.i.i

bb.ab:                                            ; preds = %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.03588.i.i, i64 4 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.gj, %i.df
  br i1 %.not36.i.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i", label %bb.t

.loopexit79.sink.split.i.i:                       ; preds = %bb.aa, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, %bb.r, %bb.q
  %.sink.in.i.i.sroa.speculated = phi ptr [ %i.c, %bb.q ], [ %i.d, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i ], [ %i.d, %bb.aa ], [ %i.d, %bb.r ] ; 2 uses
  %i.gk = load i32, ptr %.sink.in.i.i.sroa.speculated, align 4
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %.sink.in.i.i.sroa.speculated, align 4
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i"

"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i": ; preds = %bb.ab, %.lr.ph.i.i.i.i.i, %.loopexit79.sink.split.i.i, %.critedge.i.i, %bb.s, %bb.q, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.gm = load ptr, ptr %.sroa.02.039.i, align 8  ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %._crit_edge.i, label %bb.d

"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit": ; preds = %bb.c, %._crit_edge.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val1 = load ptr, ptr %i.go, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i64 1, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i.i2 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8
  %i.gp = icmp eq ptr %.val1, null
  br i1 %i.gp, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit", label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit"
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0..0..promoted79 = load i32, ptr %i.d, align 4
  br label %bb.ac

._crit_edge31.i:                                  ; preds = %._crit_edge.i31
  store i32 %.lcssa7880, ptr %i.d, align 4
  %.pre.i32 = load i64, ptr %2, align 8           ; 3 uses
  %i.gt = icmp ne i64 %.pre.i32, 0
  call void @llvm.assume(i1 %i.gt)
  %i.gu = icmp ult i64 %.pre.i32, 2
  br i1 %i.gu, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit", label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i37

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i37: ; preds = %._crit_edge31.i
  %i.gv = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8
  %i.gw = and i64 %i.gv, 65536
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i35 = load ptr, ptr %i.gq, align 8
  %i.gx = icmp ne i64 %i.gw, 0
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %.pre.i32, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i35, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.gx)
  br label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit"

bb.ac:                                            ; preds = %._crit_edge.i31, %.lr.ph30.i
  %.lcssa7881 = phi i32 [ %.0..0..promoted79, %.lr.ph30.i ], [ %.lcssa7880, %._crit_edge.i31 ] ; 2 uses
  %.sroa.02.028.i = phi ptr [ %.val1, %.lr.ph30.i ], [ %i.hc, %._crit_edge.i31 ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.02.028.i, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.02.028.i, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.gz, %i.hb
  br i1 %.not26.i, label %._crit_edge.i31, label %.lr.ph.i3

._crit_edge.i31:                                  ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a, %bb.ac
  %.lcssa7880 = phi i32 [ %.lcssa7881, %bb.ac ], [ %i.jt, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a ] ; 2 uses
  %i.hc = load ptr, ptr %.sroa.02.028.i, align 8  ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %._crit_edge31.i, label %bb.ac

.lr.ph.i3:                                        ; preds = %bb.ac, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a
  %i.he = phi i32 [ %i.jt, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a ], [ %.lcssa7881, %bb.ac ] ; 3 uses
  %.027.i = phi ptr [ %i.ju, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a ], [ %i.gz, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.hf = load ptr, ptr %.027.i, align 8          ; 5 uses
  store ptr %i.hf, ptr %i.a, align 8
  %i.hg = load i64, ptr %2, align 8               ; 6 uses
  %i.hh = icmp ult i64 %i.hg, 2
  br i1 %i.hh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i3
  %i.hi = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8 ; 2 uses
  %.not.i.i.i.i.i10.i = icmp ugt i64 %i.hi, 131071
  %i.hj = load ptr, ptr %i.gq, align 8
  %i.hk = icmp eq ptr %i.hj, %i.hf                ; 2 uses
  %or.cond.i39 = select i1 %.not.i.i.i.i.i10.i, i1 %i.hk, i1 false
  br i1 %or.cond.i39, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a, label %.thread9.i

bb.ae:                                            ; preds = %.lr.ph.i3
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4 = load ptr, ptr %i.gq, align 8 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4, i32 0, i32 1, i32 1)
  %i.hl = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8
  %sext.i.i.i.i5 = shl i64 %i.hl, 48
  %i.hm = ashr exact i64 %sext.i.i.i.i5, 48
  %i.hn = ptrtoint ptr %i.hf to i64
  %i.ho = xor i64 %i.hn, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.hp = zext i64 %i.ho to i128
  %i.hq = mul nuw nsw i128 %i.hp, 8779197792823184629 ; 2 uses
  %i.hr = lshr i128 %i.hq, 64
  %i.hs = xor i128 %i.hr, %i.hq
  %i.ht = trunc i128 %i.hs to i64
  %i.hu = xor i64 %i.hm, %i.ht                    ; 4 uses
  %i.hv = lshr i64 %i.hu, 57
  %i.hw = trunc nuw nsw i64 %i.hv to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i6 = load ptr, ptr %i.gr, align 8 ; 4 uses
  %i.hx = insertelement <16 x i8> poison, i8 %i.hw, i64 0
  %i.hy = shufflevector <16 x i8> %i.hx, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %.pn.i7.i.i.i.i7 = phi i64 [ %i.hu, %bb.ae ], [ %i.iq, %bb.ah ]
  %.sroa.13.0.i.i.i.i.i8 = phi i64 [ 0, %bb.ae ], [ %i.ip, %bb.ah ]
  %.sroa.6.0.i.i.i.i.i9 = and i64 %.pn.i7.i.i.i.i7, %i.hg ; 4 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i6, i64 %.sroa.6.0.i.i.i.i.i9
  call void @llvm.prefetch.p0(ptr %i.hz, i32 0, i32 3, i32 1)
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4, i64 %.sroa.6.0.i.i.i.i.i9
  %i.ib = load <16 x i8>, ptr %i.ia, align 1      ; 2 uses
  %i.ic = icmp eq <16 x i8> %i.hy, %i.ib
  %i.id = bitcast <16 x i1> %i.ic to i16          ; 2 uses
  %.not47.i.i.i.i.i10 = icmp eq i16 %i.id, 0
  br i1 %.not47.i.i.i.i.i10, label %._crit_edge.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %bb.af, %bb.ag
  %.sroa.017.048.i.i.i.i.i12 = phi i16 [ %i.im, %bb.ag ], [ %i.id, %bb.af ] ; 3 uses
  %i.ie = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i.i.i12, i1 true)
  %i.if = zext nneg i16 %i.ie to i64
  %i.ig = add i64 %.sroa.6.0.i.i.i.i.i9, %i.if
  %i.ih = and i64 %i.ig, %i.hg
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i6, i64 %i.ih
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = icmp eq ptr %i.ij, %i.hf
  br i1 %i.ik, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a, label %bb.ag, !prof !19

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i11
  %i.il = add i16 %.sroa.017.048.i.i.i.i.i12, -1
  %i.im = and i16 %i.il, %.sroa.017.048.i.i.i.i.i12 ; 2 uses
  %.not.i.i.i.i.i13 = icmp eq i16 %i.im, 0
  br i1 %.not.i.i.i.i.i13, label %._crit_edge.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i11

._crit_edge.i.i.i.i.i14:                          ; preds = %bb.ag, %bb.af
  %i.in = icmp eq <16 x i8> %i.ib, splat (i8 -128)
  %i.io = bitcast <16 x i1> %i.in to i16
  %.not44.i.i.i.i.i15 = icmp eq i16 %i.io, 0
  br i1 %.not44.i.i.i.i.i15, label %bb.ah, label %bb.al, !prof !20

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i.i14
  %i.ip = add i64 %.sroa.13.0.i.i.i.i.i8, 16      ; 2 uses
  %i.iq = add i64 %i.ip, %.sroa.6.0.i.i.i.i.i9
  br label %bb.af, !llvm.loop !21

.thread9.i:                                       ; preds = %bb.ad
  %.not.i.i.i.i.i.i.i.i.i.i.i40 = icmp ult i64 %i.hi, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i40, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread9.i
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8, !noalias !126
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i28

bb.aj:                                            ; preds = %.thread9.i
  br i1 %i.hk, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i29, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21, !noalias !126
  store ptr %2, ptr %1, align 8, !noalias !126
  store ptr %i.a, ptr %i.gs, align 8, !noalias !126
  %i.ir = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft8PackNodeEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #21, !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21, !noalias !126
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i42 = load ptr, ptr %i.gr, align 8, !noalias !126
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i42, i64 %i.ir
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i28

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i14
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4, i32 0, i32 1, i32 1), !noalias !145
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.pn.i.i16 = phi i64 [ %i.hu, %bb.al ], [ %i.jq, %bb.an ]
  %.sroa.15.0.i.i17 = phi i64 [ 0, %bb.al ], [ %i.jp, %bb.an ] ; 2 uses
  %.sroa.7.0.i.i18 = and i64 %.pn.i.i16, %i.hg    ; 5 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i6, i64 %.sroa.7.0.i.i18
  call void @llvm.prefetch.p0(ptr %i.it, i32 0, i32 3, i32 1), !noalias !145
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4, i64 %.sroa.7.0.i.i18
  %i.iv = load <16 x i8>, ptr %i.iu, align 1, !noalias !145 ; 2 uses
  %i.iw = icmp eq <16 x i8> %i.hy, %i.iv
  %i.ix = bitcast <16 x i1> %i.iw to i16          ; 2 uses
  %.not65.i.i19 = icmp eq i16 %i.ix, 0
  br i1 %.not65.i.i19, label %.critedge19.i.i24, label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %bb.am, %.critedge.i.i22
  %.sroa.035.066.i.i21 = phi i16 [ %i.jg, %.critedge.i.i22 ], [ %i.ix, %bb.am ] ; 3 uses
  %i.iy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i.i21, i1 true)
  %i.iz = zext nneg i16 %i.iy to i64
  %i.ja = add i64 %.sroa.7.0.i.i18, %i.iz
  %i.jb = and i64 %i.ja, %i.hg
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i6, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !145
  %i.je = icmp eq ptr %i.jd, %i.hf
  br i1 %i.je, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i29, label %.critedge.i.i22, !prof !19

.critedge.i.i22:                                  ; preds = %.lr.ph.i.i20
  %i.jf = add i16 %.sroa.035.066.i.i21, -1
  %i.jg = and i16 %i.jf, %.sroa.035.066.i.i21     ; 2 uses
  %.not.i.i23 = icmp eq i16 %i.jg, 0
  br i1 %.not.i.i23, label %.critedge19.i.i24, label %.lr.ph.i.i20

.critedge19.i.i24:                                ; preds = %.critedge.i.i22, %bb.am
  %i.jh = icmp eq <16 x i8> %i.iv, splat (i8 -128)
  %i.ji = bitcast <16 x i1> %i.jh to i16          ; 2 uses
  %.not57.i.i25 = icmp eq i16 %i.ji, 0
  br i1 %.not57.i.i25, label %bb.an, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i, !prof !20

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i: ; preds = %.critedge19.i.i24
  %i.jj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ji, i1 true)
  %i.jk = zext nneg i16 %i.jj to i64
  %i.jl = add i64 %.sroa.7.0.i.i18, %i.jk
  %i.jm = and i64 %i.jl, %i.hg
  %i.jn = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.hu, i64 %i.jm, i64 %.sroa.15.0.i.i17) #21, !noalias !145
  %.sroa.0.0.copyload.i.i.i2.i26.i.i27 = load ptr, ptr %i.gr, align 8, !noalias !145
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i.i27, i64 %i.jn
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i28

bb.an:                                            ; preds = %.critedge19.i.i24
  %i.jp = add i64 %.sroa.15.0.i.i17, 16           ; 2 uses
  %i.jq = add i64 %i.jp, %.sroa.7.0.i.i18
  br label %bb.am

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i28: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i, %bb.ak, %bb.ai
  %.sroa.4.011.i = phi ptr [ %i.jo, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i ], [ %i.gq, %bb.ai ], [ %i.is, %bb.ak ]
  %i.jr = load ptr, ptr %i.a, align 8, !noalias !148
  store ptr %i.jr, ptr %.sroa.4.011.i, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i29

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i29: ; preds = %.lr.ph.i.i20, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i28, %bb.aj
  %i.js = add nsw i32 %i.he, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a: ; preds = %.lr.ph.i.i.i.i.i11, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i29, %bb.ad
  %i.jt = phi i32 [ %i.js, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i29 ], [ %i.he, %bb.ad ], [ %i.he, %.lr.ph.i.i.i.i.i11 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ju = getelementptr inbounds nuw i8, ptr %.027.i, i64 8 ; 2 uses
  %.not.i30 = icmp eq ptr %i.ju, %i.hb
  br i1 %.not.i30, label %._crit_edge.i31, label %.lr.ph.i3

"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit": ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit", %._crit_edge31.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.jv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %bb.ao, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit._crit_edge"

"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit._crit_edge": ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit"
  %.0..0..0.49.pre = load i32, ptr %i.c, align 4
  %.0..0..0.46.pre = load i32, ptr %i.d, align 4
  br label %bb.ap

bb.ao:                                            ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit"
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv, i32 noundef 1585) #21
  %.0..0..0.48 = load i32, ptr %i.c, align 4      ; 2 uses
  %.0..0..0. = load i32, ptr %i.d, align 4        ; 2 uses
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.65, i32 noundef %.0..0..0.48, i32 noundef %.0..0..0.) #21
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit._crit_edge", %bb.ao
  %.0..0.46 = phi i32 [ %.0..0..0.46.pre, %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit._crit_edge" ], [ %.0..0..0., %bb.ao ]
  %.0..0.49 = phi i32 [ %.0..0..0.49.pre, %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit._crit_edge" ], [ %.0..0..0.48, %bb.ao ]
  %i.jx = icmp sgt i32 %.0..0.49, %.0..0.46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.jx
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %4 = alloca %"class.absl::flat_hash_set.181", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %7 = alloca %"class.absl::flat_hash_set.181", align 8 ; 12 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZNK2v88internal8compiler10turboshaft8PackNode5PrintEPNS2_5GraphE, i32 noundef 1594) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.66, ptr noundef %1, i64 noundef %i.f) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.g, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 1, ptr %7, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.c

._crit_edge.i:                                    ; preds = %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"
  %.pre.i = load i64, ptr %7, align 8             ; 3 uses
  %i.n = icmp ne i64 %.pre.i, 0
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i64 %.pre.i, 2
  br i1 %i.o, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit", label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i: ; preds = %._crit_edge.i
  %i.p = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.q = and i64 %i.p, 65536
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i = load ptr, ptr %i.i, align 8
  %i.r = icmp ne i64 %i.q, 0
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.pre.i, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.r)
  br label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit"

bb.c:                                             ; preds = %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", %.lr.ph.i
  %.sroa.02.026.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.cx, %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.026.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 8 uses
  store ptr %i.t, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %7, align 8                ; 6 uses
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i4.i = icmp ugt i64 %i.w, 131071
  %i.x = load ptr, ptr %i.i, align 8
  %i.y = icmp eq ptr %i.x, %i.t                   ; 2 uses
  %or.cond.i = select i1 %.not.i.i.i.i.i4.i, i1 %i.y, i1 false
  br i1 %or.cond.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", label %.thread9.i

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.z = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %sext.i.i.i.i = shl i64 %i.z, 48
  %i.aa = ashr exact i64 %sext.i.i.i.i, 48
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = xor i64 %i.ab, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw nsw i128 %i.ad, 8779197792823184629 ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae
  %i.ah = trunc i128 %i.ag to i64
  %i.ai = xor i64 %i.aa, %i.ah                    ; 4 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  %i.al = insertelement <16 x i8> poison, i8 %i.ak, i64 0
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i7.i.i.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.be, %bb.i ]
  %.sroa.13.0.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.bd, %bb.i ]
  %.sroa.6.0.i.i.i.i.i = and i64 %.pn.i7.i.i.i.i, %i.u ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.an, i32 0, i32 3, i32 1)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  %i.ap = load <16 x i8>, ptr %i.ao, align 1      ; 2 uses
  %i.aq = icmp eq <16 x i8> %i.am, %i.ap
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not47.i.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not47.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.sroa.017.048.i.i.i.i.i = phi i16 [ %i.ba, %bb.h ], [ %i.ar, %bb.g ] ; 3 uses
  %i.as = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.6.0.i.i.i.i.i, %i.at
  %i.av = and i64 %i.au, %i.u
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %i.ax, %i.t
  br i1 %i.ay, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", label %bb.h, !prof !19

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.az = add i16 %.sroa.017.048.i.i.i.i.i, -1
  %i.ba = and i16 %i.az, %.sroa.017.048.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.h, %bb.g
  %i.bb = icmp eq <16 x i8> %i.ap, splat (i8 -128)
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %.not44.i.i.i.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not44.i.i.i.i.i, label %bb.i, label %bb.m, !prof !20

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bd = add i64 %.sroa.13.0.i.i.i.i.i, 16       ; 2 uses
  %i.be = add i64 %i.bd, %.sroa.6.0.i.i.i.i.i
  br label %bb.g, !llvm.loop !21

.thread9.i:                                       ; preds = %bb.e
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.w, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread9.i
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !149
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i

bb.k:                                             ; preds = %.thread9.i
  br i1 %i.y, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !149
  store ptr %7, ptr %6, align 8, !noalias !149
  store ptr %i.b, ptr %i.k, align 8, !noalias !149
  %i.bf = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr nonnull %6, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft8PackNodeEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #21, !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !149
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !149
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bf
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !168
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.pn.i.i = phi i64 [ %i.ai, %bb.m ], [ %i.ce, %bb.o ]
  %.sroa.15.0.i.i = phi i64 [ 0, %bb.m ], [ %i.cd, %bb.o ] ; 2 uses
  %.sroa.7.0.i.i = and i64 %.pn.i.i, %i.u         ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.7.0.i.i
  call void @llvm.prefetch.p0(ptr %i.bh, i32 0, i32 3, i32 1), !noalias !168
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.7.0.i.i
  %i.bj = load <16 x i8>, ptr %i.bi, align 1, !noalias !168 ; 2 uses
  %i.bk = icmp eq <16 x i8> %i.am, %i.bj
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %.not65.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not65.i.i, label %.critedge19.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.critedge.i.i
  %.sroa.035.066.i.i = phi i16 [ %i.bu, %.critedge.i.i ], [ %i.bl, %bb.n ] ; 3 uses
  %i.bm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i.i, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = add i64 %.sroa.7.0.i.i, %i.bn
  %i.bp = and i64 %i.bo, %i.u
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !168
  %i.bs = icmp eq ptr %i.br, %i.t
  br i1 %i.bs, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, label %.critedge.i.i, !prof !19

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bt = add i16 %.sroa.035.066.i.i, -1
  %i.bu = and i16 %i.bt, %.sroa.035.066.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.i, label %.critedge19.i.i, label %.lr.ph.i.i

.critedge19.i.i:                                  ; preds = %.critedge.i.i, %bb.n
  %i.bv = icmp eq <16 x i8> %i.bj, splat (i8 -128)
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not57.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not57.i.i, label %bb.o, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i, !prof !20

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i: ; preds = %.critedge19.i.i
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = add i64 %.sroa.7.0.i.i, %i.by
  %i.ca = and i64 %i.bz, %i.u
  %i.cb = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ai, i64 %i.ca, i64 %.sroa.15.0.i.i) #21, !noalias !168
  %.sroa.0.0.copyload.i.i.i2.i26.i.i = load ptr, ptr %i.j, align 8, !noalias !168
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i.i, i64 %i.cb
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i

bb.o:                                             ; preds = %.critedge19.i.i
  %i.cd = add i64 %.sroa.15.0.i.i, 16             ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.7.0.i.i
  br label %bb.n

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i, %bb.l, %bb.j
  %.sroa.4.011.i = phi ptr [ %i.cc, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i ], [ %i.i, %bb.j ], [ %i.bg, %bb.l ]
  %i.cf = load ptr, ptr %i.b, align 8, !noalias !171 ; 2 uses
  store ptr %i.cf, ptr %.sroa.4.011.i, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i: ; preds = %.lr.ph.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i, %bb.k
  %i.cg = phi ptr [ %i.t, %bb.k ], [ %i.cf, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i ], [ %i.t, %.lr.ph.i.i ] ; 3 uses
  %i.ch = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.p, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"

bb.p:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i
  %.val.val.i = load ptr, ptr %i.l, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = ptrtoint ptr %i.ck to i64
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.cg, align 4
  %i.cm = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.cn = add i64 %i.cm, %i.cl
  %i.co = inttoptr i64 %i.cn to ptr
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZNK2v88internal8compiler10turboshaft8PackNode5PrintEPNS2_5GraphE, i32 noundef 217) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.co)
  %i.cp = load ptr, ptr %5, align 8
  %.sroa.0.0.copyload.i3.i.i.i = load i32, ptr %i.cg, align 4
  %i.cq = lshr i32 %.sroa.0.0.copyload.i3.i.i.i, 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %.sroa.0.0.copyload.i4.i.i.i = load i32, ptr %i.cr, align 4
  %i.cs = lshr i32 %.sroa.0.0.copyload.i4.i.i.i, 4
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.1, ptr noundef %i.cp, i32 noundef %i.cq, i32 noundef %i.cs) #21
  %i.ct = load ptr, ptr %5, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.m
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.cv = load i64, ptr %i.m, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"

"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i": ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.cx = load ptr, ptr %.sroa.02.026.i, align 8  ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %._crit_edge.i, label %bb.c

"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit": ; preds = %bb.b, %._crit_edge.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit"
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZNK2v88internal8compiler10turboshaft8PackNode5PrintEPNS2_5GraphE, i32 noundef 1598) #21
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dc = load i64, ptr %i.db, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.67, ptr noundef %1, i64 noundef %i.dc) #21
  br label %bb.r

bb.r:                                             ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit", %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val4 = load ptr, ptr %i.dd, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 1, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i.i.i5 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i5, align 8
  %i.de = icmp eq ptr %.val4, null
  br i1 %i.de, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashISA_EESt8equal_toISA_EEE.exit", label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.s

._crit_edge31.i:                                  ; preds = %._crit_edge.i36
  %.pre.i37 = load i64, ptr %4, align 8           ; 3 uses
  %i.dk = icmp ne i64 %.pre.i37, 0
  call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp ult i64 %.pre.i37, 2
  br i1 %i.dl, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashISA_EESt8equal_toISA_EEE.exit", label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i42

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i42: ; preds = %._crit_edge31.i
  %i.dm = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i5, align 8
  %i.dn = and i64 %i.dm, 65536
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i40 = load ptr, ptr %i.df, align 8
  %i.do = icmp ne i64 %i.dn, 0
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.pre.i37, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i40, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.do)
  br label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashISA_EESt8equal_toISA_EEE.exit"

bb.s:                                             ; preds = %._crit_edge.i36, %.lr.ph30.i
  %.sroa.02.028.i = phi ptr [ %.val4, %.lr.ph30.i ], [ %i.dt, %._crit_edge.i36 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.02.028.i, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.028.i, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.dq, %i.ds
  br i1 %.not26.i, label %._crit_edge.i36, label %.lr.ph.i6

._crit_edge.i36:                                  ; preds = %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i", %bb.s
  %i.dt = load ptr, ptr %.sroa.02.028.i, align 8  ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %._crit_edge31.i, label %bb.s

.lr.ph.i6:                                        ; preds = %bb.s, %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"
  %.027.i = phi ptr [ %i.gz, %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i" ], [ %i.dq, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.dv = load ptr, ptr %.027.i, align 8          ; 7 uses
  store ptr %i.dv, ptr %i.a, align 8
  %i.dw = load i64, ptr %4, align 8               ; 6 uses
  %i.dx = icmp ult i64 %i.dw, 2
  br i1 %i.dx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i6
  %i.dy = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i5, align 8 ; 2 uses
  %.not.i.i.i.i.i10.i = icmp ugt i64 %i.dy, 131071
  %i.dz = load ptr, ptr %i.df, align 8
  %i.ea = icmp eq ptr %i.dz, %i.dv                ; 2 uses
  %or.cond.i52 = select i1 %.not.i.i.i.i.i10.i, i1 %i.ea, i1 false
  br i1 %or.cond.i52, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i", label %.thread9.i53

bb.u:                                             ; preds = %.lr.ph.i6
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i7 = load ptr, ptr %i.df, align 8 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i7, i32 0, i32 1, i32 1)
  %i.eb = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i5, align 8
  %sext.i.i.i.i8 = shl i64 %i.eb, 48
  %i.ec = ashr exact i64 %sext.i.i.i.i8, 48
  %i.ed = ptrtoint ptr %i.dv to i64
  %i.ee = xor i64 %i.ed, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.ef = zext i64 %i.ee to i128
  %i.eg = mul nuw nsw i128 %i.ef, 8779197792823184629 ; 2 uses
  %i.eh = lshr i128 %i.eg, 64
  %i.ei = xor i128 %i.eh, %i.eg
  %i.ej = trunc i128 %i.ei to i64
  %i.ek = xor i64 %i.ec, %i.ej                    ; 4 uses
  %i.el = lshr i64 %i.ek, 57
  %i.em = trunc nuw nsw i64 %i.el to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i9 = load ptr, ptr %i.dg, align 8 ; 4 uses
  %i.en = insertelement <16 x i8> poison, i8 %i.em, i64 0
  %i.eo = shufflevector <16 x i8> %i.en, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %.pn.i7.i.i.i.i10 = phi i64 [ %i.ek, %bb.u ], [ %i.fg, %bb.x ]
  %.sroa.13.0.i.i.i.i.i11 = phi i64 [ 0, %bb.u ], [ %i.ff, %bb.x ]
  %.sroa.6.0.i.i.i.i.i12 = and i64 %.pn.i7.i.i.i.i10, %i.dw ; 4 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i9, i64 %.sroa.6.0.i.i.i.i.i12
  call void @llvm.prefetch.p0(ptr %i.ep, i32 0, i32 3, i32 1)
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i7, i64 %.sroa.6.0.i.i.i.i.i12
  %i.er = load <16 x i8>, ptr %i.eq, align 1      ; 2 uses
  %i.es = icmp eq <16 x i8> %i.eo, %i.er
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not47.i.i.i.i.i13 = icmp eq i16 %i.et, 0
  br i1 %.not47.i.i.i.i.i13, label %._crit_edge.i.i.i.i.i17, label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %bb.v, %bb.w
  %.sroa.017.048.i.i.i.i.i15 = phi i16 [ %i.fc, %bb.w ], [ %i.et, %bb.v ] ; 3 uses
  %i.eu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i.i.i15, i1 true)
  %i.ev = zext nneg i16 %i.eu to i64
  %i.ew = add i64 %.sroa.6.0.i.i.i.i.i12, %i.ev
  %i.ex = and i64 %i.ew, %i.dw
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i9, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = icmp eq ptr %i.ez, %i.dv
  br i1 %i.fa, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i", label %bb.w, !prof !19

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i14
  %i.fb = add i16 %.sroa.017.048.i.i.i.i.i15, -1
  %i.fc = and i16 %i.fb, %.sroa.017.048.i.i.i.i.i15 ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq i16 %i.fc, 0
  br i1 %.not.i.i.i.i.i16, label %._crit_edge.i.i.i.i.i17, label %.lr.ph.i.i.i.i.i14

._crit_edge.i.i.i.i.i17:                          ; preds = %bb.w, %bb.v
  %i.fd = icmp eq <16 x i8> %i.er, splat (i8 -128)
  %i.fe = bitcast <16 x i1> %i.fd to i16
  %.not44.i.i.i.i.i18 = icmp eq i16 %i.fe, 0
  br i1 %.not44.i.i.i.i.i18, label %bb.x, label %bb.ab, !prof !20

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i17
  %i.ff = add i64 %.sroa.13.0.i.i.i.i.i11, 16     ; 2 uses
  %i.fg = add i64 %i.ff, %.sroa.6.0.i.i.i.i.i12
  br label %bb.v, !llvm.loop !21

.thread9.i53:                                     ; preds = %bb.t
  %.not.i.i.i.i.i.i.i.i.i.i.i54 = icmp ult i64 %i.dy, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i54, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread9.i53
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i5, align 8, !noalias !172
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i32

bb.z:                                             ; preds = %.thread9.i53
  br i1 %i.ea, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i34, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !172
  store ptr %4, ptr %3, align 8, !noalias !172
  store ptr %i.a, ptr %i.dh, align 8, !noalias !172
  %i.fh = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft8PackNodeEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #21, !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !172
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i56 = load ptr, ptr %i.dg, align 8, !noalias !172
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i56, i64 %i.fh
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i32

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i17
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i7, i32 0, i32 1, i32 1), !noalias !191
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %.pn.i.i19 = phi i64 [ %i.ek, %bb.ab ], [ %i.gg, %bb.ad ]
  %.sroa.15.0.i.i20 = phi i64 [ 0, %bb.ab ], [ %i.gf, %bb.ad ] ; 2 uses
  %.sroa.7.0.i.i21 = and i64 %.pn.i.i19, %i.dw    ; 5 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i9, i64 %.sroa.7.0.i.i21
  call void @llvm.prefetch.p0(ptr %i.fj, i32 0, i32 3, i32 1), !noalias !191
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i7, i64 %.sroa.7.0.i.i21
  %i.fl = load <16 x i8>, ptr %i.fk, align 1, !noalias !191 ; 2 uses
  %i.fm = icmp eq <16 x i8> %i.eo, %i.fl
  %i.fn = bitcast <16 x i1> %i.fm to i16          ; 2 uses
  %.not65.i.i22 = icmp eq i16 %i.fn, 0
  br i1 %.not65.i.i22, label %.critedge19.i.i27, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %bb.ac, %.critedge.i.i25
  %.sroa.035.066.i.i24 = phi i16 [ %i.fw, %.critedge.i.i25 ], [ %i.fn, %bb.ac ] ; 3 uses
  %i.fo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i.i24, i1 true)
  %i.fp = zext nneg i16 %i.fo to i64
  %i.fq = add i64 %.sroa.7.0.i.i21, %i.fp
  %i.fr = and i64 %i.fq, %i.dw
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i9, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !191
  %i.fu = icmp eq ptr %i.ft, %i.dv
  br i1 %i.fu, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i34, label %.critedge.i.i25, !prof !19

.critedge.i.i25:                                  ; preds = %.lr.ph.i.i23
  %i.fv = add i16 %.sroa.035.066.i.i24, -1
  %i.fw = and i16 %i.fv, %.sroa.035.066.i.i24     ; 2 uses
  %.not.i.i26 = icmp eq i16 %i.fw, 0
  br i1 %.not.i.i26, label %.critedge19.i.i27, label %.lr.ph.i.i23

.critedge19.i.i27:                                ; preds = %.critedge.i.i25, %bb.ac
  %i.fx = icmp eq <16 x i8> %i.fl, splat (i8 -128)
  %i.fy = bitcast <16 x i1> %i.fx to i16          ; 2 uses
  %.not57.i.i28 = icmp eq i16 %i.fy, 0
  br i1 %.not57.i.i28, label %bb.ad, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i29, !prof !20

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i29: ; preds = %.critedge19.i.i27
  %i.fz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fy, i1 true)
  %i.ga = zext nneg i16 %i.fz to i64
  %i.gb = add i64 %.sroa.7.0.i.i21, %i.ga
  %i.gc = and i64 %i.gb, %i.dw
  %i.gd = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ek, i64 %i.gc, i64 %.sroa.15.0.i.i20) #21, !noalias !191
  %.sroa.0.0.copyload.i.i.i2.i26.i.i31 = load ptr, ptr %i.dg, align 8, !noalias !191
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i.i31, i64 %i.gd
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i32

bb.ad:                                            ; preds = %.critedge19.i.i27
  %i.gf = add i64 %.sroa.15.0.i.i20, 16           ; 2 uses
  %i.gg = add i64 %i.gf, %.sroa.7.0.i.i21
  br label %bb.ac

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i32: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i29, %bb.aa, %bb.y
  %.sroa.4.011.i33 = phi ptr [ %i.ge, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread14.i29 ], [ %i.df, %bb.y ], [ %i.fi, %bb.aa ]
  %i.gh = load ptr, ptr %i.a, align 8, !noalias !194 ; 2 uses
  store ptr %i.gh, ptr %.sroa.4.011.i33, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i34

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i34: ; preds = %.lr.ph.i.i23, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i32, %bb.z
  %i.gi = phi ptr [ %i.dv, %bb.z ], [ %i.gh, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i32 ], [ %i.dv, %.lr.ph.i.i23 ] ; 3 uses
  %i.gj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.ae, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"

bb.ae:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i34
  %.val.val.i43 = load ptr, ptr %i.di, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.val.val.i43, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = ptrtoint ptr %i.gm to i64
  %.sroa.0.0.copyload.i.i.i.i44 = load i32, ptr %i.gi, align 4
  %i.go = zext i32 %.sroa.0.0.copyload.i.i.i.i44 to i64
  %i.gp = add i64 %i.go, %i.gn
  %i.gq = inttoptr i64 %i.gp to ptr
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZNK2v88internal8compiler10turboshaft8PackNode5PrintEPNS2_5GraphE, i32 noundef 217) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.gq)
  %i.gr = load ptr, ptr %2, align 8
  %.sroa.0.0.copyload.i3.i.i.i45 = load i32, ptr %i.gi, align 4
  %i.gs = lshr i32 %.sroa.0.0.copyload.i3.i.i.i45, 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %.sroa.0.0.copyload.i4.i.i.i46 = load i32, ptr %i.gt, align 4
  %i.gu = lshr i32 %.sroa.0.0.copyload.i4.i.i.i46, 4
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.1, ptr noundef %i.gr, i32 noundef %i.gs, i32 noundef %i.gu) #21
  %i.gv = load ptr, ptr %2, align 8               ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.dj
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47: ; preds = %bb.ae
  %i.gx = load i64, ptr %i.dj, align 8
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i48: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"

"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i": ; preds = %.lr.ph.i.i.i.i.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i48, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i34, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.gz = getelementptr inbounds nuw i8, ptr %.027.i, i64 8 ; 2 uses
  %.not.i35 = icmp eq ptr %i.gz, %i.ds
  br i1 %.not.i35, label %._crit_edge.i36, label %.lr.ph.i6

"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashISA_EESt8equal_toISA_EEE.exit": ; preds = %bb.r, %._crit_edge31.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashISA_EESt8equal_toISA_EEE.exit"
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
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
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft8PackNodeEA_S6_EEPT_m.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #21
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft8PackNodeEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft8PackNodeEA_S6_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft8PackNodeEA_S6_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft8PackNodeEA_S6_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft8PackNodeEA_S6_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8             ; 2 uses
  %.pre13 = ptrtoint ptr %.pre to i64
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %.pre13, %bb.b ]
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = shl nuw nsw i64 %1, 2
  %i.p = add nuw i64 %.pre-phi, %i.o
  %i.q = add i64 %i.n, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.q)
  %i.r = xor i64 %i.n, -1
  %i.s = add i64 %umax, %i.r
  %i.t = and i64 %i.s, -4
  %i.u = add i64 %i.t, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 -1, i64 %i.u, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
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
  %i.m = ashr exact i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 2
  %i.s = add nuw i64 %i.r, 4
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #21
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12
end_hunk_1
