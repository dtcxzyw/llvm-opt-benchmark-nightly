inline.NumInlined: 65942
inline.NumDeleted: 17507
loop-unroll.NumCompletelyUnrolled: 517
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 591
begin_hunk_0_@_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE4GrowEm
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #27
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES8_S9_SB_SD_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSF_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSS_13VariableTableES4_S5_E16StartNewSnapshotIS10_EEvNSX_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSX_IKT0_EEEEUlSW_RSY_S1H_E_EEvS17_S1A_RS1F_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #28
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
  %.idx = shl nuw nsw i64 %2, 2                   ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not70 = icmp eq ptr %i.o, %i.p
  br i1 %.not70, label %.loopexit, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03465 = load ptr, ptr %i.t, align 8           ; 2 uses
  %.not3766 = icmp eq ptr %.03465, %i.e
  br i1 %.not3766, label %._crit_edge, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.f
  %i.u = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph68

.loopexit63:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, %.lr.ph68
  %.034 = load ptr, ptr %.03467, align 8          ; 2 uses
  %.not37 = icmp eq ptr %.034, %i.e
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !2485

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !2486

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit63
  %.03467 = phi ptr [ %.034, %.loopexit63 ], [ %.03465, %.lr.ph68.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03467, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.03467, i64 24
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp samesign eq i64 %i.aa, %i.w
  br i1 %i.ab, label %.loopexit63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.aa
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit
  %.sroa.047.064 = phi ptr [ %i.ad, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.047.064, i64 -16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.047.064, i64 -4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp eq i64 %indvars.iv, %i.ai
  br i1 %i.aj, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.h, align 8
  %i.ao = load ptr, ptr %i.i, align 8
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = add nsw i64 %i.as, %2
  %i.au = icmp ult i64 %i.at, 4294967296
  br i1 %i.au, label %bb.j, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.31) #28
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.av = trunc i64 %i.as to i32
  store i32 %i.av, ptr %i.ak, align 4
  %i.aw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ax = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ay = icmp ult ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.m, align 8
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = add nsw i64 %i.bd, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.be)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i: ; preds = %bb.k, %bb.j
  %i.bf = phi ptr [ %i.aw, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.j, align 8
  store ptr %i.ae, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bj = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.bk = ptrtoint ptr %i.bh to i64               ; 4 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 5 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 2 uses
  %i.bo = xor i64 %i.bn, -1
  %.not.i42 = icmp ugt i64 %2, %i.bo
  br i1 %.not.i42, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.32) #28
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i
  %i.bp = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bl                    ; 2 uses
  %i.bs = ashr exact i64 %i.br, 2
  %i.bt = add nsw i64 %i.bn, %2                   ; 2 uses
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit

bb.n:                                             ; preds = %bb.m
  %i.bv = icmp eq ptr %i.bj, %i.bp
  %i.bw = ashr exact i64 %i.br, 1
  %i.bx = select i1 %i.bv, i64 2, i64 %i.bw
  %i.by = tail call noundef i64 @llvm.umax.i64(i64 %i.bx, i64 %i.bt) ; 3 uses
  %i.bz = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.ca = icmp ult i64 %i.by, 4611686018427387903
  br i1 %i.ca, label %bb.p, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17) #28
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cb = shl nuw i64 %i.by, 2
  %i.cc = add nuw i64 %i.cb, 4
  %i.cd = and i64 %i.cc, -8                       ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.ci = sub i64 %i.cf, %i.ch
  %i.cj = icmp ugt i64 %i.cd, %i.ci
  br i1 %i.cj, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, !prof !7

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.cd) #27
  %.pre.i.i.i44 = load i64, ptr %i.cg, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i: ; preds = %bb.q, %bb.p
  %i.ck = phi i64 [ %.pre.i.i.i44, %bb.q ], [ %i.ch, %bb.p ] ; 2 uses
  %i.cl = inttoptr i64 %i.ck to ptr               ; 4 uses
  %i.cm = add i64 %i.ck, %i.cd
  store i64 %i.cm, ptr %i.cg, align 8
  store ptr %i.cl, ptr %i.i, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.bm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %2
  store ptr %i.co, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.bj, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cl, ptr nonnull align 4 %i.bj, i64 %i.bm, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %.pre.i43 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, %bb.r
  %i.cp = phi ptr [ %.pre.i43, %bb.r ], [ %i.cl, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.by
  store ptr %i.cq, ptr %i.n, align 8
  br label %._crit_edge.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit: ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %2
  store ptr %i.cr, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread
  %.pn = phi ptr [ %i.bj, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit ], [ %i.cp, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread ] ; 2 uses
  %.pn94 = ptrtoint ptr %.pn to i64               ; 3 uses
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bm ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  %.pre20.i.i = load i32, ptr %i.bi, align 8      ; 2 uses
  %5 = add i64 %i.bl, -1
  %6 = add i64 %.idx, %.pn94
  %i.ct = add i64 %6, %i.bk
  %i.cu = sub i64 %i.ct, %i.bl
  %i.cv = add i64 %.pn94, 4
  %i.cw = add i64 %i.cv, %i.bk
  %7 = sub i64 %i.cw, %i.bl
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %7)
  %i.cx = add i64 %5, %umax
  %8 = add i64 %.pn94, %i.bk
  %9 = sub i64 %i.cx, %8                          ; 2 uses
  %i.cy = lshr i64 %9, 2
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i
  %n.vec = and i64 %i.cz, 9223372036854775800     ; 3 uses
  %i.da = shl i64 %n.vec, 2
  %i.db = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.da
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dd, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !2487

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %._crit_edge.i.i, %middle.block
  %.116.i.i.ph = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.db, %middle.block ]
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.df, %.lr.ph18.i.i ], [ %.116.i.i.ph, %.lr.ph18.i.i.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i, ptr %.116.i.i, align 4
  %i.dg = icmp ult ptr %i.df, %i.cs
  br i1 %i.dg, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !2488

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i, %middle.block
  %.pre.i = load i32, ptr %i.ak, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.dh = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i ], [ %i.al, %bb.g ]
  %i.di = add i32 %i.dh, %i.u
  %i.dj = zext i32 %i.di to i64
  %i.dk = load ptr, ptr %i.i, align 8
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load i32, ptr %i.af, align 4
  store i32 %i.dm, ptr %i.dl, align 4
  store i32 %i.u, ptr %i.ag, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.dn = icmp eq ptr %i.ad, %i.y
  br i1 %i.dn, label %.loopexit63, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03571 = phi ptr [ %i.o, %.lr.ph.i.lr.ph ], [ %i.gz, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.do = load ptr, ptr %.03571, align 8          ; 8 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = zext i32 %i.dq to i64
  %i.ds = load ptr, ptr %i.i, align 8
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dr ; 5 uses
  %i.du = load ptr, ptr %3, align 8               ; 7 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 -8
  br label %bb.u

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.023.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.dx, %i.dv
  br i1 %.not.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.023.i = phi ptr [ %i.dt, %.lr.ph.i ], [ %i.dx, %bb.t ] ; 2 uses
  %i.dy = load i32, ptr %.023.i, align 4          ; 2 uses
  %.not21.i = icmp eq i32 %i.dy, -1
  br i1 %.not21.i, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %bb.u
  %i.dz = load ptr, ptr %i.dw, align 8, !nonnull !6, !align !210
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ed = zext i32 %i.dy to i64
  %i.ee = add i64 %i.ec, %i.ed
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load i8, ptr %i.ef, align 4
  %i.eh = icmp eq i8 %i.eg, 76
  br i1 %i.eh, label %bb.v, label %bb.t

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 880
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.el = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.du)
  %i.em = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_18LoadRootRegisterOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.du, i32 %i.el)
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit

._crit_edge.i:                                    ; preds = %bb.t
  %.sroa.0.0.copyload.i = load i8, ptr %i.do, align 8 ; 2 uses
  %.not.i.i38 = icmp eq i8 %.sroa.0.0.copyload.i, 8
  br i1 %.not.i.i38, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.du, i64 880
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit, label %bb.y, !prof !7

bb.y:                                             ; preds = %bb.x
  %i.eq = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS3_INS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerES3_S5_S7_EEEEEEEEEEEEEEEE9ReducePhiENS9_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(648) %i.du, ptr %i.dt, i64 %2, i8 %.sroa.0.0.copyload.i), !inline_history !2489
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit

bb.z:                                             ; preds = %._crit_edge.i
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.dt, align 4
  %i.er = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.es = add i64 %i.ec, %i.er
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load i8, ptr %i.et, align 4
  %i.ev = icmp eq i8 %i.eu, 92
  br i1 %i.ev, label %bb.aa, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ew = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE15MergeFrameStateENSA_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(648) %i.du, ptr nonnull %i.dt, i64 %2), !inline_history !2489
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit

