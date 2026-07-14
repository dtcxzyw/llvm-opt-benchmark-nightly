inline.NumInlined: 4977
inline.NumDeleted: 2626
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE4GrowEm:bb.a
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_12MapMaskAndOrENS4_9NoKeyDataEEEA_S9_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_12MapMaskAndOrENS4_9NoKeyDataEEEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_12MapMaskAndOrENS4_9NoKeyDataEEEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_12MapMaskAndOrENS4_9NoKeyDataEEEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_12MapMaskAndOrENS4_9NoKeyDataEEEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_12MapMaskAndOrENS4_9NoKeyDataEEEA_S9_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINS2_18MemoryContentTableES4_S5_E16StartNewSnapshotISJ_EEvNSG_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSG_IKT0_EEEEUlSE_RSH_S10_E_EEvSQ_ST_RSY_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 2                   ; 4 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not78 = icmp eq ptr %i.o, %i.p
  br i1 %.not78, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.e
  %i.q = icmp eq i64 %2, 1
  %gepdiff.i.i = add nsw i64 %.idx, -4            ; 4 uses
  %i.r = lshr i64 %gepdiff.i.i, 4                 ; 2 uses
  %.not61 = icmp eq i64 %i.r, 0
  %i.s = and i64 %gepdiff.i.i, -16
  %gepdiff7.i.i = and i64 %gepdiff.i.i, 12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03465 = load ptr, ptr %i.w, align 8           ; 2 uses
  %.not3766 = icmp eq ptr %.03465, %i.e
  br i1 %.not3766, label %._crit_edge, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.f
  %i.x = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph68

.loopexit63:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, %.lr.ph68
  %.034 = load ptr, ptr %.03467, align 8          ; 2 uses
  %.not37 = icmp eq ptr %.034, %i.e
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !230

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !231

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit63
  %.03467 = phi ptr [ %.034, %.loopexit63 ], [ %.03465, %.lr.ph68.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03467, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.03467, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp samesign eq i64 %i.ad, %i.z
  br i1 %i.ae, label %.loopexit63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ad
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit
  %.sroa.046.064 = phi ptr [ %i.ag, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.046.064, i64 -16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !7, !align !8 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.046.064, i64 -4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp eq i64 %indvars.iv, %i.al
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 52 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.h, align 8
  %i.ar = load ptr, ptr %i.i, align 8
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = add nsw i64 %i.av, %2
  %i.ax = icmp ult i64 %i.aw, 4294967296
  br i1 %i.ax, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = trunc i64 %i.av to i32
  store i32 %i.ay, ptr %i.an, align 4
  %i.az = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ba = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.m, align 8
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = add nsw i64 %i.bg, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.bh)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i: ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %i.az, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.j, align 8
  store ptr %i.ah, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.bm = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.bn = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 5 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = ashr exact i64 %i.bp, 2                 ; 2 uses
  %i.br = xor i64 %i.bq, -1
  %.not.i41 = icmp ugt i64 %2, %i.br
  br i1 %.not.i41, label %bb.l, label %bb.m, !prof !9

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.30) #25
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i
  %i.bs = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bo                    ; 2 uses
  %i.bv = ashr exact i64 %i.bu, 2
  %i.bw = add nsw i64 %i.bq, %2                   ; 2 uses
  %i.bx = icmp ult i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit

