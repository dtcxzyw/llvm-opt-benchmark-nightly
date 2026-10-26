Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/type-assertions-phase?download=true
inline.NumInlined: 47242
inline.NumDeleted: 15222
loop-unroll.NumCompletelyUnrolled: 204
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE17MergePredecessorsIZNS2_21TypeInferenceAnalysis12ProcessBlockILb1EEEvRKNS2_5BlockEPjEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSH_IKNS6_8SnapshotEEERKT_RKT0_:bb.a

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE11NewCapacityEm.exit.i: ; preds = %bb.m
  %i.bu = icmp eq ptr %i.bi, %i.bo
  %i.bv = shl nsw i64 %i.br, 1
  %spec.select = select i1 %i.bu, i64 2, i64 %i.bv
  %i.bw = tail call noundef i64 @llvm.umax.i64(i64 %spec.select, i64 %i.bs) ; 3 uses
  %i.bx = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.by = icmp ult i64 %i.bw, 768614336404564650
  br i1 %i.by, label %bb.o, label %bb.n, !prof !42

bb.n:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE11NewCapacityEm.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #24
  unreachable

bb.o:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE11NewCapacityEm.exit.i
  %i.bz = mul nuw i64 %i.bw, 24                   ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.ce = sub i64 %i.cb, %i.cd
  %i.cf = icmp ugt i64 %i.bz, %i.ce
  br i1 %i.cf, label %bb.p, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft4TypeEA_S5_EEPT_m.exit.i, !prof !39

bb.p:                                             ; preds = %bb.o
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, i64 noundef %i.bz) #23
  %.pre.i.i.i39 = load i64, ptr %i.cc, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft4TypeEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft4TypeEA_S5_EEPT_m.exit.i: ; preds = %bb.p, %bb.o
  %i.cg = phi i64 [ %.pre.i.i.i39, %bb.p ], [ %i.cd, %bb.o ] ; 2 uses
  %i.ch = inttoptr i64 %i.cg to ptr               ; 4 uses
  %i.ci = add i64 %i.cg, %i.bz
  store i64 %i.ci, ptr %i.cc, align 8
  store ptr %i.ch, ptr %i.i, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bl
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %2
  store ptr %i.ck, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.bi, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE19PrepareForInsertionEPKS4_mPm.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft4TypeEA_S5_EEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ch, ptr nonnull align 8 %i.bi, i64 %i.bl, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %.pre.i38 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft4TypeEA_S5_EEPT_m.exit.i, %bb.q
  %i.cl = phi ptr [ %.pre.i38, %bb.q ], [ %i.ch, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft4TypeEA_S5_EEPT_m.exit.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.bw
  store ptr %i.cm, ptr %i.n, align 8
  br label %._crit_edge.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE19PrepareForInsertionEPKS4_mPm.exit: ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %2
  store ptr %i.cn, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE19PrepareForInsertionEPKS4_mPm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE19PrepareForInsertionEPKS4_mPm.exit.thread
  %.pn = phi ptr [ %i.bi, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE19PrepareForInsertionEPKS4_mPm.exit ], [ %i.cl, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE19PrepareForInsertionEPKS4_mPm.exit.thread ]
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bl ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.cp, %.lr.ph18.i.i ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.116.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 24, i1 false)
  %i.cq = icmp ult ptr %i.cp, %i.co
  br i1 %i.cq, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !6

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i
  %.pre.i = load i32, ptr %i.ak, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.cr = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6insertEPKS4_mRS6_.exit.i ], [ %i.al, %bb.g ]
  %i.cs = add i32 %i.cr, %i.u
  %i.ct = zext i32 %i.cs to i64
  %i.cu = load ptr, ptr %i.i, align 8
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  store i32 %i.u, ptr %i.ag, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.r
  %i.cw = icmp eq ptr %i.ad, %i.y
  br i1 %i.cw, label %.loopexit58, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph68, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03266 = phi ptr [ %i.o, %.lr.ph68 ], [ %i.du, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.cx = load ptr, ptr %.03266, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = zext i32 %i.cz to i64
  %i.db = load ptr, ptr %i.i, align 8
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %i.da ; 2 uses
  %i.dd = load ptr, ptr %3, align 8, !noalias !590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false)
  br i1 %.not57, label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb1EEEvRKNS2_5BlockEPjENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS_4base6VectorIKSA_EEE_clESC_SG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 488
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i
  %.04.i = phi i64 [ 1, %.lr.ph.i ], [ %i.dh, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !590
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.04.i
  %i.dg = load ptr, ptr %i.de, align 8
  call void @_ZN2v88internal8compiler10turboshaft4Type15LeastUpperBoundERKS3_S5_PNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef %i.dg) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !590
  %i.dh = add nuw nsw i64 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dh, %2
  br i1 %exitcond.not.i, label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb1EEEvRKNS2_5BlockEPjENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS_4base6VectorIKSA_EEE_clESC_SG_.exit, label %bb.t, !llvm.loop !589

_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb1EEEvRKNS2_5BlockEPjENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS_4base6VectorIKSA_EEE_clESC_SG_.exit: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.di = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type6EqualsERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  br i1 %i.di, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.u