_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.copyload.i40 = phi i32 [ -1, %bb.z ], [ -1, %bb.v ], [ %i.em, %bb.w ], [ -1, %bb.x ], [ %i.ew, %bb.aa ], [ %i.eq, %bb.y ], [ -1, %bb.u ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8            ; 3 uses
  %.not62 = icmp eq i32 %i.ey, %.sroa.0.0.copyload.i40
  br i1 %.not62, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit
  %i.ez = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.fa = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.fb = icmp ult ptr %i.ez, %i.fa
  br i1 %i.fb, label %bb.ad, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.fc = load ptr, ptr %i.f, align 8
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 4
  %i.fh = add nsw i64 %i.fg, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.fh)
  %.pre.i.i.i39 = load ptr, ptr %i.q, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fi = phi ptr [ %i.ez, %bb.ab ], [ %.pre.i.i.i39, %bb.ac ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store ptr %i.fj, ptr %i.q, align 8
  store ptr %i.do, ptr %i.fi, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 %i.ey, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 %.sroa.0.0.copyload.i40, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %.sroa.0.0.copyload.i40, ptr %i.ex, align 8
  %i.fk = load ptr, ptr %4, align 8               ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !range !5, !noundef !6
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i41 = icmp eq i32 %i.ey, -1
  %.not6.i.i = icmp eq i32 %.sroa.0.0.copyload.i40, -1 ; 2 uses
  br i1 %.not.i.i41, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not6.i.i, label %bb.ag, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.ag:                                            ; preds = %bb.af
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8            ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 360 ; 4 uses
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  store i64 %i.fp, ptr %i.ft, align 8
  %i.fu = load ptr, ptr %i.fq, align 8
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fk, i64 352
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fp
  %i.fz = load i64, ptr %i.fv, align 8
  store i64 %i.fz, ptr %i.fy, align 8
  store i64 -1, ptr %i.fo, align 8
  %i.ga = load ptr, ptr %i.fq, align 8
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_:bb.a
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre5 = ptrtoint ptr %.pre to i64
  %.pre6 = sub i64 %.pre10.i.i.i.i, %.pre5
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi7 = phi i64 [ %i.i, %bb.a ], [ %.pre6, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi7 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi7, 4
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
  store i8 76, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.ak = lshr i64 %i.i, 4
  %i.al = and i64 %i.ak, 268435455                ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %.not.i.i = icmp ugt i64 %i.at, %i.al
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  %i.av = lshr i64 %i.al, 1
  %i.aw = add nuw nsw i64 %i.al, 32
  %i.ax = add nuw nsw i64 %i.aw, %i.av
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %i.ao, align 8
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.be)
  %.pre.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bf = phi ptr [ %.pre.i.i, %bb.c ], [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bg = trunc i64 %i.i to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.al
  store i32 %.sroa.0.0.copyload.i, ptr %i.bh, align 4
  ret i32 %i.bg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 2
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %.loopexit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds i8, ptr %0, i64 -24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = shl i64 %i.b, 1
  %i.l = tail call { ptr, i64 } @_ZN2v88internal4Zone9NewVectorINS0_8compiler10turboshaft21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_26BlockOriginTrackingReducerENS4_28TurbolevEarlyLoweringReducerENS4_26MachineOptimizationReducerENS4_15VariableReducerENS4_27RequiredOptimizationReducerES5_S7_EEEEEEEEEE5EntryEA_SM_EENS9_6VectorIT_EEm(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 3 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 2 uses
  store ptr %i.m, ptr %i.h, align 8
  store i64 %i.n, ptr %i.a, align 8
  %i.o = add i64 %i.n, -1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not31 = icmp eq ptr %i.s, %i.t
  br i1 %.not31, label %.loopexit, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.b, %._crit_edge27
  %i.u = phi ptr [ %i.av, %._crit_edge27 ], [ %i.t, %bb.b ]
  %.028 = phi i64 [ %i.at, %._crit_edge27 ], [ 0, %bb.b ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.028 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  store ptr null, ptr %i.v, align 8
  %.not23 = icmp eq ptr %i.w, null
  br i1 %.not23, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph30, %._crit_edge
  %.01824 = phi ptr [ %i.ag, %._crit_edge ], [ %i.w, %.lr.ph30 ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01824, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, %i.o                       ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph26
  %i.ae = load i64, ptr %i.p, align 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.lr.ph26
  %.lcssa = phi ptr [ %i.aa, %.lr.ph26 ], [ %i.ap, %bb.c ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.lcssa, ptr noundef nonnull align 8 dereferenceable(28) %.01824, i64 28, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.01824, i64 16
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load ptr, ptr %i.r, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.028
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.r, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.028
  store ptr %.lcssa, ptr %i.am, align 8
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %._crit_edge27, label %.lr.ph26, !llvm.loop !2510

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.01722 = phi i64 [ %i.z, %.lr.ph ], [ %i.ao, %bb.c ]
  %i.an = add i64 %.01722, 1
  %i.ao = and i64 %i.ae, %i.an                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %._crit_edge, label %bb.c, !llvm.loop !2511

._crit_edge27:                                    ; preds = %._crit_edge, %.lr.ph30
  %i.at = add nuw i64 %.028, 1                    ; 2 uses
  %i.au = load ptr, ptr %i.q, align 8
  %i.av = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = icmp ult i64 %i.at, %i.az
  br i1 %i.ba, label %.lr.ph30, label %.loopexit, !llvm.loop !2512

.loopexit:                                        ; preds = %._crit_edge27, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2513

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2514

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_12ProjectionOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !210
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.n = load i8, ptr %i.m, align 1, !noalias !2515 ; 2 uses
  %i.o = load i16, ptr %i.l, align 2, !noalias !2515 ; 2 uses
  %.0.i.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i.i.i, align 4 ; 2 uses
  %i.p = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.q = zext nneg i32 %i.p to i64
  %i.r = zext i8 %i.n to i64
  %i.s = mul nuw nsw i64 %i.r, 17
  %i.t = zext i16 %i.o to i64
  %i.u = add nuw nsw i64 %i.s, %i.t
  %reass.add.i.i.i = add nuw nsw i64 %i.u, %i.q
  %i.v = mul nuw nsw i64 %reass.add.i.i.i, 289
  %i.w = add nuw nsw i64 %i.v, -807902598658493455 ; 3 uses
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

.lr.ph.i:                                         ; preds = %bb.b, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i
  %.pre.pre = phi i64 [ %i.be, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ae, %bb.b ]
  %i.ag = phi ptr [ %i.bc, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ac, %bb.b ] ; 2 uses
  %.02432.i = phi i64 [ %i.bb, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.z, %bb.b ]
  %i.ah = icmp eq i64 %.pre.pre, %i.w
  br i1 %i.ah, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %i.d, align 8, !nonnull !6, !align !210
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %.sroa.0.0.copyload.i to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr               ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = icmp eq i8 %i.ap, 97
  br i1 %i.aq, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.0810.i.i.i.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i.i, align 4
  %i.as = icmp eq i32 %i.ar, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.as, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.i: ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  %i.av = load i8, ptr %i.au, align 2, !noalias !2518
  %i.aw = load i16, ptr %i.at, align 4, !noalias !2518
  %i.ax = icmp eq i16 %i.aw, %i.o
  %i.ay = icmp eq i8 %i.av, %i.n
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_12ProjectionOpEEEPNSJ_5EntryERKT_Pm.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.i, %bb.d, %bb.c, %.lr.ph.i
  %i.ba = add i64 %.02432.i, 1
  %i.bb = and i64 %i.ba, %i.y                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.loopexit, label %.lr.ph.i, !llvm.loop !2521

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i, %bb.b
  %.ph = phi ptr [ %i.ac, %bb.b ], [ %i.bc, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 52
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bp = load i32, ptr %i.bo, align 4
  store i32 %1, ptr %.ph, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  store i32 %.sroa.0.0.copyload.i16, ptr %.sroa.4.0..sroa_idx, align 4
  store i64 %i.w, ptr %i.bg, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 16
  store ptr %i.bn, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 24
  store i32 %i.bp, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bq = load ptr, ptr %i.bk, align 8
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  store ptr %.ph, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8
  br label %bb.h

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_12ProjectionOpEEEPNSJ_5EntryERKT_Pm.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10RttCanonOpEJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEENS2_7OpIndexEDpT0_:bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre10 = ptrtoint ptr %.pre to i64
  %.pre11 = sub i64 %.pre10.i.i.i.i, %.pre10
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi12 = phi i64 [ %i.i, %bb.a ], [ %.pre11, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi12 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi12, 4
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
  store i8 17, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %2, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.f, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %1 to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.aq, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit
  %i.ar = add nuw i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.a, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.au = lshr i64 %i.i, 4
  %i.av = and i64 %i.au, 268435455                ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 216
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 208 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2
  %.not.i.i8 = icmp ugt i64 %i.bd, %i.av
  br i1 %.not.i.i8, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 200 ; 2 uses
  %i.bf = lshr i64 %i.av, 1
  %i.bg = add nuw nsw i64 %i.av, 32
  %i.bh = add nuw nsw i64 %i.bg, %i.bf
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 224
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.ay, align 8
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.bo)
  %.pre.i.i = load ptr, ptr %i.ay, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit, %bb.d
  %i.bp = phi ptr [ %.pre.i.i, %bb.d ], [ %i.az, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit ]
  %i.bq = trunc i64 %i.i to i32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.av
  store i32 %.sroa.0.0.copyload.i, ptr %i.br, align 4
  ret i32 %i.bq
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit

_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2557

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2558

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_12FrameStateOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !210
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 5 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !align !210
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.o, align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  %i.s = zext i16 %i.r to i64
  %i.t = load i8, ptr %i.l, align 4, !range !5, !noundef !6
  %.idx.i.i.i18 = shl nuw nsw i64 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i18
  %.not.i.i14.i.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.i14.i.i.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %bb.b, %.lr.ph.i.i.i19
  %.0.i.i16.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i19 ], [ %i.p, %bb.b ] ; 2 uses
  %.015.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i19 ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.0.i.i16.i.i.i, align 4
  %i.v = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %i.w = zext nneg i32 %i.v to i64
  %i.x = xor i64 %.015.i.i.i, -1
  %i.y = shl i64 %.015.i.i.i, 21
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i64 %i.z, 24
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 265                      ; 2 uses
  %i.ad = lshr i64 %i.ac, 14
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 21                       ; 2 uses
  %i.ag = lshr i64 %i.af, 28
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, 2147483649
  %i.aj = mul nuw nsw i64 %i.w, 17
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i16.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit, label %.lr.ph.i.i.i19, !llvm.loop !2525

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit: ; preds = %.lr.ph.i.i.i19, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ak, %.lr.ph.i.i.i19 ]
  %i.am = shl i32 %.sroa.0.0.copyload.i.i.i, 15
  %i.an = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.ao = add i32 %i.am, %i.an                    ; 2 uses
  %i.ap = lshr i32 %i.ao, 12
  %i.aq = xor i32 %i.ap, %i.ao
  %i.ar = mul i32 %i.aq, 5                        ; 2 uses
  %i.as = lshr i32 %i.ar, 4
  %i.at = xor i32 %i.as, %i.ar
  %i.au = mul i32 %i.at, 2057                     ; 2 uses
  %i.av = lshr i32 %i.au, 16
  %i.aw = xor i32 %i.av, %i.au
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.ax, 17
  %i.az = zext nneg i8 %i.t to i64
  %i.ba = add nuw nsw i64 %i.ay, %i.az
  %i.bb = mul nuw nsw i64 %i.ba, 17
  %i.bc = add i64 %.0.lcssa.i.i.i, %i.bb
  %i.bd = mul i64 %i.bc, 17
  %i.be = add i64 %i.bd, 92
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.be, i64 1) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = and i64 %..i, %i.bg                     ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.bh ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_12FrameStateOpEEEPNSJ_5EntryERKT_Pm.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit, %bb.e
  %i.bo = phi ptr [ %i.cd, %bb.e ], [ %i.bj, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit ] ; 2 uses
  %i.bp = phi i64 [ %i.ce, %bb.e ], [ %i.bg, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit ] ; 2 uses
  %i.bq = phi i64 [ %i.cj, %bb.e ], [ %i.bm, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit ]
  %i.br = phi ptr [ %i.ch, %bb.e ], [ %i.bk, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit ] ; 4 uses
  %.02432.i = phi i64 [ %i.cg, %bb.e ], [ %i.bh, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit ]
  %i.bs = icmp eq i64 %i.bq, %..i
  br i1 %i.bs, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.bt = load ptr, ptr %i.d, align 8, !nonnull !6, !align !210
  %.sroa.0.0.copyload.i = load i32, ptr %i.br, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = zext i32 %.sroa.0.0.copyload.i to i64
  %i.by = add i64 %i.bw, %i.bx
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = icmp eq i8 %i.ca, 92
  br i1 %i.cb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cc = tail call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEEeqERKS5_(ptr noundef nonnull align 4 dereferenceable(4) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  br i1 %i.cc, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_12FrameStateOpEEEPNSJ_5EntryERKT_Pm.exit, label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %bb.d
  %.pre.i = load i64, ptr %i.bf, align 8
  %.pre37.i = load ptr, ptr %i.bi, align 8
  br label %bb.e
end_hunk_2
begin_hunk_3_@_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EEaSERKSA_:bb.a
._crit_edge:                                      ; preds = %.lr.ph42, %.critedge
  %.128.lcssa = phi ptr [ %.027.lcssa, %.critedge ], [ %i.ag, %.lr.ph42 ]
  store ptr %.128.lcssa, ptr %i.r, align 8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.m                     ; 5 uses
  %.not32 = icmp eq ptr %i.am, %i.b
  br i1 %.not32, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %0, align 8               ; 3 uses
  %i.aq = icmp sgt i64 %i.ao, -1
  br i1 %i.aq, label %bb.g, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %i.aw = icmp ugt i64 %i.ao, %i.av
  br i1 %i.aw, label %bb.h, label %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EA_SA_EEPT_m.exit, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i64 noundef %i.ao) #27
  %.pre.i.i = load i64, ptr %i.at, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EA_SA_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EA_SA_EEPT_m.exit: ; preds = %bb.g, %bb.h
  %i.ax = phi i64 [ %.pre.i.i, %bb.h ], [ %i.au, %bb.g ] ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = add i64 %i.ax, %i.ao
  store i64 %i.az, ptr %i.at, align 8
  store ptr %i.ay, ptr %i.e, align 8
  %i.ba = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bb = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bc = icmp ult ptr %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph46, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit

.lr.ph46:                                         ; preds = %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EA_SA_EEPT_m.exit, %.lr.ph46
  %.0.i45 = phi ptr [ %i.bd, %.lr.ph46 ], [ %i.ay, %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EA_SA_EEPT_m.exit ] ; 2 uses
  %.07.i44 = phi ptr [ %i.be, %.lr.ph46 ], [ %i.ba, %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EA_SA_EEPT_m.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i45, ptr noundef nonnull align 8 dereferenceable(16) %.07.i44, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i45, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i44, i64 16 ; 2 uses
  %i.bf = icmp ult ptr %i.be, %i.bb
  br i1 %i.bf, label %.lr.ph46, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit.loopexit, !llvm.loop !2575

bb.i:                                             ; preds = %bb.d
  store ptr null, ptr %i.e, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit.loopexit: ; preds = %.lr.ph46
  %.pre47 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit: ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EA_SA_EEPT_m.exit, %bb.i
  %i.bg = phi ptr [ %.pre47, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit.loopexit ], [ %i.ay, %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EA_SA_EEPT_m.exit ], [ null, %bb.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ao
  store ptr %i.bh, ptr %i.c, align 8
  %i.bi = load ptr, ptr %i.j, align 8
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bm
  store ptr %i.bn, ptr %i.ak, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8             ; 2 uses
  %.pre13 = ptrtoint ptr %.pre to i64
  br label %_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %.pre13, %bb.b ]
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = shl nuw nsw i64 %1, 3
  %i.p = add nuw i64 %.pre-phi, %i.o
  %i.q = add i64 %i.n, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.q)
  %i.r = xor i64 %i.n, -1
  %i.s = add i64 %umax, %i.r
  %i.t = and i64 %i.s, -8
  %i.u = add i64 %i.t, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.u, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_6maglev10BasicBlockEA_S6_EEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #27
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_6maglev10BasicBlockEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPKNS0_6maglev10BasicBlockEA_S6_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPKNS0_6maglev10BasicBlockEA_S6_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_6maglev10BasicBlockEA_S6_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_6maglev10BasicBlockEA_S6_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2576

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2577

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_11ParameterOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !210
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = zext i32 %1 to i64
  %i.k = add i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.m = call noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_11ParameterOpEEEPNSJ_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull %i.a) ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.s, align 4
  %i.t = load i64, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.z = load i32, ptr %i.y, align 4
  store i32 %1, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %.sroa.0.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 4
  store i64 %i.t, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.x, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 %i.z, ptr %.sroa.7.0..sroa_idx, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  store ptr %i.m, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.e, align 8, !nonnull !6, !align !210 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2578 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2578
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = sub i64 %i.ai, %i.al                    ; 2 uses
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = lshr i32 %i.an, 4
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i64                   ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = sub i64 %i.am, %i.aw
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = add i64 %i.ay, %i.al
  %i.ba = inttoptr i64 %i.az to ptr               ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 4
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bh = load i16, ptr %i.bg, align 2            ; 2 uses
  %i.bi = zext i16 %i.bh to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bi, 2          ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i.i.i
  %.not10.i.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not10.i.i.i, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %i.bk = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.bl = and i64 %i.bk, 4
  %lcmp.mod.not.not = icmp eq i64 %i.bl, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %.sroa.01.0.copyload.i.i.i.prol = load i32, ptr %i.bf, align 4
  %i.bm = load ptr, ptr %i.aj, align 8
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = zext i32 %.sroa.01.0.copyload.i.i.i.prol to i64
  %i.bp = add i64 %i.bn, %i.bo
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = add i8 %i.bs, -1                        ; 2 uses
  %spec.select.i.i.i.i.prol = icmp ult i8 %i.bt, -2
  br i1 %spec.select.i.i.i.i.prol, label %bb.e, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol, !prof !11

bb.e:                                             ; preds = %.lr.ph.i.i.i.prol
  store i8 %i.bt, ptr %i.br, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol: ; preds = %bb.e, %.lr.ph.i.i.i.prol
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.011.i.i.i.unr = phi ptr [ %i.bf, %.lr.ph.i.i.i.preheader ], [ %i.bu, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol ]
  %i.bv = icmp eq i64 %i.bk, 0
  br i1 %i.bv, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1
  %.011.i.i.i = phi ptr [ %i.cn, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1 ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %.011.i.i.i, align 4
  %i.bw = load ptr, ptr %i.aj, align 8
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = zext i32 %.sroa.01.0.copyload.i.i.i to i64
  %i.bz = add i64 %i.bx, %i.by
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = add i8 %i.cc, -1                        ; 2 uses
  %spec.select.i.i.i.i = icmp ult i8 %i.cd, -2
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i, !prof !11

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store i8 %i.cd, ptr %i.cb, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i

end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_11Float64IsOpEEENS2_7OpIndexESM_:bb.a
.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1
  %.011.i.i.i = phi ptr [ %i.du, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1 ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %.011.i.i.i, align 4
  %i.dd = load ptr, ptr %i.bq, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = zext i32 %.sroa.01.0.copyload.i.i.i to i64
  %i.dg = add i64 %i.de, %i.df
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = add i8 %i.dj, -1                        ; 2 uses
  %spec.select.i.i.i.i = icmp ult i8 %i.dk, -2
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i, !prof !11

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store i8 %i.dk, ptr %i.di, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.sroa.01.0.copyload.i.i.i.1 = load i32, ptr %i.dl, align 4
  %i.dm = load ptr, ptr %i.bq, align 8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = zext i32 %.sroa.01.0.copyload.i.i.i.1 to i64
  %i.dp = add i64 %i.dn, %i.do
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = add i8 %i.ds, -1                        ; 2 uses
  %spec.select.i.i.i.i.1 = icmp ult i8 %i.dt, -2
  br i1 %spec.select.i.i.i.i.1, label %bb.g, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1, !prof !11

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i
  store i8 %i.dt, ptr %i.dr, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.du, %i.cq
  br i1 %.not.i.i.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i, label %.lr.ph.i.i.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1, %.lr.ph.i.i.i.prol.loopexit
  %.pre.i.i = load ptr, ptr %i.bv, align 8
  %.pre8.i.i = load ptr, ptr %i.bn, align 8       ; 2 uses
  %.pre9.i.i = load ptr, ptr %i.bq, align 8
  %.pre10.i.i = ptrtoint ptr %.pre8.i.i to i64
  %.pre11.i.i = ptrtoint ptr %.pre9.i.i to i64
  %.pre13.i.i = sub i64 %.pre10.i.i, %.pre11.i.i
  %.pre15.i.i = trunc i64 %.pre13.i.i to i32
  %.pre17.i.i = lshr i32 %.pre15.i.i, 4
  %.pre19.i.i = add nsw i32 %.pre17.i.i, -1
  %.pre21.i.i = zext i32 %.pre19.i.i to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %.pre21.i.i
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  %.pre1.i = zext i16 %.pre.i to i64
  br label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_11Float64IsOpEEEPNSJ_5EntryERKT_Pm.exit, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i
  %.pre-phi.i = phi i64 [ %i.cc, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_11Float64IsOpEEEPNSJ_5EntryERKT_Pm.exit ], [ %.pre1.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i ]
  %i.dv = phi ptr [ %i.bo, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_11Float64IsOpEEEPNSJ_5EntryERKT_Pm.exit ], [ %.pre8.i.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i ]
  %i.dw = sub nsw i64 0, %.pre-phi.i
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dw
  store ptr %i.dx, ptr %i.bn, align 8
  %.sroa.015.0.copyload = load i32, ptr %i.ab, align 8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit, %bb.a
  %.sroa.015.2 = phi i32 [ %1, %bb.a ], [ %1, %.loopexit ], [ %.sroa.015.0.copyload, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit ]
  ret i32 %.sroa.015.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_11Float64IsOpEJNS2_14ShadowyOpIndexENS2_11NumericKindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !210 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11Float64IsOpEE3NewIJNS2_14ShadowyOpIndexENS2_11NumericKindEEEERS4_PNS2_5GraphEDpT_.exit, !prof !7

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
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11Float64IsOpEE3NewIJNS2_14ShadowyOpIndexENS2_11NumericKindEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11Float64IsOpEE3NewIJNS2_14ShadowyOpIndexENS2_11NumericKindEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
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
  store i8 119, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %2, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.f, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %1 to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.aq, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11Float64IsOpEEEvRKT_.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11Float64IsOpEE3NewIJNS2_14ShadowyOpIndexENS2_11NumericKindEEEERS4_PNS2_5GraphEDpT_.exit
  %i.ar = add nuw i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11Float64IsOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11Float64IsOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11Float64IsOpEE3NewIJNS2_14ShadowyOpIndexENS2_11NumericKindEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.a, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.au = lshr i64 %i.i, 4
  %i.av = and i64 %i.au, 268435455                ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 216
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 208 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2
  %.not.i.i6 = icmp ugt i64 %i.bd, %i.av
  br i1 %.not.i.i6, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11Float64IsOpEEEvRKT_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 200 ; 2 uses
  %i.bf = lshr i64 %i.av, 1
  %i.bg = add nuw nsw i64 %i.av, 32
  %i.bh = add nuw nsw i64 %i.bg, %i.bf
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 224
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.ay, align 8
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.bo)
  %.pre.i.i = load ptr, ptr %i.ay, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11Float64IsOpEEEvRKT_.exit, %bb.d
  %i.bp = phi ptr [ %.pre.i.i, %bb.d ], [ %i.az, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11Float64IsOpEEEvRKT_.exit ]
  %i.bq = trunc i64 %i.i to i32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.av
  store i32 %.sroa.0.0.copyload.i, ptr %i.br, align 4
  ret i32 %i.bq
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_9UndefinedEEEEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2800

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_9UndefinedEEEEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_9UndefinedEEEEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2801

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_9UndefinedEEEEEESB_ET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_9UndefinedEEEEEElET_SC_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_9UndefinedEEEEEElET_SC_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_9UndefinedEEEEEElET_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #15 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS8_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.4489") align 4 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(936) %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(936) %2, ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !210 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS8_EEEERT_NS_14SourceLocationE:bb.a

bb.j:                                             ; preds = %.lr.ph23.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 24
  %storemerge.pre.i.i = load ptr, ptr %i.cr, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph23.i.i
  %storemerge.i.i = phi ptr [ %storemerge.pre.i.i, %bb.j ], [ %i.cn, %.lr.ph23.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %i.cq, %bb.j ], [ %i.cl, %.lr.ph23.i.i ] ; 3 uses
  %.not5.i.i = icmp eq ptr %.3.i.i, %storemerge.i.i
  br i1 %.not5.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i, !llvm.loop !2419

_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i: ; preds = %bb.k, %.preheader.i.i
  %.2.lcssa.i.i = phi ptr [ %.116.lcssa.i.i, %.preheader.i.i ], [ %.3.i.i, %bb.k ] ; 2 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 64
  %.0.i4 = load ptr, ptr %.0.in.i, align 8        ; 2 uses
  %.not.i5 = icmp eq ptr %.0.i4, null
  br i1 %.not.i5, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2420

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i, %bb.h
  %i.cs = phi i32 [ %.pre.i6, %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i ], [ 0, %bb.h ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 232 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.cu, i32 %i.cs)
  store i32 %.sroa.speculated, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 912 ; 2 uses
  store ptr %i.a, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(744) %i.cw, ptr noundef nonnull %i.a)
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 736
  %i.cy = load ptr, ptr %i.cx, align 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ai, align 4
  %i.cz = zext i32 %.sroa.0.0.copyload.i.i to i64 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 760
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 752 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 3
  %.not.i.i7 = icmp ugt i64 %i.dh, %i.cz
  br i1 %.not.i.i7, label %bb.n, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 744 ; 2 uses
  %i.dj = lshr i64 %i.cz, 1
  %i.dk = add nuw nsw i64 %i.cz, 32
  %i.dl = add nuw nsw i64 %i.dk, %i.dj
  tail call void @_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 noundef %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load ptr, ptr %i.dc, align 8
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3
  tail call void @_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 noundef %i.ds)
  %.pre.i.i = load ptr, ptr %i.dc, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dt = phi ptr [ %.pre.i.i, %bb.m ], [ %i.dd, %bb.l ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.cz
  store ptr %i.cy, ptr %i.du, align 8
  %i.dv = load ptr, ptr %1, align 8, !noalias !2802
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  %i.dx = load i32, ptr %i.dw, align 8, !noalias !2802
  %i.dy = icmp eq i32 %i.dx, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !2802 ; 3 uses
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eb = load i32, ptr %i.ea, align 4, !noalias !2802
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

bb.p:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !2802
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ea to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = ashr exact i64 %i.eg, 2                 ; 2 uses
  %i.ei = load ptr, ptr %i.cv, align 8, !noalias !2802
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.ek = icmp ult i64 %i.eh, 2147483648
  br i1 %i.ek, label %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEEE6lengthEv.exit.i.i.i, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.27) #28, !noalias !2802
  unreachable

_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEEE6lengthEv.exit.i.i.i: ; preds = %bb.q
  %i.el = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS3_INS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerES3_S5_S7_EEEEEEEEEEEEEEEE9ReducePhiENS9_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(144) %i.cw, ptr %i.ea, i64 %i.eh, i8 4), !noalias !2802
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit: ; preds = %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEEE6lengthEv.exit.i.i.i, %bb.p, %bb.o, %bb.e
  %storemerge.i.i8.sink = phi i32 [ -1, %bb.e ], [ %i.eb, %bb.o ], [ -1, %bb.p ], [ %i.el, %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEEE6lengthEv.exit.i.i.i ]
  %.sink = phi i8 [ 0, %bb.e ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEEE6lengthEv.exit.i.i.i ]
  store i32 %storemerge.i.i8.sink, ptr %0, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sink, ptr %i.em, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor29TagExceptionPhiInputsForBlockEPNS2_5BlockEPNS0_6maglev10BasicBlockES5_(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.4440, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.c)
  %.pre.i = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.k = add i64 %i.i, 1
  store i64 %i.k, ptr %i.d, align 8
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8              ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.n, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i32 -1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  store i32 -1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i32 0, ptr %i.t, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.r, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.b, align 8, !nonnull !6, !align !210 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.v, align 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = lshr i32 %.sroa.0.0.copyload.i, 4
  %i.z = add nsw i32 %i.y, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 3
  %i.af = sub i32 %.sroa.0.0.copyload.i, %i.ae
  tail call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_6GotoOpEJPNS2_5BlockEbEEEvNS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.u, i32 %i.af, ptr noundef nonnull %i.n, i1 noundef zeroext false)
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE14AddPredecessorEPNS2_5BlockESH_b(ptr noundef nonnull align 8 dereferenceable(936) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.n, i1 noundef zeroext false)
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(936) %i.a, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8
  call void @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor20IterCatchHandlerPhisIZNS3_20InsertTaggingForPhisEPNS0_6maglev10BasicBlockEEUlNS0_11interpreter8RegisterENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEEE_EEvPKS6_OT_(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp ne i32 %i.ak, -1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.am, ptr noundef nonnull %3, i1 noundef zeroext %i.al), !inline_history !2428 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm16ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm16ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm16ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2807

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2808

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm16ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm16ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_6GotoOpEJPNS2_5BlockEbEEEvNS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(328) %0, i32 %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = zext i16 %i.m to i64
  %.idx.i = shl nuw nsw i64 %i.n, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.m, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.p = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.k, align 4
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = add i8 %i.x, -1                          ; 2 uses
  %spec.select.i.i.prol = icmp ult i8 %i.y, -2
  br i1 %spec.select.i.i.prol, label %bb.b, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, !prof !11