bb.n:                                             ; preds = %bb.m
  %i.by = icmp eq ptr %i.bm, %i.bs
  %i.bz = ashr exact i64 %i.bu, 1
  %i.ca = select i1 %i.by, i64 2, i64 %i.bz
  %i.cb = tail call noundef i64 @llvm.umax.i64(i64 %i.ca, i64 %i.bw) ; 3 uses
  %i.cc = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.cd = icmp ult i64 %i.cb, 4611686018427387903
  br i1 %i.cd, label %bb.p, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ce = shl nuw i64 %i.cb, 2
  %i.cf = add nuw i64 %i.ce, 4
  %i.cg = and i64 %i.cf, -8                       ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = sub i64 %i.ci, %i.ck
  %i.cm = icmp ugt i64 %i.cg, %i.cl
  br i1 %i.cm, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, !prof !9

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 noundef %i.cg) #22
  %.pre.i.i.i43 = load i64, ptr %i.cj, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i: ; preds = %bb.q, %bb.p
  %i.cn = phi i64 [ %.pre.i.i.i43, %bb.q ], [ %i.ck, %bb.p ] ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 4 uses
  %i.cp = add i64 %i.cn, %i.cg
  store i64 %i.cp, ptr %i.cj, align 8
  store ptr %i.co, ptr %i.i, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.bp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %2
  store ptr %i.cr, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.bm, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.co, ptr nonnull align 4 %i.bm, i64 %i.bp, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %.pre.i42 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, %bb.r
  %i.cs = phi ptr [ %.pre.i42, %bb.r ], [ %i.co, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cb
  store ptr %i.ct, ptr %i.n, align 8
  br label %._crit_edge.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit: ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %2
  store ptr %i.cu, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread
  %.pn = phi ptr [ %i.bm, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit ], [ %i.cs, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread ] ; 2 uses
  %.pn120 = ptrtoint ptr %.pn to i64              ; 3 uses
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bp ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  %.pre20.i.i = load i32, ptr %i.bl, align 8      ; 2 uses
  %5 = add i64 %i.bo, -1
  %6 = add i64 %.idx, %.pn120
  %i.cw = add i64 %6, %i.bn
  %i.cx = sub i64 %i.cw, %i.bo
  %i.cy = add i64 %.pn120, 4
  %i.cz = add i64 %i.cy, %i.bn
  %7 = sub i64 %i.cz, %i.bo
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 %7)
  %i.da = add i64 %5, %umax
  %8 = add i64 %.pn120, %i.bn
  %9 = sub i64 %i.da, %8                          ; 2 uses
  %i.db = lshr i64 %9, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i
  %n.vec = and i64 %i.dc, 9223372036854775800     ; 3 uses
  %i.dd = shl i64 %n.vec, 2
  %i.de = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dd
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dg, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %._crit_edge.i.i, %middle.block
  %.116.i.i.ph = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.de, %middle.block ]
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.di, %.lr.ph18.i.i ], [ %.116.i.i.ph, %.lr.ph18.i.i.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i, ptr %.116.i.i, align 4
  %i.dj = icmp ult ptr %i.di, %i.cv
  br i1 %i.dj, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !235

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i, %middle.block
  %.pre.i = load i32, ptr %i.an, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.dk = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i ], [ %i.ao, %bb.g ]
  %i.dl = add i32 %i.dk, %i.x
  %i.dm = zext i32 %i.dl to i64
  %i.dn = load ptr, ptr %i.i, align 8
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dm
  %i.dp = load i32, ptr %i.ai, align 4
  store i32 %i.dp, ptr %i.do, align 4
  store i32 %i.x, ptr %i.aj, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.dq = icmp eq ptr %i.ag, %i.ab
  br i1 %i.dq, label %.loopexit63, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph81, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03579 = phi ptr [ %i.o, %.lr.ph81 ], [ %i.ga, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.dr = load ptr, ptr %.03579, align 8          ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 52
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = zext i32 %i.dt to i64
  %i.dv = load ptr, ptr %i.i, align 8
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.du ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.dy, -1
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dz = load i32, ptr %i.dw, align 4
  %.not10.i = icmp eq i32 %i.dz, %i.dy
  br i1 %.not10.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ea = load ptr, ptr %3, align 8, !nonnull !7
  store i8 1, ptr %i.ea, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br i1 %i.q, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx
  br i1 %.not61, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.x
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.dw, align 4 ; 4 uses
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.dx, i64 %i.s
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i
  %.059.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.ek, %bb.ac ] ; 2 uses
  %.02958.i.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i ], [ %i.ej, %bb.ac ] ; 9 uses
  %i.ec = load i32, ptr %.02958.i.i.i.i.i.i, align 4
  %.not44.i.i.i.i.i.i = icmp eq i32 %i.ec, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not44.i.i.i.i.i.i, label %bb.z, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 4
  %i.ee = load i32, ptr %i.ed, align 4
  %.not45.i.i.i.i.i.i = icmp eq i32 %i.ee, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not45.i.i.i.i.i.i, label %bb.aa, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit110

bb.aa:                                            ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 8
  %i.eg = load i32, ptr %i.ef, align 4
  %.not46.i.i.i.i.i.i = icmp eq i32 %i.eg, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not46.i.i.i.i.i.i, label %bb.ab, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit108