bb.u:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb1EEEvRKNS2_5BlockEPjENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS_4base6VectorIKSA_EEE_clESC_SG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.dj = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.dk = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.dl = icmp ult ptr %i.dj, %i.dk
  br i1 %i.dl, label %bb.w, label %bb.v, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.dm = load ptr, ptr %i.f, align 8
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = sdiv exact i64 %i.dp, 56
  %i.dr = add nsw i64 %i.dq, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.dr)
  %.pre.i.i.i36 = load ptr, ptr %i.q, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ds = phi ptr [ %i.dj, %bb.u ], [ %.pre.i.i.i36, %bb.v ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  store ptr %i.dt, ptr %i.q, align 8
  store ptr %i.cx, ptr %i.ds, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, i64 24, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb1EEEvRKNS2_5BlockEPjENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS_4base6VectorIKSA_EEE_clESC_SG_.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.du = getelementptr inbounds nuw i8, ptr %.03266, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.du, %i.p
  br i1 %.not, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE14EnsureCapacityEm.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE14EnsureCapacityEm.exit
  %i.n = ptrtoaddr ptr %i.l to i64                ; 3 uses
  %i.o = ptrtoaddr ptr %i.i to i64
  %i.p = mul nuw nsw i64 %1, 24
  %i.q = add nuw i64 %i.p, %i.o
  %i.r = add i64 %i.n, 24
  %umax = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.r)
  %i.s = add i64 %umax, -24                       ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.n
  %umin = zext i1 %i.t to i64                     ; 2 uses
  %i.u = add i64 %i.n, %umin
  %i.v = sub i64 %i.s, %i.u
  %i.w = udiv i64 %i.v, 24
  %i.x = add nuw nsw i64 %i.w, %umin
  %i.y = mul nuw i64 %i.x, 24
  %i.z = add nuw i64 %i.y, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, i8 0, i64 %i.z, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 24
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 768614336404564650
  br i1 %i.r, label %bb.d, label %bb.c, !prof !42

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #24
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE11NewCapacityEm.exit
  %i.s = mul nuw i64 %i.p, 24                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft4TypeEA_S5_EEPT_m.exit, !prof !39

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.s) #23
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft4TypeEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft4TypeEA_S5_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %.pre.i.i, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g
  store ptr %i.ac, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft4TypeEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft4TypeEA_S5_EEPT_m.exit
  %i.ad = phi ptr [ %.pre, %bb.f ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft4TypeEA_S5_EEPT_m.exit ]
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.p
  store ptr %i.ae, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE12WidenMaximalERKNS2_8WordTypeILm32EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 0                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = add i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq i32 %i.f, %i.h
  %i.j = select i1 %i.c, i1 %i.i, i1 false
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 0                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp ugt i32 %i.o, %i.q                  ; 3 uses
  %i.s = select i1 %i.m, i1 %i.r, i1 false
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ugt i32 %i.h, %i.e                  ; 3 uses
  %i.u = select i1 %i.c, i1 %i.t, i1 false
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 2, ptr %0, align 8, !alias.scope !595
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.v, i8 0, i64 7, i1 false), !alias.scope !595
  store i64 -4294967296, ptr %i.w, align 8, !alias.scope !595
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.x, align 8, !alias.scope !595
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  br i1 %i.c, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %spec.select.i = select i1 %i.t, i32 0, i32 %i.h
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = icmp ult i8 %i.z, 3
  %i.ab = load ptr, ptr %i.g, align 8
  %.sroa.0.0.i.i.i = select i1 %i.aa, ptr %i.g, ptr %i.ab
  %i.ac = load i32, ptr %.sroa.0.0.i.i.i, align 4
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit

_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.ac, %bb.h ], [ %spec.select.i, %bb.g ] ; 2 uses
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit
  %spec.select.i17 = select i1 %i.r, i32 0, i32 %i.o
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit18

bb.j:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 2
  %i.af = icmp ult i8 %i.ae, 3
  %i.ag = load ptr, ptr %i.n, align 8
  %.sroa.0.0.i.i.i15 = select i1 %i.af, ptr %i.n, ptr %i.ag
  %i.ah = load i32, ptr %.sroa.0.0.i.i.i15, align 4
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit18

_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit18: ; preds = %bb.i, %bb.j
  %.0.i16 = phi i32 [ %i.ah, %bb.j ], [ %spec.select.i17, %bb.i ]
  %i.ai = icmp ult i32 %.0.i, %.0.i16
  %spec.select = select i1 %i.ai, i32 0, i32 %.0.i
  br i1 %i.c, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit18
  %spec.select.i21 = select i1 %i.t, i32 -1, i32 %i.e
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit

bb.l:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit18
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ak = load i8, ptr %i.aj, align 2             ; 2 uses
  %i.al = zext i8 %i.ak to i64
  %i.am = icmp ult i8 %i.ak, 3
  %i.an = load ptr, ptr %i.g, align 8
  %.sroa.0.0.i.i.i19 = select i1 %i.am, ptr %i.g, ptr %i.an
  %i.ao = getelementptr [4 x i8], ptr %.sroa.0.0.i.i.i19, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit

_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit: ; preds = %bb.k, %bb.l
  %.0.i20 = phi i32 [ %i.aq, %bb.l ], [ %spec.select.i21, %bb.k ] ; 2 uses
  br i1 %i.m, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit
  %spec.select.i24 = select i1 %i.r, i32 -1, i32 %i.q
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit25