bb.b:                                             ; preds = %.lr.ph.i.prol
  store i8 %i.y, ptr %i.w, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol: ; preds = %bb.b, %.lr.ph.i.prol
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.z, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol ]
  %i.aa = icmp eq i64 %i.p, 0
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1
  %.011.i = phi ptr [ %i.as, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1 ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = zext i32 %.sroa.01.0.copyload.i to i64
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  %spec.select.i.i = icmp ult i8 %i.ai, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i, !prof !11

bb.c:                                             ; preds = %.lr.ph.i
  store i8 %i.ai, ptr %i.ag, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = add i8 %i.aq, -1                        ; 2 uses
  %spec.select.i.i.1 = icmp ult i8 %i.ar, -2
  br i1 %spec.select.i.i.1, label %bb.d, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, !prof !11

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.as, %i.o
  br i1 %.not.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %i.a, align 8
  %.pre17 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre18 = add i64 %.pre17, %i.d                 ; 2 uses
  %.pre20 = inttoptr i64 %.pre18 to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, %bb.a
  %.pre-phi21 = phi ptr [ %.pre20, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi19 = phi i64 [ %.pre18, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre17, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.02.0.copyload = load i8, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = lshr i32 %1, 4
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2            ; 3 uses
  store ptr %.pre-phi21, ptr %i.au, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE21ReduceCatchBlockBeginEv:bb.a
  store ptr %i.r, ptr %.014.i.i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.0.i.i.i
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit, !llvm.loop !2482

.lr.ph.i:                                         ; preds = %bb.c, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i
  %.07.i = phi ptr [ %.0.i, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i ], [ %.05.i, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %i.l, align 8, !alias.scope !2809 ; 2 uses
  %i.w = load ptr, ptr %i.m, align 8, !alias.scope !2809
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i, !prof !7

bb.d:                                             ; preds = %.lr.ph.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %.pre.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !2809
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i: ; preds = %bb.d, %.lr.ph.i
  %i.y = phi ptr [ %.pre.i.i.i, %bb.d ], [ %i.v, %.lr.ph.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.l, align 8, !alias.scope !2809
  store ptr %.07.i, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  %.0.i = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2483

_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load ptr, ptr %2, align 8
  %.pre19 = load ptr, ptr %i.l, align 8
  br label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit

_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit, %._crit_edge.i
  %i.ab = phi ptr [ %.pre19, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit ], [ %.pre8.i, %._crit_edge.i ] ; 2 uses
  %i.ac = phi ptr [ %.pre, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %.not17 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE9push_backES5_.exit, %bb.c, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = load ptr, ptr %1, align 8               ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ag, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS3_INS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerES3_S5_S7_EEEEEEEEEEEEEEEE9ReducePhiENS9_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %i.ah, i64 %i.ak, i8 4)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit: ; preds = %._crit_edge, %bb.e
  %.sroa.05.0.i.i = phi i32 [ %i.al, %bb.e ], [ -1, %._crit_edge ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.g

.lr.ph:                                           ; preds = %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE9push_backES5_.exit
  %.018 = phi ptr [ %i.at, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE9push_backES5_.exit ], [ %i.ac, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit ] ; 2 uses
  %i.am = load ptr, ptr %.018, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %.sroa.0.0.copyload.i = load i32, ptr %i.an, align 4
  %i.ao = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ap = load ptr, ptr %i.i, align 8
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE9push_backES5_.exit, !prof !7

bb.f:                                             ; preds = %.lr.ph
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %.pre.i.i = load ptr, ptr %i.h, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE9push_backES5_.exit: ; preds = %.lr.ph, %bb.f
  %i.ar = phi ptr [ %.pre.i.i, %bb.f ], [ %i.ao, %.lr.ph ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store ptr %i.as, ptr %i.h, align 8
  store i32 %.sroa.0.0.copyload.i, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.ab
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit, %bb.b
  %.sroa.016.0 = phi i32 [ %i.f, %bb.b ], [ %.sroa.05.0.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit ]
  ret i32 %.sroa.016.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_17CatchBlockBeginOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !210 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre5 = ptrtoint ptr %.pre to i64
  %.pre6 = sub i64 %.pre10.i.i.i.i, %.pre5
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi7 = phi i64 [ %i.i, %bb.a ], [ %.pre6, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi7 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi7, 4
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
  store i8 94, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.ak = lshr i64 %i.i, 4
  %i.al = and i64 %i.ak, 268435455                ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %.not.i.i = icmp ugt i64 %i.at, %i.al
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  %i.av = lshr i64 %i.al, 1
  %i.aw = add nuw nsw i64 %i.al, 32
  %i.ax = add nuw nsw i64 %i.aw, %i.av
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %i.ao, align 8
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.be)
  %.pre.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bf = phi ptr [ %.pre.i.i, %bb.c ], [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bg = trunc i64 %i.i to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.al
  store i32 %.sroa.0.0.copyload.i, ptr %i.bh, align 4
  ret i32 %i.bg
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2812

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2813

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPKN2v88internal6maglev10BasicBlockES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPKN2v88internal6maglev10BasicBlockES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPKN2v88internal6maglev10BasicBlockES6_ET0_T_S8_S7_.exit

_ZSt18uninitialized_moveIPPKN2v88internal6maglev10BasicBlockES6_ET0_T_S8_S7_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPPKN2v88internal6maglev10BasicBlockElET_S7_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPKN2v88internal6maglev10BasicBlockElET_S7_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPKN2v88internal6maglev10BasicBlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIiLm16ESaIiEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.k, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 4, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_14JSStackCheckOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENSI_4KindEEEENS2_7OpIndexEDpT0_:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.au, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.av = add nuw i8 %i.au, 1
  store i8 %i.av, ptr %i.at, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.d, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %i.an
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit, label %bb.c

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.ax, align 4
  %i.ay = load ptr, ptr %i.a, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.az = lshr i64 %i.i, 4
  %i.ba = and i64 %i.az, 268435455                ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 216
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 208 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %.not.i.i9 = icmp ugt i64 %i.bi, %i.ba
  br i1 %.not.i.i9, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 200 ; 2 uses
  %i.bk = lshr i64 %i.ba, 1
  %i.bl = add nuw nsw i64 %i.ba, 32
  %i.bm = add nuw nsw i64 %i.bl, %i.bk
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 224
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bd, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bt)
  %.pre.i.i = load ptr, ptr %i.bd, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit, %bb.e
  %i.bu = phi ptr [ %.pre.i.i, %bb.e ], [ %i.be, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit ]
  %i.bv = trunc i64 %i.i to i32
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ba
  store i32 %.sroa.0.0.copyload.i8, ptr %i.bw, align 4
  ret i32 %i.bv
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev14GeneratorStoreERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.v8::base::SmallVector.3959", align 8 ; 11 uses
  %4 = alloca %"class.v8::base::SmallVector.3959", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = icmp ugt i32 %i.j, 196607
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = lshr i32 %i.j, 16
  %i.m = getelementptr inbounds i8, ptr %1, i64 -8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %smax = add nsw i32 %i.l, -2
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit, %bb.a
  %i.r = getelementptr inbounds i8, ptr %1, i64 -8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.s, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread, label %bb.b

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit33

bb.b:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.s, %i.x
  br i1 %i.y, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread50, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, !prof !7

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread50: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.aa, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ac, ptr %i.b, align 8
  br label %bb.c

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit: ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ae = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.ae, align 4 ; 2 uses
  %.pre = load ptr, ptr %i.t, align 8
  %i.af = icmp eq ptr %.pre, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ah, ptr %i.b, align 8
  br i1 %i.af, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit33, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread50, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit
  %i.ai = phi ptr [ %i.ac, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread50 ], [ %i.ah, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ]
  %.sroa.01.0.i.i52 = phi i32 [ %.sroa.02.0.copyload.i.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread50 ], [ %.sroa.01.0.copyload.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %.sroa.0.0.copyload.i.i31 = load ptr, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i31, i64 16
  %.sroa.02.0.copyload.i.i.i32 = load i32, ptr %i.an, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit33

bb.e:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ap = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.sroa.01.0.copyload.i.i29 = load i32, ptr %i.ap, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit33

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit33: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, %bb.d, %bb.e
  %.sroa.01.0.i.i49 = phi i32 [ %.sroa.01.0.i.i52, %bb.e ], [ %.sroa.01.0.i.i52, %bb.d ], [ %.sroa.01.0.copyload.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread ]
  %.sroa.01.0.i.i30 = phi i32 [ %.sroa.01.0.copyload.i.i29, %bb.e ], [ %.sroa.02.0.copyload.i.i.i32, %bb.d ], [ -1, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  store ptr %i.aq, ptr %4, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 152
  store ptr %i.at, ptr %i.as, align 8
  %i.au = load ptr, ptr %i.e, align 8
  %i.av = load ptr, ptr %3, align 8               ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 8 uses
  %i.az = icmp ugt i64 %i.ay, 128
  br i1 %i.az, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit33
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  %i.ba = icmp ugt i64 %i.ay, 9223372036854775804
  br i1 %i.ba, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i, !prof !7

bb.g:                                             ; preds = %bb.f
  call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i: ; preds = %bb.f
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #32 ; 9 uses
  store ptr %i.bb, ptr %4, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  store ptr %i.bc, ptr %i.as, align 8
  %i.bd = load ptr, ptr %3, align 8               ; 6 uses
  %i.be = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not9.i.i.i.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ERKS7_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i
  %i.bf = ptrtoaddr ptr %i.bd to i64
  %i.bg = ptrtoaddr ptr %i.bb to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bd to i64
  %5 = add i64 %i.bh, -4
  %6 = sub i64 %5, %i.bi                          ; 2 uses
  %i.bj = lshr i64 %6, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 44
  %i.bl = sub i64 %i.bf, %i.bg
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bk, 9223372036854775800     ; 3 uses
  %i.bm = shl i64 %n.vec, 2                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bb, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bd, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bp ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.bd, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep53, align 4
  %wide.load54 = load <4 x i32>, ptr %i.bq, align 4
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load54, ptr %i.br, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !3235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ERKS7_.exit, label %.lr.ph.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.preheader56:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader56 ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader56 ] ; 2 uses
  %i.bt = load i32, ptr %.0810.i.i.i.i.i, align 4
  store i32 %i.bt, ptr %.011.i.i.i.i.i, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, %i.be
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ERKS7_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3236

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit33
  %i.bw = icmp samesign ugt i64 %i.ay, 4
  br i1 %i.bw, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 4 %i.av, i64 %i.ay, i1 false)
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ERKS7_.exit

bb.j:                                             ; preds = %bb.h
  %i.bx = icmp eq i64 %i.ay, 4
  br i1 %i.bx, label %bb.k, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ERKS7_.exit

bb.k:                                             ; preds = %bb.j
  %i.by = load i32, ptr %i.av, align 4
  store i32 %i.by, ptr %i.aq, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ERKS7_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ERKS7_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i, %bb.i, %bb.j, %bb.k
  %i.bz = phi ptr [ %i.bb, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i ], [ %i.aq, %bb.k ], [ %i.aq, %bb.j ], [ %i.aq, %bb.i ], [ %i.bb, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ay
  store ptr %i.cb, ptr %i.ar, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cf = load i32, ptr %i.ce, align 4
  call void @_ZN2v88internal8compiler10turboshaft28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerES3_S4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEEE14GeneratorStoreENS2_1VINS0_7ContextEEENSQ_INS0_17JSGeneratorObjectEEENSC_11SmallVectorINS2_7OpIndexELm32ESaISW_EEEii(ptr noundef nonnull align 8 dereferenceable(704) %i.ca, i32 %.sroa.01.0.i.i49, i32 %.sroa.01.0.i.i30, ptr noundef nonnull %4, i32 noundef %i.cd, i32 noundef %i.cf)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i32 0

bb.l:                                             ; preds = %.lr.ph, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit ] ; 2 uses
  %i.cg = sub nuw nsw i64 -2, %indvars.iv
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ci, ptr %i.a, align 8
  %i.cj = load ptr, ptr %i.n, align 8
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit40, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %i.o, align 8
  %i.cm = icmp eq ptr %i.ci, %i.cl
  br i1 %i.cm, label %bb.n, label %bb.o, !prof !7

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i38 = load ptr, ptr %i.q, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i38, i64 16
  %.sroa.02.0.copyload.i.i.i39 = load i32, ptr %i.cn, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit40

bb.o:                                             ; preds = %bb.m
  %i.co = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.sroa.01.0.copyload.i.i36 = load i32, ptr %i.co, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit40

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit40: ; preds = %bb.l, %bb.n, %bb.o
  %.sroa.01.0.i.i37 = phi i32 [ %.sroa.01.0.copyload.i.i36, %bb.o ], [ %.sroa.02.0.copyload.i.i.i39, %bb.n ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cp = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.cq = load ptr, ptr %i.f, align 8
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.p, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit, !prof !7

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit40
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %3)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit40, %bb.p
  %i.cs = phi ptr [ %.pre.i.i, %bb.p ], [ %i.cp, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit40 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store ptr %i.ct, ptr %i.e, align 8
  store i32 %.sroa.01.0.i.i37, ptr %i.cs, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !3237
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerES3_S4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEEE14GeneratorStoreENS2_1VINS0_7ContextEEENSQ_INS0_17JSGeneratorObjectEEENSC_11SmallVectorINS2_7OpIndexELm32ESaISW_EEEii(ptr noundef nonnull align 8 dereferenceable(704) %0, i32 %1, i32 %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit36, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_10FixedArrayEEENS2_1VIT_EENSK_INS0_6ObjectEEEiQ12is_subtype_vITL0__SN_E.exit, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_10FixedArrayEEENS2_1VIT_EENSK_INS0_6ObjectEEEiQ12is_subtype_vITL0__SN_E.exit: ; preds = %bb.a
  %i.d = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10ReduceLoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih(ptr noundef nonnull align 8 dereferenceable(666) %0, i32 %2, i32 -1, i8 17, i8 11, i8 4, i32 noundef 72, i8 noundef zeroext 0), !inline_history !2926
  %.pre54.pre = load ptr, ptr %i.a, align 8       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %3, align 8                ; 2 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_10FixedArrayEEENS2_1VIT_EENSK_INS0_6ObjectEEEiQ12is_subtype_vITL0__SN_E.exit
  %i.h = icmp eq ptr %.pre54.pre, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit36, label %.lr.ph.split, !prof !2421

._crit_edge.loopexit47:                           ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit37
  %.pre53 = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit47, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_10FixedArrayEEENS2_1VIT_EENSK_INS0_6ObjectEEEiQ12is_subtype_vITL0__SN_E.exit
  %i.i = phi ptr [ %.pre53, %._crit_edge.loopexit47 ], [ %.pre54.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_10FixedArrayEEENS2_1VIT_EENSK_INS0_6ObjectEEEiQ12is_subtype_vITL0__SN_E.exit ]
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit36, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, !prof !2421

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit: ; preds = %._crit_edge
  %i.k = sext i32 %4 to i64
  %i.l = shl nsw i64 %i.k, 32
  %i.m = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 4, i64 %i.l)
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.m)
  %.pr = load ptr, ptr %i.a, align 8
  %i.o = icmp eq ptr %.pr, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit36, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, !prof !2421

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE11ReduceStoreENS2_7OpIndexENS2_15OptionalOpIndexESP_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE(ptr noundef nonnull align 8 dereferenceable(666) %0, i32 %2, i32 -1, i32 %i.n, i8 17, i8 13, i8 noundef zeroext 0, i32 noundef 64, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0), !inline_history !3238 ; 0 uses
  %.pr39 = load ptr, ptr %i.a, align 8
  %i.q = icmp eq ptr %.pr39, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit36, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit34, !prof !2421

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit34: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit
  %i.r = sext i32 %5 to i64
  %i.s = shl nsw i64 %i.r, 32
  %i.t = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 4, i64 %i.s)
  %i.u = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.t)
  %.pr40.pr = load ptr, ptr %i.a, align 8
  %i.v = icmp eq ptr %.pr40.pr, null
  br i1 %i.v, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit36, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit35, !prof !2421

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit35: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit34
  %i.w = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE11ReduceStoreENS2_7OpIndexENS2_15OptionalOpIndexESP_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE(ptr noundef nonnull align 8 dereferenceable(666) %0, i32 %2, i32 -1, i32 %i.u, i8 17, i8 13, i8 noundef zeroext 0, i32 noundef 48, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0), !inline_history !3238 ; 0 uses
  %.pr42 = load ptr, ptr %i.a, align 8
  %i.x = icmp eq ptr %.pr42, null
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit36, label %bb.b, !prof !2421

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit35
  %i.y = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE11ReduceStoreENS2_7OpIndexENS2_15OptionalOpIndexESP_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE(ptr noundef nonnull align 8 dereferenceable(666) %0, i32 %2, i32 -1, i32 %1, i8 17, i8 11, i8 noundef zeroext 6, i32 noundef 32, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0), !inline_history !3238 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit36

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit36: ; preds = %bb.a, %.lr.ph, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, %._crit_edge, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit34, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit35, %bb.b
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit37
  %i.z = phi ptr [ %i.ah, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit37 ], [ %i.g, %.lr.ph ] ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS2_3AnyEEESt5tupleIJNSJ_INS0_6ObjectEEEEEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSJ_INS2_10FrameStateEEENSJ_INS0_7ContextEEERKT0_:bb.a
  store ptr %i.f, ptr %7, align 8, !alias.scope !3311
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 44
  store ptr %i.i, ptr %i.h, align 8, !alias.scope !3311
  store i32 %i.e, ptr %i.f, align 8, !alias.scope !3311
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 28
  store ptr %i.j, ptr %i.g, align 8, !alias.scope !3311
  %i.k = call i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef %2) #27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.p = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.o, i8 noundef zeroext 7, i64 %i.k)
  %i.q = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.o, i32 %i.p)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi i32 [ %i.q, %bb.b ], [ -1, %bb.a ]
  %i.r = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  %.pre.i.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, %bb.c
  %i.u = phi ptr [ %.pre.i.i, %bb.c ], [ %i.r, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.g, align 8
  store i32 %.sroa.02.0.i.i, ptr %i.u, align 4
  %i.w = load ptr, ptr %i.l, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit
  %i.y = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.z = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.y, i8 noundef zeroext 0, i64 noundef 1)
  %i.aa = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.y, i32 %i.z)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.aa, %bb.d ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit ]
  %i.ab = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ac = load ptr, ptr %i.h, align 8
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  %.pre.i.i18 = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.e
  %i.ae = phi ptr [ %.pre.i.i18, %bb.e ], [ %i.ab, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store ptr %i.af, ptr %i.g, align 8
  store i32 %.sroa.0.0.i.i.i, ptr %i.ae, align 4
  %i.ag = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.h, align 8
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21, !prof !7

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  %.pre.i.i20 = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19, %bb.f
  %i.aj = phi ptr [ %.pre.i.i20, %bb.f ], [ %i.ag, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.g, align 8
  store i32 %5, ptr %i.aj, align 4
  %i.al = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %i.d, i32 noundef 0, i1 noundef zeroext false)
  %i.am = load ptr, ptr %i.l, align 8
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSN_INSJ_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21
  %i.ao = load ptr, ptr %i.g, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = load ptr, ptr %7, align 8               ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ap, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %i.au = getelementptr inbounds i8, ptr %0, i64 -744
  %i.av = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES4_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SK_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENST_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES14_DpT1_(ptr noundef nonnull align 8 dereferenceable(144) %i.au, i32 %i.al, i32 %4, ptr %i.aq, i64 %i.at, ptr noundef %3, i32 487263)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSN_INSJ_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSN_INSJ_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21, %bb.g
  %.sroa.010.0.i.i = phi i32 [ %i.av, %bb.g ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret i32 %.sroa.010.0.i.i
}

declare noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef) local_unnamed_addr #2

declare i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @_ZN2v88internal11CodeFactory6CEntryEPNS0_7IsolateEiNS0_8ArgvModeEbb(ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext false) #27 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -776
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 63768
  %i.g = load ptr, ptr %i.f, align 8
  %.not5.i.i = icmp eq ptr %i.g, null
  br i1 %.not5.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.e, ptr %i.a) #27
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.sink.split, !prof !7

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = sext i32 %2 to i64
  %i.m = select i1 %4, i64 0, i64 %i.l
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @_ZN2v88internal11CodeFactory6CEntryEPNS0_7IsolateEiNS0_8ArgvModeEbb(ptr noundef %1, i32 noundef %2, i32 noundef 0, i1 noundef zeroext %4, i1 noundef zeroext false) #27 ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  store i64 %i.r, ptr %i.n, align 8
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %bb.g, label %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit, !prof !3312

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.63) #28
  unreachable