bb.ab:                                            ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 12
  %i.ei = load i32, ptr %i.eh, align 4
  %.not47.i.i.i.i.i.i = icmp eq i32 %i.ei, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not47.i.i.i.i.i.i, label %bb.ac, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ej = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 16
  %i.ek = add nsw i64 %.059.i.i.i.i.i.i, -1
  %i.el = icmp sgt i64 %.059.i.i.i.i.i.i, 1
  br i1 %i.el, label %bb.y, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !236

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ac, %bb.x
  %.pre-phi68.i.i.i.i.i.i = phi i64 [ %gepdiff.i.i, %bb.x ], [ %gepdiff7.i.i, %bb.ac ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.dx, %bb.x ], [ %scevgep.i.i.i.i.i.i, %bb.ac ] ; 5 uses
  %i.em = lshr exact i64 %.pre-phi68.i.i.i.i.i.i, 2
  switch i64 %i.em, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i [
    i64 3, label %bb.ad
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i
  ]

._crit_edge._crit_edge65.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i35.pre.i.i.i.i.i.i = load i32, ptr %i.dw, align 4
  br label %bb.ah

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i34.pre.i.i.i.i.i.i = load i32, ptr %i.dw, align 4
  br label %bb.af

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i33.i.i.i.i.i.i = load i32, ptr %i.dw, align 4 ; 2 uses
  %i.en = load i32, ptr %.029.lcssa.i.i.i.i.i.i, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.en, %.sroa.0.0.copyload.i.i33.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i34.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i33.i.i.i.i.i.i, %bb.ae ], [ %.sroa.0.0.copyload.i.i34.pre.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i.i.i = phi ptr [ %i.eo, %bb.ae ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ep = load i32, ptr %.1.i.i.i.i.i.i, align 4
  %.not42.i.i.i.i.i.i = icmp eq i32 %i.ep, %.sroa.0.0.copyload.i.i34.i.i.i.i.i.i
  br i1 %.not42.i.i.i.i.i.i, label %bb.ag, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge._crit_edge65.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i35.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i34.i.i.i.i.i.i, %bb.ag ], [ %.sroa.0.0.copyload.i.i35.pre.i.i.i.i.i.i, %._crit_edge._crit_edge65.i.i.i.i.i.i ]
  %.2.i.i.i.i.i.i = phi ptr [ %i.eq, %bb.ag ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge._crit_edge65.i.i.i.i.i.i ] ; 2 uses
  %i.er = load i32, ptr %.2.i.i.i.i.i.i, align 4
  %.not43.i.i.i.i.i.i = icmp eq i32 %i.er, %.sroa.0.0.copyload.i.i35.i.i.i.i.i.i
  br i1 %.not43.i.i.i.i.i.i, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit: ; preds = %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 12
  br label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit108: ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 8
  br label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit110: ; preds = %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 4
  br label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i: ; preds = %bb.y, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit108, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit110, %bb.ah, %bb.af, %bb.ad
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.af ], [ %.029.lcssa.i.i.i.i.i.i, %bb.ad ], [ %.2.i.i.i.i.i.i, %bb.ah ], [ %i.eu, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit110 ], [ %i.es, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit ], [ %i.et, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit108 ], [ %.02958.i.i.i.i.i.i, %bb.y ]
  %i.ev = icmp eq ptr %i.eb, %.028.i.i.i.i.i.i
  br i1 %i.ev, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i: ; preds = %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i, %bb.ah, %._crit_edge.i.i.i.i.i.i, %bb.w
  %.sroa.02.0.copyload.i = load i32, ptr %i.dw, align 4
  br label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit: ; preds = %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i
  %.sroa.02.0.i = phi i32 [ %.sroa.02.0.copyload.i, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i ], [ -1, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i ] ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 48 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8            ; 3 uses
  %.not62 = icmp eq i32 %i.ex, %.sroa.02.0.i
  br i1 %.not62, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit
  %i.ey = load ptr, ptr %i.t, align 8             ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_:bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %.026.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.dk, %i.de
  br i1 %.not.i, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit, label %.lr.ph.i

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit: ; preds = %.lr.ph.i, %bb.u
  %.sroa.016.3.i = phi i64 [ 0, %.lr.ph.i ], [ %i.di, %bb.u ] ; 3 uses
  %.sroa.3.3.i = phi i64 [ -1, %.lr.ph.i ], [ %i.dj, %bb.u ] ; 3 uses
  %i.dl = load i64, ptr %i.cy, align 8
  %i.dm = icmp ne i64 %i.dl, %.sroa.016.3.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = icmp ne i64 %i.do, %.sroa.3.3.i
  %.not10.i = select i1 %i.dm, i1 true, i1 %i.dp
  br i1 %.not10.i, label %bb.v, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.v:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit
  %.sroa.4.i.sroa.0.0.copyload = load <2 x i64>, ptr %i.cy, align 8
  %i.dq = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.dr = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ds = icmp ult ptr %i.dq, %i.dr
  br i1 %i.ds, label %bb.x, label %bb.w, !prof !6