end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_:bb.a
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bp, %i.bs
  %i.bu = trunc i64 %i.bt to i32                  ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.bw, align 4, !noalias !624 ; 2 uses
  %.not28.i.i = icmp eq i32 %.sroa.01.0.copyload.i.i.i, %i.bu
  br i1 %.not28.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 104 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 96 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, %.lr.ph.i.i
  %.sroa.0.029.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i, %.lr.ph.i.i ], [ %i.db, %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i19.i.i = load i32, ptr %i.bx, align 4
  %i.cd = lshr i32 %.sroa.0.029.i.i, 4
  %i.ce = zext nneg i32 %i.cd to i64              ; 5 uses
  %i.cf = load ptr, ptr %i.by, align 8
  %i.cg = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 2
  %.not.i.i.i.i.i = icmp ugt i64 %i.ck, %i.ce
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.cl = lshr i64 %i.ce, 1
  %i.cm = add nuw nsw i64 %i.ce, 32
  %i.cn = add nuw nsw i64 %i.cm, %i.cl
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 noundef %i.cn)
  %i.co = load ptr, ptr %i.cb, align 8
  %i.cp = load ptr, ptr %i.bz, align 8
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 noundef %i.ct)
  %.pre.i.i.i.i.i = load ptr, ptr %i.bz, align 8
  br label %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i: ; preds = %bb.f, %bb.e
  %i.cu = phi ptr [ %.pre.i.i.i.i.i, %bb.f ], [ %i.cg, %bb.e ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ce
  store i32 %.sroa.0.0.copyload.i19.i.i, ptr %i.cv, align 4
  %i.cw = load ptr, ptr %i.cc, align 8
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.ce
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = zext i16 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 3
  %i.db = add i32 %i.da, %.sroa.0.029.i.i         ; 2 uses
  %.not.i.i5 = icmp eq i32 %i.db, %i.bu
  br i1 %.not.i.i5, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, %bb.d
  %i.dc = trunc i64 %i.i to i32
  store ptr null, ptr %i.bl, align 8
  ret i32 %i.dc
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.e
  %i.j = lshr exact i64 %i.i, 3
  %i.k = and i64 %i.j, 4294967295
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi i64 [ %i.k, %bb.a ], [ %.0, %bb.b ] ; 3 uses
  %.0 = shl i64 %.0.in, 1                         ; 4 uses
  %i.l = icmp ult i64 %.0, %1
  br i1 %i.l, label %bb.b, label %bb.c, !llvm.loop !625

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.b to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = lshr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ult i64 %.0, 536870911
  br i1 %i.p, label %bb.e, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = and i64 %i.o, 4294967295                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8                ; 3 uses
  %i.s = shl i64 %.0.in, 4                        ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.f, label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit, !prof !39

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 noundef %i.s) #23
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit: ; preds = %bb.e, %bb.f
  %i.z = phi i64 [ %.pre.i.i, %bb.f ], [ %i.w, %bb.e ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr align 8 %i.ac, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %0, align 8               ; 3 uses
  %i.af = and i64 %.0.in, 9223372036854775807     ; 2 uses
  %.not = icmp eq i64 %i.af, 9223372036854775807
  br i1 %.not, label %bb.g, label %bb.h, !prof !39

bb.g:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #24
  unreachable

bb.h:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit
  %i.ag = shl nuw i64 %i.af, 1
  %i.ah = add i64 %i.ag, 6
  %i.ai = and i64 %i.ah, -8                       ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = icmp ugt i64 %i.ai, %i.an
  br i1 %i.ao, label %bb.i, label %_ZN2v88internal4Zone13AllocateArrayItA_tEEPT_m.exit, !prof !39

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 noundef %i.ai) #23
  %.pre.i.i18 = load i64, ptr %i.al, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayItA_tEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayItA_tEEPT_m.exit: ; preds = %bb.h, %bb.i
  %i.ap = phi i64 [ %.pre.i.i18, %bb.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = add i64 %i.ap, %i.ai
  store i64 %i.ar, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = and i64 %i.o, 4294967294
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.aq, ptr align 2 %i.at, i64 %i.au, i1 false)
  store ptr %i.aa, ptr %i.c, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.q
  store ptr %i.av, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.0
  store ptr %i.aw, ptr %i.f, align 8
  store ptr %i.aq, ptr %i.as, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit
  %i.n = ptrtoaddr ptr %i.l to i64
  %i.o = ptrtoaddr ptr %i.i to i64
  %i.p = shl nuw nsw i64 %1, 2
  %i.q = add i64 %i.p, %i.o
  %i.r = xor i64 %i.n, -1
  %i.s = add i64 %i.q, %i.r
  %i.t = and i64 %i.s, -4
  %i.u = add i64 %i.t, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 -1, i64 %i.u, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #24
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
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #23
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit
  %i.n = ptrtoaddr ptr %i.l to i64
  %i.o = ptrtoaddr ptr %i.i to i64
  %i.p = shl nuw nsw i64 %1, 2
  %i.q = add i64 %i.p, %i.o
  %i.r = xor i64 %i.n, -1
  %i.s = add i64 %i.q, %i.r
  %i.t = and i64 %i.s, -4
  %i.u = add i64 %i.t, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 -1, i64 %i.u, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #24
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
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #23
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1656) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.927, align 8            ; 5 uses
  %3 = alloca %class.anon.915, align 8            ; 4 uses
  %4 = alloca %"class.v8::internal::ZoneVector.349", align 8 ; 9 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef %1)
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEEEE27SealAndSaveVariableSnapshotEv(ptr noundef nonnull align 8 dereferenceable(1656) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 6 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.043.048 = load ptr, ptr %i.e, align 8    ; 2 uses
  %.not49 = icmp eq ptr %.sroa.043.048, null
  br i1 %.not49, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1608
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit
  %.pre = load ptr, ptr %i.b, align 8             ; 4 uses
  %.pre56 = load ptr, ptr %i.d, align 8           ; 3 uses
  %i.k = icmp ne ptr %.pre, %.pre56
  %.012.i.i = getelementptr inbounds i8, ptr %.pre56, i64 -8 ; 2 uses
  %i.l = icmp ult ptr %.pre, %.012.i.i
  %or.cond.i.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.012.i.i, %._crit_edge ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.0913.i.i, align 8
  %i.m = load i64, ptr %.014.i.i, align 8
  store i64 %i.m, ptr %.0913.i.i, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.014.i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 8 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -8 ; 2 uses
  %i.o = icmp ult ptr %i.n, %.0.i.i
  br i1 %i.o, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit, !llvm.loop !626

_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre57 = load ptr, ptr %i.b, align 8
  %.pre58 = load ptr, ptr %i.d, align 8
  br label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit

_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit: ; preds = %bb.a, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit, %._crit_edge
  %i.p = phi ptr [ %.pre58, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit ], [ %.pre56, %._crit_edge ], [ %i.c, %bb.a ]
  %i.q = phi ptr [ %.pre57, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit ], [ %.pre, %._crit_edge ], [ %i.c, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 4 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.r, ptr %2, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorESA_SC_SD_SF_EEEEEEEEEEEEEEEEEE13VariableTableES4_S5_E16StartNewSnapshotIZNST_4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSH_6VectorIKS4_EEE_EEvNS11_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENS11_IKT0_EEEEUlS10_RS12_S1H_E_EERNS6_12SnapshotDataES17_S1A_(ptr noundef nonnull align 8 dereferenceable(344) %i.r, ptr %i.q, i64 %i.v, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES9_SB_SC_SE_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSG_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSS_13VariableTableES4_S5_E16StartNewSnapshotIS10_EEvNSX_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSX_IKT0_EEEEUlSW_RSY_S1H_E_EEvS17_S1A_RS1F_(ptr noundef nonnull align 8 dereferenceable(344) %i.r, ptr %i.q, i64 %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1536
  store ptr %1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = icmp eq i8 %i.z, 1
  br i1 %i.aa, label %bb.f, label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit
  %.sroa.043.050 = phi ptr [ %.sroa.043.048, %.lr.ph ], [ %.sroa.043.0, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.043.050, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.ab, align 4
  %i.ac = zext i32 %.sroa.0.0.copyload.i to i64   ; 4 uses
  %i.ad = load ptr, ptr %i.f, align 8
  %i.ae = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %.not.i = icmp ugt i64 %i.ai, %i.ac
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.aj = lshr i64 %i.ac, 1
  %i.ak = add nuw nsw i64 %i.ac, 32
  %i.al = add nuw nsw i64 %i.ak, %i.aj
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.al)
  %i.am = load ptr, ptr %i.i, align 8
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.ar)
  %.pre.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit

_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit: ; preds = %bb.b, %bb.c
  %i.as = phi ptr [ %.pre.i, %bb.c ], [ %i.ae, %bb.b ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ac ; 2 uses
  %.sroa.039.0.copyload = load i64, ptr %i.at, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.440.0.copyload = load i8, ptr %.sroa.440.0..sroa_idx, align 8
  %i.au = trunc nuw i8 %.sroa.440.0.copyload to i1
  br i1 %i.au, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  %i.av = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ax = icmp ult ptr %i.av, %i.aw
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE4BindEPNS2_5BlockE:bb.a
  %.not3538 = icmp eq ptr %.sroa.029.037, null
  br i1 %.not3538, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEEvT_SA_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 488
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEE9push_backERKS8_.exit
  %.pre = load ptr, ptr %i.cc, align 8            ; 4 uses
  %.pre40 = load ptr, ptr %i.ce, align 8          ; 3 uses
  %i.cl = icmp ne ptr %.pre, %.pre40
  %.012.i.i = getelementptr inbounds i8, ptr %.pre40, i64 -8 ; 2 uses
  %i.cm = icmp ult ptr %.pre, %.012.i.i
  %or.cond.i.i = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEEvT_SA_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.012.i.i, %._crit_edge ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.co, %.lr.ph.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.0913.i.i, align 8
  %i.cn = load i64, ptr %.014.i.i, align 8
  store i64 %i.cn, ptr %.0913.i.i, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.014.i.i, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 8 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -8 ; 2 uses
  %i.cp = icmp ult ptr %i.co, %.0.i.i
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEEvT_SA_.exit.loopexit, !llvm.loop !3

_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEEvT_SA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre41 = load ptr, ptr %i.cc, align 8
  %.pre42 = load ptr, ptr %i.ce, align 8
  br label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEEvT_SA_.exit

_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEEvT_SA_.exit: ; preds = %bb.j, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEEvT_SA_.exit.loopexit, %._crit_edge
  %i.cq = phi ptr [ %.pre42, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEEvT_SA_.exit.loopexit ], [ %.pre40, %._crit_edge ], [ %i.cd, %bb.j ]
  %i.cr = phi ptr [ %.pre41, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEEvT_SA_.exit.loopexit ], [ %.pre, %._crit_edge ], [ %i.cd, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.cw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE17MoveToNewSnapshotINS2_16NoChangeCallbackEEERNS6_12SnapshotDataENS_4base6VectorIKNS6_8SnapshotEEERKT_(ptr noundef nonnull align 8 dereferenceable(344) %i.a, ptr %i.cr, i64 %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  call void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE17MergePredecessorsIZNS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES8_SA_EEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSC_6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSR_IKNS6_8SnapshotEEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(344) %i.a, ptr %i.cr, i64 %i.cv, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = icmp eq i32 %i.cy, 2
  br i1 %i.cz, label %bb.o, label %bb.r

bb.k:                                             ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEE9push_backERKS8_.exit
  %.sroa.029.039 = phi ptr [ %.sroa.029.037, %.lr.ph ], [ %.sroa.029.0, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEE9push_backERKS8_.exit ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.029.039, i64 52
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.da, align 4
  %i.db = zext i32 %.sroa.0.0.copyload.i20 to i64 ; 4 uses
  %i.dc = load ptr, ptr %i.cg, align 8
  %i.dd = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 4
  %.not.i21 = icmp ugt i64 %i.dh, %i.db
  br i1 %.not.i21, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit23, label %bb.l, !prof !42

bb.l:                                             ; preds = %bb.k
  %i.di = lshr i64 %i.db, 1
  %i.dj = add nuw nsw i64 %i.db, 32
  %i.dk = add nuw nsw i64 %i.dj, %i.di
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 noundef %i.dk)
  %i.dl = load ptr, ptr %i.cj, align 8
  %i.dm = load ptr, ptr %i.ch, align 8
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 noundef %i.dq)
  %.pre.i22 = load ptr, ptr %i.ch, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit23

_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit23: ; preds = %bb.k, %bb.l
  %i.dr = phi ptr [ %.pre.i22, %bb.l ], [ %i.dd, %bb.k ]
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.db ; 2 uses
  %.sroa.026.0.copyload = load i64, ptr %i.ds, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.427.0.copyload = load i8, ptr %.sroa.427.0..sroa_idx, align 8
  %i.dt = trunc nuw i8 %.sroa.427.0.copyload to i1
  br i1 %i.dt, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEE5valueEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit23
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEE5valueEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit23
  %i.du = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.dv = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.dw = icmp ult ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEE9push_backERKS8_.exit, label %bb.n, !prof !42

bb.n:                                             ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEE5valueEv.exit
  %i.dx = load ptr, ptr %i.cc, align 8
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 3
  %i.ec = add nsw i64 %i.eb, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 noundef %i.ec)
  %.pre.i24 = load ptr, ptr %i.ce, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEE9push_backERKS8_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEE9push_backERKS8_.exit: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEE5valueEv.exit, %bb.n
  %i.ed = phi ptr [ %i.du, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEE5valueEv.exit ], [ %.pre.i24, %bb.n ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.ee, ptr %i.ce, align 8
  store i64 %.sroa.026.0.copyload, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.029.039, i64 64
  %.sroa.029.0 = load ptr, ptr %i.ef, align 8     ; 2 uses
  %.not35 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not35, label %._crit_edge, label %bb.k

bb.o:                                             ; preds = %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEEvT_SA_.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ej = load ptr, ptr %i.cf, align 8
  %i.ek = getelementptr inbounds i8, ptr %0, i64 -8
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !40, !align !41 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.em, align 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = lshr i32 %.sroa.0.0.copyload.i25, 4
  %i.eq = add nsw i32 %i.ep, -1
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2
  %i.eu = zext i16 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 3
  %i.ew = sub i32 %.sroa.0.0.copyload.i25, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = zext i32 %i.ew to i64
  %i.fb = add i64 %i.fa, %i.ez
  %i.fc = inttoptr i64 %i.fb to ptr               ; 3 uses
  %i.fd = load i8, ptr %i.fc, align 4
  %.not = icmp eq i8 %i.fd, 5
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = icmp eq ptr %i.ff, %1
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE22RefineTypesAfterBranchEPKNS2_8BranchOpEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull %i.fc, ptr noundef nonnull %1, i1 noundef zeroext %i.fg)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8SnapshotEEvT_SA_.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %1, ptr %i.fh, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorIiE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorIiE14EnsureCapacityEm.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIiE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorIiE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorIiE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorIiE14EnsureCapacityEm.exit
  %i.n = ptrtoaddr ptr %i.l to i64
  %i.o = ptrtoaddr ptr %i.i to i64
  %i.p = shl nuw nsw i64 %1, 2
  %i.q = add i64 %i.p, %i.o
  %i.r = xor i64 %i.n, -1
  %i.s = add i64 %i.q, %i.r
  %i.t = and i64 %i.s, -4
  %i.u = add i64 %i.t, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.u, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %_ZN2v88internal10ZoneVectorIiE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIiE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #24
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
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #23
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 5 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.f, label %bb.g, !prof !42

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.p, align 8
  store ptr %i.w, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.x = shl nuw i64 1, %i.j
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.y, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #26
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE22RefineTypesAfterBranchEPKNS2_8BranchOpEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.v8::internal::compiler::turboshaft::Typer::BranchRefinements", align 8 ; 13 uses
  store ptr %2, ptr %i.a, align 8
  %i.c = zext i1 %3 to i8
  store i8 %i.c, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNK2v88internal8compiler10turboshaft9Operation8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !648 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.f, ptr %4, align 8, !alias.scope !648
  %i.g = load ptr, ptr %5, align 8, !noalias !648 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.e, i64 40) ; 6 uses
  %i.h = icmp ugt i64 %i.e, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE79ENS2_21UniformReducerAdapterIS3_SG_E24ReduceRetainContinuationEJNS2_7OpIndexEEEESN_DpT1_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = zext i32 %i.a to i64                     ; 2 uses
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %i.p = extractvalue { ptr, i64 } %i.o, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.q = load ptr, ptr %i.g, align 8, !nonnull !40, !align !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, %i.l
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.v) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = load ptr, ptr %i.g, align 8, !nonnull !40, !align !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @_ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %2, ptr %i.x, i64 %i.y, ptr noundef %i.ab)
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE7SetTypeENS2_7OpIndexERKNS2_4TypeEb(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_8RetainOpEJNS2_14ShadowyOpIndexEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !40, !align !41 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8RetainOpEE3NewIJNS2_14ShadowyOpIndexEEEERS4_PNS2_5GraphEDpT_.exit, !prof !39

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
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8RetainOpEE3NewIJNS2_14ShadowyOpIndexEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8RetainOpEE3NewIJNS2_14ShadowyOpIndexEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi10 = phi i64 [ %i.i, %bb.a ], [ %.pre9, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 5 uses
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
  store i8 79, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %1, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.f, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = zext i32 %1 to i64
  %i.am = add i64 %i.ak, %i.al
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ap, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8RetainOpEEEvRKT_.exit, label %bb.c, !prof !39

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8RetainOpEE3NewIJNS2_14ShadowyOpIndexEEEERS4_PNS2_5GraphEDpT_.exit
  %i.aq = add nuw i8 %i.ap, 1
  store i8 %i.aq, ptr %i.ao, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8RetainOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8RetainOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8RetainOpEE3NewIJNS2_14ShadowyOpIndexEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2020
  %.sroa.0.0.copyload.i = load i32, ptr %i.ar, align 4
  %i.as = load ptr, ptr %i.a, align 8, !nonnull !40, !align !41 ; 4 uses
  %i.at = lshr i64 %i.i, 4
  %i.au = and i64 %i.at, 268435455                ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 216
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 208 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2
  %.not.i.i6 = icmp ugt i64 %i.bc, %i.au
  br i1 %.not.i.i6, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8RetainOpEEEvRKT_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 200 ; 2 uses
  %i.be = lshr i64 %i.au, 1
  %i.bf = add nuw nsw i64 %i.au, 32
  %i.bg = add nuw nsw i64 %i.bf, %i.be
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 noundef %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.ax, align 8
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 noundef %i.bn)
  %.pre.i.i = load ptr, ptr %i.ax, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8RetainOpEEEvRKT_.exit, %bb.d
  %i.bo = phi ptr [ %.pre.i.i, %bb.d ], [ %i.ay, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8RetainOpEEEvRKT_.exit ]
  %i.bp = trunc i64 %i.i to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.au
  store i32 %.sroa.0.0.copyload.i, ptr %i.bq, align 4
  ret i32 %i.bp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE25ReduceInputGraphOperationINS2_11ParameterOpENS2_21UniformReducerAdapterIS3_SG_E27ReduceParameterContinuationEEENS2_7OpIndexESN_RKT_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1864 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = add nsw i32 %i.c, 1
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1872 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %.not.i.i.i.i = icmp ugt i64 %i.o, %i.h
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = add nsw i32 %i.c, 2
  %i.q = sext i32 %i.p to i64                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.m
  %i.v = ashr exact i64 %i.u, 2
  %i.w = icmp ult i64 %i.v, %i.q
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 noundef %i.q)
  %.pre.i.i.i.i.i = load ptr, ptr %i.a, align 8
  %.pre.i.i.i.i = load ptr, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.y = phi ptr [ %.pre.i.i.i.i.i, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.q ; 2 uses
  %i.aa = icmp ugt ptr %i.z, %i.x
  br i1 %i.aa, label %.lr.ph.i.i.i.i.preheader.i.i.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %bb.d
  %i.ab = ptrtoaddr ptr %i.x to i64
  %i.ac = ptrtoaddr ptr %i.y to i64
  %i.ad = shl nuw nsw i64 %i.q, 2
  %i.ae = add nsw i64 %i.ad, -4
  %i.af = sub i64 %i.ae, %i.ab
  %i.ag = add i64 %i.af, %i.ac
  %i.ah = and i64 %i.ag, -4
  %i.ai = add i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 -1, i64 %i.ai, i1 false)
  %.pre13.pre.i.i.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i, %bb.d
  %.pre13.i.i.i.i = phi ptr [ %.pre13.pre.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i ], [ %i.y, %bb.d ]
  store ptr %i.z, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i, %bb.a
  %i.aj = phi ptr [ %.pre13.i.i.i.i, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i ], [ %i.k, %bb.a ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.h ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not12.i.i.i.i = icmp eq i32 %i.al, -1
  br i1 %.not12.i.i.i.i, label %bb.f, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.thread16, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit, !prof !39

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit: ; preds = %bb.f
  %i.ap = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE15ReduceParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_(ptr noundef nonnull align 8 dereferenceable(1864) %0, i32 noundef %i.c, i8 %.sroa.0.0.copyload.i.i.i, ptr noundef %i.f) ; 3 uses
  store i32 %i.ap, ptr %i.ak, align 4
  %.not = icmp eq i32 %i.ap, -1
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.thread16, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.thread

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.thread: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit
  %.sroa.011.0.copyload.i.i.i.i15 = phi i32 [ %i.ap, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit ], [ %i.al, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.thread16, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.at = lshr i32 %1, 4
  %i.au = zext nneg i32 %i.at to i64              ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !1888
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1888 ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 24
  %.not.i.i.i = icmp ugt i64 %i.bc, %i.au
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = lshr i64 %i.au, 1
  %i.bf = add nuw nsw i64 %i.au, 32
  %i.bg = add nuw nsw i64 %i.bf, %i.be
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 noundef %i.bg), !noalias !1888
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1888
  %i.bj = load ptr, ptr %i.ax, align 8, !noalias !1888
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 noundef %i.bn), !noalias !1888
  %.pre.i.i.i = load ptr, ptr %i.ax, align 8, !noalias !1888
  br label %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit: ; preds = %bb.g, %bb.h
  %i.bo = phi ptr [ %.pre.i.i.i, %bb.h ], [ %i.ay, %bb.g ]
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  %i.bq = load i8, ptr %3, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE7GetTypeENS2_7OpIndexE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %4, ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %.sroa.011.0.copyload.i.i.i.i15)
  %i.bs = load i8, ptr %4, align 8
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type11IsSubtypeOfERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  br i1 %i.bu, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bv = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type11IsSubtypeOfERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  br i1 %i.bv, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.bx = load ptr, ptr %i.bw, align 8
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE19RefineOperationTypeEPNS2_5BlockENS2_7OpIndexERKNS2_4TypeEc(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %i.bx, i32 %.sroa.011.0.copyload.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef signext 73)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.thread16

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.thread16: ; preds = %bb.f, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.thread, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit, %bb.n
  %.sroa.011.0.copyload.i.i.i.i14 = phi i32 [ %.sroa.011.0.copyload.i.i.i.i15, %bb.n ], [ %.sroa.011.0.copyload.i.i.i.i15, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.thread ], [ -1, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit ], [ -1, %bb.f ]
  ret i32 %.sroa.011.0.copyload.i.i.i.i14
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE15ReduceParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 noundef %1, i8 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE80ENS2_21UniformReducerAdapterIS3_SG_E27ReduceParameterContinuationEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT1_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 noundef %1, i8 %2, ptr noundef %3) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_11ParameterOpEEENS2_7OpIndexESL_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !40, !align !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = zext i32 %i.b to i64
  %i.l = add i64 %i.j, %i.k
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(1136) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.n = call noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE4FindINS2_11ParameterOpEEEPNSI_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.a) ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.t, align 4
  %i.u = load i64, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.aa = load i32, ptr %i.z, align 4
  store i32 %i.b, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4
  store i64 %i.u, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  store ptr %i.n, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE10RemoveLastENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %i.b)
  %.sroa.015.0.copyload.i = load i32, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.015.0.i = phi i32 [ %i.b, %bb.c ], [ %.sroa.015.0.copyload.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_11ParameterOpEEENS2_7OpIndexESL_.exit

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_11ParameterOpEEENS2_7OpIndexESL_.exit: ; preds = %bb.e, %bb.a
  %.sroa.015.2.i = phi i32 [ %i.b, %bb.a ], [ %.sroa.015.0.i, %bb.e ]
  ret i32 %.sroa.015.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE80ENS2_21UniformReducerAdapterIS3_SG_E27ReduceParameterContinuationEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT1_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 noundef %1, i8 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %i.a = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 %2, ptr noundef %3) ; 4 uses
  %i.b = icmp ne i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !40, !align !41
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft5Graph17SwapWithCompanionEv:bb.a
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i: ; preds = %bb.h, %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  store ptr %i.cd, ptr %i.bv, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8
  store ptr %i.cf, ptr %i.bw, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.x, i64 120 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  store ptr %i.ch, ptr %i.by, align 8
  %i.ci = load ptr, ptr %i.bt, align 8
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i
  store ptr %i.bu, ptr %i.bt, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i, %bb.i
  store <2 x ptr> %i.bx, ptr %i.cc, align 8
  store ptr %i.bz, ptr %i.cg, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.x, i64 168 ; 3 uses
  %i.cm = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cp = load <2 x ptr>, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  %i.cs = icmp eq ptr %i.cm, null
  br i1 %i.cs, label %bb.j, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit
  %i.ct = load ptr, ptr %i.cl, align 8
  store ptr %i.ct, ptr %i.ck, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i: ; preds = %bb.j, %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.x, i64 176 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  store ptr %i.cv, ptr %i.cn, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.cx = load ptr, ptr %i.cw, align 8
  store ptr %i.cx, ptr %i.co, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  store ptr %i.cz, ptr %i.cq, align 8
  %i.da = load ptr, ptr %i.cl, align 8
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.k, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit

