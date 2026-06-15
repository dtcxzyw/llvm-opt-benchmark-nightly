inline.NumInlined: 2106
inline.NumDeleted: 554
begin_hunk_0_@_ZN2v88internal14OrderedHashSet3AddINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES5_NS3_INS0_6ObjectEEE:bb.a

bb.e:                                             ; preds = %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE23EnsureCapacityForAddingINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i = load i64, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bo = load i64, ptr %i.bn, align 8
  %.not89 = icmp eq i64 %.sroa.0.0.copyload.i, %i.bo
  br i1 %.not89, label %bb.f, label %.loopexit, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread85: ; preds = %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE23EnsureCapacityForAddingINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_.exit._ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread85_crit_edge, %.thread70
  %.pre-phi99 = phi ptr [ %.pre98, %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE23EnsureCapacityForAddingINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_.exit._ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread85_crit_edge ], [ %i.au, %.thread70 ] ; 4 uses
  %.pre-phi = phi i64 [ %.pre97, %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE23EnsureCapacityForAddingINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_.exit._ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread85_crit_edge ], [ %i.at, %.thread70 ] ; 2 uses
  %.sroa.019.0.i8187 = phi ptr [ %i.bl, %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE23EnsureCapacityForAddingINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_.exit._ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread85_crit_edge ], [ %1, %.thread70 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre-phi99, i64 32 ; 3 uses
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8
  %i.br = lshr i64 %i.bq, 32
  %i.bs = add nuw nsw i64 %i.br, 4294967295
  %i.bt = and i64 %i.bs, %i.d
  %i.bu = load atomic volatile i64, ptr %i.bp monotonic, align 8
  %i.bv = lshr i64 %i.bu, 32
  %i.bw = add nuw nsw i64 %i.bv, 4294967295
  %i.bx = and i64 %i.bw, %i.d
  %sext90 = shl nuw i64 %i.bx, 32
  %i.by = ashr exact i64 %sext90, 29
  %i.bz = getelementptr i8, ptr %.pre-phi99, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 40
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre-phi99, i64 16 ; 4 uses
  %i.cd = load atomic volatile i64, ptr %i.cc monotonic, align 8 ; 2 uses
  %i.ce = lshr i64 %i.cd, 32
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre-phi99, i64 24
  %i.ch = load atomic volatile i64, ptr %i.cg monotonic, align 8
  %i.ci = lshr i64 %i.ch, 32
  %i.cj = trunc nuw i64 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, %i.cf                ; 2 uses
  %i.cl = load atomic volatile i64, ptr %i.bp monotonic, align 8
  %i.cm = lshr i64 %i.cl, 32
  %i.cn = trunc nuw i64 %i.cm to i32
  %i.co = shl nsw i32 %i.ck, 1
  %i.cp = add i32 %i.cn, 3
  %i.cq = add i32 %i.cp, %i.co
  %i.cr = load i64, ptr %2, align 8               ; 5 uses
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr [8 x i8], ptr %i.cc, i64 %i.cs ; 3 uses
  store atomic volatile i64 %i.cr, ptr %i.ct monotonic, align 8
  %i.cu = trunc i64 %i.cr to i1
  br i1 %i.cu, label %bb.g, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread85
  %i.cv = or disjoint i64 %.pre-phi, 1            ; 2 uses
  %i.cw = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cx = and i64 %.pre-phi, -262144
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load i64, ptr %i.cy, align 262144       ; 2 uses
  %i.da = and i64 %i.cz, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.da, 0
  %i.db = and i64 %i.cz, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not37.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.dc = and i64 %i.cr, -262144
  %i.dd = inttoptr i64 %i.dc to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dd, align 262144
  %i.de = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not38.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cv, i64 noundef %i.cw, i64 %i.cr) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cv, i64 %i.cw, i64 %i.cr) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread85, %bb.j, %bb.k
  %i.df = and i64 %i.cb, -4294967296
  %i.dg = getelementptr i8, ptr %i.ct, i64 8
  store atomic volatile i64 %i.df, ptr %i.dg monotonic, align 8
  %i.dh = sext i32 %i.ck to i64
  %i.di = shl nsw i64 %i.dh, 32
  %i.dj = shl nuw i64 %i.bt, 32
  %sext92 = add i64 %i.dj, 12884901888
  %i.dk = ashr exact i64 %sext92, 29
  %i.dl = getelementptr inbounds i8, ptr %i.cc, i64 %i.dk
  store atomic volatile i64 %i.di, ptr %i.dl monotonic, align 8
  %i.dm = and i64 %i.cd, -4294967296
  %i.dn = add i64 %i.dm, 4294967296
  store atomic volatile i64 %i.dn, ptr %i.cc monotonic, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %.sroa.056.6 = phi ptr [ null, %bb.e ], [ %.sroa.019.0.i8187, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ %1, %bb.c ]
  ret ptr %.sroa.056.6
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE23EnsureCapacityForAddingINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = lshr i64 %i.i, 32
  %i.k = trunc nuw i64 %i.j to i32                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %sh.diff.i = lshr i64 %i.m, 31
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32     ; 2 uses
  %i.n = and i32 %tr.sh.diff.i, -2                ; 3 uses
  %i.o = add nsw i32 %i.k, %i.g
  %i.p = icmp slt i32 %i.o, %i.n
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %i.n, 0
  %i.r = ashr i32 %tr.sh.diff.i, 1
  %.not = icmp sgt i32 %i.r, %i.k
  %i.s = zext i1 %.not to i32
  %spec.select = shl i32 %i.n, %i.s
  %.0 = select i1 %i.q, i32 4, i32 %spec.select
  %i.t = tail call ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i(ptr noundef %0, ptr nonnull %1, i32 noundef %.0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.019.0 = phi ptr [ %i.t, %bb.b ], [ %1, %bb.a ]
  ret ptr %.sroa.019.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal14OrderedHashSet6RehashINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %sh.diff.i.i = lshr i64 %i.e, 31
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.f = and i32 %tr.sh.diff.i.i, -2
  %i.g = tail call ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i(ptr noundef %0, ptr nonnull %1, i32 noundef %i.f)
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal14OrderedHashSet6RehashINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES5_i(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i(ptr noundef %0, ptr %1, i32 noundef %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.518", align 8 ; 4 uses
  %4 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call i32 @llvm.smax.i32(i32 %2, i32 4)
  %spec.select.i.i.i = add nsw i32 %i.a, -1
  %i.b = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i, i1 false)
  %i.c = sub nuw nsw i32 32, %i.b                 ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %.fr144 = freeze i32 %i.d                       ; 3 uses
  %i.e = icmp sgt i32 %.fr144, 26843545
  br i1 %i.e, label %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8
  %i.g = and i64 %i.f, -262144
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i44 = load i64, ptr %i.h, align 262144
  %i.i = and i64 %.sroa.0.0.copyload.i44, 24
  %.not = icmp eq i64 %i.i, 0
  %i.j = zext i1 %.not to i8
  %i.k = sdiv i32 %.fr144, 2                      ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.m = shl i32 2, %i.c
  %i.n = add nuw i32 %i.m, 3
  %i.o = add i32 %i.n, %i.k
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.l, i32 noundef %i.o, i8 noundef zeroext %i.j) #13 ; 11 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp sgt i32 %.fr144, 1
  %i.s = add i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr                 ; 12 uses
  br i1 %i.r, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 3 uses
  %i.u = add nsw i32 %i.k, -1
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 1073741816
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.7, %bb.c ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store atomic volatile i64 -4294967296, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store atomic volatile i64 -4294967296, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store atomic volatile i64 -4294967296, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store atomic volatile i64 -4294967296, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store atomic volatile i64 -4294967296, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store atomic volatile i64 -4294967296, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store atomic volatile i64 -4294967296, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store atomic volatile i64 -4294967296, ptr %i.al monotonic, align 8
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !10

_ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.am, ptr %4, align 8
  %i.an = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 277, ptr nonnull %4, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ao, ptr noundef null) #13 ; 0 uses
  br label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE12SetNextTableENS0_6TaggedIS2_EE.exit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod143 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod143)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.epil
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store atomic volatile i64 -4294967296, ptr %i.ar monotonic, align 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !11

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.b
  %i.as = sext i32 %i.k to i64
  %i.at = shl nsw i64 %i.as, 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store atomic volatile i64 %i.at, ptr %i.au monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store atomic volatile i64 0, ptr %i.av monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store atomic volatile i64 0, ptr %i.aw monotonic, align 8
  %i.ax = load i64, ptr %i.p, align 8
  %i.ay = add i64 %i.ax, -1
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %i.bc = load i64, ptr %1, align 8
  %i.bd = add i64 %i.bc, -1
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = and i64 %i.bg, -4294967296
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8
  %i.bk = add i64 %i.bj, %i.bh
  %i.bl = ashr i64 %i.bk, 32                      ; 2 uses
  %.not127128 = icmp eq i64 %i.bl, 0
  br i1 %.not127128, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.bn = add i64 %i.bb, -4294967296
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre = load i64, ptr %i.p, align 8
  %.pre132 = load i64, ptr %1, align 8
  %.pre133 = add i64 %.pre, -1
  %.pre134 = inttoptr i64 %.pre133 to ptr
  %.pre136 = add i64 %.pre132, -1
  %.pre138 = inttoptr i64 %.pre136 to ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %.pre-phi139 = phi ptr [ %.pre138, %._crit_edge.loopexit ], [ %i.be, %.loopexit ]
  %.pre-phi135 = phi ptr [ %.pre134, %._crit_edge.loopexit ], [ %i.az, %.loopexit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre-phi139, i64 16
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.bq = and i64 %i.bp, -4294967296
  %i.br = getelementptr inbounds nuw i8, ptr %.pre-phi135, i64 16
  store atomic volatile i64 %i.bq, ptr %i.br monotonic, align 8
  %i.bs = load i64, ptr %1, align 8
  %i.bt = add i64 %i.bs, -1                       ; 3 uses
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8
  %i.bx = lshr i64 %i.bw, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.u, label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE12SetNextTableENS0_6TaggedIS2_EE.exit

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %.034131 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.t ] ; 4 uses
  %.035130 = phi i32 [ 0, %.lr.ph ], [ %.136, %bb.t ] ; 3 uses
  %.sroa.072.0129 = phi i64 [ 0, %.lr.ph ], [ %i.ft, %bb.t ] ; 3 uses
  %i.ca = trunc i64 %.sroa.072.0129 to i32
  %i.cb = load i64, ptr %1, align 8
  %i.cc = add i64 %i.cb, -1
  %i.cd = inttoptr i64 %i.cc to ptr               ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load atomic volatile i64, ptr %i.ce monotonic, align 8
  %i.cg = lshr i64 %i.cf, 32
  %i.ch = trunc nuw i64 %i.cg to i32
  %i.ci = shl nsw i32 %i.ca, 1
  %i.cj = add i32 %i.ci, 3                        ; 2 uses
  %i.ck = add i32 %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load atomic volatile i64, ptr %i.cn monotonic, align 8 ; 5 uses
  %i.cp = load i64, ptr %i.bm, align 8
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cr = add nsw i32 %.035130, 1
  %sext = shl i64 %.sroa.072.0129, 32
  %i.cs = sext i32 %.035130 to i64
  %i.ct = getelementptr [8 x i8], ptr %i.cd, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 40
  store atomic volatile i64 %sext, ptr %i.cu monotonic, align 8
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.cv = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.co) ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !13

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.h
  %i.cz = add nsw i64 %i.co, -1
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dc = add i64 %i.db, 11
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i16, ptr %i.dd monotonic, align 2
  %i.df = icmp ugt i16 %i.de, 299
  br i1 %i.df, label %bb.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !14

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.i:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %i.co, ptr %3, align 8
  %i.dg = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit: ; preds = %bb.g, %bb.i
  %.sroa.09.0.i = phi i64 [ %i.dg, %bb.i ], [ %i.cv, %bb.g ]
  %i.dh = and i64 %.sroa.09.0.i, %i.bn
  %i.di = load i64, ptr %i.p, align 8
  %i.dj = add i64 %i.di, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = add i64 %i.dh, 12884901888
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dn = ashr i64 %i.dl, 32
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dn ; 2 uses
  %i.dp = load atomic volatile i64, ptr %i.do monotonic, align 8 ; 5 uses
  %i.dq = sext i32 %.034131 to i64
  %i.dr = shl nsw i64 %i.dq, 32