bb.w:                                             ; preds = %bb.v
  %i.dt = load ptr, ptr %i.f, align 8
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = sdiv exact i64 %i.dw, 40
  %i.dy = add nsw i64 %i.dx, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.dy)
  %.pre.i.i.i41 = load ptr, ptr %i.q, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.dz = phi ptr [ %i.dq, %bb.v ], [ %.pre.i.i.i41, %bb.w ] ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  store ptr %i.ea, ptr %i.q, align 8
  store ptr %i.cy, ptr %i.dz, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store <2 x i64> %.sroa.4.i.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i64 %.sroa.016.3.i, ptr %.sroa.5.0..sroa_idx.i42, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i64 %.sroa.3.3.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  store i64 %.sroa.016.3.i, ptr %i.cy, align 8
  store i64 %.sroa.3.3.i, ptr %i.dn, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit, %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %.03670, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.eb, %i.p
  br i1 %.not, label %.loopexit, label %bb.t

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINS2_18MemoryContentTableES4_S5_E16StartNewSnapshotISJ_EEvNSG_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSG_IKT0_EEEEUlSE_RSH_S10_E_EEvSQ_ST_RSY_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 2                   ; 4 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not78 = icmp eq ptr %i.o, %i.p
  br i1 %.not78, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.e
  %i.q = icmp eq i64 %2, 1
  %gepdiff.i.i = add nsw i64 %.idx, -4            ; 4 uses
  %i.r = lshr i64 %gepdiff.i.i, 4                 ; 2 uses
  %.not61 = icmp eq i64 %i.r, 0
  %i.s = and i64 %gepdiff.i.i, -16
  %gepdiff7.i.i = and i64 %gepdiff.i.i, 12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03465 = load ptr, ptr %i.w, align 8           ; 2 uses
  %.not3766 = icmp eq ptr %.03465, %i.e
  br i1 %.not3766, label %._crit_edge, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.f
  %i.x = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph68

.loopexit63:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, %.lr.ph68
  %.034 = load ptr, ptr %.03467, align 8          ; 2 uses
  %.not37 = icmp eq ptr %.034, %i.e
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !254

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !255

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit63
  %.03467 = phi ptr [ %.034, %.loopexit63 ], [ %.03465, %.lr.ph68.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03467, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.03467, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp samesign eq i64 %i.ad, %i.z
  br i1 %i.ae, label %.loopexit63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ad
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit
  %.sroa.046.064 = phi ptr [ %i.ag, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.046.064, i64 -16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !7, !align !8 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.046.064, i64 -4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp eq i64 %indvars.iv, %i.al
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 52 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.h, align 8
  %i.ar = load ptr, ptr %i.i, align 8
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = add nsw i64 %i.av, %2
  %i.ax = icmp ult i64 %i.aw, 4294967296
  br i1 %i.ax, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = trunc i64 %i.av to i32
  store i32 %i.ay, ptr %i.an, align 4
  %i.az = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ba = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.m, align 8
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = add nsw i64 %i.bg, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.bh)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i: ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %i.az, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.j, align 8
  store ptr %i.ah, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.bm = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.bn = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 5 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = ashr exact i64 %i.bp, 2                 ; 2 uses
  %i.br = xor i64 %i.bq, -1
  %.not.i = icmp ugt i64 %2, %i.br
  br i1 %.not.i, label %bb.l, label %bb.m, !prof !9

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.30) #25
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i
  %i.bs = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bo                    ; 2 uses
  %i.bv = ashr exact i64 %i.bu, 2
  %i.bw = add nsw i64 %i.bq, %2                   ; 2 uses
  %i.bx = icmp ult i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit

