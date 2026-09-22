Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instruction?download=true
inline.NumInlined: 2270
inline.NumDeleted: 946
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSequence20InstructionBlocksForEPNS0_4ZoneERKNS1_10turboshaft5GraphE:bb.a

_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.i: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit47.i, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.lr.ph.i
  %.059.i = phi ptr [ %.057.i, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.lr.ph.i ], [ %.0.i, %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit47.i ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.059.i, i64 52
  %.sroa.0.0.copyload.i.i43.i = load i32, ptr %i.gv, align 4
  %i.gw = load ptr, ptr %i.es, align 8            ; 2 uses
  %i.gx = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.gy = icmp ult ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit47.i, label %bb.r, !prof !8

bb.r:                                             ; preds = %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.i
  %i.gz = load ptr, ptr %i.ci, align 8
  %i.ha = ptrtoint ptr %i.gx to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = ashr exact i64 %i.hc, 2
  %i.he = add nsw i64 %i.hd, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 noundef %i.he)
  %.pre.i.i46.i = load ptr, ptr %i.es, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit47.i

_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit47.i: ; preds = %bb.r, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.i
  %i.hf = phi ptr [ %i.gw, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.i ], [ %.pre.i.i46.i, %bb.r ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store ptr %i.hg, ptr %i.es, align 8
  store i32 %.sroa.0.0.copyload.i.i43.i, ptr %i.hf, align 4
  %i.hh = getelementptr inbounds nuw i8, ptr %.059.i, i64 64
  %.0.i = load ptr, ptr %i.hh, align 8            ; 2 uses
  %.not29.i = icmp eq ptr %.0.i, null
  br i1 %.not29.i, label %._crit_edge60.i, label %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.i, !llvm.loop !40

_ZN2v88internal8compilerL19InstructionBlockForEPNS0_4ZoneERKNS1_10turboshaft5GraphEPKNS4_5BlockESA_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %._crit_edge60.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.hi = load ptr, ptr %i.r, align 8
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.027
  store ptr %i.ce, ptr %i.hj, align 8
  %i.hk = add i64 %.027, 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 8 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.ai
  br i1 %i.hm, label %._crit_edge, label %bb.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10LoopFinderC2EPNS0_4ZoneEPKNS2_5GraphENS_4base7EnumSetINS3_11ConfigFlagsEaEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2, i8 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = and i64 %i.k, 4294967295                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not.i.i.i = icmp eq i64 %i.l, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = shl nuw nsw i64 %i.l, 3                  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.c, label %.lr.ph.preheader.i.i.i, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.p) #31
  %.pre.i.i.i.i.i = load i64, ptr %i.s, align 8
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c, %bb.b
  %i.w = phi i64 [ %.pre.i.i.i.i.i, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = add i64 %i.w, %i.p
  store i64 %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.m, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p ; 2 uses
  store ptr %i.z, ptr %i.o, align 8
  store ptr %i.z, ptr %i.n, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i ] ; 2 uses
  store ptr null, ptr %.09.i.i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.n, align 8
  %i.ac = icmp ult ptr %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit, !llvm.loop !43

_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = ptrtoint ptr %1 to i64
  store i64 %i.ae, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i64 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 0) #31 ; 5 uses
  %i.am = load i64, ptr %i.ah, align 8
  %i.an = icmp ugt i64 %i.al, %i.am
  br i1 %i.an, label %bb.d, label %_ZN2v88internal16ZoneUnorderedMapIPKNS0_8compiler10turboshaft5BlockENS3_10LoopFinder8LoopInfoENS_4base4hashIS6_EESt8equal_toIS6_EEC2EPNS0_4ZoneEm.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit
  %i.ao = icmp eq i64 %i.al, 1
  br i1 %i.ao, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.ag, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.aq = icmp ult i64 %i.al, 2305843009213693951
  br i1 %i.aq, label %bb.h, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.679) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ar = shl nuw i64 %i.al, 3                    ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = sub i64 %i.at, %i.av
  %i.ax = icmp ugt i64 %i.ar, %i.aw
  br i1 %i.ax, label %bb.i, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_10LoopFinder8LoopInfoEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, !prof !13

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i64 noundef %i.ar) #31
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.au, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_10LoopFinder8LoopInfoEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_10LoopFinder8LoopInfoEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ay = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.i ], [ %i.av, %bb.h ] ; 2 uses
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = add i64 %i.ay, %i.ar
  store i64 %i.ba, ptr %i.au, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.ar, i1 false)
  br label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_10LoopFinder8LoopInfoEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.az, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_10LoopFinder8LoopInfoEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i ]
  store ptr %.0.i.i.i.i, ptr %i.af, align 8
  store i64 %i.al, ptr %i.ah, align 8
  br label %_ZN2v88internal16ZoneUnorderedMapIPKNS0_8compiler10turboshaft5BlockENS3_10LoopFinder8LoopInfoENS_4base4hashIS6_EESt8equal_toIS6_EEC2EPNS0_4ZoneEm.exit

