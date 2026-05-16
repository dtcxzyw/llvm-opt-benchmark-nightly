inline.NumInlined: 1835
inline.NumDeleted: 1081
begin_hunk_0_@_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE17_M_reallocate_mapEmb:bb.a
  %i.k = add i64 %i.j, %1                         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = shl i64 %i.k, 1
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = sub i64 %i.m, %i.k
  %i.r = lshr i64 %i.q, 1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.t = select i1 %2, i64 %1, i64 0
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 10 uses
  %i.v = icmp ult ptr %i.u, %i.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g                       ; 3 uses
  %i.z = icmp sgt i64 %i.y, 8
  br i1 %i.z, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.u, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.y, 8
  br i1 %i.aa, label %bb.f, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.e, align 8
  store ptr %i.ab, ptr %i.u, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.j ; 2 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ad, %i.g                     ; 3 uses
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.e, i64 %i.ae, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = icmp eq i64 %i.ae, 8
  br i1 %i.aj, label %bb.j, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.al = load ptr, ptr %i.e, align 8
  store ptr %i.al, ptr %i.ak, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %1)
  %i.am = add i64 %i.m, 2
  %i.an = add i64 %i.am, %.sroa.speculated        ; 4 uses
  %i.ao = load ptr, ptr %0, align 8               ; 3 uses
  %i.ap = icmp ult i64 %i.an, 2305843009213693951
  br i1 %i.ap, label %bb.m, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aq = shl nuw i64 %i.an, 3                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %i.aw = icmp ugt i64 %i.aq, %i.av
  br i1 %i.aw, label %bb.n, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE15_M_allocate_mapEm.exit, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 noundef %i.aq) #19
  %.pre.i.i.i.i.i.i = load i64, ptr %i.at, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE15_M_allocate_mapEm.exit

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE15_M_allocate_mapEm.exit: ; preds = %bb.m, %bb.n
  %i.ax = phi i64 [ %.pre.i.i.i.i.i.i, %bb.n ], [ %i.au, %bb.m ] ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = add i64 %i.ax, %i.aq
  store i64 %i.az, ptr %i.at, align 8
  %i.ba = sub i64 %i.an, %i.k
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = select i1 %2, i64 %1, i64 0
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd ; 3 uses
  %i.bf = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bg = load ptr, ptr %i.b, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.be, ptr align 8 %i.bf, i64 %i.bk, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE15_M_allocate_mapEm.exit
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.q, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.bf, align 8
  store ptr %i.bn, ptr %i.be, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit24

_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bo = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bp = and i64 %i.bo, 2305843009213693950
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE17_M_deallocate_mapEPPS9_m.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit24
  %i.br = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bo, ptr %i.bs, align 8
  store ptr null, ptr %i.br, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE17_M_deallocate_mapEPPS9_m.exit

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE17_M_deallocate_mapEPPS9_m.exit: ; preds = %_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit24, %bb.r
  store ptr %i.ay, ptr %i.a, align 8
  store i64 %i.an, ptr %i.l, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit

_ZSt4copyIPPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataESB_ET0_T_SD_SC_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE17_M_deallocate_mapEPPS9_m.exit
  %.0 = phi ptr [ %i.be, %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE17_M_deallocate_mapEPPS9_m.exit ], [ %i.u, %bb.f ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.d, align 8
  %i.bt = load ptr, ptr %.0, align 8              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 512
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.j
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8 ; 2 uses
  store ptr %i.by, ptr %i.b, align 8
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 512
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.cb, ptr %i.cc, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS5_NS2_4wasm9ValueTypeEENS2_13ZoneAllocatorISA_EENS_10_Select1stESt8equal_toIS5_ENS1_4base4hashIS5_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i32, ptr %1, align 4 ; 3 uses
  %i.a = lshr i32 %.sroa.0.0.copyload.i.i, 4      ; 2 uses
  %i.b = xor i32 %i.a, -1
  %i.c = shl i32 %i.a, 15
  %i.d = add i32 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i32 %i.d, 12
  %i.f = xor i32 %i.e, %i.d
  %i.g = mul i32 %i.f, 5                          ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = xor i32 %i.h, %i.g
  %i.j = mul i32 %i.i, 2057                       ; 2 uses
  %i.k = lshr i32 %i.j, 16
  %i.l = xor i32 %i.k, %i.j
  %i.m = zext i32 %i.l to i64                     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = urem i64 %i.m, %i.o                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.t, align 8              ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.x, %i.m
  %.sroa.0.0.copyload.i.i.i20.i.i = load i32, ptr %i.v, align 8
  %i.z = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i.i20.i.i
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.loopexit29, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ac = icmp eq i64 %i.ah, %i.m
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.ab, align 8
  %i.ad = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.loopexit29, label %.lr.ph.i.i, !llvm.loop !79

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.021.i.i = phi ptr [ %i.af, %bb.c ], [ %i.u, %bb.b ]
  %i.af = load ptr, ptr %.021.i.i, align 8        ; 5 uses
  %.not18.i.i = icmp eq ptr %i.af, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = urem i64 %i.ah, %i.o
  %.not19.i.i = icmp eq i64 %i.ai, %i.p
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge22.i.i, !llvm.loop !79

..loopexit_crit_edge22.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !79

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge22.i.i
  %i.aj = load ptr, ptr %0, align 8               ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = icmp ult i64 %i.ao, 24
  br i1 %i.ap, label %bb.e, label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS4_EESU_IJEEEEEPNSC_16_Hashtable_allocINSA_INSC_10_Hash_nodeIS9_Lb1EEEEEEEDpOT_.exit, !prof !7

bb.e:                                             ; preds = %.loopexit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 noundef 24) #19
  %.pre.i.i.i.i.i.i = load i64, ptr %i.am, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS4_EESU_IJEEEEEPNSC_16_Hashtable_allocINSA_INSC_10_Hash_nodeIS9_Lb1EEEEEEEDpOT_.exit