end_hunk_0
begin_hunk_1_@_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i:bb.a
  %i.ee = inttoptr i64 %i.ed to ptr               ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load atomic volatile i64, ptr %i.ef monotonic, align 8
  %i.eh = lshr i64 %i.eg, 32
  %i.ei = trunc nuw i64 %i.eh to i32
  %i.ej = add i32 %i.cj, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = sext i32 %i.eb to i64                   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.en = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.ek
  %i.eo = load atomic volatile i64, ptr %i.en monotonic, align 8 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.el ; 2 uses
  store atomic volatile i64 %i.eo, ptr %i.eq monotonic, align 8
  %i.er = trunc i64 %i.eo to i1
  br i1 %i.er, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50

bb.j:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50
  %i.es = or disjoint i64 %i.fo, 1                ; 2 uses
  %i.et = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.eu = and i64 %i.fo, -262144
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load i64, ptr %i.ev, align 262144       ; 2 uses
  %i.ex = and i64 %i.ew, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ex, 0
  %i.ey = and i64 %i.ew, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not37.i.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ez = and i64 %i.dp, -262144
  %i.fa = inttoptr i64 %i.ez to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.fa, align 262144
  %i.fb = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not38.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.es, i64 noundef %i.et, i64 %i.dp) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.es, i64 %i.et, i64 %i.dp) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50, %bb.m, %bb.n
  %i.fc = add nsw i32 %.034131, 1
  br label %bb.t

bb.o:                                             ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit
  %i.fd = or disjoint i64 %i.dt, 1                ; 2 uses
  %i.fe = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.ff = and i64 %i.dt, -262144
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = load i64, ptr %i.fg, align 262144       ; 2 uses
  %i.fi = and i64 %i.fh, 32
  %.not.i.i.i.i.i46 = icmp eq i64 %i.fi, 0
  %i.fj = and i64 %i.fh, 25
  %.not37.i.i.i.i.i47 = icmp eq i64 %i.fj, 0
  br i1 %.not37.i.i.i.i.i47, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fk = and i64 %i.eo, -262144
  %i.fl = inttoptr i64 %i.fk to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i48 = load i64, ptr %i.fl, align 262144
  %i.fm = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i48, 25
  %.not38.i.i.i.i.i49 = icmp eq i64 %i.fm, 0
  br i1 %.not38.i.i.i.i.i49, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fd, i64 noundef %i.fe, i64 %i.eo) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i46, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fd, i64 %i.fe, i64 %i.eo) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50: ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, %bb.r, %bb.s
  %i.fn = load i64, ptr %i.p, align 8
  %i.fo = add i64 %i.fn, -1                       ; 3 uses
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = getelementptr [8 x i8], ptr %i.fp, i64 %i.el
  %i.fr = getelementptr i8, ptr %i.fq, i64 24     ; 2 uses
  store atomic volatile i64 %i.dp, ptr %i.fr monotonic, align 8
  %i.fs = trunc i64 %i.dp to i1
  br i1 %i.fs, label %bb.j, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.t:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.f
  %.136 = phi i32 [ %i.cr, %bb.f ], [ %.035130, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ]
  %.1 = phi i32 [ %.034131, %bb.f ], [ %i.fc, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ]
  %i.ft = add nuw i64 %.sroa.072.0129, 1          ; 2 uses
  %.not127 = icmp eq i64 %i.ft, %i.bl
  br i1 %.not127, label %._crit_edge.loopexit, label %bb.e

bb.u:                                             ; preds = %._crit_edge
  %i.fu = load i64, ptr %i.p, align 8             ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  store atomic volatile i64 %i.fu, ptr %i.fv monotonic, align 8
  %i.fw = trunc i64 %i.fu to i1
  br i1 %i.fw, label %bb.v, label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE12SetNextTableENS0_6TaggedIS2_EE.exit

bb.v:                                             ; preds = %bb.u
  %i.fx = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.fy = ptrtoint ptr %i.fv to i64               ; 2 uses
  %i.fz = and i64 %i.bt, -262144
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = load i64, ptr %i.ga, align 262144       ; 2 uses
  %i.gc = and i64 %i.gb, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.gc, 0
  %i.gd = and i64 %i.gb, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ge = and i64 %i.fu, -262144
  %i.gf = inttoptr i64 %i.ge to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.gf, align 262144
  %i.gg = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.gg, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fx, i64 noundef %i.fy, i64 %i.fu) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE12SetNextTableENS0_6TaggedIS2_EE.exit, label %bb.z, !prof !8

bb.z:                                             ; preds = %bb.y
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fx, i64 %i.fy, i64 %i.fu) #13
  br label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE12SetNextTableENS0_6TaggedIS2_EE.exit

_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE12SetNextTableENS0_6TaggedIS2_EE.exit: ; preds = %._crit_edge, %bb.u, %bb.y, %bb.z, %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread
  %.sroa.036.0.i.i123126 = phi ptr [ null, %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread ], [ %i.p, %bb.z ], [ %i.p, %bb.y ], [ %i.p, %bb.u ], [ %i.p, %._crit_edge ]
  ret ptr %.sroa.036.0.i.i123126
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal14OrderedHashSet6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %sh.diff.i.i = lshr i64 %i.e, 31
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.f = and i32 %tr.sh.diff.i.i, -2
  %i.g = tail call ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i(ptr noundef %0, ptr nonnull %1, i32 noundef %i.f)
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal14OrderedHashSet6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES5_i(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i(ptr noundef %0, ptr %1, i32 noundef %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.518", align 8 ; 4 uses
  %4 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call i32 @llvm.smax.i32(i32 %2, i32 4)
  %spec.select.i.i.i = add nsw i32 %i.a, -1
  %i.b = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i, i1 false)
  %i.c = sub nuw nsw i32 32, %i.b                 ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %.fr153 = freeze i32 %i.d                       ; 3 uses
  %i.e = icmp sgt i32 %.fr153, 26843545
  br i1 %i.e, label %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8
  %i.g = and i64 %i.f, -262144
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i53 = load i64, ptr %i.h, align 262144
  %i.i = and i64 %.sroa.0.0.copyload.i53, 24
  %.not = icmp eq i64 %i.i, 0
  %i.j = zext i1 %.not to i8
  %i.k = sdiv i32 %.fr153, 2                      ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.m = shl i32 2, %i.c
  %i.n = add nuw i32 %i.m, 3
  %i.o = add i32 %i.n, %i.k
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.l, i32 noundef %i.o, i8 noundef zeroext %i.j) #13 ; 11 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp sgt i32 %.fr153, 1
  %i.s = add i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr                 ; 12 uses
  br i1 %i.r, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 3 uses
  %i.u = add nsw i32 %i.k, -1
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 1073741816
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.7, %bb.c ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store atomic volatile i64 -4294967296, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store atomic volatile i64 -4294967296, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store atomic volatile i64 -4294967296, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store atomic volatile i64 -4294967296, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store atomic volatile i64 -4294967296, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store atomic volatile i64 -4294967296, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store atomic volatile i64 -4294967296, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store atomic volatile i64 -4294967296, ptr %i.al monotonic, align 8
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !10

_ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.am, ptr %4, align 8
  %i.an = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 277, ptr nonnull %4, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ao, ptr noundef null) #13 ; 0 uses
  br label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE12SetNextTableENS0_6TaggedIS2_EE.exit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.epil
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store atomic volatile i64 -4294967296, ptr %i.ar monotonic, align 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !15

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.b
  %i.as = sext i32 %i.k to i64
  %i.at = shl nsw i64 %i.as, 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store atomic volatile i64 %i.at, ptr %i.au monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store atomic volatile i64 0, ptr %i.av monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store atomic volatile i64 0, ptr %i.aw monotonic, align 8
  %i.ax = load i64, ptr %i.p, align 8
  %i.ay = add i64 %i.ax, -1
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %i.bc = load i64, ptr %1, align 8
  %i.bd = add i64 %i.bc, -1
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = and i64 %i.bg, -4294967296
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8
  %i.bk = add i64 %i.bj, %i.bh
  %i.bl = ashr i64 %i.bk, 32                      ; 2 uses
  %.not136137 = icmp eq i64 %i.bl, 0
  br i1 %.not136137, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.bn = add i64 %i.bb, -4294967296
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre = load i64, ptr %i.p, align 8
  %.pre141 = load i64, ptr %1, align 8
  %.pre142 = add i64 %.pre, -1
  %.pre143 = inttoptr i64 %.pre142 to ptr
  %.pre145 = add i64 %.pre141, -1
  %.pre147 = inttoptr i64 %.pre145 to ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %.pre-phi148 = phi ptr [ %.pre147, %._crit_edge.loopexit ], [ %i.be, %.loopexit ]
  %.pre-phi144 = phi ptr [ %.pre143, %._crit_edge.loopexit ], [ %i.az, %.loopexit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre-phi148, i64 16
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.bq = and i64 %i.bp, -4294967296
  %i.br = getelementptr inbounds nuw i8, ptr %.pre-phi144, i64 16
  store atomic volatile i64 %i.bq, ptr %i.br monotonic, align 8
  %i.bs = load i64, ptr %1, align 8
  %i.bt = add i64 %i.bs, -1                       ; 3 uses
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8
  %i.bx = lshr i64 %i.bw, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.u, label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE12SetNextTableENS0_6TaggedIS2_EE.exit

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %.035140 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.t ] ; 4 uses
  %.036139 = phi i32 [ 0, %.lr.ph ], [ %.137, %bb.t ] ; 3 uses
  %.sroa.088.0138 = phi i64 [ 0, %.lr.ph ], [ %i.ft, %bb.t ] ; 3 uses
  %i.ca = trunc i64 %.sroa.088.0138 to i32
  %i.cb = load i64, ptr %1, align 8
  %i.cc = add i64 %i.cb, -1
  %i.cd = inttoptr i64 %i.cc to ptr               ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load atomic volatile i64, ptr %i.ce monotonic, align 8
  %i.cg = lshr i64 %i.cf, 32
  %i.ch = trunc nuw i64 %i.cg to i32
  %i.ci = shl nsw i32 %i.ca, 1
  %i.cj = add i32 %i.ci, 3                        ; 2 uses
  %i.ck = add i32 %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load atomic volatile i64, ptr %i.cn monotonic, align 8 ; 5 uses
  %i.cp = load i64, ptr %i.bm, align 8
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cr = add nsw i32 %.036139, 1
  %sext = shl i64 %.sroa.088.0138, 32
  %i.cs = sext i32 %.036139 to i64
  %i.ct = getelementptr [8 x i8], ptr %i.cd, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 40
  store atomic volatile i64 %sext, ptr %i.cu monotonic, align 8
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.cv = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.co) ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !13

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.h
  %i.cz = add nsw i64 %i.co, -1
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dc = add i64 %i.db, 11
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i16, ptr %i.dd monotonic, align 2
  %i.df = icmp ugt i16 %i.de, 299
  br i1 %i.df, label %bb.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !14

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.i:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %i.co, ptr %3, align 8
  %i.dg = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit: ; preds = %bb.g, %bb.i
  %.sroa.09.0.i = phi i64 [ %i.dg, %bb.i ], [ %i.cv, %bb.g ]
  %i.dh = and i64 %.sroa.09.0.i, %i.bn
  %i.di = load i64, ptr %i.p, align 8
  %i.dj = add i64 %i.di, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = add i64 %i.dh, 12884901888
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dn = ashr i64 %i.dl, 32
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dn ; 2 uses
  %i.dp = load atomic volatile i64, ptr %i.do monotonic, align 8 ; 5 uses
  %i.dq = sext i32 %.035140 to i64
  %i.dr = shl nsw i64 %i.dq, 32