bb.n:                                             ; preds = %bb.m
  %i.by = icmp eq ptr %i.bm, %i.bs
  %i.bz = ashr exact i64 %i.bu, 1
  %i.ca = select i1 %i.by, i64 2, i64 %i.bz
  %i.cb = tail call noundef i64 @llvm.umax.i64(i64 %i.ca, i64 %i.bw) ; 3 uses
  %i.cc = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.cd = icmp ult i64 %i.cb, 4611686018427387903
  br i1 %i.cd, label %bb.p, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ce = shl nuw i64 %i.cb, 2
  %i.cf = add nuw i64 %i.ce, 4
  %i.cg = and i64 %i.cf, -8                       ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = sub i64 %i.ci, %i.ck
  %i.cm = icmp ugt i64 %i.cg, %i.cl
  br i1 %i.cm, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, !prof !9

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 noundef %i.cg) #22
  %.pre.i.i.i43 = load i64, ptr %i.cj, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i: ; preds = %bb.q, %bb.p
  %i.cn = phi i64 [ %.pre.i.i.i43, %bb.q ], [ %i.ck, %bb.p ] ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 4 uses
  %i.cp = add i64 %i.cn, %i.cg
  store i64 %i.cp, ptr %i.cj, align 8
  store ptr %i.co, ptr %i.i, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.bp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %2
  store ptr %i.cr, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.bm, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.co, ptr nonnull align 4 %i.bm, i64 %i.bp, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %.pre.i42 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, %bb.r
  %i.cs = phi ptr [ %.pre.i42, %bb.r ], [ %i.co, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cb
  store ptr %i.ct, ptr %i.n, align 8
  br label %._crit_edge.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit: ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %2
  store ptr %i.cu, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread
  %.pn = phi ptr [ %i.bm, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit ], [ %i.cs, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread ] ; 2 uses
  %.pn119 = ptrtoint ptr %.pn to i64              ; 3 uses
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bp ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  %.pre20.i.i = load i32, ptr %i.bl, align 8      ; 2 uses
  %5 = add i64 %i.bo, -1
  %6 = add i64 %.idx, %.pn119
  %i.cw = add i64 %6, %i.bn
  %i.cx = sub i64 %i.cw, %i.bo
  %i.cy = add i64 %.pn119, 4
  %i.cz = add i64 %i.cy, %i.bn
  %7 = sub i64 %i.cz, %i.bo
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 %7)
  %i.da = add i64 %5, %umax
  %8 = add i64 %.pn119, %i.bn
  %9 = sub i64 %i.da, %8                          ; 2 uses
  %i.db = lshr i64 %9, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i
  %n.vec = and i64 %i.dc, 9223372036854775800     ; 3 uses
  %i.dd = shl i64 %n.vec, 2
  %i.de = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dd
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dg, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %._crit_edge.i.i, %middle.block
  %.116.i.i.ph = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.de, %middle.block ]
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.di, %.lr.ph18.i.i ], [ %.116.i.i.ph, %.lr.ph18.i.i.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i, ptr %.116.i.i, align 4
  %i.dj = icmp ult ptr %i.di, %i.cv
  br i1 %i.dj, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !257

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i, %middle.block
  %.pre.i = load i32, ptr %i.an, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.dk = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i ], [ %i.ao, %bb.g ]
  %i.dl = add i32 %i.dk, %i.x
  %i.dm = zext i32 %i.dl to i64
  %i.dn = load ptr, ptr %i.i, align 8
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dm
  %i.dp = load i32, ptr %i.ai, align 4
  store i32 %i.dp, ptr %i.do, align 4
  store i32 %i.x, ptr %i.aj, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.dq = icmp eq ptr %i.ag, %i.ab
  br i1 %i.dq, label %.loopexit63, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph81, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03579 = phi ptr [ %i.o, %.lr.ph81 ], [ %i.fx, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.dr = load ptr, ptr %.03579, align 8          ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 52
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = zext i32 %i.dt to i64
  %i.dv = load ptr, ptr %i.i, align 8
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.du ; 7 uses
  br i1 %i.q, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx
  br i1 %.not61, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.u
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.dw, align 4 ; 4 uses
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.dx, i64 %i.s
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i
  %.059.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.eh, %bb.z ] ; 2 uses
  %.02958.i.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i ], [ %i.eg, %bb.z ] ; 9 uses
  %i.dz = load i32, ptr %.02958.i.i.i.i.i.i, align 4
  %.not44.i.i.i.i.i.i = icmp eq i32 %i.dz, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not44.i.i.i.i.i.i, label %bb.w, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ea = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 4
  %i.eb = load i32, ptr %i.ea, align 4
  %.not45.i.i.i.i.i.i = icmp eq i32 %i.eb, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not45.i.i.i.i.i.i, label %bb.x, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit109

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 8
  %i.ed = load i32, ptr %i.ec, align 4
  %.not46.i.i.i.i.i.i = icmp eq i32 %i.ed, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not46.i.i.i.i.i.i, label %bb.y, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit107