_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit: ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.q, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %0, i64 -776
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.x, null
  br i1 %.not.i.i17, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 63768
  %i.z = load ptr, ptr %i.y, align 8
  %.not5.i.i18 = icmp eq ptr %i.z, null
  br i1 %.not5.i.i18, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.x, ptr nonnull %i.t) #27
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19: ; preds = %bb.i, %bb.h, %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.sink.split, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.sink.split: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i
  %.sink = phi ptr [ %i.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i ], [ %i.t, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19 ]
  %i.ad = ptrtoint ptr %.sink to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.af = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENSI_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i8 noundef zeroext 8, i64 %i.ad)
  %i.ag = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i32 %i.af)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.sink.split, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i
  %.sroa.016.0 = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19 ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.sink.split ]
  ret i32 %.sroa.016.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3314

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(44) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef 0)
  ret void
}

declare ptr @_ZN2v88internal11CodeFactory6CEntryEPNS0_7IsolateEiNS0_8ArgvModeEbb(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler7Linkage24GetRuntimeCallDescriptorEPNS0_4ZoneENS0_7Runtime10FunctionIdEiNS_4base5FlagsINS1_8Operator8PropertyEhhEENS8_INS1_14CallDescriptor4FlagEiiEENS1_16LazyDeoptOnThrowE(ptr noundef, i32 noundef, i32 noundef, i8, i32, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor20IterCatchHandlerPhisIZNS3_13ThrowingScopeD1EvEUlNS0_11interpreter8RegisterENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEEE_EEvPKNS0_6maglev10BasicBlockEOT_(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry.1306", align 8 ; 6 uses
  %4 = alloca %"struct.std::pair.1265", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %.sroa.2.0..0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD1EvENKUlNS0_11interpreter8RegisterENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEEE_clES6_SA_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD1EvENKUlNS0_11interpreter8RegisterENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEEE_clES6_SA_.exit
  %.sroa.023.032 = phi ptr [ %i.c, %.lr.ph ], [ %i.dn, %_ZZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD1EvENKUlNS0_11interpreter8RegisterENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEEE_clES6_SA_.exit ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.023.032, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.s, align 4 ; 7 uses
  %i.t = icmp eq i32 %.sroa.0.0.copyload.i, -8
  br i1 %i.t, label %_ZZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD1EvENKUlNS0_11interpreter8RegisterENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEEE_clES6_SA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.h, align 8
  %.not.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.k, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 4 uses
  %i.v = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.v, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %.sroa.0.0.copyload.i, %i.x
  br i1 %i.y, label %_ZNSt13unordered_mapIiN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEENS0_4base4hashIiEESt8equal_toIiENS1_13ZoneAllocatorISt4pairIKiS7_EEEE4findERSF_.exit, label %.preheader, !llvm.loop !2753

bb.e:                                             ; preds = %bb.c
  %i.z = xor i32 %.sroa.0.0.copyload.i, -1
  %i.aa = shl i32 %.sroa.0.0.copyload.i, 15
  %i.ab = add i32 %i.aa, %i.z                     ; 2 uses
  %i.ac = lshr i32 %i.ab, 12
  %i.ad = xor i32 %i.ac, %i.ab
  %i.ae = mul i32 %i.ad, 5                        ; 2 uses
  %i.af = lshr i32 %i.ae, 4
  %i.ag = xor i32 %i.af, %i.ae
  %i.ah = mul i32 %i.ag, 2057                     ; 2 uses
  %i.ai = lshr i32 %i.ah, 16
  %i.aj = xor i32 %i.ai, %i.ah
  %i.ak = zext i32 %i.aj to i64                   ; 3 uses
  %i.al = load i64, ptr %i.i, align 8             ; 2 uses
  %i.am = urem i64 %i.ak, %i.al                   ; 2 uses
  %i.an = load ptr, ptr %i.j, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = icmp eq i64 %i.at, %i.ak
  %i.av = load i32, ptr %i.ar, align 8
  %i.aw = icmp eq i32 %.sroa.0.0.copyload.i, %i.av
  %i.ax = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %i.ax, label %_ZNSt13unordered_mapIiN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEENS0_4base4hashIiEESt8equal_toIiENS1_13ZoneAllocatorISt4pairIKiS7_EEEE4findERSF_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.az = icmp eq i64 %i.bf, %i.ak
  %i.ba = load i32, ptr %i.ay, align 8
  %i.bb = icmp eq i32 %.sroa.0.0.copyload.i, %i.ba
  %i.bc = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %i.bc, label %_ZNSt13unordered_mapIiN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEENS0_4base4hashIiEESt8equal_toIiENS1_13ZoneAllocatorISt4pairIKiS7_EEEE4findERSF_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2754

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.bd, %bb.g ], [ %i.aq, %bb.f ]
  %i.bd = load ptr, ptr %.020.i.i.i.i, align 8    ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = urem i64 %i.bf, %i.al
  %.not19.i.i.i.i = icmp eq i64 %i.bg, %i.am
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2754

end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev25ThrowSuperNotCalledIfHoleERKNS4_15ProcessingStateE:bb.a
  %i.bq = load ptr, ptr %i.e, align 8
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31CallRuntime_ThrowSuperNotCalledEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowE.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31CallRuntime_ThrowSuperNotCalledEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowE.exit, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31CallRuntime_ThrowSuperNotCalledEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor22ShouldLazyDeoptOnThrowEPNS0_6maglev8NodeBaseE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.critedge33

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31CallRuntime_ThrowSuperNotCalledEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor22ShouldLazyDeoptOnThrowEPNS0_6maglev8NodeBaseE.exit
  %i.bs = load ptr, ptr %i.m, align 8, !nonnull !6, !align !210
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = call noundef ptr @_ZN2v88internal8compiler7Linkage24GetRuntimeCallDescriptorEPNS0_4ZoneENS0_7Runtime10FunctionIdEiNS_4base5FlagsINS1_8Operator8PropertyEhhEENS8_INS1_14CallDescriptor4FlagEiiEENS1_16LazyDeoptOnThrowE(ptr noundef %i.bu, i32 noundef 45, i32 noundef 0, i8 0, i32 1, i8 noundef zeroext 0) #27
  %i.bw = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.bv, i8 noundef zeroext 1, i8 noundef zeroext %.1.i, ptr noundef %i.bu, ptr noundef null)
  %i.bx = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS2_3AnyEEESt5tupleIJEEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSJ_INS2_10FrameStateEEENSJ_INS0_7ContextEEERKT0_(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef %i.ba, i32 noundef 45, ptr noundef %i.bw, i32 %i.az, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  %.pr = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.by = icmp eq ptr %.pr, null
  br i1 %i.by, label %.critedge33, label %bb.m, !prof !2421

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31CallRuntime_ThrowSuperNotCalledEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowE.exit
  %i.bz = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_13UnreachableOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.k) ; 0 uses
  %.pr43 = load ptr, ptr %i.e, align 8
  %i.ca = icmp eq ptr %.pr43, null
  br i1 %i.ca, label %.critedge33, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 52
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = icmp ne i32 %i.cd, -1
  %i.cf = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.k, ptr noundef nonnull %i.cb, i1 noundef zeroext %i.ce), !inline_history !2428 ; 0 uses
  br label %.critedge33

.critedge33:                                      ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31CallRuntime_ThrowSuperNotCalledEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31CallRuntime_ThrowSuperNotCalledEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowE.exit.thread, %bb.n, %bb.m, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9RootEqualENS2_1VINS0_6ObjectEEENS0_9RootIndexEPNS0_7IsolateE.exit, %bb.b
  %i.cg = add nuw nsw i32 %.02444, 1              ; 2 uses
  %exitcond = icmp eq i32 %i.cg, 3
  br i1 %exitcond, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit, label %bb.b, !llvm.loop !3318

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit: ; preds = %bb.j, %.critedge33, %.critedge33.thread
  %.lcssa = phi i32 [ 0, %.critedge33.thread ], [ 0, %.critedge33 ], [ 3, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ch = load ptr, ptr %5, align 8, !nonnull !6, !align !210 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 968
  store ptr null, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8            ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit
  %i.cm = load i8, ptr %i.ck, align 8
  %i.cn = icmp eq i8 %i.cm, 0
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = icmp ne ptr %i.cp, null
  %i.cr = select i1 %i.cn, i1 %i.cq, i1 false
  br i1 %i.cr, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i: ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %5, ptr %3, align 8
  call void @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor20IterCatchHandlerPhisIZNS3_13ThrowingScopeD1EvEUlNS0_11interpreter8RegisterENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEEE_EEvPKNS0_6maglev10BasicBlockEOT_(ptr noundef nonnull align 8 dereferenceable(1816) %i.ch, ptr noundef nonnull %i.ck, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit, %bb.o, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i32 %.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS2_3AnyEEESt5tupleIJEEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSJ_INS2_10FrameStateEEENSJ_INS0_7ContextEEERKT0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 %4, i32 %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.v8::base::SmallVector.4824", align 8 ; 12 uses
  %i.a = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.c = load i8, ptr %i.b, align 1
  %i.d = sext i8 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !3319
  store ptr %i.e, ptr %7, align 8, !alias.scope !3319
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store ptr %i.e, ptr %i.f, align 8, !alias.scope !3319
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !3319
  %i.i = call i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef %2) #27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.n = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.m, i8 noundef zeroext 7, i64 %i.i)
  %i.o = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.m, i32 %i.n)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi i32 [ %i.o, %bb.b ], [ -1, %bb.a ]
  %i.p = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %bb.c ], [ %i.p, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store ptr %i.t, ptr %i.f, align 8
  store i32 %.sroa.02.0.i.i, ptr %i.s, align 4
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit
  %i.w = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.x = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.w, i8 noundef zeroext 0, i64 noundef 0)
  %i.y = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.w, i32 %i.x)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.y, %bb.d ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit ]
  %i.z = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.g, align 8
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit19, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
  %.pre.i.i18 = load ptr, ptr %i.f, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit19

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit19: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.e
  %i.ac = phi ptr [ %.pre.i.i18, %bb.e ], [ %i.z, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.ad, ptr %i.f, align 8
  store i32 %.sroa.0.0.i.i.i, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.af = load ptr, ptr %i.g, align 8
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit21, !prof !7

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit19
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
  %.pre.i.i20 = load ptr, ptr %i.f, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit21

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit21: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit19, %bb.f
  %i.ah = phi ptr [ %.pre.i.i20, %bb.f ], [ %i.ae, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit19 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.ai, ptr %i.f, align 8
  store i32 %5, ptr %i.ah, align 4
  %i.aj = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %i.d, i32 noundef 0, i1 noundef zeroext false)
  %i.ak = load ptr, ptr %i.j, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSN_INSJ_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit21
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = load ptr, ptr %7, align 8               ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = getelementptr inbounds i8, ptr %0, i64 -744
  %i.at = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES4_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SK_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENST_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES14_DpT1_(ptr noundef nonnull align 8 dereferenceable(144) %i.as, i32 %i.aj, i32 %4, ptr %i.ao, i64 %i.ar, ptr noundef %3, i32 487263)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSN_INSJ_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSN_INSJ_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit21, %bb.g
  %.sroa.010.0.i.i = phi i32 [ %i.at, %bb.g ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit21 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret i32 %.sroa.010.0.i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3330

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3331

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev32ThrowSuperAlreadyCalledIfNotHoleERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.4823, align 8           ; 4 uses
  %4 = alloca %"class.std::tuple.3873", align 1   ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::GraphBuildingNodeProcessor::ThrowingScope", align 8 ; 6 uses
  %6 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::BlockOriginTrackingReducer, v8::internal::compiler::turboshaft::TurbolevEarlyLoweringReducer, v8::internal::compiler::turboshaft::MachineOptimizationReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::RequiredOptimizationReducer, v8::internal::compiler::turboshaft::ValueNumberingReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeC2EPS3_PNS0_6maglev8NodeBaseE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge33
  %.02444 = phi i32 [ 0, %bb.a ], [ %i.cg, %.critedge33 ] ; 2 uses
  switch i32 %.02444, label %.critedge33 [
    i32 2, label %.critedge33.thread
    i32 0, label %bb.c
  ]

.critedge33.thread:                               ; preds = %bb.b
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSH_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull %6)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.f, align 8
  %i.s = icmp eq ptr %i.o, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.t, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit

bb.f:                                             ; preds = %bb.d
  %i.u = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.u, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.sroa.01.0.i.i = phi i32 [ %.sroa.01.0.copyload.i.i, %bb.f ], [ %.sroa.02.0.copyload.i.i.i, %bb.e ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = load ptr, ptr %i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 656 ; 2 uses
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 63768
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not5.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not5.i.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.z, ptr nonnull %i.w) #27
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.h, %bb.g, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit
  %i.ac = load ptr, ptr %i.e, align 8
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9RootEqualENS2_1VINS0_6ObjectEEENS0_9RootIndexEPNS0_7IsolateE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_10HeapObjectEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__SJ_E.exit.i, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_10HeapObjectEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__SJ_E.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENSI_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.k, i8 noundef zeroext 8, i64 %i.ae)
  %i.ag = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.k, i32 %i.af)
  %.pr.i = load ptr, ptr %i.e, align 8
  %i.ah = icmp eq ptr %.pr.i, null
  br i1 %i.ah, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9RootEqualENS2_1VINS0_6ObjectEEENS0_9RootIndexEPNS0_7IsolateE.exit, label %bb.i, !prof !2421

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_10HeapObjectEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__SJ_E.exit.i
  %i.ai = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEESR_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(666) %i.k, i32 %.sroa.01.0.i.i, i32 %i.ag, i8 4), !inline_history !3120
  %i.aj = zext i32 %i.ai to i64
  %i.ak = or disjoint i64 %i.aj, 4294967296
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9RootEqualENS2_1VINS0_6ObjectEEENS0_9RootIndexEPNS0_7IsolateE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9RootEqualENS2_1VINS0_6ObjectEEENS0_9RootIndexEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_10HeapObjectEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__SJ_E.exit.i, %bb.i
  %.sroa.07.0.i.i.i.i.i = phi i64 [ %i.ak, %bb.i ], [ 8589934591, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_10HeapObjectEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__SJ_E.exit.i ], [ 8589934591, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i ]
  %i.al = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_BindIfNotENS2_17ConditionWithHintEPNSH_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 %.sroa.07.0.i.i.i.i.i, ptr noundef nonnull %6)
  br i1 %i.al, label %bb.j, label %.critedge33

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9RootEqualENS2_1VINS0_6ObjectEEENS0_9RootIndexEPNS0_7IsolateE.exit
  %i.am = load i64, ptr %i.b, align 8             ; 2 uses
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc i64 %i.an to i16                  ; 2 uses
  %i.ap = and i16 %i.ao, 2
  %.not.i.i.i36 = icmp eq i16 %i.ap, 0
  %.neg.i.i = select i1 %.not.i.i.i36, i64 0, i64 -48
  %i.aq = and i16 %i.ao, 6
  %i.ar = icmp eq i16 %i.aq, 4
  %.neg2.i.i = select i1 %i.ar, i64 -56, i64 0
  %.neg3.i.i = add nsw i64 %.neg.i.i, %.neg2.i.i
  %i.as = trunc i64 %i.am to i32
  %i.at = lshr i32 %i.as, 16
  %narrow.i.i.i = sub nsw i32 1, %i.at