end_hunk_1
begin_hunk_2_@_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i:bb.a
  %i.ee = inttoptr i64 %i.ed to ptr               ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load atomic volatile i64, ptr %i.ef monotonic, align 8
  %i.eh = lshr i64 %i.eg, 32
  %i.ei = trunc nuw i64 %i.eh to i32
  %i.ej = add i32 %i.cj, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = sext i32 %i.eb to i64                   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.en = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.ek
  %i.eo = load atomic volatile i64, ptr %i.en monotonic, align 8 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.el ; 2 uses
  store atomic volatile i64 %i.eo, ptr %i.eq monotonic, align 8
  %i.er = trunc i64 %i.eo to i1
  br i1 %i.er, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59

bb.j:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59
  %i.es = or disjoint i64 %i.fo, 1                ; 2 uses
  %i.et = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.eu = and i64 %i.fo, -262144
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load i64, ptr %i.ev, align 262144       ; 2 uses
  %i.ex = and i64 %i.ew, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ex, 0
  %i.ey = and i64 %i.ew, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not37.i.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ez = and i64 %i.dp, -262144
  %i.fa = inttoptr i64 %i.ez to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.fa, align 262144
  %i.fb = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not38.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.es, i64 noundef %i.et, i64 %i.dp) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.es, i64 %i.et, i64 %i.dp) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59, %bb.m, %bb.n
  %i.fc = add nsw i32 %.035140, 1
  br label %bb.t

bb.o:                                             ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit
  %i.fd = or disjoint i64 %i.dt, 1                ; 2 uses
  %i.fe = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.ff = and i64 %i.dt, -262144
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = load i64, ptr %i.fg, align 262144       ; 2 uses
  %i.fi = and i64 %i.fh, 32
  %.not.i.i.i.i.i55 = icmp eq i64 %i.fi, 0
  %i.fj = and i64 %i.fh, 25
  %.not37.i.i.i.i.i56 = icmp eq i64 %i.fj, 0
  br i1 %.not37.i.i.i.i.i56, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fk = and i64 %i.eo, -262144
  %i.fl = inttoptr i64 %i.fk to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i57 = load i64, ptr %i.fl, align 262144
  %i.fm = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i57, 25
  %.not38.i.i.i.i.i58 = icmp eq i64 %i.fm, 0
  br i1 %.not38.i.i.i.i.i58, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fd, i64 noundef %i.fe, i64 %i.eo) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i55, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fd, i64 %i.fe, i64 %i.eo) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59: ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, %bb.r, %bb.s
  %i.fn = load i64, ptr %i.p, align 8
  %i.fo = add i64 %i.fn, -1                       ; 3 uses
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = getelementptr [8 x i8], ptr %i.fp, i64 %i.el
  %i.fr = getelementptr i8, ptr %i.fq, i64 24     ; 2 uses
  store atomic volatile i64 %i.dp, ptr %i.fr monotonic, align 8
  %i.fs = trunc i64 %i.dp to i1
  br i1 %i.fs, label %bb.j, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.t:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.f
  %.137 = phi i32 [ %i.cr, %bb.f ], [ %.036139, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ]
  %.1 = phi i32 [ %.035140, %bb.f ], [ %i.fc, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ]
  %i.ft = add nuw i64 %.sroa.088.0138, 1          ; 2 uses
  %.not136 = icmp eq i64 %i.ft, %i.bl
  br i1 %.not136, label %._crit_edge.loopexit, label %bb.e

bb.u:                                             ; preds = %._crit_edge
  %i.fu = load i64, ptr %i.p, align 8             ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  store atomic volatile i64 %i.fu, ptr %i.fv monotonic, align 8
  %i.fw = trunc i64 %i.fu to i1
  br i1 %i.fw, label %bb.v, label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE12SetNextTableENS0_6TaggedIS2_EE.exit

bb.v:                                             ; preds = %bb.u
  %i.fx = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.fy = ptrtoint ptr %i.fv to i64               ; 2 uses
  %i.fz = and i64 %i.bt, -262144
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = load i64, ptr %i.ga, align 262144       ; 2 uses
  %i.gc = and i64 %i.gb, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.gc, 0
  %i.gd = and i64 %i.gb, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ge = and i64 %i.fu, -262144
  %i.gf = inttoptr i64 %i.ge to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.gf, align 262144
  %i.gg = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.gg, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fx, i64 noundef %i.fy, i64 %i.fu) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE12SetNextTableENS0_6TaggedIS2_EE.exit, label %bb.z, !prof !8

bb.z:                                             ; preds = %bb.y
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fx, i64 %i.fy, i64 %i.fu) #13
  br label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE12SetNextTableENS0_6TaggedIS2_EE.exit

_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE12SetNextTableENS0_6TaggedIS2_EE.exit: ; preds = %._crit_edge, %bb.u, %bb.y, %bb.z, %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread
  %.sroa.036.0.i.i132135 = phi ptr [ null, %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashSetEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread ], [ %i.p, %bb.z ], [ %i.p, %bb.y ], [ %i.p, %bb.u ], [ %i.p, %._crit_edge ]
  ret ptr %.sroa.036.0.i.i132135
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal14OrderedHashMap6RehashINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %sh.diff.i.i = lshr i64 %i.e, 31
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.f = and i32 %tr.sh.diff.i.i, -2
  %i.g = tail call ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i(ptr noundef %0, ptr nonnull %1, i32 noundef %i.f)
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal14OrderedHashMap6RehashINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES5_i(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i(ptr noundef %0, ptr %1, i32 noundef %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.518", align 8 ; 4 uses
  %4 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call i32 @llvm.smax.i32(i32 %2, i32 4)
  %spec.select.i.i.i = add nsw i32 %i.a, -1
  %i.b = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i, i1 false)
  %i.c = sub nuw nsw i32 32, %i.b                 ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %.fr147 = freeze i32 %i.d                       ; 3 uses
  %i.e = icmp sgt i32 %.fr147, 19173960
  br i1 %i.e, label %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8
  %i.g = and i64 %i.f, -262144
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i44 = load i64, ptr %i.h, align 262144
  %i.i = and i64 %.sroa.0.0.copyload.i44, 24
  %.not = icmp eq i64 %i.i, 0
  %i.j = zext i1 %.not to i8
  %i.k = sdiv i32 %.fr147, 2                      ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.m = shl i32 3, %i.c
  %i.n = add nuw i32 %i.m, 3
  %i.o = add i32 %i.n, %i.k
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.l, i32 noundef %i.o, i8 noundef zeroext %i.j) #13 ; 12 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp sgt i32 %.fr147, 1
  %i.s = add i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr                 ; 12 uses
  br i1 %i.r, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 3 uses
  %i.u = add nsw i32 %i.k, -1
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 1073741816
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.7, %bb.c ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store atomic volatile i64 -4294967296, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store atomic volatile i64 -4294967296, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store atomic volatile i64 -4294967296, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store atomic volatile i64 -4294967296, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store atomic volatile i64 -4294967296, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store atomic volatile i64 -4294967296, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store atomic volatile i64 -4294967296, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store atomic volatile i64 -4294967296, ptr %i.al monotonic, align 8
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !16

_ZNK2v88internal11MaybeHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.am, ptr %4, align 8
  %i.an = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 277, ptr nonnull %4, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ao, ptr noundef null) #13 ; 0 uses
  br label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE12SetNextTableENS0_6TaggedIS2_EE.exit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod146 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod146)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.epil
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store atomic volatile i64 -4294967296, ptr %i.ar monotonic, align 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !17

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.b
  %i.as = sext i32 %i.k to i64
  %i.at = shl nsw i64 %i.as, 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store atomic volatile i64 %i.at, ptr %i.au monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store atomic volatile i64 0, ptr %i.av monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store atomic volatile i64 0, ptr %i.aw monotonic, align 8
  %i.ax = load i64, ptr %i.p, align 8
  %i.ay = add i64 %i.ax, -1
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %i.bc = load i64, ptr %1, align 8
  %i.bd = add i64 %i.bc, -1
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = and i64 %i.bg, -4294967296
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8
  %i.bk = add i64 %i.bj, %i.bh
  %i.bl = ashr i64 %i.bk, 32                      ; 2 uses
  %.not127129 = icmp eq i64 %i.bl, 0
  br i1 %.not127129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.bn = add i64 %i.bb, -4294967296
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.y
  %.pre = load i64, ptr %i.p, align 8
  %.pre134 = load i64, ptr %1, align 8
  %.pre135 = add i64 %.pre, -1
  %.pre136 = inttoptr i64 %.pre135 to ptr
  %.pre138 = add i64 %.pre134, -1
  %.pre140 = inttoptr i64 %.pre138 to ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %.pre-phi141 = phi ptr [ %.pre140, %._crit_edge.loopexit ], [ %i.be, %.loopexit ]
  %.pre-phi137 = phi ptr [ %.pre136, %._crit_edge.loopexit ], [ %i.az, %.loopexit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre-phi141, i64 16
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.bq = and i64 %i.bp, -4294967296
  %i.br = getelementptr inbounds nuw i8, ptr %.pre-phi137, i64 16
  store atomic volatile i64 %i.bq, ptr %i.br monotonic, align 8
  %i.bs = load i64, ptr %1, align 8
  %i.bt = add i64 %i.bs, -1                       ; 3 uses
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8
  %i.bx = lshr i64 %i.bw, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.z, label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE12SetNextTableENS0_6TaggedIS2_EE.exit

bb.e:                                             ; preds = %.lr.ph, %bb.y
  %.034132 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.y ] ; 4 uses
  %.035131 = phi i32 [ 0, %.lr.ph ], [ %.136, %bb.y ] ; 3 uses
  %.sroa.072.0130 = phi i64 [ 0, %.lr.ph ], [ %i.gm, %bb.y ] ; 4 uses
  %i.ca = load i64, ptr %1, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load atomic volatile i64, ptr %i.cd monotonic, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = mul i64 %.sroa.072.0130, 12884901888
  %i.ch = add i64 %i.cg, 12884901888
  %i.ci = add i64 %i.ch, %i.ce
  %i.cj = ashr i64 %i.ci, 32
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cj
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8 ; 5 uses
  %i.cm = load i64, ptr %i.bm, align 8
  %i.cn = icmp eq i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.co = add nsw i32 %.035131, 1
  %sext = shl i64 %.sroa.072.0130, 32
  %i.cp = sext i32 %.035131 to i64
  %i.cq = getelementptr [8 x i8], ptr %i.cc, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 40
  store atomic volatile i64 %sext, ptr %i.cr monotonic, align 8
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.cs = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.cl) ; 2 uses
  %i.ct = and i64 %i.cs, 1
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = trunc i64 %i.cl to i1
  br i1 %i.cv, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !13

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.h
  %i.cw = add nsw i64 %i.cl, -1
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load atomic volatile i64, ptr %i.cx monotonic, align 8
  %i.cz = add i64 %i.cy, 11
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load atomic volatile i16, ptr %i.da monotonic, align 2
  %i.dc = icmp ugt i16 %i.db, 299
  br i1 %i.dc, label %bb.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !14

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.i:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %i.cl, ptr %3, align 8
  %i.dd = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit: ; preds = %bb.g, %bb.i
  %.sroa.09.0.i = phi i64 [ %i.dd, %bb.i ], [ %i.cs, %bb.g ]
  %i.de = and i64 %.sroa.09.0.i, %i.bn
  %i.df = load i64, ptr %i.p, align 8
  %i.dg = add i64 %i.df, -1
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = add i64 %i.de, 12884901888
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dk = ashr i64 %i.di, 32
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dk ; 2 uses
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8 ; 5 uses
  %i.dn = sext i32 %.034132 to i64
  %i.do = shl nsw i64 %i.dn, 32
  store atomic volatile i64 %i.do, ptr %i.dl monotonic, align 8
  %i.dp = load i64, ptr %i.p, align 8
  %i.dq = add i64 %i.dp, -1                       ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i:bb.a

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50.1, %bb.m, %bb.n
  %i.ez = add nsw i32 %.034132, 1
  br label %bb.y