bb.k:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i
  store ptr %i.cm, ptr %i.cl, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i, %bb.k
  store <2 x ptr> %i.cp, ptr %i.cu, align 8
  store ptr %i.cr, ptr %i.cy, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.x, i64 200 ; 3 uses
  %i.de = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dh = load <2 x ptr>, ptr %i.df, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  %i.dk = icmp eq ptr %i.de, null
  br i1 %i.dk, label %bb.l, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit
  %i.dl = load ptr, ptr %i.dd, align 8
  store ptr %i.dl, ptr %i.dc, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i: ; preds = %bb.l, %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.x, i64 208 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  store ptr %i.dn, ptr %i.df, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %i.dp = load ptr, ptr %i.do, align 8
  store ptr %i.dp, ptr %i.dg, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.x, i64 224 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  store ptr %i.dr, ptr %i.di, align 8
  %i.ds = load ptr, ptr %i.dd, align 8
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.m, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEE8SwapDataERS5_.exit

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i
  store ptr %i.de, ptr %i.dd, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEE8SwapDataERS5_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEE8SwapDataERS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i, %bb.m
  store <2 x ptr> %i.dh, ptr %i.dm, align 8
  store ptr %i.dj, ptr %i.dq, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.x, i64 240 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dz = load <2 x ptr>, ptr %i.dx, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i8 0, i64 24, i1 false)
  %i.ec = icmp eq ptr %i.dw, null
  br i1 %i.ec, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEEaSEOS5_.exit.i.i

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEE8SwapDataERS5_.exit
  %i.ed = load ptr, ptr %i.dv, align 8
  store ptr %i.ed, ptr %i.du, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEEaSEOS5_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEEaSEOS5_.exit.i.i: ; preds = %bb.n, %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEE8SwapDataERS5_.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.x, i64 248 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8
  store ptr %i.ef, ptr %i.dx, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.x, i64 256
  %i.eh = load ptr, ptr %i.eg, align 8
  store ptr %i.eh, ptr %i.dy, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.x, i64 264 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8
  store ptr %i.ej, ptr %i.ea, align 8
  %i.ek = load ptr, ptr %i.dv, align 8
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.o, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_4TypeEE8SwapDataERS5_.exit

