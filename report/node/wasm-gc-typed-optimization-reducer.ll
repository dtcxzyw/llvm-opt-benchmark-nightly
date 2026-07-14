inline.NumInlined: 1835
inline.NumDeleted: 1081
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft10LoopFinderC2EPNS0_4ZoneEPKNS2_5GraphENS_4base7EnumSetINS3_11ConfigFlagsEaEE:bb.a

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
  tail call void @_ZN2v88internal8compiler10turboshaft10LoopFinder3RunEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #19
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler10turboshaft16AnalyzerIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer12ProcessBlockERKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(561) initializes((488, 496), (560, 561)) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19StartNewSnapshotForERKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  tail call void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer17ProcessOperationsERKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer11IsReachableERKNS2_5BlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(561) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp sgt i32 %.sroa.0.0.copyload.i, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = lshr i32 %.sroa.0.0.copyload.i, 6
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i32 %.sroa.0.0.copyload.i, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.h, %i.k
  %.not = icmp eq i64 %i.l, 0
  ret i1 %.not
}

declare void @_ZN2v88internal6PrintFEPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.v8::internal::compiler::turboshaft::NoChangeCallback", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE17MoveToNewSnapshotINS2_16NoChangeCallbackEEERNS7_12SnapshotDataENS_4base6VectorIKNS7_8SnapshotEEERKT_(ptr noundef nonnull align 8 dereferenceable(344) %i.a, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 0 uses
  %i.c = icmp ult i64 %2, 4294967296
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.40) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %2, 2               ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.q = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not28.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not28.i.i, label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit", label %.lr.ph31.i.i

.lr.ph31.i.i:                                     ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.not.i.i.i = icmp eq i64 %4, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.t

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.d
  %indvars.iv.i.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i
  %.03423.i.i = load ptr, ptr %i.w, align 8       ; 2 uses
  %.not3724.i.i = icmp eq ptr %.03423.i.i, %i.g
  br i1 %.not3724.i.i, label %._crit_edge.i.i, label %.lr.ph26.preheader.i.i

.lr.ph26.preheader.i.i:                           ; preds = %bb.f
  %i.x = trunc nuw i64 %indvars.iv.i.i to i32     ; 2 uses
  br label %.lr.ph26.i.i

.loopexit20.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS5_S6_EERKS5_jj.exit.i.i, %.lr.ph26.i.i
  %.034.i.i = load ptr, ptr %.03425.i.i, align 8  ; 2 uses
  %.not37.i.i = icmp eq ptr %.034.i.i, %i.g
  br i1 %.not37.i.i, label %._crit_edge.i.i, label %.lr.ph26.i.i, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %.loopexit20.i.i, %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %2
  br i1 %exitcond.not.i.i, label %bb.e, label %bb.f, !llvm.loop !15