bb.o:                                             ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit
  %i.fa = or disjoint i64 %i.dq, 1                ; 2 uses
  %i.fb = ptrtoint ptr %i.en to i64               ; 2 uses
  %i.fc = and i64 %i.dq, -262144
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = load i64, ptr %i.fd, align 262144       ; 2 uses
  %i.ff = and i64 %i.fe, 32
  %.not.i.i.i.i.i46 = icmp eq i64 %i.ff, 0
  %i.fg = and i64 %i.fe, 25
  %.not37.i.i.i.i.i47 = icmp eq i64 %i.fg, 0
  br i1 %.not37.i.i.i.i.i47, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fh = and i64 %i.el, -262144
  %i.fi = inttoptr i64 %i.fh to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i48 = load i64, ptr %i.fi, align 262144
  %i.fj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i48, 25
  %.not38.i.i.i.i.i49 = icmp eq i64 %i.fj, 0
  br i1 %.not38.i.i.i.i.i49, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fa, i64 noundef %i.fb, i64 %i.el) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i46, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fa, i64 %i.fb, i64 %i.el) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50: ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, %bb.r, %bb.s
  %i.fk = load i64, ptr %1, align 8
  %i.fl = add i64 %i.fk, -1
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = getelementptr i8, ptr %i.fm, i64 24
  %i.fo = getelementptr [8 x i8], ptr %i.fn, i64 %i.eh
  %i.fp = load atomic volatile i64, ptr %i.fo monotonic, align 8 ; 5 uses
  %i.fq = load i64, ptr %i.p, align 8
  %i.fr = add i64 %i.fq, -1                       ; 3 uses
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = getelementptr i8, ptr %i.fs, i64 24
  %i.fu = getelementptr [8 x i8], ptr %i.ft, i64 %i.ei ; 2 uses
  store atomic volatile i64 %i.fp, ptr %i.fu monotonic, align 8
  %i.fv = trunc i64 %i.fp to i1
  br i1 %i.fv, label %bb.t, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50.1

bb.t:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50
  %i.fw = or disjoint i64 %i.fr, 1                ; 2 uses
  %i.fx = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fy = and i64 %i.fr, -262144
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = load i64, ptr %i.fz, align 262144       ; 2 uses
  %i.gb = and i64 %i.ga, 32
  %.not.i.i.i.i.i46.1 = icmp eq i64 %i.gb, 0
  %i.gc = and i64 %i.ga, 25
  %.not37.i.i.i.i.i47.1 = icmp eq i64 %i.gc, 0
  br i1 %.not37.i.i.i.i.i47.1, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.gd = and i64 %i.fp, -262144
  %i.ge = inttoptr i64 %i.gd to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i48.1 = load i64, ptr %i.ge, align 262144
  %i.gf = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i48.1, 25
  %.not38.i.i.i.i.i49.1 = icmp eq i64 %i.gf, 0
  br i1 %.not38.i.i.i.i.i49.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fw, i64 noundef %i.fx, i64 %i.fp) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br i1 %.not.i.i.i.i.i46.1, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50.1, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fw, i64 %i.fx, i64 %i.fp) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50.1

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50.1: ; preds = %bb.x, %bb.w, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit50
  %i.gg = load i64, ptr %i.p, align 8
  %i.gh = add i64 %i.gg, -1                       ; 3 uses
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = getelementptr [8 x i8], ptr %i.gi, i64 %i.ei
  %i.gk = getelementptr i8, ptr %i.gj, i64 32     ; 2 uses
  store atomic volatile i64 %i.dm, ptr %i.gk monotonic, align 8
  %i.gl = trunc i64 %i.dm to i1
  br i1 %i.gl, label %bb.j, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.y:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.f
  %.136 = phi i32 [ %i.co, %bb.f ], [ %.035131, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ]
  %.1 = phi i32 [ %.034132, %bb.f ], [ %i.ez, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ]
  %i.gm = add nuw i64 %.sroa.072.0130, 1          ; 2 uses
  %.not127 = icmp eq i64 %i.gm, %i.bl
  br i1 %.not127, label %._crit_edge.loopexit, label %bb.e

bb.z:                                             ; preds = %._crit_edge
  %i.gn = load i64, ptr %i.p, align 8             ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  store atomic volatile i64 %i.gn, ptr %i.go monotonic, align 8
  %i.gp = trunc i64 %i.gn to i1
  br i1 %i.gp, label %bb.aa, label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE12SetNextTableENS0_6TaggedIS2_EE.exit

bb.aa:                                            ; preds = %bb.z
  %i.gq = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.gr = ptrtoint ptr %i.go to i64               ; 2 uses
  %i.gs = and i64 %i.bt, -262144
  %i.gt = inttoptr i64 %i.gs to ptr
  %i.gu = load i64, ptr %i.gt, align 262144       ; 2 uses
  %i.gv = and i64 %i.gu, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.gv, 0
  %i.gw = and i64 %i.gu, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.gx = and i64 %i.gn, -262144
  %i.gy = inttoptr i64 %i.gx to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.gy, align 262144
  %i.gz = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.gz, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.gq, i64 noundef %i.gr, i64 %i.gn) #13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE12SetNextTableENS0_6TaggedIS2_EE.exit, label %bb.ae, !prof !8

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.gq, i64 %i.gr, i64 %i.gn) #13
  br label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE12SetNextTableENS0_6TaggedIS2_EE.exit

_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE12SetNextTableENS0_6TaggedIS2_EE.exit: ; preds = %._crit_edge, %bb.z, %bb.ad, %bb.ae, %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread
  %.sroa.036.0.i.i123126 = phi ptr [ null, %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread ], [ %i.p, %bb.ae ], [ %i.p, %bb.ad ], [ %i.p, %bb.z ], [ %i.p, %._crit_edge ]
  ret ptr %.sroa.036.0.i.i123126
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal14OrderedHashMap6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %sh.diff.i.i = lshr i64 %i.e, 31
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.f = and i32 %tr.sh.diff.i.i, -2
  %i.g = tail call ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i(ptr noundef %0, ptr nonnull %1, i32 noundef %i.f)
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal14OrderedHashMap6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES5_i(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i(ptr noundef %0, ptr %1, i32 noundef %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.518", align 8 ; 4 uses
  %4 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call i32 @llvm.smax.i32(i32 %2, i32 4)
  %spec.select.i.i.i = add nsw i32 %i.a, -1
  %i.b = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i, i1 false)
  %i.c = sub nuw nsw i32 32, %i.b                 ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %.fr156 = freeze i32 %i.d                       ; 3 uses
  %i.e = icmp sgt i32 %.fr156, 19173960
  br i1 %i.e, label %_ZNK2v88internal17MaybeDirectHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8
  %i.g = and i64 %i.f, -262144
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i53 = load i64, ptr %i.h, align 262144
  %i.i = and i64 %.sroa.0.0.copyload.i53, 24
  %.not = icmp eq i64 %i.i, 0
  %i.j = zext i1 %.not to i8
  %i.k = sdiv i32 %.fr156, 2                      ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.m = shl i32 3, %i.c
  %i.n = add nuw i32 %i.m, 3
  %i.o = add i32 %i.n, %i.k
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.l, i32 noundef %i.o, i8 noundef zeroext %i.j) #13 ; 12 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp sgt i32 %.fr156, 1
  %i.s = add i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr                 ; 12 uses
  br i1 %i.r, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 3 uses
  %i.u = add nsw i32 %i.k, -1
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 1073741816
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.7, %bb.c ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store atomic volatile i64 -4294967296, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store atomic volatile i64 -4294967296, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store atomic volatile i64 -4294967296, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store atomic volatile i64 -4294967296, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store atomic volatile i64 -4294967296, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store atomic volatile i64 -4294967296, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store atomic volatile i64 -4294967296, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store atomic volatile i64 -4294967296, ptr %i.al monotonic, align 8
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !16

_ZNK2v88internal17MaybeDirectHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.am, ptr %4, align 8
  %i.an = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 277, ptr nonnull %4, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ao, ptr noundef null) #13 ; 0 uses
  br label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE12SetNextTableENS0_6TaggedIS2_EE.exit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod155 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.epil
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store atomic volatile i64 -4294967296, ptr %i.ar monotonic, align 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !18

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.b
  %i.as = sext i32 %i.k to i64
  %i.at = shl nsw i64 %i.as, 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store atomic volatile i64 %i.at, ptr %i.au monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store atomic volatile i64 0, ptr %i.av monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store atomic volatile i64 0, ptr %i.aw monotonic, align 8
  %i.ax = load i64, ptr %i.p, align 8
  %i.ay = add i64 %i.ax, -1
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %i.bc = load i64, ptr %1, align 8
  %i.bd = add i64 %i.bc, -1
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = and i64 %i.bg, -4294967296
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8
  %i.bk = add i64 %i.bj, %i.bh
  %i.bl = ashr i64 %i.bk, 32                      ; 2 uses
  %.not136138 = icmp eq i64 %i.bl, 0
  br i1 %.not136138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.bn = add i64 %i.bb, -4294967296
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.y
  %.pre = load i64, ptr %i.p, align 8
  %.pre143 = load i64, ptr %1, align 8
  %.pre144 = add i64 %.pre, -1
  %.pre145 = inttoptr i64 %.pre144 to ptr
  %.pre147 = add i64 %.pre143, -1
  %.pre149 = inttoptr i64 %.pre147 to ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %.pre-phi150 = phi ptr [ %.pre149, %._crit_edge.loopexit ], [ %i.be, %.loopexit ]
  %.pre-phi146 = phi ptr [ %.pre145, %._crit_edge.loopexit ], [ %i.az, %.loopexit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre-phi150, i64 16
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.bq = and i64 %i.bp, -4294967296
  %i.br = getelementptr inbounds nuw i8, ptr %.pre-phi146, i64 16
  store atomic volatile i64 %i.bq, ptr %i.br monotonic, align 8
  %i.bs = load i64, ptr %1, align 8
  %i.bt = add i64 %i.bs, -1                       ; 3 uses
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8
  %i.bx = lshr i64 %i.bw, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.z, label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE12SetNextTableENS0_6TaggedIS2_EE.exit

bb.e:                                             ; preds = %.lr.ph, %bb.y
  %.035141 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.y ] ; 4 uses
  %.036140 = phi i32 [ 0, %.lr.ph ], [ %.137, %bb.y ] ; 3 uses
  %.sroa.088.0139 = phi i64 [ 0, %.lr.ph ], [ %i.gm, %bb.y ] ; 4 uses
  %i.ca = load i64, ptr %1, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load atomic volatile i64, ptr %i.cd monotonic, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = mul i64 %.sroa.088.0139, 12884901888
  %i.ch = add i64 %i.cg, 12884901888
  %i.ci = add i64 %i.ch, %i.ce
  %i.cj = ashr i64 %i.ci, 32
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cj
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8 ; 5 uses
  %i.cm = load i64, ptr %i.bm, align 8
  %i.cn = icmp eq i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.co = add nsw i32 %.036140, 1
  %sext = shl i64 %.sroa.088.0139, 32
  %i.cp = sext i32 %.036140 to i64
  %i.cq = getelementptr [8 x i8], ptr %i.cc, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 40
  store atomic volatile i64 %sext, ptr %i.cr monotonic, align 8
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.cs = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.cl) ; 2 uses
  %i.ct = and i64 %i.cs, 1
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = trunc i64 %i.cl to i1
  br i1 %i.cv, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !13

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.h
  %i.cw = add nsw i64 %i.cl, -1
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load atomic volatile i64, ptr %i.cx monotonic, align 8
  %i.cz = add i64 %i.cy, 11
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load atomic volatile i16, ptr %i.da monotonic, align 2
  %i.dc = icmp ugt i16 %i.db, 299
  br i1 %i.dc, label %bb.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !14

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.i:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %i.cl, ptr %3, align 8
  %i.dd = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit: ; preds = %bb.g, %bb.i
  %.sroa.09.0.i = phi i64 [ %i.dd, %bb.i ], [ %i.cs, %bb.g ]
  %i.de = and i64 %.sroa.09.0.i, %i.bn
  %i.df = load i64, ptr %i.p, align 8
  %i.dg = add i64 %i.df, -1
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = add i64 %i.de, 12884901888
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dk = ashr i64 %i.di, 32
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dk ; 2 uses
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8 ; 5 uses
  %i.dn = sext i32 %.035141 to i64
  %i.do = shl nsw i64 %i.dn, 32
  store atomic volatile i64 %i.do, ptr %i.dl monotonic, align 8
  %i.dp = load i64, ptr %i.p, align 8
  %i.dq = add i64 %i.dp, -1                       ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i:bb.a
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dm, i64 noundef %i.dn, i64 %i.cx) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.not.i.i.i.i.i55, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59, label %bb.q, !prof !8

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dm, i64 %i.dn, i64 %i.cx) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59: ; preds = %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, %bb.p, %bb.q
  %i.dw = load i64, ptr %1, align 8
  %i.dx = add i64 %i.dw, -1
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr i8, ptr %i.dy, i64 24
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %i.ct
  %i.eb = load atomic volatile i64, ptr %i.ea monotonic, align 8 ; 5 uses
  %i.ec = load i64, ptr %i.f, align 8
  %i.ed = add i64 %i.ec, -1                       ; 3 uses
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr i8, ptr %i.ee, i64 24
  %i.eg = getelementptr [8 x i8], ptr %i.ef, i64 %i.cu ; 2 uses
  store atomic volatile i64 %i.eb, ptr %i.eg monotonic, align 8
  %i.eh = trunc i64 %i.eb to i1
  br i1 %i.eh, label %bb.r, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59.1