bb.o:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEEaSEOS5_.exit.i.i
  store ptr %i.dw, ptr %i.dv, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_4TypeEE8SwapDataERS5_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_4TypeEE8SwapDataERS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEEaSEOS5_.exit.i.i, %bb.o
  store <2 x ptr> %i.dz, ptr %i.ee, align 8
  store ptr %i.eb, ptr %i.ei, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr null, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.eo = load i64, ptr %i.en, align 8            ; 3 uses
  %i.ep = icmp ne i64 %i.eo, 0
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp ult i64 %i.eo, 2
  br i1 %i.eq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_4TypeEE8SwapDataERS5_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8
  %.not.i.i = icmp ult i64 %i.es, 131072
  br i1 %.not.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE5clearEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 0, ptr %i.er, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE5clearEv.exit

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_4TypeEE8SwapDataERS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %i.en, ptr %1, align 8
  call void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.en, i64 noundef 4, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSI_SJ_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.et = icmp ult i64 %i.eo, 128
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN4absl18container_internal17ClearBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(40) %i.en, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull %i.eu, i1 noundef zeroext %i.et, i1 noundef zeroext true) #23
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE5clearEv.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE5clearEv.exit: ; preds = %bb.p, %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit
  %i.n = ptrtoaddr ptr %i.l to i64
  %i.o = ptrtoaddr ptr %i.i to i64
  %i.p = shl nuw nsw i64 %1, 3
  %i.q = add i64 %i.p, %i.o
  %i.r = xor i64 %i.n, -1
  %i.s = add i64 %i.q, %i.r
  %i.t = and i64 %i.s, -8
  %i.u = add i64 %i.t, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.u, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #23
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSI_SJ_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat {
bb.a:
  ret void
}