end_hunk_9
begin_hunk_10_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev26ThrowIfNotSuperConstructorERKNS4_15ProcessingStateE:bb.a

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36CallRuntime_ThrowNotSuperConstructorEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowENSK_INS0_6ObjectEEESR_.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit61.thread, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.critedge51

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36CallRuntime_ThrowNotSuperConstructorEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowENSK_INS0_6ObjectEEESR_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit61.thread89, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit61
  %i.bq = load ptr, ptr %i.z, align 8, !nonnull !6, !align !210
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 160
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = call noundef ptr @_ZN2v88internal8compiler7Linkage24GetRuntimeCallDescriptorEPNS0_4ZoneENS0_7Runtime10FunctionIdEiNS_4base5FlagsINS1_8Operator8PropertyEhhEENS8_INS1_14CallDescriptor4FlagEiiEENS1_16LazyDeoptOnThrowE(ptr noundef %i.bs, i32 noundef 42, i32 noundef 2, i8 0, i32 1, i8 noundef zeroext 0) #27
  %i.bu = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.bt, i8 noundef zeroext 1, i8 noundef zeroext %.1.i, ptr noundef %i.bs, ptr noundef null)
  %i.bv = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS2_3AnyEEESt5tupleIJNSJ_INS0_6ObjectEEESO_EEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSJ_INS2_10FrameStateEEENSJ_INS0_7ContextEEERKT0_(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef %i.as, i32 noundef 42, ptr noundef %i.bu, i32 %i.ar, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(8) %4) ; 0 uses
  %.pr = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bw = icmp eq ptr %.pr, null
  br i1 %i.bw, label %.critedge51, label %bb.k, !prof !2421

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36CallRuntime_ThrowNotSuperConstructorEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowENSK_INS0_6ObjectEEESR_.exit
  %i.bx = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_13UnreachableOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.aa) ; 0 uses
  %.pre83 = load ptr, ptr %i.e, align 8
  %i.by = icmp eq ptr %.pre83, null
  br i1 %i.by, label %.critedge51, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 52
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp ne i32 %i.cb, -1
  %i.cd = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.aa, ptr noundef nonnull %i.bz, i1 noundef zeroext %i.cc), !inline_history !2428 ; 0 uses
  br label %.critedge51