bb.r:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59
  %i.ei = or disjoint i64 %i.ed, 1                ; 2 uses
  %i.ej = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ek = and i64 %i.ed, -262144
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = load i64, ptr %i.el, align 262144       ; 2 uses
  %i.en = and i64 %i.em, 32
  %.not.i.i.i.i.i55.1 = icmp eq i64 %i.en, 0
  %i.eo = and i64 %i.em, 25
  %.not37.i.i.i.i.i56.1 = icmp eq i64 %i.eo, 0
  br i1 %.not37.i.i.i.i.i56.1, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ep = and i64 %i.eb, -262144
  %i.eq = inttoptr i64 %i.ep to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i57.1 = load i64, ptr %i.eq, align 262144
  %i.er = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i57.1, 25
  %.not38.i.i.i.i.i58.1 = icmp eq i64 %i.er, 0
  br i1 %.not38.i.i.i.i.i58.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ei, i64 noundef %i.ej, i64 %i.eb) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  br i1 %.not.i.i.i.i.i55.1, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59.1, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ei, i64 %i.ej, i64 %i.eb) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59.1

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59.1: ; preds = %bb.v, %bb.u, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59
  %i.es = load i64, ptr %1, align 8
  %i.et = add i64 %i.es, -1
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = getelementptr i8, ptr %i.eu, i64 32
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %i.ct
  %i.ex = load atomic volatile i64, ptr %i.ew monotonic, align 8 ; 5 uses
  %i.ey = load i64, ptr %i.f, align 8
  %i.ez = add i64 %i.ey, -1                       ; 3 uses
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = getelementptr i8, ptr %i.fa, i64 32
  %i.fc = getelementptr [8 x i8], ptr %i.fb, i64 %i.cu ; 2 uses
  store atomic volatile i64 %i.ex, ptr %i.fc monotonic, align 8
  %i.fd = trunc i64 %i.ex to i1
  br i1 %i.fd, label %bb.w, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59.2

bb.w:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59.1
  %i.fe = or disjoint i64 %i.ez, 1                ; 2 uses
  %i.ff = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.fg = and i64 %i.ez, -262144
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load i64, ptr %i.fh, align 262144       ; 2 uses
  %i.fj = and i64 %i.fi, 32
  %.not.i.i.i.i.i55.2 = icmp eq i64 %i.fj, 0
  %i.fk = and i64 %i.fi, 25
  %.not37.i.i.i.i.i56.2 = icmp eq i64 %i.fk, 0
  br i1 %.not37.i.i.i.i.i56.2, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.fl = and i64 %i.ex, -262144
  %i.fm = inttoptr i64 %i.fl to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i57.2 = load i64, ptr %i.fm, align 262144
  %i.fn = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i57.2, 25
  %.not38.i.i.i.i.i58.2 = icmp eq i64 %i.fn, 0
  br i1 %.not38.i.i.i.i.i58.2, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fe, i64 noundef %i.ff, i64 %i.ex) #13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  br i1 %.not.i.i.i.i.i55.2, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59.2, label %bb.aa, !prof !8

bb.aa:                                            ; preds = %bb.z
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fe, i64 %i.ff, i64 %i.ex) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59.2

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59.2: ; preds = %bb.aa, %bb.z, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit59.1
  %i.fo = load i64, ptr %i.f, align 8
  %i.fp = add i64 %i.fo, -1                       ; 3 uses
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = getelementptr [8 x i8], ptr %i.fq, i64 %i.cu
  %i.fs = getelementptr i8, ptr %i.fr, i64 40     ; 2 uses
  store atomic volatile i64 %i.by, ptr %i.fs monotonic, align 8
  %i.ft = trunc i64 %i.by to i1
  br i1 %i.ft, label %bb.h, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.ab:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.d
  %.137 = phi i32 [ %i.ba, %bb.d ], [ %.036137, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ]
  %.1 = phi i32 [ %.035138, %bb.d ], [ %i.dl, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ]
  %i.fu = add nuw i64 %.sroa.088.0136, 1          ; 2 uses
  %.not133 = icmp eq i64 %i.fu, %i.u
  br i1 %.not133, label %._crit_edge.loopexit, label %bb.c

bb.ac:                                            ; preds = %._crit_edge
  %i.fv = load i64, ptr %i.f, align 8             ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store atomic volatile i64 %i.fv, ptr %i.fw monotonic, align 8
  %i.fx = trunc i64 %i.fv to i1
  br i1 %i.fx, label %bb.ad, label %_ZNK2v88internal17MaybeDirectHandleINS0_21OrderedNameDictionaryEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fy = or disjoint i64 %i.ac, 1                ; 2 uses
  %i.fz = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.ga = and i64 %i.ac, -262144
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load i64, ptr %i.gb, align 262144       ; 2 uses
  %i.gd = and i64 %i.gc, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.gd, 0
  %i.ge = and i64 %i.gc, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.gf = and i64 %i.fv, -262144
  %i.gg = inttoptr i64 %i.gf to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.gg, align 262144
  %i.gh = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fy, i64 noundef %i.fz, i64 %i.fv) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2v88internal17MaybeDirectHandleINS0_21OrderedNameDictionaryEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.ah, !prof !8

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fy, i64 %i.fz, i64 %i.fv) #13
  br label %_ZNK2v88internal17MaybeDirectHandleINS0_21OrderedNameDictionaryEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal17MaybeDirectHandleINS0_21OrderedNameDictionaryEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %._crit_edge, %bb.ac, %bb.ag, %bb.ah, %bb.a
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal14OrderedHashSet8AllocateINS0_7IsolateEEENS0_11MaybeHandleIS1_EEPT_iNS0_14AllocationTypeE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 4)
  %spec.select.i.i = add nsw i32 %i.a, -1
  %i.b = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i, i1 false)
  %i.c = sub nuw nsw i32 32, %i.b                 ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %.fr3 = freeze i32 %i.d                         ; 3 uses
  %i.e = icmp sgt i32 %.fr3, 26843545
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.f, ptr %3, align 8
  %i.g = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 277, ptr nonnull %3, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.h = load i64, ptr %i.g, align 8
  %i.i = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.h, ptr noundef null) #13 ; 0 uses
  br label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE8AllocateEPNS0_7IsolateEiNS0_14AllocationTypeE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = sdiv i32 %.fr3, 2                        ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.l = shl i32 2, %i.c
  %i.m = add nuw i32 %i.l, 3
  %i.n = add i32 %i.m, %i.j
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.k, i32 noundef %i.n, i8 noundef zeroext %2) #13 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp sgt i32 %.fr3, 1
  %i.r = add i64 %i.p, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 12 uses
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.t = add nsw i32 %i.j, -1
  %i.u = icmp ult i32 %i.t, 7
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 1073741816
  br label %bb.e

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.epil
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store atomic volatile i64 -4294967296, ptr %i.w monotonic, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.d, !llvm.loop !19

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.d, %bb.c
  %i.x = sext i32 %i.j to i64
  %i.y = shl nsw i64 %i.x, 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store atomic volatile i64 %i.y, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store atomic volatile i64 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic volatile i64 0, ptr %i.ab monotonic, align 8
  br label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE8AllocateEPNS0_7IsolateEiNS0_14AllocationTypeE.exit

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.e ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store atomic volatile i64 -4294967296, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store atomic volatile i64 -4294967296, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store atomic volatile i64 -4294967296, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store atomic volatile i64 -4294967296, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store atomic volatile i64 -4294967296, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store atomic volatile i64 -4294967296, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  store atomic volatile i64 -4294967296, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store atomic volatile i64 -4294967296, ptr %i.ar monotonic, align 8
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !10

_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE8AllocateEPNS0_7IsolateEiNS0_14AllocationTypeE.exit: ; preds = %bb.b, %._crit_edge.i
  %.sroa.036.0.i = phi ptr [ null, %bb.b ], [ %i.o, %._crit_edge.i ]
  ret ptr %.sroa.036.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE8AllocateEPNS0_7IsolateEiNS0_14AllocationTypeE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
.lr.ph.i.i:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 4)
  %spec.select.i = add nsw i32 %i.a, -1
  %i.b = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i, i1 false)
  %i.c = sub nuw nsw i32 32, %i.b                 ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %.fr47 = freeze i32 %i.d                        ; 3 uses
  %i.e = icmp sgt i32 %.fr47, 26843545
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.f, ptr %3, align 8
  %i.g = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 277, ptr nonnull %3, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.h = load i64, ptr %i.g, align 8
  %i.i = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.h, ptr noundef null) #13 ; 0 uses
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = sdiv i32 %.fr47, 2                       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.l = shl i32 2, %i.c
  %i.m = add nuw i32 %i.l, 3
  %i.n = add i32 %i.m, %i.j
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.k, i32 noundef %i.n, i8 noundef zeroext %2) #13 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp sgt i32 %.fr47, 1
  %i.r = add i64 %i.p, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 12 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.t = add nsw i32 %i.j, -1
  %i.u = icmp ult i32 %i.t, 7
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 1073741816
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.epil
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store atomic volatile i64 -4294967296, ptr %i.w monotonic, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !20

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.b
  %i.x = sext i32 %i.j to i64
  %i.y = shl nsw i64 %i.x, 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store atomic volatile i64 %i.y, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store atomic volatile i64 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic volatile i64 0, ptr %i.ab monotonic, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store atomic volatile i64 -4294967296, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store atomic volatile i64 -4294967296, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store atomic volatile i64 -4294967296, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store atomic volatile i64 -4294967296, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store atomic volatile i64 -4294967296, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store atomic volatile i64 -4294967296, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  store atomic volatile i64 -4294967296, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store atomic volatile i64 -4294967296, ptr %i.ar monotonic, align 8
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !10