_ZN2v88internal16ZoneUnorderedMapIPKNS0_8compiler10turboshaft5BlockENS3_10LoopFinder8LoopInfoENS_4base4hashIS6_EESt8equal_toIS6_EEC2EPNS0_4ZoneEm.exit: ; preds = %_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit, %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  tail call void @_ZN2v88internal8compiler10turboshaft10LoopFinder3RunEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler19InstructionSequence21ValidateEdgeSplitFormEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.d, %i.f
  br i1 %.not25, label %._crit_edge, label %.lr.ph27

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph27:                                         ; preds = %bb.a, %.loopexit
  %.026 = phi ptr [ %i.ap, %.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.026, align 8             ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %1 = icmp ult i64 %i.n, 5
  %.not2123 = icmp eq ptr %i.k, %i.i
  %or.cond = or i1 %1, %.not2123
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph27
  %.sroa.01.0.copyload.peel = load i32, ptr %i.k, align 4
  %i.o = sext i32 %.sroa.01.0.copyload.peel to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %bb.b, label %.critedge, !prof !8

bb.b:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %.sroa.0.0.copyload.i.peel = load i32, ptr %i.z, align 4 ; 2 uses
  %i.aa = load i32, ptr %i.u, align 4
  %.not22.peel = icmp eq i32 %i.aa, %.sroa.0.0.copyload.i.peel
  br i1 %.not22.peel, label %bb.c, label %.critedge, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %.not21.peel = icmp eq ptr %i.ab, %i.i
  br i1 %.not21.peel, label %.loopexit, label %.peel.next

bb.d:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.02024, i64 4 ; 2 uses
  %.not21 = icmp eq ptr %i.ac, %i.i
  br i1 %.not21, label %.loopexit, label %.peel.next, !llvm.loop !44

.peel.next:                                       ; preds = %bb.c, %bb.d
  %.02024 = phi ptr [ %i.ac, %bb.d ], [ %i.ab, %bb.c ] ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %.02024, align 4
  %i.ad = sext i32 %.sroa.01.0.copyload to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp eq i64 %i.am, 4
  br i1 %i.an, label %bb.e, label %.critedge, !prof !8

bb.e:                                             ; preds = %.peel.next
  %i.ao = load i32, ptr %i.aj, align 4
  %.not22 = icmp eq i32 %i.ao, %.sroa.0.0.copyload.i.peel
  br i1 %.not22, label %bb.d, label %.critedge, !prof !8

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.peel.next, %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.623) #30
  unreachable