.critedge51:                                      ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36CallRuntime_ThrowNotSuperConstructorEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowENSK_INS0_6ObjectEEESR_.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36CallRuntime_ThrowNotSuperConstructorEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowENSK_INS0_6ObjectEEESR_.exit.thread, %bb.l, %bb.k, %bb.f, %bb.e
  %i.ce = add nuw nsw i32 %.04282, 1              ; 2 uses
  %exitcond = icmp eq i32 %i.ce, 3
  br i1 %exitcond, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit, label %bb.e, !llvm.loop !3333

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit: ; preds = %bb.g, %.critedge51, %.critedge51.thread
  %.lcssa = phi i32 [ 0, %.critedge51.thread ], [ 0, %.critedge51 ], [ 3, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.cf = load ptr, ptr %6, align 8, !nonnull !6, !align !210 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 968
  store ptr null, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit
  %i.ck = load i8, ptr %i.ci, align 8
  %i.cl = icmp eq i8 %i.ck, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = icmp ne ptr %i.cn, null
  %i.cp = select i1 %i.cl, i1 %i.co, i1 false
  br i1 %i.cp, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i: ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %6, ptr %3, align 8
  call void @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor20IterCatchHandlerPhisIZNS3_13ThrowingScopeD1EvEUlNS0_11interpreter8RegisterENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEEE_EEvPKNS0_6maglev10BasicBlockEOT_(ptr noundef nonnull align 8 dereferenceable(1816) %i.cf, ptr noundef nonnull %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit, %bb.m, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret i32 %.lcssa
}

declare void @_ZN2v88internal8compiler13AccessBuilder14ForMapBitFieldEv(ptr dead_on_unwind writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS2_3AnyEEESt5tupleIJNSJ_INS0_6ObjectEEESO_EEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSJ_INS2_10FrameStateEEENSJ_INS0_7ContextEEERKT0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 %4, i32 %5, ptr noundef nonnull align 4 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.v8::base::SmallVector.4830", align 8 ; 13 uses
  %i.a = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.c = load i8, ptr %i.b, align 1
  %i.d = sext i8 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3346)
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.e, ptr %7, align 8, !alias.scope !3349
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !3349
  %i.i = load <2 x i32>, ptr %6, align 4, !noalias !3349
  %i.j = shufflevector <2 x i32> %i.i, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.j, ptr %i.e, align 8, !alias.scope !3349
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.k, ptr %i.f, align 8, !alias.scope !3349
  %i.l = call i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef %2) #27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.q = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.p, i8 noundef zeroext 7, i64 %i.l)
  %i.r = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.p, i32 %i.q)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi i32 [ %i.r, %bb.b ], [ -1, %bb.a ]
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.g, align 8
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, %bb.c
  %i.v = phi ptr [ %.pre.i.i, %bb.c ], [ %i.s, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.w, ptr %i.f, align 8
  store i32 %.sroa.02.0.i.i, ptr %i.v, align 4
  %i.x = load ptr, ptr %i.m, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit
  %i.z = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.aa = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.z, i8 noundef zeroext 0, i64 noundef 2)
  %i.ab = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.z, i32 %i.aa)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.ab, %bb.d ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit ]
  %i.ac = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ad = load ptr, ptr %i.g, align 8
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit19, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  %.pre.i.i18 = load ptr, ptr %i.f, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit19

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit19: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.e
  %i.af = phi ptr [ %.pre.i.i18, %bb.e ], [ %i.ac, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store ptr %i.ag, ptr %i.f, align 8
  store i32 %.sroa.0.0.i.i.i, ptr %i.af, align 4
  %i.ah = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ai = load ptr, ptr %i.g, align 8
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit21, !prof !7

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit19
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  %.pre.i.i20 = load ptr, ptr %i.f, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit21

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit21: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit19, %bb.f
  %i.ak = phi ptr [ %.pre.i.i20, %bb.f ], [ %i.ah, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit19 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store ptr %i.al, ptr %i.f, align 8
  store i32 %5, ptr %i.ak, align 4
  %i.am = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %i.d, i32 noundef 0, i1 noundef zeroext false)
  %i.an = load ptr, ptr %i.m, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSN_INSJ_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit21
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = load ptr, ptr %7, align 8               ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.aq, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = getelementptr inbounds i8, ptr %0, i64 -744
  %i.aw = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES4_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SK_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENST_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES14_DpT1_(ptr noundef nonnull align 8 dereferenceable(144) %i.av, i32 %i.am, i32 %4, ptr %i.ar, i64 %i.au, ptr noundef %3, i32 487263)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSN_INSJ_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSN_INSJ_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit21, %bb.g
  %.sroa.010.0.i.i = phi i32 [ %i.aw, %bb.g ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit21 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret i32 %.sroa.010.0.i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3351

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev32TransitionElementsKindOrCheckMapERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.v8::internal::maglev::VirtualObjectList", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::ElementsTransitionWithMultipleSources", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc i64 %i.e to i16                    ; 2 uses
  %i.g = and i16 %i.f, 2
  %.not.i.i.i = icmp eq i16 %i.g, 0
  %.neg.i.i = select i1 %.not.i.i.i, i64 0, i64 -48
  %i.h = and i16 %i.f, 6
  %i.i = icmp eq i16 %i.h, 4
  %.neg2.i.i = select i1 %i.i, i64 -56, i64 0
  %.neg3.i.i = add nsw i64 %.neg.i.i, %.neg2.i.i
  %i.j = trunc i64 %i.d to i32
  %i.k = lshr i32 %i.j, 16
  %i.l = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %narrow.i.i.i = sub nsw i32 1, %i.k
  %i.m = sext i32 %narrow.i.i.i to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %.neg3.i.i, %i.o
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.s, ptr %i.t, align 8
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.v = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load i8, ptr %i.w, align 8               ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %3, align 8
  %i.ab = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev21InterpretedDeoptFrameERKNS4_17VirtualObjectListENS0_11interpreter8RegisterEi(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 2147483647, i32 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

tailrecurse.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, %tailrecurse.i.i
  %.tr1.i.i = phi ptr [ %i.ad, %tailrecurse.i.i ], [ %i.v, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1.i.i, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i: ; preds = %tailrecurse.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %3, align 8
  %i.aj = icmp eq i8 %i.x, 3
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  %i.ak = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev29BuiltinContinuationDeoptFrameERKNS4_17VirtualObjectListE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

bb.d:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.53) #28
  unreachable

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit: ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, %bb.c
  %.sroa.06.0.i = phi i32 [ %i.ab, %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i ], [ %i.ak, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not = icmp eq i32 %.sroa.06.0.i, -1
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !6, !align !210
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 160
  %i.as = load ptr, ptr %i.ar, align 8
  call void @_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEEC2IPKS3_St26random_access_iterator_tagEET_S9_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.am, ptr noundef %i.ao, ptr noundef %i.as)
  %i.at = load ptr, ptr %i.l, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.at, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread, label %bb.f, !prof !2814

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit31

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.at, %i.ay
  br i1 %i.az, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread47, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, !prof !7
end_hunk_10
begin_hunk_11_@_ZN2v88internal8compiler10turboshaft28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerES3_S4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEEE20CheckConstructResultENS2_1VINS0_6ObjectEEESS_:bb.a
_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE21Uint32LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9RootEqualENS2_1VINS0_6ObjectEEENS0_9RootIndexEPNS0_7IsolateE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %bb.f
  %.sroa.07.0.i.i = phi i32 [ %i.bd, %bb.f ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9RootEqualENS2_1VINS0_6ObjectEEENS0_9RootIndexEPNS0_7IsolateE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 %1, ptr %3, align 4, !alias.scope !3401
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %8, ptr noundef nonnull align 8 dereferenceable(936) %i.ah, i32 %.sroa.07.0.i.i, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.be = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSM_17const_or_values_tE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE21Uint32LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_.exit
  store i8 1, ptr %i.ac, align 8
  %i.bg = load ptr, ptr %8, align 8               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp ne i32 %i.bi, -1
  %i.bk = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull %i.bg, i1 noundef zeroext %i.bj), !inline_history !2428 ; 0 uses
  %i.bl = load ptr, ptr %8, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  %i.bn = load i32, ptr %i.bm, align 4
  %.not.i.i.i21 = icmp eq i32 %i.bn, -1
  br i1 %.not.i.i.i21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i
  %i.bo = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.bp = load ptr, ptr %i.aa, align 8
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i, !prof !7

bb.i:                                             ; preds = %bb.h
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.z, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.br = phi ptr [ %.pre.i.i.i.i.i.i, %bb.i ], [ %i.bo, %bb.h ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.bs, ptr %i.z, align 8
  store i32 %2, ptr %i.br, align 4
  %i.bt = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.bu = load ptr, ptr %i.w, align 8
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.j, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i, !prof !7

bb.j:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %.pre.i.i4.i.i.i.i = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i: ; preds = %bb.j, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i
  %i.bw = phi ptr [ %.pre.i.i4.i.i.i.i, %bb.j ], [ %i.bt, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bx, ptr %i.v, align 8
  store ptr %i.be, ptr %i.bw, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSM_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSM_17const_or_values_tE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE21Uint32LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_.exit, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.4920") align 4 %9, ptr noundef nonnull align 8 dereferenceable(105) %8, ptr noundef nonnull align 8 dereferenceable(936) %i.ah, ptr null)
  %.sroa.011.0.copyload = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret i32 %.sroa.011.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(936) %1, i32 %2, i8 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.j)
  %.pre.i.i = load i64, ptr %i.k, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit: ; preds = %bb.c, %bb.d
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.r = add i64 %i.p, 1
  store i64 %i.r, ptr %i.k, align 8
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p
  %i.u = load ptr, ptr %i.t, align 8              ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.u, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  store i32 -1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store i32 0, ptr %i.aa, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.z, align 8
  %i.ab = tail call noundef i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13BranchAndBindENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESN_NS0_10BranchHintESN_(ptr noundef nonnull align 8 dereferenceable(136) %i.f, i32 %2, ptr noundef %i.g, ptr noundef nonnull %i.u, i8 noundef zeroext %3, ptr noundef nonnull %i.u)
  %i.ac = and i32 %i.ab, 1
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge, %bb.b
  %i.ad = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge ], [ %i.g, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.af = load i32, ptr %i.ae, align 4
  %.not.i = icmp eq i32 %i.af, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  %.sroa.0.0.copyload.i.i = load i32, ptr %4, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.al)
  %.pre.i.i.i.i = load ptr, ptr %i.ag, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.an, ptr %i.ag, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit, !prof !7

bb.h:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.at)
  %.pre.i.i4.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i, %bb.h
  %i.au = phi ptr [ %.pre.i.i4.i.i, %bb.h ], [ %i.ap, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.ao, align 8
  store ptr %i.e, ptr %i.au, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3415

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.4920") align 4 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(936) %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(936) %2, ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !210 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.u, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = load ptr, ptr %i.n, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 2 uses
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.n, align 8
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = add nsw i64 %i.ar, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.as)
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.f, %bb.g
  %i.at = phi ptr [ %i.aj, %bb.f ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.l, align 8
  store ptr %i.a, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aw = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.h, label %.preheader.i, !prof !7

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.a, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.aw, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = sub nsw i32 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = sub nsw i32 %i.bf, %i.bi
  %i.bk = icmp eq i32 %i.bg, %i.bj
  br i1 %i.bk, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.i, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.bm, %bb.i ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN2v88internal8compiler10turboshaft28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerES3_S4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEEE19HasInPrototypeChainENS2_1VINS0_6ObjectEEENS1_13HeapObjectRefENSQ_INS2_10FrameStateEEENSQ_INS0_13NativeContextEEENS1_16LazyDeoptOnThrowE:bb.a
  %i.ane = load i32, ptr %i.and, align 4
  %i.anf = icmp ne i32 %i.ane, -1
  %i.ang = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull %i.anc, i1 noundef zeroext %i.anf), !inline_history !2428 ; 0 uses
  %i.anh = load ptr, ptr %17, align 8
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 52
  %i.anj = load i32, ptr %i.ani, align 4
  %.not.i.i.i120 = icmp eq i32 %i.anj, -1
  br i1 %.not.i.i.i120, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i119
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.dq:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i119
  %i.ank = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.anl = load ptr, ptr %i.ac, align 8
  %i.anm = icmp eq ptr %i.ank, %i.anl
  br i1 %i.anm, label %bb.dr, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i, !prof !7

bb.dr:                                            ; preds = %bb.dq
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %.pre.i.i.i.i.i.i121 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i: ; preds = %bb.dr, %bb.dq
  %i.ann = phi ptr [ %.pre.i.i.i.i.i.i121, %bb.dr ], [ %i.ank, %bb.dq ] ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 4
  store ptr %i.ano, ptr %i.ab, align 8
  store i32 %i.ana, ptr %i.ann, align 4
  %i.anp = load ptr, ptr %i.x, align 8            ; 2 uses
  %i.anq = load ptr, ptr %i.y, align 8
  %i.anr = icmp eq ptr %i.anp, %i.anq
  br i1 %i.anr, label %bb.ds, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_7BooleanEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i, !prof !7

bb.ds:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.v)
  %.pre.i.i4.i.i.i.i = load ptr, ptr %i.x, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_7BooleanEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_7BooleanEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i: ; preds = %bb.ds, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i
  %i.ans = phi ptr [ %.pre.i.i4.i.i.i.i, %bb.ds ], [ %i.anp, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i ] ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  store ptr %i.ant, ptr %i.x, align 8
  store ptr %.pr547, ptr %i.ans, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_7BooleanEEEEEEvRT_RKNSM_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_7BooleanEEEEEEvRT_RKNSM_17const_or_values_tE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31CallRuntime_HasInPrototypeChainEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowENSK_INS0_6ObjectEEENSK_INS0_10HeapObjectEEE.exit.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31CallRuntime_HasInPrototypeChainEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENS1_16LazyDeoptOnThrowENSK_INS0_6ObjectEEENSK_INS0_10HeapObjectEEE.exit, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_7BooleanEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  %i.anu = load ptr, ptr %i.ar, align 8
  %i.anv = icmp eq ptr %i.anu, null
  br i1 %i.anv, label %.critedge, label %bb.dt

bb.dt:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_7BooleanEEEEEEvRT_RKNSM_17const_or_values_tE.exit
  %i.anw = load ptr, ptr %i.fq, align 8           ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 52
  %i.any = load i32, ptr %i.anx, align 4
  %i.anz = icmp ne i32 %i.any, -1
  %i.aoa = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull %i.anw, i1 noundef zeroext %i.anz), !inline_history !2428 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.dt, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_7BooleanEEEEEEvRT_RKNSM_17const_or_values_tE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE21Uint32LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_.exit, %bb.v
  %.2 = phi i64 [ %.1562, %bb.v ], [ %.3542, %bb.dt ], [ %.3542, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE21Uint32LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_.exit ], [ %.3542, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_7BooleanEEEEEEvRT_RKNSM_17const_or_values_tE.exit ]
  %i.aob = add nuw nsw i32 %.0563, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aob, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.v, !llvm.loop !3603
}