bb.e:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.036.0 = phi ptr [ null, %bb.a ], [ %i.o, %._crit_edge ]
  ret ptr %.sroa.036.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal14OrderedHashMap8AllocateINS0_7IsolateEEENS0_11MaybeHandleIS1_EEPT_iNS0_14AllocationTypeE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 4)
  %spec.select.i.i = add nsw i32 %i.a, -1
  %i.b = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i, i1 false)
  %i.c = sub nuw nsw i32 32, %i.b                 ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %.fr3 = freeze i32 %i.d                         ; 3 uses
  %i.e = icmp sgt i32 %.fr3, 19173960
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.f, ptr %3, align 8
  %i.g = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 277, ptr nonnull %3, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.h = load i64, ptr %i.g, align 8
  %i.i = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.h, ptr noundef null) #13 ; 0 uses
  br label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE8AllocateEPNS0_7IsolateEiNS0_14AllocationTypeE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = sdiv i32 %.fr3, 2                        ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.l = shl i32 3, %i.c
  %i.m = add nuw i32 %i.l, 3
  %i.n = add i32 %i.m, %i.j
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.k, i32 noundef %i.n, i8 noundef zeroext %2) #13 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp sgt i32 %.fr3, 1
  %i.r = add i64 %i.p, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 12 uses
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.t = add nsw i32 %i.j, -1
  %i.u = icmp ult i32 %i.t, 7
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 1073741816
  br label %bb.e

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.epil
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store atomic volatile i64 -4294967296, ptr %i.w monotonic, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.d, !llvm.loop !21

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.d, %bb.c
  %i.x = sext i32 %i.j to i64
  %i.y = shl nsw i64 %i.x, 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store atomic volatile i64 %i.y, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store atomic volatile i64 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic volatile i64 0, ptr %i.ab monotonic, align 8
  br label %_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE8AllocateEPNS0_7IsolateEiNS0_14AllocationTypeE.exit

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.e ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store atomic volatile i64 -4294967296, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store atomic volatile i64 -4294967296, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store atomic volatile i64 -4294967296, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store atomic volatile i64 -4294967296, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store atomic volatile i64 -4294967296, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store atomic volatile i64 -4294967296, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  store atomic volatile i64 -4294967296, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store atomic volatile i64 -4294967296, ptr %i.ar monotonic, align 8
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !16

_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE8AllocateEPNS0_7IsolateEiNS0_14AllocationTypeE.exit: ; preds = %bb.b, %._crit_edge.i
  %.sroa.036.0.i = phi ptr [ null, %bb.b ], [ %i.o, %._crit_edge.i ]
  ret ptr %.sroa.036.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE8AllocateEPNS0_7IsolateEiNS0_14AllocationTypeE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
.lr.ph.i.i:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 4)
  %spec.select.i = add nsw i32 %i.a, -1
  %i.b = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i, i1 false)
  %i.c = sub nuw nsw i32 32, %i.b                 ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %.fr47 = freeze i32 %i.d                        ; 3 uses
  %i.e = icmp sgt i32 %.fr47, 19173960
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.f, ptr %3, align 8
  %i.g = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 277, ptr nonnull %3, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.h = load i64, ptr %i.g, align 8
  %i.i = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.h, ptr noundef null) #13 ; 0 uses
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = sdiv i32 %.fr47, 2                       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.l = shl i32 3, %i.c
  %i.m = add nuw i32 %i.l, 3
  %i.n = add i32 %i.m, %i.j
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.k, i32 noundef %i.n, i8 noundef zeroext %2) #13 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp sgt i32 %.fr47, 1
  %i.r = add i64 %i.p, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 12 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.t = add nsw i32 %i.j, -1
  %i.u = icmp ult i32 %i.t, 7
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 1073741816
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.epil
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store atomic volatile i64 -4294967296, ptr %i.w monotonic, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !22

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.b
  %i.x = sext i32 %i.j to i64
  %i.y = shl nsw i64 %i.x, 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store atomic volatile i64 %i.y, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store atomic volatile i64 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic volatile i64 0, ptr %i.ab monotonic, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store atomic volatile i64 -4294967296, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store atomic volatile i64 -4294967296, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store atomic volatile i64 -4294967296, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store atomic volatile i64 -4294967296, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store atomic volatile i64 -4294967296, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store atomic volatile i64 -4294967296, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  store atomic volatile i64 -4294967296, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store atomic volatile i64 -4294967296, ptr %i.ar monotonic, align 8
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !16

bb.e:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.036.0 = phi ptr [ null, %bb.a ], [ %i.o, %._crit_edge ]
  ret ptr %.sroa.036.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal21OrderedNameDictionary9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = icmp ult i64 %i.b, 4294967296
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i32, ptr %i.f acquire, align 4 ; 3 uses
  %i.h = and i32 %i.g, 1
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK2v88internal4Name4hashEv.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.e, i32 noundef %i.g)
  br label %_ZNK2v88internal4Name4hashEv.exit

_ZNK2v88internal4Name4hashEv.exit:                ; preds = %bb.b, %bb.c
  %.0.in.i = phi i32 [ %i.j, %bb.c ], [ %i.g, %bb.b ]
  %.0.i = lshr i32 %.0.in.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = add i32 %i.n, 1073741823
  %i.p = and i32 %i.o, %.0.i
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 48
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %.08.in16 = lshr i64 %i.t, 32                   ; 2 uses
  %.not17 = icmp eq i64 %.08.in16, 4294967295
  br i1 %.not17, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v88internal4Name4hashEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.0823 = trunc nuw i64 %.08.in16 to i32
  %i.v = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = shl nsw i32 %.0823, 2
  %i.z = add i32 %i.y, 4                          ; 2 uses
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ab
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = icmp eq i64 %i.ad, %2
  br i1 %i.ae, label %.critedge.loopexit.split.loop.exit14, label %.lr.ph24

bb.d:                                             ; preds = %.lr.ph24
  %.08 = trunc nuw i64 %.08.in to i32
  %i.af = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.ag = lshr i64 %i.af, 32
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = shl nsw i32 %.08, 2
  %i.aj = add i32 %i.ai, 4                        ; 2 uses
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.al
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = icmp eq i64 %i.an, %2
  br i1 %i.ao, label %.critedge.loopexit.split.loop.exit14, label %.lr.ph24, !llvm.loop !23

.lr.ph24:                                         ; preds = %.lr.ph, %bb.d
  %i.ap = phi i32 [ %i.aj, %bb.d ], [ %i.z, %.lr.ph ]
  %i.aq = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.ar = lshr i64 %i.aq, 32
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = add i32 %i.ap, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [8 x i8], ptr %0, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 40
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8 ; 2 uses
  %.08.in = lshr i64 %i.ax, 32                    ; 2 uses
  %.not = icmp eq i64 %.08.in, 4294967295
  br i1 %.not, label %.critedge, label %bb.d, !llvm.loop !23

.critedge.loopexit.split.loop.exit14:             ; preds = %bb.d, %.lr.ph
  %.08.in.in18.lcssa = phi i64 [ %i.t, %.lr.ph ], [ %i.ax, %bb.d ]
  %i.ay = ashr i64 %.08.in.in18.lcssa, 32
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph24, %.critedge.loopexit.split.loop.exit14, %_ZNK2v88internal4Name4hashEv.exit, %bb.a
  %.sroa.012.0 = phi i64 [ -1, %bb.a ], [ %i.ay, %.critedge.loopexit.split.loop.exit14 ], [ -1, %_ZNK2v88internal4Name4hashEv.exit ], [ -1, %.lr.ph24 ]
  ret i64 %.sroa.012.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal21OrderedNameDictionary9FindEntryINS0_12LocalIsolateEEENS0_13InternalIndexEPT_NS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = icmp ult i64 %i.b, 4294967296
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i32, ptr %i.f acquire, align 4 ; 3 uses
  %i.h = and i32 %i.g, 1
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK2v88internal4Name4hashEv.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.e, i32 noundef %i.g)
  br label %_ZNK2v88internal4Name4hashEv.exit

_ZNK2v88internal4Name4hashEv.exit:                ; preds = %bb.b, %bb.c
  %.0.in.i = phi i32 [ %i.j, %bb.c ], [ %i.g, %bb.b ]
  %.0.i = lshr i32 %.0.in.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = add i32 %i.n, 1073741823
  %i.p = and i32 %i.o, %.0.i
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 48
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %.08.in16 = lshr i64 %i.t, 32                   ; 2 uses
  %.not17 = icmp eq i64 %.08.in16, 4294967295
  br i1 %.not17, label %.critedge, label %.lr.ph

end_hunk_4
begin_hunk_5_@_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE6DeleteEPNS0_7IsolateENS0_6TaggedIS2_EENS6_INS0_6ObjectEEE:bb.a
  store atomic volatile i64 %.fr46, ptr %i.y monotonic, align 8
  br label %.split45.us

.split.us.preheader:                              ; preds = %bb.b
  %i.z = load i64, ptr %i.q, align 262144         ; 2 uses
  %i.aa = and i64 %i.z, 32
  %.not.i.i.i.us = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %i.z, 25
  %.not37.i.i.i.us = icmp eq i64 %i.ab, 0
  br i1 %.not37.i.i.i.us, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.split.us.preheader
  %.sroa.0.0.copyload.i.i.i.i.i.us = load i64, ptr %i.s, align 262144
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i.i.us, 25
  %.not38.i.i.i.us = icmp eq i64 %i.ac, 0
  br i1 %.not38.i.i.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %1, i64 noundef %i.u, i64 %.fr46) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.split.us.preheader
  br i1 %.not.i.i.i.us, label %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit.us, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %1, i64 %i.u, i64 %.fr46) #13
  br label %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit.us

_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit.us: ; preds = %bb.f, %bb.e
  %i.ad = or disjoint i64 %i.t, 8
  %i.ae = add i64 %i.n, %i.ad                     ; 3 uses
  %i.af = inttoptr i64 %i.ae to ptr
  store atomic volatile i64 %.fr46, ptr %i.af monotonic, align 8
  %i.ag = load i64, ptr %i.q, align 262144        ; 2 uses
  %i.ah = and i64 %i.ag, 32
  %.not.i.i.i.us.1 = icmp eq i64 %i.ah, 0
  %i.ai = and i64 %i.ag, 25
  %.not37.i.i.i.us.1 = icmp eq i64 %i.ai, 0
  br i1 %.not37.i.i.i.us.1, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit.us
  %.sroa.0.0.copyload.i.i.i.i.i.us.1 = load i64, ptr %i.s, align 262144
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.us.1, 25
  %.not38.i.i.i.us.1 = icmp eq i64 %i.aj, 0
  br i1 %.not38.i.i.i.us.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %1, i64 noundef %i.ae, i64 %.fr46) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit.us
  br i1 %.not.i.i.i.us.1, label %.split45.us, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %1, i64 %i.ae, i64 %.fr46) #13
  br label %.split45.us