.loopexit:                                        ; preds = %bb.d, %bb.c, %.lr.ph27
  %i.ap = getelementptr inbounds nuw i8, ptr %.026, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph27
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler19InstructionSequence30ValidateDeferredBlockExitPathsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.d, %i.f
  br i1 %.not21, label %._crit_edge, label %.lr.ph23

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph23:                                         ; preds = %bb.a, %.loopexit
  %.01722 = phi ptr [ %i.z, %.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.01722, align 8           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  %i.i = load i16, ptr %i.h, align 4
  %i.j = trunc i16 %i.i to i1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph23
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, 5
  %.not1819 = icmp eq ptr %i.n, %i.l
  %or.cond = or i1 %i.r, %.not1819
  br i1 %or.cond, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.020, i64 4 ; 2 uses
  %.not18 = icmp eq ptr %i.s, %i.l
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.020 = phi ptr [ %i.s, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %.020, align 4
  %i.t = sext i32 %.sroa.01.0.copyload to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 124
  %i.x = load i16, ptr %i.w, align 4
  %i.y = trunc i16 %i.x to i1
  br i1 %i.y, label %bb.c, label %bb.d, !prof !8

bb.d:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.624) #30
  unreachable

.loopexit:                                        ; preds = %bb.c, %.lr.ph23, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.01722, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph23
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler19InstructionSequence31ValidateDeferredBlockEntryPathsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.d, %i.f
  br i1 %.not21, label %._crit_edge, label %.lr.ph23

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph23:                                         ; preds = %bb.a, %.loopexit
  %.01722 = phi ptr [ %i.z, %.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.01722, align 8           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  %i.i = load i16, ptr %i.h, align 4
  %i.j = trunc i16 %i.i to i1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph23
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, 5
  %.not1819 = icmp eq ptr %i.n, %i.l
  %or.cond = or i1 %i.r, %.not1819
  br i1 %or.cond, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.020, i64 4 ; 2 uses
  %.not18 = icmp eq ptr %i.s, %i.l
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.020 = phi ptr [ %i.s, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %.020, align 4
  %i.t = sext i32 %.sroa.01.0.copyload to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 124
  %i.x = load i16, ptr %i.w, align 4
  %i.y = trunc i16 %i.x to i1
  br i1 %i.y, label %bb.c, label %bb.d, !prof !8

bb.d:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.625) #30
  unreachable

.loopexit:                                        ; preds = %bb.c, %.lr.ph23, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.01722, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph23
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler19InstructionSequence11ValidateSSAEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::BitVector", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  store i32 %i.b, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = add nsw i32 %i.b, 63
  %i.i = ashr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = zext nneg i32 %i.i to i64                ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 3                  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp ugt i64 %i.l, %i.q
  br i1 %i.r, label %bb.c, label %.lr.ph.i.i.i.i.i, !prof !13

bb.c:                                             ; preds = %bb.b
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 noundef %i.l) #31
  %.pre.i.i.i = load i64, ptr %i.o, align 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %.pre.i.i.i, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = add i64 %i.s, %i.l
  store i64 %i.u, ptr %i.o, align 8
  store ptr %i.t, ptr %i.e, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.l, i1 false)
  %i.v = load ptr, ptr %i.e, align 8              ; 2 uses
  store ptr %i.v, ptr %i.f, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.k
  store ptr %i.w, ptr %i.g, align 8
  br label %_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit

_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit:    ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not19 = icmp eq ptr %i.y, %i.aa
  br i1 %.not19, label %._crit_edge22, label %.lr.ph21

._crit_edge22:                                    ; preds = %._crit_edge, %_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

.lr.ph21:                                         ; preds = %_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit, %._crit_edge
  %.01620 = phi ptr [ %i.ag, %._crit_edge ], [ %i.y, %_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit ] ; 2 uses
  %i.ab = load ptr, ptr %.01620, align 8          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 255
  %.not23 = icmp eq i32 %i.ae, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %.lr.ph21
  %i.ag = getelementptr inbounds nuw i8, ptr %.01620, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.aa
  br i1 %.not, label %._crit_edge22, label %.lr.ph21

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.018 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.018
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %.v = lshr i64 %i.ai, 3
  %i.aj = load ptr, ptr %i.f, align 8
  %i.ak = and i64 %i.ai, 17179869184
  %i.al = icmp eq i64 %i.ak, 0
  call void @llvm.assume(i1 %i.al)
  %i.am = lshr i64 %i.ai, 9
  %i.an = and i64 %i.am, 33554431
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = and i64 %.v, 63
  %i.ar = shl nuw i64 1, %i.aq                    ; 2 uses
  %i.as = and i64 %i.ap, %i.ar
  %.not17 = icmp eq i64 %i.as, 0
  br i1 %.not17, label %bb.f, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.626) #30
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.at = or i64 %i.ap, %i.ar
  store i64 %i.at, ptr %i.ao, align 8
  %i.au = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.av = load i32, ptr %i.ac, align 4
  %i.aw = and i32 %i.av, 255
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = icmp samesign ult i64 %i.au, %i.ax
  br i1 %i.ay, label %bb.d, label %._crit_edge, !llvm.loop !45
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSequence20ComputeAssemblyOrderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) initializes((24, 32)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 32
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorIPNS0_8compiler16InstructionBlockEEEA_S7_EEPT_m.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 32) #31
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorIPNS0_8compiler16InstructionBlockEEEA_S7_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorIPNS0_8compiler16InstructionBlockEEEA_S7_EEPT_m.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = add i64 %i.i, 32
  store i64 %i.k, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.j, ptr %i.l, align 8
  %i.m = load ptr, ptr %i.a, align 8
  store ptr %i.m, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.not.i.i = icmp ugt i64 %i.x, %i.ae
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler16InstructionBlockEE7reserveEm.exit, !prof !13

bb.c:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorIPNS0_8compiler16InstructionBlockEEEA_S7_EEPT_m.exit
  %i.af = ashr exact i64 %i.x, 3
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler16InstructionBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.af)
  %.pre = load ptr, ptr %i.p, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre88 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert89 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre90 = load ptr, ptr %.phi.trans.insert89, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler16InstructionBlockEE7reserveEm.exit

end_hunk_0