declare void @_ZN2v88internal8compiler13AccessBuilder15ForMapPrototypeEv(ptr dead_on_unwind writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_7BooleanEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(936) %1, i32 %2, i8 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.j)
  %.pre.i.i = load i64, ptr %i.k, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit: ; preds = %bb.c, %bb.d
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.r = add i64 %i.p, 1
  store i64 %i.r, ptr %i.k, align 8
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p
  %i.u = load ptr, ptr %i.t, align 8              ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.u, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  store i32 -1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store i32 0, ptr %i.aa, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.z, align 8
  %i.ab = tail call noundef i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13BranchAndBindENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESN_NS0_10BranchHintESN_(ptr noundef nonnull align 8 dereferenceable(136) %i.f, i32 %2, ptr noundef %i.g, ptr noundef nonnull %i.u, i8 noundef zeroext %3, ptr noundef nonnull %i.u)
  %i.ac = and i32 %i.ab, 1
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge, %bb.b
  %i.ad = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge ], [ %i.g, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.af = load i32, ptr %i.ae, align 4
  %.not.i = icmp eq i32 %i.af, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  %.sroa.0.0.copyload.i.i = load i32, ptr %4, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE9push_backES7_.exit.i.i, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.al)
  %.pre.i.i.i.i = load ptr, ptr %i.ag, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE9push_backES7_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE9push_backES7_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.an, ptr %i.ag, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_7BooleanEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit, !prof !7

bb.h:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE9push_backES7_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.at)
  %.pre.i.i4.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_7BooleanEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_7BooleanEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE9push_backES7_.exit.i.i, %bb.h
  %i.au = phi ptr [ %.pre.i.i4.i.i, %bb.h ], [ %i.ap, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE9push_backES7_.exit.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.ao, align 8
  store ptr %i.e, ptr %i.au, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_7BooleanEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_7BooleanEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3604

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_7BooleanEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_7BooleanEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3605

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_7BooleanEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_7BooleanEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_7BooleanEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_7BooleanEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_7BooleanEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LoopLabelIJNS0_3MapEEE4GotoINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_RKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(936) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.g = load i32, ptr %i.f, align 4
  %.not = icmp eq i32 %i.g, -1
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit, label %bb.g

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.h, ptr noundef nonnull %i.e, i1 noundef zeroext false), !inline_history !2428 ; 0 uses
  %.pre = load ptr, ptr %i.d, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 52
  %.pre8 = load i32, ptr %.phi.trans.insert, align 4
  %.not.i = icmp eq i32 %.pre8, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit
  %.sroa.0.0.copyload.i.i = load i32, ptr %2, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE9push_backES7_.exit.i.i, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %.pre.i.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE9push_backES7_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE9push_backES7_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.j, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.f, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJNS0_3MapEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit, !prof !7

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE9push_backES7_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.w)
  %.pre.i.i4.i.i = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJNS0_3MapEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit

_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJNS0_3MapEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE9push_backES7_.exit.i.i, %bb.f
  %i.x = phi ptr [ %.pre.i.i4.i.i, %bb.f ], [ %i.s, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE9push_backES7_.exit.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.r, align 8
  store ptr %i.b, ptr %i.x, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJNS0_3MapEEE4GotoINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_RKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(936) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJNS0_3MapEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJNS0_3MapEEE4GotoINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_RKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(936) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ne i32 %i.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.k, ptr noundef nonnull %i.g, i1 noundef zeroext %i.j), !inline_history !2428 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit: ; preds = %bb.b, %bb.c
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.o = load i32, ptr %i.n, align 4
  %.not.i = icmp eq i32 %i.o, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit
  %.sroa.0.0.copyload.i.i = load i32, ptr %2, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE9push_backES7_.exit.i.i, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.p, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE9push_backES7_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE9push_backES7_.exit.i.i: ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.w, ptr %i.p, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJNS0_3MapEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit, !prof !7

bb.g:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE9push_backES7_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ac)
  %.pre.i.i4.i.i = load ptr, ptr %i.x, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJNS0_3MapEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit

_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJNS0_3MapEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE9push_backES7_.exit.i.i, %bb.g
  %i.ad = phi ptr [ %.pre.i.i4.i.i, %bb.g ], [ %i.y, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE9push_backES7_.exit.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ae, ptr %i.x, align 8
  store ptr %i.e, ptr %i.ad, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJNS0_3MapEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_3MapEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3606

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_3MapEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_3MapEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3607

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_3MapEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3MapEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_3MapEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_3MapEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_3MapEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LoopLabelIJNS0_3MapEEE8BindLoopINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.5013") align 4 %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(936) %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i8, ptr %i.c, align 8
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(936) %2, ptr noundef nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull %i.b, i1 noundef zeroext false) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !align !210 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.v, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load ptr, ptr %i.m, align 8
  %i.ad = load ptr, ptr %i.o, align 8
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ult ptr %i.ak, %i.am
  br i1 %i.an, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = add nsw i64 %i.as, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.at)
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.f, %bb.g
  %i.au = phi ptr [ %i.ak, %bb.f ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.m, align 8
  store ptr %i.b, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.h, label %.preheader.i, !prof !7

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.b, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.ax, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = sub nsw i32 %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = sub nsw i32 %i.bg, %i.bj
  %i.bl = icmp eq i32 %i.bh, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.i, %._crit_edge.i
end_hunk_12
begin_hunk_13_@_ZN2v88internal8compiler10turboshaft28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerES3_S4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEEE25CheckedInternalizedStringENS2_1VINS0_6ObjectEEENSQ_INS2_10FrameStateEEEbRKNS1_14FeedbackSourceE:bb.a

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i58
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.x:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i58
  %i.dz = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ea = load ptr, ptr %i.aw, align 8
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %bb.y, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i60, !prof !7

bb.y:                                             ; preds = %bb.x
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  %.pre.i.i.i.i.i.i63 = load ptr, ptr %i.av, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i60

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i60: ; preds = %bb.y, %bb.x
  %i.ec = phi ptr [ %.pre.i.i.i.i.i.i63, %bb.y ], [ %i.dz, %bb.x ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store ptr %i.ed, ptr %i.av, align 8
  store i32 %1, ptr %i.ec, align 4
  %i.ee = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.ef = load ptr, ptr %i.as, align 8
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %bb.z, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_18InternalizedStringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i61, !prof !7

bb.z:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i60
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ap)
  %.pre.i.i4.i.i.i.i62 = load ptr, ptr %i.ar, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_18InternalizedStringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i61

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_18InternalizedStringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i61: ; preds = %bb.z, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i60
  %i.eh = phi ptr [ %.pre.i.i4.i.i.i.i62, %bb.z ], [ %i.ee, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i60 ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.ei, ptr %i.ar, align 8
  store ptr %i.dp, ptr %i.eh, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_18InternalizedStringEEEEEEvRT_RKNSM_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_18InternalizedStringEEEEEEvRT_RKNSM_17const_or_values_tE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_18InternalizedStringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_18InternalizedStringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i61
  %.pr = load ptr, ptr %i.bc, align 8
  %i.ej = icmp eq ptr %.pr, null
  br i1 %i.ej, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_18InternalizedStringEEEEEEvRT_RKNSM_17const_or_values_tE.exit
  %i.ek = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 52
  %i.em = load i32, ptr %i.el, align 4
  %i.en = icmp ne i32 %i.em, -1
  %i.eo = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull %i.ek, i1 noundef zeroext %i.en), !inline_history !2428 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit

default.unreachable:                              ; preds = %bb.h
  unreachable

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit: ; preds = %bb.v, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSI_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit, %bb.i, %bb.u, %bb.aa, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_18InternalizedStringEEEEEEvRT_RKNSM_17const_or_values_tE.exit
  %i.ep = add nuw nsw i32 %.0106, 1
  br label %bb.h
}