.split45.us:                                      ; preds = %bb.i, %bb.j, %_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE12SetDataEntryEiiNS0_6TaggedINS0_6ObjectEEE.exit.preheader
  %i.ak = add i8 %i.e, -1
  store i8 %i.ak, ptr %i.d, align 1
  %i.al = add i8 %i.h, 1
  store i8 %i.al, ptr %i.g, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.split45.us
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal21SmallOrderedHashTableINS0_26SmallOrderedNameDictionaryEE10InitializeEPNS0_7IsolateEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %2, 2                           ; 2 uses
  %i.b = trunc i32 %i.a to i8
  %i.c = load i64, ptr %0, align 8
  %i.d = add i64 %i.c, 17
  %i.e = inttoptr i64 %i.d to ptr
  store i8 %i.b, ptr %i.e, align 1
  %i.f = load i64, ptr %0, align 8
  %i.g = add i64 %i.f, 15
  %i.h = inttoptr i64 %i.g to ptr
  store i8 0, ptr %i.h, align 1
  %i.i = load i64, ptr %0, align 8
  %i.j = add i64 %i.i, 16
  %i.k = inttoptr i64 %i.j to ptr
  store i8 0, ptr %i.k, align 1
  %i.l = load i64, ptr %0, align 8
  %i.m = add i64 %i.l, 18
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.n, i8 0, i64 5, i1 false)
  %i.o = mul nsw i32 %2, 24
  %i.p = load i64, ptr %0, align 8
  %i.q = sext i32 %i.o to i64
  %i.r = add nsw i64 %i.q, 23
  %i.s = add i64 %i.r, %i.p
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = add nsw i32 %i.a, %2
  %i.v = sext i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 -1, i64 %i.v, i1 false)
  %i.w = load i64, ptr %0, align 8
  %i.x = add i64 %i.w, 23
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = mul nsw i32 %2, 3
  %i.ab = sext i32 %i.aa to i64
  %i.ac = inttoptr i64 %i.x to ptr
  %i.ad = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.z, i64 %i.ab, ptr %i.ac) #13, !srcloc !26 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal21SmallOrderedHashTableINS0_26SmallOrderedNameDictionaryEE6ShrinkEPNS0_7IsolateENS0_6HandleIS2_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i8, ptr %i.c, align 1
  %i.e = add i64 %i.a, 17
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = lshr i8 %i.g, 1
  %.not = icmp ugt i8 %i.h, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.zext = zext i8 %i.g to i32
  %i.i = tail call ptr @_ZN2v88internal21SmallOrderedHashTableINS0_26SmallOrderedNameDictionaryEE6RehashEPNS0_7IsolateENS0_6HandleIS2_EEi(ptr noundef %0, ptr nonnull %1, i32 noundef %.zext) ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = load i64, ptr %1, align 8
  %i.l = add i64 %i.k, 7
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i64 %i.j, 7
  %i.p = inttoptr i64 %i.o to ptr
  store i32 %i.n, ptr %i.p, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi ptr [ %i.i, %bb.b ], [ %1, %bb.a ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal26SmallOrderedNameDictionary6RehashEPNS0_7IsolateENS0_6HandleIS1_EEi(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal21SmallOrderedHashTableINS0_26SmallOrderedNameDictionaryEE6RehashEPNS0_7IsolateENS0_6HandleIS2_EEi(ptr noundef %0, ptr %1, i32 noundef %2) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = load i64, ptr %1, align 8
  %i.d = add i64 %i.c, 7
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i64 %i.b, 7
  %i.h = inttoptr i64 %i.g to ptr
  store i32 %i.f, ptr %i.h, align 4
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal23OrderedHashTableHandlerINS0_19SmallOrderedHashSetENS0_14OrderedHashSetEE8AllocateEPNS0_7IsolateEi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = icmp slt i32 %1, 254
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_ZN2v88internal7Factory22NewSmallOrderedHashSetEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 noundef zeroext 0) #13
  br label %_ZN2v88internal14OrderedHashSet8AllocateINS0_7IsolateEEENS0_11MaybeHandleIS1_EEPT_iNS0_14AllocationTypeE.exit

bb.c:                                             ; preds = %bb.a
  %spec.select.i.i.i = add nsw i32 %1, -1
  %i.c = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i, i1 false)
  %i.d = sub nuw nsw i32 32, %i.c                 ; 2 uses
  %i.e = shl nuw i32 1, %i.d
  %.fr7 = freeze i32 %i.e                         ; 3 uses
  %i.f = icmp sgt i32 %.fr7, 26843545
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %i.g, ptr %2, align 8
  %i.h = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 277, ptr nonnull %2, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.i, ptr noundef null) #13 ; 0 uses
  br label %_ZN2v88internal14OrderedHashSet8AllocateINS0_7IsolateEEENS0_11MaybeHandleIS1_EEPT_iNS0_14AllocationTypeE.exit

bb.e:                                             ; preds = %bb.c
  %i.k = sdiv i32 %.fr7, 2                        ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.m = shl i32 2, %i.d
  %i.n = add nuw i32 %i.m, 3
  %i.o = add i32 %i.n, %i.k
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.l, i32 noundef %i.o, i8 noundef zeroext 0) #13 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp sgt i32 %.fr7, 1
  %i.s = add i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr                 ; 12 uses
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 3 uses
  %i.u = add nsw i32 %i.k, -1
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 1073741816
  br label %bb.g

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.7, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.epil
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store atomic volatile i64 -4294967296, ptr %i.x monotonic, align 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %bb.f, !llvm.loop !28

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %bb.f, %bb.e
  %i.y = sext i32 %i.k to i64
  %i.z = shl nsw i64 %i.y, 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store atomic volatile i64 %i.z, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store atomic volatile i64 0, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store atomic volatile i64 0, ptr %i.ac monotonic, align 8
  br label %_ZN2v88internal14OrderedHashSet8AllocateINS0_7IsolateEEENS0_11MaybeHandleIS1_EEPT_iNS0_14AllocationTypeE.exit

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %bb.g ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.7, %bb.g ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store atomic volatile i64 -4294967296, ptr %i.ae monotonic, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store atomic volatile i64 -4294967296, ptr %i.ag monotonic, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store atomic volatile i64 -4294967296, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store atomic volatile i64 -4294967296, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store atomic volatile i64 -4294967296, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store atomic volatile i64 -4294967296, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store atomic volatile i64 -4294967296, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  store atomic volatile i64 -4294967296, ptr %i.as monotonic, align 8
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !10

_ZN2v88internal14OrderedHashSet8AllocateINS0_7IsolateEEENS0_11MaybeHandleIS1_EEPT_iNS0_14AllocationTypeE.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.d ], [ %i.p, %._crit_edge.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal23OrderedHashTableHandlerINS0_19SmallOrderedHashMapENS0_14OrderedHashMapEE8AllocateEPNS0_7IsolateEi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = icmp slt i32 %1, 254
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_ZN2v88internal7Factory22NewSmallOrderedHashMapEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 noundef zeroext 0) #13
  br label %_ZN2v88internal14OrderedHashMap8AllocateINS0_7IsolateEEENS0_11MaybeHandleIS1_EEPT_iNS0_14AllocationTypeE.exit

bb.c:                                             ; preds = %bb.a
  %spec.select.i.i.i = add nsw i32 %1, -1
  %i.c = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i, i1 false)
  %i.d = sub nuw nsw i32 32, %i.c                 ; 2 uses
  %i.e = shl nuw i32 1, %i.d
  %.fr7 = freeze i32 %i.e                         ; 3 uses
  %i.f = icmp sgt i32 %.fr7, 19173960
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %i.g, ptr %2, align 8
  %i.h = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 277, ptr nonnull %2, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.i, ptr noundef null) #13 ; 0 uses
  br label %_ZN2v88internal14OrderedHashMap8AllocateINS0_7IsolateEEENS0_11MaybeHandleIS1_EEPT_iNS0_14AllocationTypeE.exit

bb.e:                                             ; preds = %bb.c
  %i.k = sdiv i32 %.fr7, 2                        ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.m = shl i32 3, %i.d
  %i.n = add nuw i32 %i.m, 3
  %i.o = add i32 %i.n, %i.k
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.l, i32 noundef %i.o, i8 noundef zeroext 0) #13 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp sgt i32 %.fr7, 1
  %i.s = add i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr                 ; 12 uses
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 3 uses
  %i.u = add nsw i32 %i.k, -1
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 1073741816
  br label %bb.g

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.7, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.epil
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store atomic volatile i64 -4294967296, ptr %i.x monotonic, align 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %bb.f, !llvm.loop !29

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %bb.f, %bb.e
  %i.y = sext i32 %i.k to i64
  %i.z = shl nsw i64 %i.y, 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store atomic volatile i64 %i.z, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store atomic volatile i64 0, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store atomic volatile i64 0, ptr %i.ac monotonic, align 8
  br label %_ZN2v88internal14OrderedHashMap8AllocateINS0_7IsolateEEENS0_11MaybeHandleIS1_EEPT_iNS0_14AllocationTypeE.exit

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %bb.g ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.7, %bb.g ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store atomic volatile i64 -4294967296, ptr %i.ae monotonic, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store atomic volatile i64 -4294967296, ptr %i.ag monotonic, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store atomic volatile i64 -4294967296, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store atomic volatile i64 -4294967296, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store atomic volatile i64 -4294967296, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store atomic volatile i64 -4294967296, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store atomic volatile i64 -4294967296, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  store atomic volatile i64 -4294967296, ptr %i.as monotonic, align 8
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !16

_ZN2v88internal14OrderedHashMap8AllocateINS0_7IsolateEEENS0_11MaybeHandleIS1_EEPT_iNS0_14AllocationTypeE.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.d ], [ %i.p, %._crit_edge.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal23OrderedHashTableHandlerINS0_26SmallOrderedNameDictionaryENS0_21OrderedNameDictionaryEE8AllocateEPNS0_7IsolateEi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 254
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_ZN2v88internal7Factory29NewSmallOrderedNameDictionaryEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 noundef zeroext 0) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @_ZN2v88internal21OrderedNameDictionary8AllocateEPNS0_7IsolateEiNS0_14AllocationTypeE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal21SmallOrderedHashTableINS0_26SmallOrderedNameDictionaryEE8AllocateEPNS0_7IsolateEiNS0_14AllocationTypeE(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal7Factory29NewSmallOrderedNameDictionaryEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 noundef zeroext %2) #13
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal21OrderedNameDictionary8AllocateEPNS0_7IsolateEiNS0_14AllocationTypeE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 4)
  %spec.select.i.i = add nsw i32 %i.a, -1
  %i.b = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i, i1 false)
  %i.c = sub nuw nsw i32 32, %i.b                 ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %.fr18 = freeze i32 %i.d                        ; 3 uses
  %i.e = icmp sgt i32 %.fr18, 14913080
  br i1 %i.e, label %_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i32 %.fr18, 2                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.h = shl i32 4, %i.c
  %i.i = add nuw i32 %i.h, 4
  %i.j = add i32 %i.i, %i.f
  %i.k = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.g, i32 noundef %i.j, i8 noundef zeroext %2) #13 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp sgt i32 %.fr18, 1
  %i.n = add i64 %i.l, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 12 uses
  br i1 %i.m, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.f to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.p = add nsw i32 %i.f, -1
  %i.q = icmp ult i32 %i.p, 7
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 1073741816
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.c ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store atomic volatile i64 -4294967296, ptr %i.s monotonic, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store atomic volatile i64 -4294967296, ptr %i.u monotonic, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store atomic volatile i64 -4294967296, ptr %i.w monotonic, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store atomic volatile i64 -4294967296, ptr %i.y monotonic, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  store atomic volatile i64 -4294967296, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  store atomic volatile i64 -4294967296, ptr %i.ac monotonic, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  store atomic volatile i64 -4294967296, ptr %i.ae monotonic, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store atomic volatile i64 -4294967296, ptr %i.ag monotonic, align 8
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !30