bb.y:                                             ; preds = %bb.x
  %i.ee = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 12
  %i.ef = load i32, ptr %i.ee, align 4
  %.not47.i.i.i.i.i.i = icmp eq i32 %i.ef, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not47.i.i.i.i.i.i, label %bb.z, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit

bb.z:                                             ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 16
  %i.eh = add nsw i64 %.059.i.i.i.i.i.i, -1
  %i.ei = icmp sgt i64 %.059.i.i.i.i.i.i, 1
  br i1 %i.ei, label %bb.v, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !236

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.z, %bb.u
  %.pre-phi68.i.i.i.i.i.i = phi i64 [ %gepdiff.i.i, %bb.u ], [ %gepdiff7.i.i, %bb.z ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.dx, %bb.u ], [ %scevgep.i.i.i.i.i.i, %bb.z ] ; 5 uses
  %i.ej = lshr exact i64 %.pre-phi68.i.i.i.i.i.i, 2
  switch i64 %i.ej, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i [
    i64 3, label %bb.aa
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i
  ]

._crit_edge._crit_edge65.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i35.pre.i.i.i.i.i.i = load i32, ptr %i.dw, align 4
  br label %bb.ae

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i34.pre.i.i.i.i.i.i = load i32, ptr %i.dw, align 4
  br label %bb.ac

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i33.i.i.i.i.i.i = load i32, ptr %i.dw, align 4 ; 2 uses
  %i.ek = load i32, ptr %.029.lcssa.i.i.i.i.i.i, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ek, %.sroa.0.0.copyload.i.i33.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.el = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i34.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i33.i.i.i.i.i.i, %bb.ab ], [ %.sroa.0.0.copyload.i.i34.pre.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i.i.i = phi ptr [ %i.el, %bb.ab ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.em = load i32, ptr %.1.i.i.i.i.i.i, align 4
  %.not42.i.i.i.i.i.i = icmp eq i32 %i.em, %.sroa.0.0.copyload.i.i34.i.i.i.i.i.i
  br i1 %.not42.i.i.i.i.i.i, label %bb.ad, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge._crit_edge65.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i35.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i34.i.i.i.i.i.i, %bb.ad ], [ %.sroa.0.0.copyload.i.i35.pre.i.i.i.i.i.i, %._crit_edge._crit_edge65.i.i.i.i.i.i ]
  %.2.i.i.i.i.i.i = phi ptr [ %i.en, %bb.ad ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge._crit_edge65.i.i.i.i.i.i ] ; 2 uses
  %i.eo = load i32, ptr %.2.i.i.i.i.i.i, align 4
  %.not43.i.i.i.i.i.i = icmp eq i32 %i.eo, %.sroa.0.0.copyload.i.i35.i.i.i.i.i.i
  br i1 %.not43.i.i.i.i.i.i, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit: ; preds = %bb.y
  %i.ep = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 12
  br label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit107: ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 8
  br label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit109: ; preds = %bb.w
  %i.er = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 4
  br label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i: ; preds = %bb.v, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit107, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit109, %bb.ae, %bb.ac, %bb.aa
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.ac ], [ %.029.lcssa.i.i.i.i.i.i, %bb.aa ], [ %.2.i.i.i.i.i.i, %bb.ae ], [ %i.er, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit109 ], [ %i.ep, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit ], [ %i.eq, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit107 ], [ %.02958.i.i.i.i.i.i, %bb.v ]
  %i.es = icmp eq ptr %i.dy, %.028.i.i.i.i.i.i
  br i1 %i.es, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i: ; preds = %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i, %bb.ae, %._crit_edge.i.i.i.i.i.i, %bb.t
  %.sroa.01.0.copyload.i = load i32, ptr %i.dw, align 4
  br label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit: ; preds = %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i
  %.sroa.01.0.i = phi i32 [ %.sroa.01.0.copyload.i, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i ], [ -1, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dr, i64 48 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8            ; 3 uses
  %.not62 = icmp eq i32 %i.eu, %.sroa.01.0.i
  br i1 %.not62, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.af

bb.af:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit
  %i.ev = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ew = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ex = icmp ult ptr %i.ev, %i.ew
  br i1 %i.ex, label %bb.ah, label %bb.ag, !prof !6

bb.ag:                                            ; preds = %bb.af
  %i.ey = load ptr, ptr %i.f, align 8
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 4
  %i.fd = add nsw i64 %i.fc, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.fd)
  %.pre.i.i.i39 = load ptr, ptr %i.t, align 8
  br label %bb.ah

end_hunk_1