declare void @_ZN2v88internal8compiler13AccessBuilder19ForThinStringActualEv(ptr dead_on_unwind writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS0_18InternalizedStringEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 255
  %i.d = icmp eq i16 %i.c, 6
  %.sroa.014.0.insert.insert = select i1 %i.d, i16 2568, i16 %i.b ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.014.0.insert.insert to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.014.0.insert.insert, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw i16 %.sroa.2.0.extract.shift.i to i8 ; 4 uses
  switch i8 %.sroa.0.0.extract.trunc.i, label %bb.k [
    i8 2, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 7, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread
    i8 8, label %bb.e
    i8 6, label %bb.e
    i8 12, label %bb.f
    i8 13, label %bb.g
    i8 9, label %bb.h
    i8 16, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread44
    i8 17, label %bb.i
    i8 18, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i
    i8 14, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread36
    i8 19, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread56
    i8 20, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread62
    i8 0, label %bb.j
    i8 1, label %bb.j
    i8 10, label %bb.j
    i8 11, label %bb.j
    i8 15, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = add i8 %.sroa.2.0.extract.trunc.i, -2
  %switch.and7.i = and i8 %i.e, -3
  %switch.selectcmp8.i = icmp eq i8 %switch.and7.i, 0
  %spec.select = select i1 %switch.selectcmp8.i, i8 2, i8 3
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.f = add i8 %.sroa.2.0.extract.trunc.i, -2
  %switch.and9.i = and i8 %i.f, -3
  %switch.selectcmp10.i = icmp eq i8 %switch.and9.i, 0
  %spec.select68 = select i1 %switch.selectcmp10.i, i8 4, i8 5
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.d:                                             ; preds = %bb.a
  %i.g = add i8 %.sroa.2.0.extract.trunc.i, -2
  %switch.and11.i = and i8 %i.g, -3
  %switch.selectcmp12.i = icmp eq i8 %switch.and11.i, 0
  %spec.select69 = select i1 %switch.selectcmp12.i, i8 6, i8 7
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.e:                                             ; preds = %bb.a, %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.f:                                             ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.g:                                             ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.h:                                             ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.i:                                             ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread56: ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread62: ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.k:                                             ; preds = %bb.a
  unreachable

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread: ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread36: ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread44: ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit: ; preds = %bb.a
  %i.h = add i8 %.sroa.2.0.extract.trunc.i, -2
  %switch.and.i = and i8 %i.h, -3
  %switch.selectcmp.i = icmp ne i8 %switch.and.i, 0
  %i.i = zext i1 %switch.selectcmp.i to i8
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i: ; preds = %bb.i, %bb.d, %bb.b, %bb.c, %bb.h, %bb.g, %bb.f, %bb.e, %bb.a, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread62, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread56, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread44, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread36
  %.sroa.0.0.i25 = phi i8 [ 21, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread62 ], [ %spec.select, %bb.b ], [ 19, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread36 ], [ %i.i, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit ], [ 10, %bb.a ], [ 13, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread ], [ 20, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread56 ], [ 11, %bb.h ], [ 18, %bb.g ], [ 17, %bb.f ], [ 12, %bb.e ], [ %spec.select68, %bb.c ], [ %spec.select69, %bb.d ], [ 9, %bb.i ], [ 8, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread44 ]
  %.sroa.0.0.i.i.i = phi i8 [ 7, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread62 ], [ 0, %bb.b ], [ 1, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread36 ], [ 0, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit ], [ 3, %bb.a ], [ 4, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread ], [ 6, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread56 ], [ 4, %bb.h ], [ 4, %bb.g ], [ 4, %bb.f ], [ 4, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.i ], [ 2, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread44 ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, label %bb.l, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = load i8, ptr %2, align 8
  %i.p = icmp eq i8 %i.o, 1
  %spec.select.i = select i1 %i.p, i8 17, i8 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.r = load i8, ptr %i.q, align 2, !range !5, !noundef !6
  %i.s = shl nuw nsw i8 %i.r, 5
  %spec.select17 = or disjoint i8 %spec.select.i, %i.s
  %i.t = getelementptr inbounds i8, ptr %0, i64 -744
  %i.u = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10ReduceLoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih(ptr noundef nonnull align 8 dereferenceable(666) %i.t, i32 %1, i32 -1, i8 %spec.select17, i8 %.sroa.0.0.i25, i8 %.sroa.0.0.i.i.i, i32 noundef %i.n, i8 noundef zeroext 0), !inline_history !2926
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i, %bb.l
  %.sroa.011.0.i.i.i.i = phi i32 [ %i.u, %bb.l ], [ -1, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i ]
  ret i32 %.sroa.011.0.i.i.i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_18InternalizedStringEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3755

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_18InternalizedStringEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_18InternalizedStringEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3756

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_18InternalizedStringEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_18InternalizedStringEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_18InternalizedStringEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_18InternalizedStringEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_18InternalizedStringEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.5140") align 4 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(936) %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(936) %2, ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !210 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.u, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = load ptr, ptr %i.n, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 2 uses
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.n, align 8
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = add nsw i64 %i.ar, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.as)
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.f, %bb.g
  %i.at = phi ptr [ %i.aj, %bb.f ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.l, align 8
  store ptr %i.a, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aw = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.h, label %.preheader.i, !prof !7

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.a, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.aw, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = sub nsw i32 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = sub nsw i32 %i.bf, %i.bi
  %i.bk = icmp eq i32 %i.bg, %i.bj
  br i1 %i.bk, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.i, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.bm, %bb.i ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev8ToStringERKNS4_15ProcessingStateE:bb.a
  %i.gd = icmp ne i32 %i.gc, -1
  %i.ge = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.bu, ptr noundef nonnull %i.ga, i1 noundef zeroext %i.gd), !inline_history !2428 ; 0 uses
  br label %.critedge72

.critedge72:                                      ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE35CallRuntime_SymbolDescriptiveStringEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENSK_INS0_6SymbolEEENS1_16LazyDeoptOnThrowE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE35CallRuntime_SymbolDescriptiveStringEPNS0_7IsolateENS2_1VINS2_10FrameStateEEENSK_INS0_7ContextEEENSK_INS0_6SymbolEEENS1_16LazyDeoptOnThrowE.exit.thread, %bb.af, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6StringEEEEEEvRT_RKNSM_17const_or_values_tE.exit108, %bb.v, %bb.u
  %i.gf = add nuw nsw i32 %.068156, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gf, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.u, !llvm.loop !3865

.loopexit:                                        ; preds = %.critedge72, %.critedge72.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.s
  %i.gg = load ptr, ptr %i.ak, align 8
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %.critedge76, label %bb.ag

bb.ag:                                            ; preds = %.thread
  %i.gi = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 52
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = icmp ne i32 %i.gk, -1
  %i.gm = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.bu, ptr noundef nonnull %i.gi, i1 noundef zeroext %i.gl), !inline_history !2428 ; 0 uses
  br label %.critedge76

.critedge76:                                      ; preds = %bb.ag, %.thread, %bb.r, %bb.q
  %i.gn = add nuw nsw i32 %.065157, 1             ; 2 uses
  %exitcond159.not = icmp eq i32 %i.gn, 3
  br i1 %exitcond159.not, label %.loopexit172, label %bb.q, !llvm.loop !3866

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit
  %.1 = phi i32 [ 0, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit ], [ 3, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.go = load ptr, ptr %9, align 8, !nonnull !6, !align !210 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 968
  store ptr null, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8            ; 4 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %.critedge
  %i.gt = load i8, ptr %i.gr, align 8
  %i.gu = icmp eq i8 %i.gt, 0
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %i.gx = icmp ne ptr %i.gw, null
  %i.gy = select i1 %i.gu, i1 %i.gx, i1 false
  br i1 %i.gy, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i: ; preds = %bb.ah
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  %.not.i = icmp eq ptr %i.ha, null
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %9, ptr %3, align 8
  call void @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor20IterCatchHandlerPhisIZNS3_13ThrowingScopeD1EvEUlNS0_11interpreter8RegisterENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEEE_EEvPKNS0_6maglev10BasicBlockEOT_(ptr noundef nonnull align 8 dereferenceable(1816) %i.go, ptr noundef nonnull %i.gr, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeD2Ev.exit: ; preds = %.critedge, %bb.ah, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6StringEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(936) %1, i32 %2, i8 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.j)
  %.pre.i.i = load i64, ptr %i.k, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit: ; preds = %bb.c, %bb.d
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.r = add i64 %i.p, 1
  store i64 %i.r, ptr %i.k, align 8
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p
  %i.u = load ptr, ptr %i.t, align 8              ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.u, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  store i32 -1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store i32 0, ptr %i.aa, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.z, align 8
  %i.ab = tail call noundef i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13BranchAndBindENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESN_NS0_10BranchHintESN_(ptr noundef nonnull align 8 dereferenceable(136) %i.f, i32 %2, ptr noundef %i.g, ptr noundef nonnull %i.u, i8 noundef zeroext %3, ptr noundef nonnull %i.u)
  %i.ac = and i32 %i.ab, 1
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge, %bb.b
  %i.ad = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge ], [ %i.g, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.af = load i32, ptr %i.ae, align 4
  %.not.i = icmp eq i32 %i.af, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  %.sroa.0.0.copyload.i.i = load i32, ptr %4, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE9push_backES7_.exit.i.i, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.al)
  %.pre.i.i.i.i = load ptr, ptr %i.ag, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE9push_backES7_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE9push_backES7_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.an, ptr %i.ag, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6StringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit, !prof !7

bb.h:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE9push_backES7_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.at)
  %.pre.i.i4.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6StringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6StringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE9push_backES7_.exit.i.i, %bb.h
  %i.au = phi ptr [ %.pre.i.i4.i.i, %bb.h ], [ %i.ap, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE9push_backES7_.exit.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.ao, align 8
  store ptr %i.e, ptr %i.au, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6StringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6StringEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3867

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6StringEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6StringEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3868

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6StringEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6StringEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6StringEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6StringEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS0_6StringEEESt5tupleIJNSJ_INS0_6SymbolEEEEEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSJ_INS2_10FrameStateEEENSJ_INS0_7ContextEEERKT0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 %4, i32 %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.v8::base::SmallVector.4819", align 8 ; 13 uses
  %i.a = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.c = load i8, ptr %i.b, align 1
  %i.d = sext i8 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3881)
  %i.e = load i32, ptr %6, align 4, !noalias !3884
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.f, ptr %7, align 8, !alias.scope !3884
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 44
  store ptr %i.i, ptr %i.h, align 8, !alias.scope !3884
  store i32 %i.e, ptr %i.f, align 8, !alias.scope !3884
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 28
  store ptr %i.j, ptr %i.g, align 8, !alias.scope !3884
  %i.k = call i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef %2) #27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.p = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.o, i8 noundef zeroext 7, i64 %i.k)
  %i.q = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.o, i32 %i.p)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi i32 [ %i.q, %bb.b ], [ -1, %bb.a ]
  %i.r = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  %.pre.i.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, %bb.c
  %i.u = phi ptr [ %.pre.i.i, %bb.c ], [ %i.r, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.g, align 8
  store i32 %.sroa.02.0.i.i, ptr %i.u, align 4
  %i.w = load ptr, ptr %i.l, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit
  %i.y = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.z = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.y, i8 noundef zeroext 0, i64 noundef 1)
  %i.aa = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.y, i32 %i.z)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.aa, %bb.d ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit ]
  %i.ab = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ac = load ptr, ptr %i.h, align 8
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  %.pre.i.i18 = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.e
  %i.ae = phi ptr [ %.pre.i.i18, %bb.e ], [ %i.ab, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store ptr %i.af, ptr %i.g, align 8
  store i32 %.sroa.0.0.i.i.i, ptr %i.ae, align 4
  %i.ag = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.h, align 8
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21, !prof !7

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  %.pre.i.i20 = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19, %bb.f
  %i.aj = phi ptr [ %.pre.i.i20, %bb.f ], [ %i.ag, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.g, align 8
  store i32 %5, ptr %i.aj, align 4
  %i.al = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %i.d, i32 noundef 0, i1 noundef zeroext false)
  %i.am = load ptr, ptr %i.l, align 8
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSN_INSJ_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21
  %i.ao = load ptr, ptr %i.g, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = load ptr, ptr %7, align 8               ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ap, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %i.au = getelementptr inbounds i8, ptr %0, i64 -744
  %i.av = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES4_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SK_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENST_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES14_DpT1_(ptr noundef nonnull align 8 dereferenceable(144) %i.au, i32 %i.al, i32 %4, ptr %i.aq, i64 %i.at, ptr noundef %3, i32 487263)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSN_INSJ_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSN_INSJ_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21, %bb.g
  %.sroa.010.0.i.i = phi i32 [ %i.av, %bb.g ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret i32 %.sroa.010.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CallBuiltinINS2_21BuiltinCallDescriptor8ToStringEEENS2_6detail12IndexTypeForINT_9results_tEE4typeEPNS0_7IsolateENS2_17FrameStateForCallENS2_1VINS0_7ContextEEERKNSN_11arguments_tENS1_16LazyDeoptOnThrowEQaasrTL0__16kNeedsFrameStatesrS11_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 %2, i32 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 {
end_hunk_14
begin_hunk_15_@_ZN2v88internal8compiler10turboshaft28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerES3_S4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEEE19UpdateJSArrayLengthENS2_1VINS2_12WordWithBitsILm32EEEEENSQ_INS0_7JSArrayEEEST_:bb.a
  %i.aq = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull %i.am, i1 noundef zeroext %i.ap), !inline_history !2428 ; 0 uses
  %i.ar = load ptr, ptr %4, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  %i.at = load i32, ptr %i.as, align 4
  %.not.i.i.i = icmp eq i32 %i.at, -1
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i
  %i.au = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.av = load ptr, ptr %i.aa, align 8
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i, !prof !7

bb.i:                                             ; preds = %bb.h
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.z, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ax = phi ptr [ %.pre.i.i.i.i.i.i, %bb.i ], [ %i.au, %bb.h ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store ptr %i.ay, ptr %i.z, align 8
  store i32 %i.aj, ptr %i.ax, align 4
  %i.az = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ba = load ptr, ptr %i.w, align 8
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.j, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_3SmiEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i, !prof !7

bb.j:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %.pre.i.i4.i.i.i.i = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_3SmiEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_3SmiEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i: ; preds = %bb.j, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i
  %i.bc = phi ptr [ %.pre.i.i4.i.i.i.i, %bb.j ], [ %i.az, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bd, ptr %i.v, align 8
  store ptr %i.ak, ptr %i.bc, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.be = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26ControlFlowHelper_BindElseEPNSH_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef nonnull %5)
  br i1 %i.be, label %bb.l, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_3SmiEEEEEEvRT_RKNSM_17const_or_values_tE.exit

bb.l:                                             ; preds = %bb.k
  %i.bf = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_(ptr noundef nonnull align 8 dereferenceable(136) %i.ad, i64 0, i32 %3, i64 4294967297, i32 -1)
  %i.bg = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6TagSmiENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %i.ad, i64 0, i32 %i.bf) ; 2 uses
  %i.bh = load ptr, ptr %i.ae, align 8
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_3SmiEEEEEEvRT_RKNSM_17const_or_values_tE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit: ; preds = %bb.l
  %i.bj = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE11ReduceStoreENS2_7OpIndexENS2_15OptionalOpIndexESP_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE(ptr noundef nonnull align 8 dereferenceable(666) %0, i32 %2, i32 -1, i32 %i.bg, i8 17, i8 13, i8 noundef zeroext 0, i32 noundef 24, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0), !inline_history !3238 ; 0 uses
  %.pr = load ptr, ptr %i.ae, align 8             ; 2 uses
  %i.bk = icmp eq ptr %.pr, null
  br i1 %i.bk, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_3SmiEEEEEEvRT_RKNSM_17const_or_values_tE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i39

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i39: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit
  store i8 1, ptr %i.ac, align 8
  %i.bl = load ptr, ptr %4, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp ne i32 %i.bn, -1
  %i.bp = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull %i.bl, i1 noundef zeroext %i.bo), !inline_history !2428 ; 0 uses
  %i.bq = load ptr, ptr %4, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 52
  %i.bs = load i32, ptr %i.br, align 4
  %.not.i.i.i40 = icmp eq i32 %i.bs, -1
  br i1 %.not.i.i.i40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i39
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i39
  %i.bt = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.bu = load ptr, ptr %i.aa, align 8
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.o, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i41, !prof !7

bb.o:                                             ; preds = %bb.n
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %.pre.i.i.i.i.i.i44 = load ptr, ptr %i.z, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i41

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i41: ; preds = %bb.o, %bb.n
  %i.bw = phi ptr [ %.pre.i.i.i.i.i.i44, %bb.o ], [ %i.bt, %bb.n ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store ptr %i.bx, ptr %i.z, align 8
  store i32 %i.bg, ptr %i.bw, align 4
  %i.by = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.bz = load ptr, ptr %i.w, align 8
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.p, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_3SmiEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i42, !prof !7

bb.p:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i41
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %.pre.i.i4.i.i.i.i43 = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_3SmiEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i42

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_3SmiEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i42: ; preds = %bb.p, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i41
  %i.cb = phi ptr [ %.pre.i.i4.i.i.i.i43, %bb.p ], [ %i.by, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i41 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cc, ptr %i.v, align 8
  store ptr %.pr, ptr %i.cb, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_3SmiEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_3SmiEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i42
  %.pr90 = load ptr, ptr %i.ae, align 8
  %i.cd = icmp eq ptr %.pr90, null
  br i1 %i.cd, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_3SmiEEEEEEvRT_RKNSM_17const_or_values_tE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit.thread
  %i.ce = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 52
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = icmp ne i32 %i.cg, -1
  %i.ci = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull %i.ce, i1 noundef zeroext %i.ch), !inline_history !2428 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_3SmiEEEEEEvRT_RKNSM_17const_or_values_tE.exit

default.unreachable:                              ; preds = %bb.d
  unreachable

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_3SmiEEEEEEvRT_RKNSM_17const_or_values_tE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, %bb.f, %bb.l, %bb.e, %bb.q, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESI_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit.thread, %bb.k
  %i.cj = add nuw nsw i32 %.083, 1
  br label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1, i32 %2, i64 %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 4294967296
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i8 noundef zeroext 0, i64 noundef %i.e)
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i32 %i.g)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ -1, %bb.b ], [ %i.h, %bb.c ], [ %2, %bb.a ]
  %i.i = and i64 %3, 4294967296
  %.not21 = icmp eq i64 %i.i, 0
  br i1 %.not21, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.m = and i64 %3, 4294967295
  %i.n = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.n, i8 noundef zeroext 0, i64 noundef %i.m)
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.n, i32 %i.o)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, %bb.d, %bb.e
  %.sroa.0.0.i8 = phi i32 [ -1, %bb.d ], [ %i.p, %bb.e ], [ %4, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableWordBinopIJNS2_1VINS2_12WordWithBitsILm32EEEEESM_NS2_11WordBinopOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9
  %i.t = getelementptr inbounds i8, ptr %0, i64 -744
  %i.u = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEESV_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(666) %i.t, i32 %.sroa.0.0.i, i32 %.sroa.0.0.i8, i8 noundef zeroext 0, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableWordBinopIJNS2_1VINS2_12WordWithBitsILm32EEEEESM_NS2_11WordBinopOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableWordBinopIJNS2_1VINS2_12WordWithBitsILm32EEEEESM_NS2_11WordBinopOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9, %bb.f
  %.sroa.07.0.i = phi i32 [ %i.u, %bb.f ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9 ]
  ret i32 %.sroa.07.0.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_3SmiEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3951

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_3SmiEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_3SmiEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3952

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_3SmiEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_3SmiEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_3SmiEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_3SmiEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_3SmiEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_3SmiEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.5284") align 4 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(936) %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(936) %2, ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !210 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.u, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = load ptr, ptr %i.n, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 2 uses
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.n, align 8
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = add nsw i64 %i.ar, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.as)
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.f, %bb.g
  %i.at = phi ptr [ %i.aj, %bb.f ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.l, align 8
  store ptr %i.a, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aw = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.h, label %.preheader.i, !prof !7

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.a, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.aw, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = sub nsw i32 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = sub nsw i32 %i.bf, %i.bi
  %i.bk = icmp eq i32 %i.bg, %i.bj
  br i1 %i.bk, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.i, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.bm, %bb.i ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
end_hunk_15