.lr.ph26.i.i:                                     ; preds = %.loopexit20.i.i, %.lr.ph26.preheader.i.i
  %.03425.i.i = phi ptr [ %.034.i.i, %.loopexit20.i.i ], [ %.03423.i.i, %.lr.ph26.preheader.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03425.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.03425.i.i, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp samesign eq i64 %i.ad, %i.z
  br i1 %i.ae, label %.loopexit20.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph26.i.i
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ad
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS5_S6_EERKS5_jj.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.03.022.i.i = phi ptr [ %i.ag, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS5_S6_EERKS5_jj.exit.i.i ], [ %i.af, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.03.022.i.i, i64 -16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !align !16 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.03.022.i.i, i64 -4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp eq i64 %indvars.iv.i.i, %i.al
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS5_S6_EERKS5_jj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.j, align 8
  %i.ar = load ptr, ptr %i.k, align 8
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = add nsw i64 %i.av, %2
  %i.ax = icmp ult i64 %i.aw, 4294967296
  br i1 %i.ax, label %bb.j, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.41) #20
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = trunc i64 %i.av to i32
  store i32 %i.ay, ptr %i.an, align 4
  %i.az = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ba = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE9push_backEOS9_.exit.i.i.i, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.o, align 8
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = add nsw i64 %i.bg, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.bh)
  %.pre.i.i.i.i.i = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE9push_backEOS9_.exit.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE9push_backEOS9_.exit.i.i.i: ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %i.az, %bb.j ], [ %.pre.i.i.i.i.i, %bb.k ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.l, align 8
  store ptr %i.ah, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.j, align 8             ; 3 uses
  %i.bl = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 4 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = ashr exact i64 %i.bo, 2                 ; 2 uses
  %i.bq = xor i64 %i.bp, -1
  %.not.i39.i.i = icmp ugt i64 %2, %i.bq
  br i1 %.not.i39.i.i, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE9push_backEOS9_.exit.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.42) #20
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE9push_backEOS9_.exit.i.i.i
  %i.br = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.bn                    ; 2 uses
  %i.bu = ashr exact i64 %i.bt, 2
  %i.bv = add nsw i64 %i.bp, %2                   ; 2 uses
  %i.bw = icmp ult i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bx = icmp eq ptr %i.bl, %i.br
  %i.by = ashr exact i64 %i.bt, 1
  %i.bz = select i1 %i.bx, i64 2, i64 %i.by
  %i.ca = call noundef i64 @llvm.umax.i64(i64 %i.bz, i64 %i.bv) ; 3 uses
  %i.cb = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.cc = icmp ult i64 %i.ca, 4611686018427387903
  br i1 %i.cc, label %bb.p, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cd = shl nuw i64 %i.ca, 2
  %i.ce = add nuw i64 %i.cd, 4
  %i.cf = and i64 %i.ce, -8                       ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8            ; 2 uses
  %i.ck = sub i64 %i.ch, %i.cj
  %i.cl = icmp ugt i64 %i.cf, %i.ck
  br i1 %i.cl, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i, !prof !7

bb.q:                                             ; preds = %bb.p
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, i64 noundef %i.cf) #19
  %.pre.i.i.i41.i.i = load i64, ptr %i.ci, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i: ; preds = %bb.q, %bb.p
  %i.cm = phi i64 [ %.pre.i.i.i41.i.i, %bb.q ], [ %i.cj, %bb.p ] ; 2 uses
  %i.cn = inttoptr i64 %i.cm to ptr               ; 4 uses
  %i.co = add i64 %i.cm, %i.cf
  store i64 %i.co, ptr %i.ci, align 8
  store ptr %i.cn, ptr %i.k, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.bo
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %2
  store ptr %i.cq, ptr %i.j, align 8
  %.not26.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not26.i.i.i, label %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.thread.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cn, ptr nonnull align 4 %i.bl, i64 %i.bo, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %.pre.i40.i.i = load ptr, ptr %i.k, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.thread.i.i