_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS4_EESU_IJEEEEEPNSC_16_Hashtable_allocINSA_INSC_10_Hash_nodeIS9_Lb1EEEEEEEDpOT_.exit: ; preds = %.loopexit, %bb.e
  %i.aq = phi i64 [ %.pre.i.i.i.i.i.i, %bb.e ], [ %i.an, %.loopexit ] ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr               ; 11 uses
  %i.as = add i64 %i.aq, 24
  store i64 %i.as, ptr %i.am, align 8
  store ptr null, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i32, ptr %1, align 4
  store i32 %i.au, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 2, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load i64, ptr %i.n, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 noundef %i.ax, i64 noundef %i.az, i64 noundef 1) #19 ; 2 uses
  %i.bb = extractvalue { i8, i64 } %i.ba, 0
  %i.bc = trunc i8 %i.bb to i1
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS4_EESU_IJEEEEEPNSC_16_Hashtable_allocINSA_INSC_10_Hash_nodeIS9_Lb1EEEEEEEDpOT_.exit
  %i.bd = extractvalue { i8, i64 } %i.ba, 1
  tail call void @_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.bd)
  %i.be = load i64, ptr %i.n, align 8
  %i.bf = urem i64 %i.m, %i.be
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS4_EESU_IJEEEEEPNSC_16_Hashtable_allocINSA_INSC_10_Hash_nodeIS9_Lb1EEEEEEEDpOT_.exit
  %.0.i19 = phi i64 [ %i.bf, %bb.f ], [ %i.p, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS4_EESU_IJEEEEEPNSC_16_Hashtable_allocINSA_INSC_10_Hash_nodeIS9_Lb1EEEEEEEDpOT_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.m, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.q, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.0.i19
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %i.bj, align 8
  store ptr %i.bk, ptr %i.ar, align 8
  %i.bl = load ptr, ptr %i.q, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.0.i19
  %i.bn = load ptr, ptr %i.bm, align 8
  store ptr %i.ar, ptr %i.bn, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  store ptr %i.bp, ptr %i.ar, align 8
  store ptr %i.ar, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not11.i.i = icmp eq ptr %i.bq, null
  br i1 %.not11.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.q, align 8
  %i.bs = load i64, ptr %i.n, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = urem i64 %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bv
  store ptr %i.ar, ptr %i.bw, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bx = load ptr, ptr %i.q, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.0.i19
  store ptr %i.bo, ptr %i.by, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit

_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit: ; preds = %bb.h, %bb.k
  %i.bz = load i64, ptr %i.ay, align 8
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.ay, align 8
  br label %.loopexit29

.loopexit29:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit
  %.pn = phi ptr [ %i.ar, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit ], [ %i.u, %bb.b ], [ %i.af, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 12
  ret ptr %.1
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = icmp ult i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3                        ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = sub i64 %i.g, %i.i
  %i.k = icmp ugt i64 %i.e, %i.j
  br i1 %i.k, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_4wasm9ValueTypeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.e) #19
  %.pre.i.i.i.i.i.i = load i64, ptr %i.h, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_4wasm9ValueTypeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_4wasm9ValueTypeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.f, %bb.e
  %i.l = phi i64 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = add i64 %i.l, %i.e
  store i64 %i.n, ptr %i.h, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_4wasm9ValueTypeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.m, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_4wasm9ValueTypeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  store ptr null, ptr %i.o, align 8
  %.not29 = icmp eq ptr %i.p, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.q, %bb.j ], [ %i.p, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.q = load ptr, ptr %.031, align 8             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = urem i64 %i.s, %1                        ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.v, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.o, align 8
  store ptr %i.w, ptr %.031, align 8
  store ptr %.031, ptr %i.o, align 8
  store ptr %i.o, ptr %i.u, align 8
  %i.x = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.x, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.y, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.v, align 8
  store ptr %i.z, ptr %.031, align 8
end_hunk_0