declare void @_ZN4absl18container_internal17ClearBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(1656) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.2502, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  switch i64 %i.b, label %bb.d [
    i64 0, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 40
  store i8 0, ptr %i.f, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %i.a, ptr %1, align 8
  call void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 48, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS6_10ZoneVectorISt4pairINS8_16SnapshotTableKeyINS8_7OpIndexENS8_12VariableDataEEESE_EEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS6_13ZoneAllocatorISC_IKS9_SJ_EEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSX_SY_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.g = load i64, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1648
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull %i.l, i64 noundef %i.g, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 48, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i)
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit: ; preds = %bb.a, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.u, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.v = phi ptr [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ab, %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i ] ; 3 uses
  %.06.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.ac, %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i ] ; 3 uses
  %i.w = load ptr, ptr %.06.i.i.i.i.i, align 8    ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %.not7.i.i.i.i.i.i.i.i = icmp ugt i64 %i.y, 16
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 16, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  store ptr %i.aa, ptr %i.w, align 8
  store ptr %i.w, ptr %i.u, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ab = phi ptr [ %i.v, %bb.g ], [ %i.w, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ad = icmp ult ptr %.06.i.i.i.i.i, %i.r
  br i1 %i.ad, label %bb.f, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i, !llvm.loop !2540

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = and i64 %i.af, 2305843009213693950
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i
  %i.ai = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.af, ptr %i.aj, align 8
  store ptr null, ptr %i.ai, align 8
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i: ; preds = %bb.i, %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.not.i.i1.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEEEE13VariableTableD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1216
end_hunk_4