_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.thread.i.i: ; preds = %bb.r, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i
  %i.cr = phi ptr [ %.pre.i40.i.i, %bb.r ], [ %i.cn, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ca
  store ptr %i.cs, ptr %i.p, align 8
  br label %._crit_edge.i.i.i.i

_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.i.i: ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %2
  store ptr %i.ct, ptr %i.j, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.i.i, %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.thread.i.i
  %.pn.i.i = phi ptr [ %i.bl, %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.i.i ], [ %i.cr, %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.thread.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %i.bo ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %.idx.i.i
  %.pre20.i.i.i.i = load i32, ptr %i.ah, align 4  ; 2 uses
  %6 = ptrtoint ptr %.pn.i.i to i64               ; 2 uses
  %i.cv = add i64 %6, %i.bm
  %i.cw = sub i64 %i.cv, %i.bn                    ; 2 uses
  %i.cx = add i64 %i.cw, %.idx.i.i
  %i.cy = add i64 %i.cw, 4
  %7 = call i64 @llvm.umax.i64(i64 %i.cx, i64 %i.cy)
  %8 = add i64 %7, %i.bn
  %i.cz = add i64 %6, %i.bm
  %9 = xor i64 %i.cz, -1
  %10 = add i64 %8, %9                            ; 2 uses
  %i.da = lshr i64 %10, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i.i.i
  %n.vec = and i64 %i.db, 9223372036854775800     ; 3 uses
  %i.dc = shl i64 %n.vec, 2
  %i.dd = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.dc
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.de = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.df, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE6insertEPKS3_mRS5_.exit.i.i.i, label %.lr.ph18.i.i.i.i.preheader

.lr.ph18.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i, %middle.block
  %.116.i.i.i.i.ph = phi ptr [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.dd, %middle.block ]
  br label %.lr.ph18.i.i.i.i

.lr.ph18.i.i.i.i:                                 ; preds = %.lr.ph18.i.i.i.i.preheader, %.lr.ph18.i.i.i.i
  %.116.i.i.i.i = phi ptr [ %i.dh, %.lr.ph18.i.i.i.i ], [ %.116.i.i.i.i.ph, %.lr.ph18.i.i.i.i.preheader ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i.i.i, ptr %.116.i.i.i.i, align 4
  %i.di = icmp ult ptr %i.dh, %i.cu
  br i1 %i.di, label %.lr.ph18.i.i.i.i, label %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE6insertEPKS3_mRS5_.exit.i.i.i, !llvm.loop !20

_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE6insertEPKS3_mRS5_.exit.i.i.i: ; preds = %.lr.ph18.i.i.i.i, %middle.block
  %.pre.i.i.i = load i32, ptr %i.an, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE6insertEPKS3_mRS5_.exit.i.i.i, %bb.g
  %i.dj = phi i32 [ %.pre.i.i.i, %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE6insertEPKS3_mRS5_.exit.i.i.i ], [ %i.ao, %bb.g ]
  %i.dk = add i32 %i.dj, %i.x
  %i.dl = zext i32 %i.dk to i64
  %i.dm = load ptr, ptr %i.k, align 8
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load i32, ptr %i.ai, align 4
  store i32 %i.do, ptr %i.dn, align 4
  store i32 %i.x, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS5_S6_EERKS5_jj.exit.i.i

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS5_S6_EERKS5_jj.exit.i.i: ; preds = %bb.s, %.lr.ph.i.i
  %i.dp = icmp eq ptr %i.ag, %i.ab
  br i1 %i.dp, label %.loopexit20.i.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i, %.lr.ph31.i.i
  %.0 = phi i8 [ 1, %.lr.ph31.i.i ], [ %.1, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i ] ; 3 uses
  %.03529.i.i = phi ptr [ %i.q, %.lr.ph31.i.i ], [ %i.ft, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i ] ; 2 uses
  %i.dq = load ptr, ptr %.03529.i.i, align 8      ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = zext i32 %i.ds to i64
  %i.du = load ptr, ptr %i.k, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dt ; 2 uses
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i
  %.021.i.i.i = phi i64 [ %i.ej, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i ], [ 0, %bb.t ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 %.021.i.i.i
  %i.dx = load i8, ptr %i.dw, align 1, !range !10, !noundef !5
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.u, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.021.i.i.i
  %i.ea = load i32, ptr %i.dz, align 4
  %.fr2.i.i.i.i = freeze i32 %i.ea                ; 4 uses
  %i.eb = and i32 %.fr2.i.i.i.i, 268435427        ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 514
  br i1 %i.ec, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ed = and i32 %.fr2.i.i.i.i, 3
  %i.ee = and i32 %.fr2.i.i.i.i, 5
  %i.ef = icmp ne i32 %i.ee, 5
  %.off.i.i.i.i = add nsw i32 %i.ed, -1
  %switch.i.i.i.i = icmp ult i32 %.off.i.i.i.i, 2
  %or.cond.i.i.i.i = and i1 %i.ef, %switch.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.w, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.eg = add nsw i32 %i.eb, -1153                ; 2 uses
  %i.eh = call i32 @llvm.fshl.i32(i32 %i.eg, i32 %i.eg, i32 27)
  switch i32 %i.eh, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.i.i.i [
    i32 0, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i
    i32 4, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i
    i32 12, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i
    i32 21, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i
    i32 28, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i
  ]

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.i.i.i: ; preds = %bb.w, %bb.v
  %i.ei = add nuw i64 %.021.i.i.i, 1
  br label %.loopexit.i.i.i

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i: ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.u, %.lr.ph.i.i.i
  %i.ej = add nuw i64 %.021.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ej, %4
  br i1 %exitcond.not.i.i.i, label %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i", label %.lr.ph.i.i.i, !llvm.loop !21

.loopexit.i.i.i:                                  ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.i.i.i, %bb.t
  %.sroa.07.0.i.i.i = phi i32 [ %.fr2.i.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.i.i.i ], [ 514, %bb.t ] ; 3 uses
  %.1.i.i.i = phi i64 [ %i.ei, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.ek = icmp ult i64 %.1.i.i.i, %4
  br i1 %i.ek, label %.lr.ph25.i.i.i, label %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i"

.lr.ph25.i.i.i:                                   ; preds = %.loopexit.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
  %.2 = phi i8 [ %.3, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.0, %.loopexit.i.i.i ] ; 8 uses
  %.224.i.i.i = phi i64 [ %i.fg, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %.sroa.012.023.i.i.i = phi i32 [ %.sroa.012.2.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.sroa.07.0.i.i.i, %.loopexit.i.i.i ] ; 9 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 %.224.i.i.i
  %i.em = load i8, ptr %i.el, align 1, !range !10, !noundef !5
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.x, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i

bb.x:                                             ; preds = %.lr.ph25.i.i.i
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.224.i.i.i
  %i.ep = load i32, ptr %i.eo, align 4
  %.fr2.i15.i.i.i = freeze i32 %i.ep              ; 6 uses
  %i.eq = and i32 %.fr2.i15.i.i.i, 268435427      ; 2 uses
  %i.er = icmp eq i32 %i.eq, 514
  br i1 %i.er, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.es = and i32 %.fr2.i15.i.i.i, 3
  %i.et = and i32 %.fr2.i15.i.i.i, 5
  %i.eu = icmp ne i32 %i.et, 5
  %.off.i16.i.i.i = add nsw i32 %i.es, -1
  %switch.i17.i.i.i = icmp ult i32 %.off.i16.i.i.i, 2
  %or.cond.i18.i.i.i = and i1 %i.eu, %switch.i17.i.i.i
  br i1 %or.cond.i18.i.i.i, label %bb.z, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ev = add nsw i32 %i.eq, -1153                ; 2 uses
  %i.ew = call i32 @llvm.fshl.i32(i32 %i.ev, i32 %i.ev, i32 27)
  switch i32 %i.ew, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i [
    i32 0, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
    i32 4, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
    i32 12, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
    i32 21, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
    i32 28, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
  ]

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i: ; preds = %bb.z, %bb.y
  %i.ex = icmp eq i32 %.sroa.07.0.i.i.i, %.fr2.i15.i.i.i
  %i.ey = icmp ne i8 %.2, 0
  %i.ez = and i1 %i.ey, %i.ex
  %i.fa = zext i1 %i.ez to i8                     ; 2 uses
  %i.fb = icmp eq i32 %.sroa.012.023.i.i.i, 2
  %i.fc = icmp eq i32 %.fr2.i15.i.i.i, 2
  %or.cond.i.i.i = or i1 %i.fb, %i.fc
  br i1 %or.cond.i.i.i, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i
  %i.fd = load ptr, ptr %i.v, align 8
  %i.fe = call { i32, ptr } @_ZN2v88internal4wasm5UnionENS1_9ValueTypeES2_PKNS1_10WasmModuleE(i32 %.sroa.012.023.i.i.i, i32 %.fr2.i15.i.i.i, ptr noundef %i.fd) #19
  %i.ff = extractvalue { i32, ptr } %i.fe, 0
  br label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i: ; preds = %bb.aa, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.x, %.lr.ph25.i.i.i
  %.3 = phi i8 [ %.2, %bb.x ], [ %i.fa, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i ], [ %i.fa, %bb.aa ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %.lr.ph25.i.i.i ] ; 2 uses
  %.sroa.012.2.i.i.i = phi i32 [ %.sroa.012.023.i.i.i, %bb.x ], [ 2, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i ], [ %i.ff, %bb.aa ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %.lr.ph25.i.i.i ] ; 2 uses
  %i.fg = add i64 %.224.i.i.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fg, %4
  br i1 %exitcond.not, label %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i", label %.lr.ph25.i.i.i, !llvm.loop !22

"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i": ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i, %.loopexit.i.i.i
  %.1 = phi i8 [ %.3, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.0, %.loopexit.i.i.i ], [ %.0, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i ] ; 2 uses
  %.sroa.012.0.lcssa.i.i.i = phi i32 [ %.sroa.012.2.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.sroa.07.0.i.i.i, %.loopexit.i.i.i ], [ 514, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i ] ; 3 uses
  %i.fh = load i32, ptr %i.dq, align 4            ; 2 uses
  %.not18.i.i = icmp eq i32 %i.fh, %.sroa.012.0.lcssa.i.i.i
  br i1 %.not18.i.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i"
  %i.fi = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.fj = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.fk = icmp ult ptr %i.fi, %i.fj
  br i1 %i.fk, label %bb.ad, label %bb.ac, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.fl = load ptr, ptr %i.h, align 8
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 4
  %i.fq = add nsw i64 %i.fp, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.fq)
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_Map_baseIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS5_NS2_4wasm9ValueTypeEENS2_13ZoneAllocatorISA_EENS_10_Select1stESt8equal_toIS5_ENS1_4base4hashIS5_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS5_:bb.a
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
  %i.aa = load ptr, ptr %i.u, align 8
  store ptr %.031, ptr %i.aa, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.t, %bb.h ], [ %i.t, %bb.g ]
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_4wasm9ValueTypeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i, ptr %i.ac, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #15

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft13SnapshotTableINS2_4wasm9ValueTypeENS4_9NoKeyDataEE8SnapshotELm8ESaISA_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #8 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotElET_SB_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotElET_SB_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #21
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotElET_SB_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIbLm8ESaIbEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft13SnapshotTableINS2_4wasm9ValueTypeENS4_9NoKeyDataEE8SnapshotELm8ESaISA_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft13SnapshotTableINS2_4wasm9ValueTypeENS4_9NoKeyDataEE8SnapshotELm8ESaISA_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft13SnapshotTableINS2_4wasm9ValueTypeENS4_9NoKeyDataEE8SnapshotELm8ESaISA_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %2 = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %2, %i.g
  %3 = add i64 %i.r, -8                           ; 2 uses
  %i.s = lshr i64 %3, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8
  %wide.load13 = load <2 x i64>, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load13, ptr %i.aa, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.ac, ptr %.08.i.i.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !70

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft13SnapshotTableINS2_4wasm9ValueTypeENS4_9NoKeyDataEE8SnapshotELm8ESaISA_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIbLm8ESaIbEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIbLm8ESaIbEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIbLm8ESaIbEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false) ; 2 uses
  %i.j = sub nuw nsw i64 64, %i.i
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = icmp eq i64 %i.i, 1
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22 ; 5 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.o, %i.f                       ; 4 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.b, i64 %i.p, i1 false)
  br label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.p, 1
  br i1 %i.r, label %bb.f, label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.b, align 1, !range !10, !noundef !5
  store i8 %i.s, ptr %i.n, align 1
  br label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit:  ; preds = %bb.d, %bb.e, %bb.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIbLm8ESaIbEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.n, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store ptr %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store ptr %i.u, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
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
  %i.m = ashr exact i64 %i.l, 3
end_hunk_1