_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.ah, ptr %3, align 8
  %i.ai = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 277, ptr nonnull %3, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.aj, ptr noundef null) #13 ; 0 uses
  br label %bb.e

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.epil
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store atomic volatile i64 -4294967296, ptr %i.am monotonic, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !31

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.b
  %i.an = sext i32 %i.f to i64
  %i.ao = shl nsw i64 %i.an, 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store atomic volatile i64 %i.ao, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store atomic volatile i64 0, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store atomic volatile i64 0, ptr %i.ar monotonic, align 8
  %i.as = load i64, ptr %i.k, align 8
  %i.at = add i64 %i.as, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store atomic volatile i64 0, ptr %i.av monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, %.loopexit
  %.sroa.036.0.i1316 = phi ptr [ null, %_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread ], [ %i.k, %.loopexit ]
  ret ptr %.sroa.036.0.i1316
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal23OrderedHashTableHandlerINS0_19SmallOrderedHashSetENS0_14OrderedHashSetEE6HasKeyEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEENS7_INS0_6ObjectEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 246
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %i.a, ptr %3, align 8
  %i.i = load i64, ptr %2, align 8
  %i.j = call i64 @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0, i64 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %2, align 8
  %i.l = tail call i64 @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef %0, i64 %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i64 [ %i.j, %bb.b ], [ %i.l, %bb.c ]
  %.0 = icmp ne i64 %.0.in, -1
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal19SmallOrderedHashSet6HasKeyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = tail call i64 @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashSetEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 %i.a)
  %i.c = icmp ne i64 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6HasKeyEPNS0_7IsolateENS0_6TaggedIS2_EENS6_INS0_6ObjectEEE(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call i64 @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef %0, i64 %2)
  %i.d = icmp ne i64 %i.c, -1
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal23OrderedHashTableHandlerINS0_19SmallOrderedHashMapENS0_14OrderedHashMapEE6HasKeyEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEENS7_INS0_6ObjectEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.468", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 245
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %i.a, ptr %3, align 8
  %i.i = load i64, ptr %2, align 8
  %i.j = call i64 @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0, i64 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %2, align 8
  %i.l = tail call i64 @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef %0, i64 %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i64 [ %i.j, %bb.b ], [ %i.l, %bb.c ]
  %.0 = icmp ne i64 %.0.in, -1
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal19SmallOrderedHashMap6HasKeyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = tail call i64 @_ZN2v88internal21SmallOrderedHashTableINS0_19SmallOrderedHashMapEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 %i.a)
  %i.c = icmp ne i64 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6HasKeyEPNS0_7IsolateENS0_6TaggedIS2_EENS6_INS0_6ObjectEEE(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call i64 @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef %0, i64 %2)
  %i.d = icmp ne i64 %i.c, -1
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal23OrderedHashTableHandlerINS0_19SmallOrderedHashSetENS0_14OrderedHashSetEE6DeleteEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
end_hunk_5
begin_hunk_6_@_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE6ShrinkINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEET_IS2_EPNS0_7IsolateESC_:bb.a
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = ashr i32 %tr.sh.diff.i, 1
  %i.l = tail call ptr @_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i(ptr noundef %0, ptr nonnull %1, i32 noundef %i.k) ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE5CheckEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #14
  unreachable

_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE5CheckEv.exit: ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %1, align 8
  %i.q = add i64 %i.p, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = and i64 %i.t, -4294967296
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store atomic volatile i64 %i.u, ptr %i.v monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE5CheckEv.exit
  %.sroa.03.0 = phi ptr [ %i.l, %_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE5CheckEv.exit ], [ %1, %bb.a ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE6ShrinkINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEET_IS2_EPNS0_7IsolateESB_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %sh.diff.i = lshr i64 %i.i, 31
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32     ; 2 uses
  %i.j = ashr i32 %tr.sh.diff.i, 2
  %.not = icmp sgt i32 %i.j, %i.g
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = ashr i32 %tr.sh.diff.i, 1
  %i.l = tail call ptr @_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i(ptr noundef %0, ptr nonnull %1, i32 noundef %i.k) ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE5CheckEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #14
  unreachable

_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE5CheckEv.exit: ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %1, align 8
  %i.q = add i64 %i.p, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = and i64 %i.t, -4294967296
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store atomic volatile i64 %i.u, ptr %i.v monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE5CheckEv.exit
  %.sroa.03.0 = phi ptr [ %i.l, %_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE5CheckEv.exit ], [ %1, %bb.a ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE5ClearEPNS0_7IsolateENS0_6HandleIS2_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE5CheckEv.exit:
  %i.a = load i64, ptr %1, align 8
  %i.b = and i64 %i.a, -262144
  %i.c = inttoptr i64 %i.b to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 262144
  %i.d = and i64 %.sroa.0.0.copyload.i, 24
  %.not = icmp eq i64 %i.d, 0
  %i.e = zext i1 %.not to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.g = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.f, i32 noundef 22, i8 noundef zeroext %i.e) #13 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store atomic volatile i64 -4294967296, ptr %i.k monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store atomic volatile i64 -4294967296, ptr %i.l monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store atomic volatile i64 8589934592, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store atomic volatile i64 0, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store atomic volatile i64 0, ptr %i.o monotonic, align 8
  %i.p = load i64, ptr %1, align 8
  %i.q = add i64 %i.p, -1                         ; 3 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = lshr i64 %i.t, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE5CheckEv.exit
  %i.x = load i64, ptr %i.g, align 8              ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store atomic volatile i64 %i.x, ptr %i.y monotonic, align 8
  %i.z = trunc i64 %i.x to i1
  br i1 %i.z, label %bb.b, label %_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE12SetNextTableENS0_6TaggedIS2_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = or disjoint i64 %i.q, 1                 ; 2 uses
  %i.ab = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ac = and i64 %i.q, -262144
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr %i.ad, align 262144       ; 2 uses
  %i.af = and i64 %i.ae, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  %i.ag = and i64 %i.ae, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ah = and i64 %i.x, -262144
  %i.ai = inttoptr i64 %i.ah to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 262144
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.aa, i64 noundef %i.ab, i64 %i.x) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE12SetNextTableENS0_6TaggedIS2_EE.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.aa, i64 %i.ab, i64 %i.x) #13
  br label %_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE12SetNextTableENS0_6TaggedIS2_EE.exit

_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE12SetNextTableENS0_6TaggedIS2_EE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.ak = load i64, ptr %1, align 8
  %i.al = add i64 %i.ak, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store atomic volatile i64 -4294967296, ptr %i.an monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE12SetNextTableENS0_6TaggedIS2_EE.exit, %_ZNK2v88internal11MaybeHandleINS0_21OrderedNameDictionaryEE5CheckEv.exit
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE8AllocateEPNS0_7IsolateEiNS0_14AllocationTypeE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
.lr.ph.i.i:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 4)
  %spec.select.i = add nsw i32 %i.a, -1
  %i.b = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i, i1 false)
  %i.c = sub nuw nsw i32 32, %i.b                 ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %.fr47 = freeze i32 %i.d                        ; 3 uses
  %i.e = icmp sgt i32 %.fr47, 14913080
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.f, ptr %3, align 8
  %i.g = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 277, ptr nonnull %3, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.h = load i64, ptr %i.g, align 8
  %i.i = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.h, ptr noundef null) #13 ; 0 uses
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = sdiv i32 %.fr47, 2                       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.l = shl i32 4, %i.c
  %i.m = add nuw i32 %i.l, 4
  %i.n = add i32 %i.m, %i.j
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.k, i32 noundef %i.n, i8 noundef zeroext %2) #13 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp sgt i32 %.fr47, 1
  %i.r = add i64 %i.p, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 12 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.t = add nsw i32 %i.j, -1
  %i.u = icmp ult i32 %i.t, 7
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 1073741816
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.epil
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store atomic volatile i64 -4294967296, ptr %i.w monotonic, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !41

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.b
  %i.x = sext i32 %i.j to i64
  %i.y = shl nsw i64 %i.x, 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store atomic volatile i64 %i.y, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic volatile i64 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store atomic volatile i64 0, ptr %i.ab monotonic, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store atomic volatile i64 -4294967296, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store atomic volatile i64 -4294967296, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store atomic volatile i64 -4294967296, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  store atomic volatile i64 -4294967296, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store atomic volatile i64 -4294967296, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store atomic volatile i64 -4294967296, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  store atomic volatile i64 -4294967296, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  store atomic volatile i64 -4294967296, ptr %i.ar monotonic, align 8
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !30

bb.e:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.036.0 = phi ptr [ null, %bb.a ], [ %i.o, %._crit_edge ]
  ret ptr %.sroa.036.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE6HasKeyEPNS0_7IsolateENS0_6TaggedIS2_EENS6_INS0_6ObjectEEE(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = icmp ult i64 %i.d, 4294967296
  br i1 %i.e, label %_ZN2v88internal21OrderedNameDictionary9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_6TaggedINS0_6ObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %2, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i32, ptr %i.h acquire, align 4 ; 3 uses
  %i.j = and i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK2v88internal4Name4hashEv.exit.i, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.g, i32 noundef %i.i)
  br label %_ZNK2v88internal4Name4hashEv.exit.i

_ZNK2v88internal4Name4hashEv.exit.i:              ; preds = %bb.c, %bb.b
  %.0.in.i.i = phi i32 [ %i.l, %bb.c ], [ %i.i, %bb.b ]
  %.0.i.i = lshr i32 %.0.in.i.i, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = lshr i64 %i.n, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1073741823
  %i.r = and i32 %i.q, %.0.i.i
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [8 x i8], ptr %i.b, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 48
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 2 uses
  %.08.in16.i = lshr i64 %i.v, 32                 ; 2 uses
  %.not17.i = icmp eq i64 %.08.in16.i, 4294967295
  br i1 %.not17.i, label %_ZN2v88internal21OrderedNameDictionary9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_6TaggedINS0_6ObjectEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK2v88internal4Name4hashEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.08.i5 = trunc nuw i64 %.08.in16.i to i32
  %i.x = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = shl nsw i32 %.08.i5, 2
  %i.ab = add i32 %i.aa, 4                        ; 2 uses
  %i.ac = add i32 %i.ab, %i.z
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ad
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = icmp eq i64 %i.af, %2
  br i1 %i.ag, label %.critedge.loopexit.split.loop.exit14.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %.08.i = trunc nuw i64 %.08.in.i to i32
  %i.ah = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = shl nsw i32 %.08.i, 2
  %i.al = add i32 %i.ak, 4                        ; 2 uses
  %i.am = add i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.an
  %i.ap = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.aq = icmp eq i64 %i.ap, %2
  br i1 %i.aq, label %.critedge.loopexit.split.loop.exit14.i, label %.lr.ph, !llvm.loop !23

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.d
  %i.ar = phi i32 [ %i.al, %bb.d ], [ %i.ab, %.lr.ph.i ]
  %i.as = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.at = lshr i64 %i.as, 32
  %i.au = trunc nuw i64 %i.at to i32
  %i.av = add i32 %i.ar, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr [8 x i8], ptr %i.b, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 40
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8 ; 2 uses
  %.08.in.i = lshr i64 %i.az, 32                  ; 2 uses
  %.not.i = icmp eq i64 %.08.in.i, 4294967295
  br i1 %.not.i, label %_ZN2v88internal21OrderedNameDictionary9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_6TaggedINS0_6ObjectEEE.exit, label %bb.d, !llvm.loop !23

.critedge.loopexit.split.loop.exit14.i:           ; preds = %bb.d, %.lr.ph.i
  %.08.in.in18.i.lcssa = phi i64 [ %i.v, %.lr.ph.i ], [ %i.az, %bb.d ]
  %i.ba = icmp ult i64 %.08.in.in18.i.lcssa, -4294967296
  br label %_ZN2v88internal21OrderedNameDictionary9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal21OrderedNameDictionary9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %.lr.ph, %bb.a, %_ZNK2v88internal4Name4hashEv.exit.i, %.critedge.loopexit.split.loop.exit14.i
  %.sroa.012.0.i = phi i1 [ false, %bb.a ], [ %i.ba, %.critedge.loopexit.split.loop.exit14.i ], [ false, %_ZNK2v88internal4Name4hashEv.exit.i ], [ false, %.lr.ph ]
  ret i1 %.sroa.012.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.518", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = icmp ult i64 %i.b, 4294967296
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %2) ; 2 uses
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN2v88internal6Object7GetHashENS0_6TaggedIS1_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i64 %2 to i1
  br i1 %i.g, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !13

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.h = add nsw i64 %2, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = icmp ugt i16 %i.m, 299
  br i1 %i.n, label %bb.d, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, !prof !14

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %2, ptr %3, align 8
end_hunk_6
