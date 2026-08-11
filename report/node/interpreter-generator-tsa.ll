inline.NumInlined: 9268
inline.NumDeleted: 3684
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE4GrowEm:bb.a
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
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
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #18
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

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @abort() #19
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES8_SB_EEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSD_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSR_13VariableTableES4_S5_E16StartNewSnapshotISZ_EEvNSW_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSW_IKT0_EEEEUlSV_RSX_S1G_E_EEvS16_S19_RS1E_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #19
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
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !67

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !68

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
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !align !6 ; 4 uses
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
  br i1 %i.au, label %bb.j, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #19
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.av = trunc i64 %i.as to i32
  store i32 %i.av, ptr %i.ak, align 4
  %i.aw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ax = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ay = icmp ult ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i, label %bb.k, !prof !8

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
  %i.bk = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 4 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 2 uses
  %i.bo = xor i64 %i.bn, -1
  %.not.i42 = icmp ugt i64 %2, %i.bo
  br i1 %.not.i42, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #19
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
  br i1 %i.ca, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
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
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.cd) #18
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
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bm ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  %.pre20.i.i = load i32, ptr %i.bi, align 8      ; 2 uses
  %i.ct = ptrtoaddr ptr %.pn to i64               ; 2 uses
  %i.cu = add i64 %i.ct, %i.bk
  %i.cv = sub i64 %i.cu, %i.bl                    ; 2 uses
  %i.cw = add i64 %i.cv, %.idx
  %5 = add i64 %i.cv, 4
  %i.cx = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 %5)
  %i.cy = add i64 %i.cx, %i.bl
  %6 = add i64 %i.ct, %i.bk
  %7 = xor i64 %6, -1
  %8 = add i64 %i.cy, %7                          ; 2 uses
  %i.cz = lshr i64 %8, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i
  %n.vec = and i64 %i.da, 9223372036854775800     ; 3 uses
  %i.db = shl i64 %n.vec, 2
  %i.dc = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.db
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.de, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %._crit_edge.i.i, %middle.block
  %.116.i.i.ph = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.dc, %middle.block ]
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.dg, %.lr.ph18.i.i ], [ %.116.i.i.ph, %.lr.ph18.i.i.preheader ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i, ptr %.116.i.i, align 4
  %i.dh = icmp ult ptr %i.dg, %i.cs
  br i1 %i.dh, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !72

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i, %middle.block
  %.pre.i = load i32, ptr %i.ak, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.di = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i ], [ %i.al, %bb.g ]
  %i.dj = add i32 %i.di, %i.u
  %i.dk = zext i32 %i.dj to i64
  %i.dl = load ptr, ptr %i.i, align 8
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load i32, ptr %i.af, align 4
  store i32 %i.dn, ptr %i.dm, align 4
  store i32 %i.u, ptr %i.ag, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.do = icmp eq ptr %i.ad, %i.y
  br i1 %i.do, label %.loopexit63, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03571 = phi ptr [ %i.o, %.lr.ph.i.lr.ph ], [ %i.gz, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.dp = load ptr, ptr %.03571, align 8          ; 8 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = zext i32 %i.dr to i64
  %i.dt = load ptr, ptr %i.i, align 8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ds ; 5 uses
  %i.dv = load ptr, ptr %3, align 8               ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -8
  br label %bb.u

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.023.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.dy, %i.dw
  br i1 %.not.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.023.i = phi ptr [ %i.du, %.lr.ph.i ], [ %i.dy, %bb.t ] ; 2 uses
  %i.dz = load i32, ptr %.023.i, align 4          ; 2 uses
  %.not21.i = icmp eq i32 %i.dz, -1
  br i1 %.not21.i, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSQ_EEE_clESS_SV_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %bb.u
  %i.ea = load ptr, ptr %i.dx, align 8, !nonnull !5, !align !6
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ee = zext i32 %i.dz to i64
  %i.ef = add i64 %i.ed, %i.ee
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load i8, ptr %i.eg, align 4
  %i.ei = icmp eq i8 %i.eh, 76
  br i1 %i.ei, label %bb.v, label %bb.t

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 848
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSQ_EEE_clESS_SV_.exit, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.em = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.dv)
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSQ_EEE_clESS_SV_.exit

._crit_edge.i:                                    ; preds = %bb.t
  %.sroa.0.0.copyload.i = load i8, ptr %i.dp, align 8 ; 2 uses
  %.not.i.i38 = icmp eq i8 %.sroa.0.0.copyload.i, 8
  br i1 %.not.i.i38, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.dv, i64 848
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSQ_EEE_clESS_SV_.exit, label %bb.y, !prof !7

bb.y:                                             ; preds = %bb.x
  %i.eq = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEEEE9ReducePhiENS8_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(504) %i.dv, ptr %i.du, i64 %2, i8 %.sroa.0.0.copyload.i), !inline_history !73
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSQ_EEE_clESS_SV_.exit

bb.z:                                             ; preds = %._crit_edge.i
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.du, align 4
  %i.er = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.es = add i64 %i.ed, %i.er
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load i8, ptr %i.et, align 4
  %i.ev = icmp eq i8 %i.eu, 92
  br i1 %i.ev, label %bb.aa, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSQ_EEE_clESS_SV_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ew = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE15MergeFrameStateENS8_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(504) %i.dv, ptr nonnull %i.du, i64 %2), !inline_history !73
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSQ_EEE_clESS_SV_.exit

_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSQ_EEE_clESS_SV_.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.copyload.i40 = phi i32 [ -1, %bb.z ], [ -1, %bb.v ], [ %i.em, %bb.w ], [ -1, %bb.x ], [ %i.ew, %bb.aa ], [ %i.eq, %bb.y ], [ -1, %bb.u ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8            ; 3 uses
  %.not62 = icmp eq i32 %i.ey, %.sroa.0.0.copyload.i40
  br i1 %.not62, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSQ_EEE_clESS_SV_.exit
  %i.ez = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.fa = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.fb = icmp ult ptr %i.ez, %i.fa
  br i1 %i.fb, label %bb.ad, label %bb.ac, !prof !8

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
  store ptr %i.dp, ptr %i.fi, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 %i.ey, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 %.sroa.0.0.copyload.i40, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %.sroa.0.0.copyload.i40, ptr %i.ex, align 8
  %i.fk = load ptr, ptr %4, align 8               ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !range !42, !noundef !5
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i41 = icmp eq i32 %i.ey, -1
  %.not6.i.i = icmp eq i32 %.sroa.0.0.copyload.i40, -1 ; 2 uses
  br i1 %.not.i.i41, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not6.i.i, label %bb.ag, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.ag:                                            ; preds = %bb.af
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
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
  store ptr %i.gb, ptr %i.fq, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.ah:                                            ; preds = %bb.ae
end_hunk_0
begin_hunk_1_@_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE4GrowEm:bb.a
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #18
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 5 uses
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
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 4 uses
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
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = sub i64 %i.r, %i.g
  %3 = add i64 %2, -4                             ; 2 uses
  %i.s = lshr i64 %3, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !90

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !91

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i16 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
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
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi12 = phi i64 [ %i.i, %bb.a ], [ %.pre11, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 7 uses
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
  store i8 97, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i16 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %3, ptr %i.ak, align 2
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = zext i32 %1 to i64
  %i.ao = add i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %i.as = add nuw i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load i32, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 4 uses
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
  %.not.i.i8 = icmp ugt i64 %i.be, %i.aw
  br i1 %.not.i.i8, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit
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
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10RttCanonOpEJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEENS2_7OpIndexEDpT0_:bb.a
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
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load i32, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 4 uses
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
  br i1 %.not.i.i8, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !8

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !8

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = sub i64 %i.r, %i.g
  %3 = add i64 %2, -4                             ; 2 uses
  %i.s = lshr i64 %3, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !94

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !95

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12FrameStateOpEJNS2_27ShadowyOpIndexVectorWrapperEbPKNS2_14FrameStateDataEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = add i64 %2, 5
  %i.k = lshr i64 %i.j, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.e
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.r = sub i64 %i.n, %i.h
  %i.s = lshr exact i64 %i.r, 3
  %i.t = and i64 %i.s, 4294967295
  %i.u = add nuw i64 %i.t, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre10 = ptrtoint ptr %.pre to i64
  %.pre11 = sub i64 %.pre10.i.i.i.i, %.pre10
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi12 = phi i64 [ %.pre11, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 10 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi12 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi12, 4
  %i.ac = and i64 %i.ab, 268435455
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac
  store i16 %i.y, ptr %i.ad, align 2
  %i.ae = load ptr, ptr %i.z, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.af = shl i32 %.tr.i.i.i.i, 3
  %i.ag = add i32 %i.af, %i.x
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.aj
  store i16 %i.y, ptr %i.ak, align 2
  store i8 92, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.an = trunc i64 %2 to i16                     ; 2 uses
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.ap = icmp ugt i64 %2, 1
  br i1 %i.ap, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i.i = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 4 %1, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.aq = icmp eq i64 %2, 1
  br i1 %i.aq, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread: ; preds = %bb.d
  %i.ar = load i32, ptr %1, align 4
  store i32 %i.ar, ptr %i.ao, align 4
  %i.as = zext i1 %3 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.as, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  br label %.lr.ph.i.preheader

_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit: ; preds = %bb.c, %bb.d
  %i.aw = zext i1 %3 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.ay, align 8
  %i.az = shl i64 %2, 2
  %.idx.i = and i64 %i.az, 262140
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.an, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12FrameStateOpEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit
  %i.bb = phi ptr [ %i.av, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread ], [ %i.ba, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %.011.i = phi ptr [ %i.bk, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ], [ %i.ao, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = zext i32 %.sroa.01.0.copyload.i to i64
  %i.bf = add i64 %i.bd, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.bi, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.e, !prof !7

end_hunk_2
begin_hunk_3_@_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE
declare noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %.not = icmp ult i64 %i.i, %i.n
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp ult ptr %i.f, %i.s
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.035 = phi ptr [ %i.w, %bb.c ], [ %i.b, %.preheader ] ; 5 uses
  %.02734 = phi ptr [ %i.x, %bb.c ], [ %i.f, %.preheader ] ; 4 uses
  %i.u = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.v = icmp ult ptr %.035, %i.u
  br i1 %i.v, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.035, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02734, i64 16 ; 3 uses
  %i.y = load i64, ptr %.035, align 8
  store i64 %i.y, ptr %.02734, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.02734, i64 8
  %i.ab = load i32, ptr %i.z, align 8
  store i32 %i.ab, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.r, align 8
  %i.ad = icmp ult ptr %i.x, %i.ac
  br i1 %i.ad, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !98

..critedge.loopexit_crit_edge:                    ; preds = %bb.c
  %.pre.pre = load ptr, ptr %i.j, align 8
  br label %.critedge, !llvm.loop !98

.critedge:                                        ; preds = %.lr.ph, %..critedge.loopexit_crit_edge, %.preheader
  %i.ae = phi ptr [ %i.k, %.preheader ], [ %.pre.pre, %..critedge.loopexit_crit_edge ], [ %i.u, %.lr.ph ]
  %.027.lcssa = phi ptr [ %i.f, %.preheader ], [ %i.x, %..critedge.loopexit_crit_edge ], [ %.02734, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.b, %.preheader ], [ %i.w, %..critedge.loopexit_crit_edge ], [ %.035, %.lr.ph ] ; 2 uses
  %i.af = icmp ult ptr %.0.lcssa, %i.ae
  br i1 %i.af, label %.lr.ph42, label %._crit_edge

.lr.ph42:                                         ; preds = %.critedge, %.lr.ph42
  %.141 = phi ptr [ %i.ah, %.lr.ph42 ], [ %.0.lcssa, %.critedge ] ; 2 uses
  %.12840 = phi ptr [ %i.ag, %.lr.ph42 ], [ %.027.lcssa, %.critedge ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.12840, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.141, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.12840, ptr noundef nonnull align 8 dereferenceable(16) %.141, i64 16, i1 false)
  %i.ai = load ptr, ptr %i.j, align 8
  %i.aj = icmp ult ptr %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph42, label %._crit_edge, !llvm.loop !99

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
  br i1 %i.aq, label %bb.g, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
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
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i64 noundef %i.ao) #18
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
  br i1 %i.bf, label %.lr.ph46, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit.loopexit, !llvm.loop !100

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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = sub i64 %i.r, %i.g
  %3 = add i64 %2, -4                             ; 2 uses
  %i.s = lshr i64 %3, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !101

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !102

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
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 5 uses
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
  %i.n = icmp ult i64 %i.m, 17
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 3
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre8 = ptrtoint ptr %.pre to i64
  %.pre9 = sub i64 %.pre10.i.i.i.i, %.pre8
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi10 = phi i64 [ %i.i, %bb.a ], [ %.pre9, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi10 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi10, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 3, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 24
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 3, ptr %i.af, align 2
  store i8 80, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 %2, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %3, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load i32, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.an = lshr i64 %i.i, 4
  %i.ao = and i64 %i.an, 268435455                ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 216
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 208 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2
  %.not.i.i = icmp ugt i64 %i.aw, %i.ao
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 200 ; 2 uses
  %i.ay = lshr i64 %i.ao, 1
  %i.az = add nuw nsw i64 %i.ao, 32
  %i.ba = add nuw nsw i64 %i.az, %i.ay
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 224
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ar, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.bh)
  %.pre.i.i = load ptr, ptr %i.ar, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bi = phi ptr [ %.pre.i.i, %bb.c ], [ %i.as, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bj = trunc i64 %i.i to i32
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ao
  store i32 %.sroa.0.0.copyload.i, ptr %i.bk, align 4
  ret i32 %i.bj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre6 = ptrtoint ptr %.pre to i64
  %.pre7 = sub i64 %.pre10.i.i.i.i, %.pre6
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi8 = phi i64 [ %.pre7, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.s = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 7 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_17CatchBlockBeginOpEJEEENS2_7OpIndexEDpT0_:bb.a
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
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 4 uses
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
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !8

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
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = sub i64 %i.r, %i.g
  %3 = add i64 %2, -4                             ; 2 uses
  %i.s = lshr i64 %3, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !111

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !112

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESL_NSJ_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i8 %2, i8 %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre12 = ptrtoint ptr %.pre to i64
  %.pre13 = sub i64 %.pre10.i.i.i.i, %.pre12
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi14 = phi i64 [ %i.i, %bb.a ], [ %.pre13, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi14 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi14, 4
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
  store i8 72, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %4, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %2, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %3, ptr %i.al, align 2
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = zext i32 %1 to i64
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.as, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit
  %i.at = add nuw i8 %i.as, 1
  store i8 %i.at, ptr %i.ar, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load i32, ptr %i.au, align 4
  %i.av = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.aw = lshr i64 %i.i, 4
  %i.ax = and i64 %i.aw, 268435455                ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 216
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 208 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  %.not.i.i10 = icmp ugt i64 %i.bf, %i.ax
  br i1 %.not.i.i10, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 200 ; 2 uses
  %i.bh = lshr i64 %i.ax, 1
  %i.bi = add nuw nsw i64 %i.ax, 32
  %i.bj = add nuw nsw i64 %i.bi, %i.bh
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 224
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.ba, align 8
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef %i.bq)
  %.pre.i.i = load ptr, ptr %i.ba, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit, %bb.d
  %i.br = phi ptr [ %.pre.i.i, %bb.d ], [ %i.bb, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit ]
  %i.bs = trunc i64 %i.i to i32
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ax
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS2_3AnyEEESt5tupleIJNSK_INS0_6ObjectEEEEEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSK_INS2_10FrameStateEEENSK_INS0_7ContextEEERKT0_:bb.a
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %0, i64 -712
  %i.p = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.o, i8 noundef zeroext 7, i64 %i.k)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi i32 [ %i.p, %bb.b ], [ -1, %bb.a ]
  %i.q = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  %.pre.i.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %bb.c ], [ %i.q, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.u, ptr %i.g, align 8
  store i32 %.sroa.02.0.i.i, ptr %i.t, align 4
  %i.v = load ptr, ptr %i.l, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit
  %i.x = getelementptr inbounds i8, ptr %0, i64 -712
  %i.y = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.x, i8 noundef zeroext 0, i64 noundef 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.y, %bb.d ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit ]
  %i.z = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.h, align 8
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  %.pre.i.i18 = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.e
  %i.ac = phi ptr [ %.pre.i.i18, %bb.e ], [ %i.z, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.ad, ptr %i.g, align 8
  store i32 %.sroa.0.0.i.i.i, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21, !prof !7

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  %.pre.i.i20 = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19, %bb.f
  %i.ah = phi ptr [ %.pre.i.i20, %bb.f ], [ %i.ae, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.ai, ptr %i.g, align 8
  store i32 %5, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = sext i8 %i.c to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.g, label %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit.i

bb.g:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21
  %i.ao = call ptr @_ZN2v88internal11CodeFactory6CEntryEPNS0_7IsolateEiNS0_8ArgvModeEbb(ptr noundef %1, i32 noundef %i.d, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #18 ; 3 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  store i64 %i.ap, ptr %i.al, align 8
  %i.aq = icmp eq ptr %i.ao, null
  br i1 %i.aq, label %bb.h, label %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit.i, !prof !129

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #19
  unreachable

_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit.i: ; preds = %bb.g, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21
  %i.ar = phi ptr [ %i.ao, %bb.g ], [ %i.am, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21 ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %0, i64 -744
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %.not.i.i17.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i17.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 63768
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not5.i.i18.i = icmp eq ptr %i.ax, null
  br i1 %.not5.i.i18.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.av, ptr nonnull %i.ar) #18
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i: ; preds = %bb.j, %bb.i, %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit.i
  %i.ay = load ptr, ptr %i.l, align 8
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSO_INSK_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSR_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb.exit, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i
  %i.ba = ptrtoint ptr %i.ar to i64
  %i.bb = getelementptr inbounds i8, ptr %0, i64 -712
  %i.bc = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindENSJ_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i8 noundef zeroext 8, i64 %i.ba)
  %.pre = load ptr, ptr %i.l, align 8
  %i.bd = icmp eq ptr %.pre, null
  br i1 %i.bd, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSO_INSK_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSR_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.k, !prof !13

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb.exit
  %i.be = load ptr, ptr %i.g, align 8
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = load ptr, ptr %7, align 8               ; 2 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bf, %i.bh
  %i.bj = ashr exact i64 %i.bi, 2
  %i.bk = getelementptr inbounds i8, ptr %0, i64 -712 ; 4 uses
  %i.bl = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, i32 %i.bc, i32 %4, ptr %i.bg, i64 %i.bj, ptr noundef %3, i32 487263) ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = icmp eq i8 %i.bn, 1
  br i1 %i.bo, label %bb.l, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bp = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, i32 %i.bl)
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i1 [ %i.bp, %bb.l ], [ false, %bb.k ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.br = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, i32 %i.bl, i1 noundef zeroext %.0.i.i.i.i.i, ptr noundef nonnull %i.bq, i32 487263) ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %0, i64 -720
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !5, !align !6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = zext i32 %i.br to i64
  %i.by = add i64 %i.bw, %i.bx
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SQ_(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i32 %i.br)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSO_INSK_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSR_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSO_INSK_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSR_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb.exit, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i
  %.sroa.010.0.i.i = phi i32 [ %i.ca, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret i32 %.sroa.010.0.i.i
}

declare noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef) local_unnamed_addr #3

declare i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = sub i64 %i.r, %i.g
  %3 = add i64 %2, -4                             ; 2 uses
  %i.s = lshr i64 %3, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !130

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !131

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre7 = ptrtoint ptr %.pre to i64
  %.pre8 = sub i64 %.pre10.i.i.i.i, %.pre7
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi9 = phi i64 [ %.pre8, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.s = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi9 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi9, 4
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
  store i8 75, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %1, ptr %i.ai, align 4
  %i.aj = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %switch.load, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %2, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load i32, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.ao = lshr i64 %i.i, 4
  %i.ap = and i64 %i.ao, 268435455                ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 216
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 208 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %.not.i.i = icmp ugt i64 %i.ax, %i.ap
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 200 ; 2 uses
  %i.az = lshr i64 %i.ap, 1
  %i.ba = add nuw nsw i64 %i.ap, 32
  %i.bb = add nuw nsw i64 %i.ba, %i.az
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 224
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.as, align 8
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.bi)
  %.pre.i.i = load ptr, ptr %i.as, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, %bb.c
  %i.bj = phi ptr [ %.pre.i.i, %bb.c ], [ %i.at, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i ]
  %i.bk = trunc i64 %i.i to i32
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ap
  store i32 %.sroa.0.0.copyload.i, ptr %i.bl, align 4
  ret i32 %i.bk
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SQ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::SmallVector.641", align 8 ; 10 uses
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_WhileESt8functionIFNS2_1VINS2_12WordWithBitsILm32EEEEEvEE:bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dr
  br label %bb.s

bb.s:                                             ; preds = %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i.i, %bb.n
  %.sink16.i.i.i.i.i = phi i64 [ 8, %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i.i ], [ 16, %bb.n ]
  %.sink.i.i.i.i.i = phi ptr [ %i.dv, %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i.i ], [ %i.dn, %bb.n ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sink16.i.i.i.i.i
  store ptr %.sink.i.i.i.i.i, ptr %i.dw, align 8
  store ptr %i.u, ptr %i.t, align 8
  store ptr %i.u, ptr %i.v, align 8
  store ptr %i.x, ptr %i.w, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJEEC2EOS4_.exit.i

_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJEEC2EOS4_.exit.i: ; preds = %bb.s, %_ZSt10make_tupleIJRbN2v88internal8compiler10turboshaft9LoopLabelIJEEENS4_5LabelIJEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSC_.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dy = load i64, ptr %i.y, align 8
  store i64 %i.dy, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ea = load i8, ptr %i.z, align 8, !range !42, !noundef !5
  store i8 %i.ea, ptr %i.dz, align 8
  store i8 0, ptr %i.z, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ec = load ptr, ptr %i.ah, align 8
  store ptr %i.ec, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  store ptr %i.ee, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.ee, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.eh, ptr %i.eg, align 8
  br i1 %i.dk, label %_ZN2v88internal8compiler10turboshaft9LoopLabelIJEEC2EOS4_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJEEC2EOS4_.exit.i
  %i.ei = load ptr, ptr %i.au, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ei, %i.av
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ed)
  %i.ej = load <2 x ptr>, ptr %i.au, align 8
  store <2 x ptr> %i.ej, ptr %i.ed, align 8
  %i.ek = load ptr, ptr %i.ax, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.el = load ptr, ptr %i.aw, align 8
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.av to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 4 uses
  %i.ep = icmp sgt i64 %i.eo, 8
  br i1 %i.ep, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %bb.v
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr align 8 %i.ei, i64 %i.eo, i1 false)
  br label %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.eq = icmp eq i64 %i.eo, 8
  br i1 %i.eq, label %bb.y, label %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.er = load ptr, ptr %i.ei, align 8
  store ptr %i.er, ptr %i.ee, align 8
  br label %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i

_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eo
  br label %bb.z

bb.z:                                             ; preds = %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.u
  %.sink16.i.i.i.i = phi i64 [ 8, %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 16, %bb.u ]
  %.sink.i.i.i.i = phi ptr [ %i.es, %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ %i.ek, %bb.u ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sink16.i.i.i.i
  store ptr %.sink.i.i.i.i, ptr %i.et, align 8
  store ptr %i.av, ptr %i.au, align 8
  store ptr %i.av, ptr %i.aw, align 8
  store ptr %i.ay, ptr %i.ax, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LoopLabelIJEEC2EOS4_.exit

_ZN2v88internal8compiler10turboshaft9LoopLabelIJEEC2EOS4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJEEC2EOS4_.exit.i, %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ev = load i64, ptr %i.az, align 8
  store i64 %i.ev, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.ey = load i16, ptr %i.ex, align 8
  store i16 %i.ey, ptr %i.ew, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.fa = load i8, ptr %7, align 1, !range !42, !noalias !181, !noundef !5
  store i8 %i.fa, ptr %i.ez, align 8, !alias.scope !181
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.au)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11CallBuiltinINS2_21BuiltinCallDescriptor18NonNumberToNumericEEENS2_6detail12IndexTypeForINT_9results_tEE4typeEPNS0_7IsolateENS2_1VINS0_7ContextEEERKNSO_11arguments_tEQaantsrTL0__16kNeedsFrameStatesrS10_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %5 = alloca %"class.v8::base::SmallVector.902", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.d = load i32, ptr %3, align 4, !noalias !199
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.e, ptr %5, align 8, !alias.scope !199
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !199
  store i32 %i.d, ptr %i.e, align 8, !alias.scope !199
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !199
  store ptr %i.h, ptr %i.f, align 8, !alias.scope !199
  %i.i = getelementptr inbounds i8, ptr %0, i64 -720
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !6
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.m = call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef 948) #18 ; 3 uses
  store ptr %i.m, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = load i32, ptr %i.m, align 8
  %i.q = sub nsw i32 %i.o, %i.p
  %i.r = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.q, i32 0, i8 0, i32 noundef 0) #18
  %i.s = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.r, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %i.l, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.t = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef 948, i32 -1, ptr nonnull %i.e, i64 2, ptr noundef %i.s, i32 487263)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.07.0 = phi i32 [ %i.t, %bb.b ], [ -1, %bb.a ]
  ret i32 %.sroa.07.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = sub i64 %i.r, %i.g
  %3 = add i64 %2, -4                             ; 2 uses
  %i.s = lshr i64 %3, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.preheader15

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !201

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEES8_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEElET_S9_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEElET_S9_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEElET_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !8

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LoopLabelIJEE8BindLoopINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.870") align 1 %0, ptr noundef nonnull align 8 dereferenceable(170) %1, ptr noundef nonnull align 8 dereferenceable(904) %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
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
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(904) %2, ptr noundef nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull %i.b, i1 noundef zeroext false) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8LoadRootENS0_9RootIndexE:bb.a

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit: ; preds = %bb.h
  %i.ac = getelementptr inbounds i8, ptr %0, i64 -712 ; 2 uses
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i8 noundef zeroext 7, i64 %i.y)
  %.pr = load ptr, ptr %i.z, align 8
  %i.ae = icmp eq ptr %.pr, null
  br i1 %i.ae, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, label %bb.i, !prof !13

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit
  %i.af = zext i16 %1 to i32
  %i.ag = shl nuw nsw i32 %i.af, 3
  %i.ah = add nuw nsw i32 %i.ag, 520
  %i.ai = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSJ_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %i.ad, i32 -1, i8 16, i8 11, i8 4, i32 noundef %i.ah, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit: ; preds = %bb.h, %bb.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, %bb.c, %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, %bb.g
  %.sroa.021.1 = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i ], [ -1, %bb.c ], [ %i.p, %bb.d ], [ %i.x, %bb.g ], [ %i.ai, %bb.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit ], [ -1, %bb.h ]
  ret i32 %.sroa.021.1
}

declare i64 @_ZN2v88internal17ExternalReference12isolate_rootEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal8compiler13AccessBuilder18ForHeapNumberValueEv(ptr dead_on_unwind writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8) local_unnamed_addr #3

declare void @_ZN2v88internal8compiler13AccessBuilder18ForMapInstanceTypeEv(ptr dead_on_unwind writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_12WordWithBitsILm32EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 {
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #19
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
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, label %bb.l, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = load i8, ptr %2, align 8
  %i.p = icmp eq i8 %i.o, 1
  %spec.select.i = select i1 %i.p, i8 17, i8 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.r = load i8, ptr %i.q, align 2, !range !42, !noundef !5
  %i.s = shl nuw nsw i8 %i.r, 5
  %spec.select17 = or disjoint i8 %spec.select.i, %i.s
  %i.t = getelementptr inbounds i8, ptr %0, i64 -712
  %i.u = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSJ_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.t, i32 %1, i32 -1, i8 %spec.select17, i8 %.sroa.0.0.i25, i8 %.sroa.0.0.i.i.i, i32 noundef %i.n, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i, %bb.l
  %.sroa.011.0.i.i.i.i = phi i32 [ %i.u, %bb.l ], [ -1, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i ]
  ret i32 %.sroa.011.0.i.i.i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6BigIntEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6BigIntEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6BigIntEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6BigIntEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = sub i64 %i.r, %i.g
  %3 = add i64 %2, -4                             ; 2 uses
  %i.s = lshr i64 %3, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6BigIntEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6BigIntEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !206

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6BigIntEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6BigIntEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6BigIntEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6BigIntEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6BigIntEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6BigIntEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre13 = ptrtoint ptr %.pre to i64
  %.pre14 = sub i64 %.pre10.i.i.i.i, %.pre13
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi15 = phi i64 [ %i.i, %bb.a ], [ %.pre14, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi15 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi15, 4
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
  store i8 68, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 2, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  store i32 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %4, ptr %i.al, align 1
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = zext i32 %1 to i64
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.as, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %i.at = add nuw i8 %i.as, 1
  store i8 %i.at, ptr %i.ar, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre12.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.an, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre12.i, %bb.c ]
  %i.au = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.av = add i64 %.pre-phi.i, %i.au
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.ay, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ComparisonOpEEEvRKT_.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.az = add nuw i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ComparisonOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ComparisonOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load i32, ptr %i.ba, align 4
  %i.bb = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.bc = lshr i64 %i.i, 4
  %i.bd = and i64 %i.bc, 268435455                ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 216
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 208 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 2
  %.not.i.i10 = icmp ugt i64 %i.bl, %i.bd
  br i1 %.not.i.i10, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !8

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ComparisonOpEEEvRKT_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 200 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESK_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_:bb.a
  %i.bu = zext i32 %.sroa.01.0.copyload.i.2 to i64
  %i.bv = add i64 %i.bt, %i.bu
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1             ; 2 uses
  %.not.i.i.2 = icmp eq i8 %i.by, -1
  br i1 %.not.i.i.2, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %.lr.ph.i.2
  %i.bz = add nuw i8 %i.by, 1
  store i8 %i.bz, ptr %i.bx, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit: ; preds = %.lr.ph.i.2, %bb.f, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load i32, ptr %i.ca, align 4
  %i.cb = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.cc = lshr i64 %i.i, 4
  %i.cd = and i64 %i.cc, 268435455                ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 216
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 208 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2
  %.not.i.i19 = icmp ugt i64 %i.cl, %i.cd
  br i1 %.not.i.i19, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 200 ; 2 uses
  %i.cn = lshr i64 %i.cd, 1
  %i.co = add nuw nsw i64 %i.cd, 32
  %i.cp = add nuw nsw i64 %i.co, %i.cn
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 224
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cg, align 8
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %i.cw)
  %.pre.i.i = load ptr, ptr %i.cg, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit, %bb.g
  %i.cx = phi ptr [ %.pre.i.i, %bb.g ], [ %i.ch, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit ]
  %i.cy = trunc i64 %i.i to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cd
  store i32 %.sroa.0.0.copyload.i, ptr %i.cz, align 4
  ret i32 %i.cy
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJEE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(904) %1, i32 %2, i8 noundef zeroext %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.j)
  %.pre.i.i = load i64, ptr %i.k, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit: ; preds = %bb.c, %bb.d
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
  %i.ab = tail call noundef i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE13BranchAndBindENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESO_NS0_10BranchHintESO_(ptr noundef nonnull align 8 dereferenceable(136) %i.f, i32 %2, ptr noundef %i.g, ptr noundef nonnull %i.u, i8 noundef zeroext %3, ptr noundef nonnull %i.u)
  %i.ac = and i32 %i.ab, 1
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge, %bb.b
  %i.ad = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge ], [ %i.g, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.af = load i32, ptr %i.ae, align 4
  %.not.i = icmp eq i32 %i.af, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #19
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE12RecordValuesEPNS2_5BlockERNS4_9BlockDataERKSt5tupleIJEE.exit, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.al)
  %.pre.i.i.i.i = load ptr, ptr %i.ag, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE12RecordValuesEPNS2_5BlockERNS4_9BlockDataERKSt5tupleIJEE.exit

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE12RecordValuesEPNS2_5BlockERNS4_9BlockDataERKSt5tupleIJEE.exit: ; preds = %bb.f, %bb.g
  %i.am = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ag, align 8
  store ptr %i.e, ptr %i.am, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE12RecordValuesEPNS2_5BlockERNS4_9BlockDataERKSt5tupleIJEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = sub i64 %i.r, %i.g
  %3 = add i64 %2, -4                             ; 2 uses
  %i.s = lshr i64 %3, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !215

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !216

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6BigIntEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.793") align 4 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(904) %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
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
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(904) %2, ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !6 ; 7 uses
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
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.f

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
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.g, !prof !8

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
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS0_6BigIntEEESt5tupleIJSM_NSK_INS0_3SmiEEEEEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSK_INS2_10FrameStateEEENSK_INS0_7ContextEEERKT0_:bb.a
  store ptr %i.k, ptr %i.f, align 8, !alias.scope !237
  %i.l = call i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef %2) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %0, i64 -712
  %i.q = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.p, i8 noundef zeroext 7, i64 %i.l)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi i32 [ %i.q, %bb.b ], [ -1, %bb.a ]
  %i.r = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, %bb.c
  %i.u = phi ptr [ %.pre.i.i, %bb.c ], [ %i.r, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.f, align 8
  store i32 %.sroa.02.0.i.i, ptr %i.u, align 4
  %i.w = load ptr, ptr %i.m, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit
  %i.y = getelementptr inbounds i8, ptr %0, i64 -712
  %i.z = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, i8 noundef zeroext 0, i64 noundef 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.z, %bb.d ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit ]
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit19, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  %.pre.i.i18 = load ptr, ptr %i.f, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit19

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit19: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.e
  %i.ad = phi ptr [ %.pre.i.i18, %bb.e ], [ %i.aa, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store ptr %i.ae, ptr %i.f, align 8
  store i32 %.sroa.0.0.i.i.i, ptr %i.ad, align 4
  %i.af = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ag = load ptr, ptr %i.g, align 8
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit21, !prof !7

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit19
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  %.pre.i.i20 = load ptr, ptr %i.f, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit21

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit21: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit19, %bb.f
  %i.ai = phi ptr [ %.pre.i.i20, %bb.f ], [ %i.af, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit19 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.aj, ptr %i.f, align 8
  store i32 %5, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = sext i8 %i.c to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit.i

bb.g:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit21
  %i.ap = call ptr @_ZN2v88internal11CodeFactory6CEntryEPNS0_7IsolateEiNS0_8ArgvModeEbb(ptr noundef %1, i32 noundef %i.d, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #18 ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  store i64 %i.aq, ptr %i.am, align 8
  %i.ar = icmp eq ptr %i.ap, null
  br i1 %i.ar, label %bb.h, label %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit.i, !prof !129

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #19
  unreachable

_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit.i: ; preds = %bb.g, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit21
  %i.as = phi ptr [ %i.ap, %bb.g ], [ %i.an, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE9push_backES5_.exit21 ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %0, i64 -744
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not.i.i17.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i17.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 63768
  %i.ay = load ptr, ptr %i.ax, align 8
  %.not5.i.i18.i = icmp eq ptr %i.ay, null
  br i1 %.not5.i.i18.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.aw, ptr nonnull %i.as) #18
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i: ; preds = %bb.j, %bb.i, %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit.i
  %i.az = load ptr, ptr %i.m, align 8
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSO_INSK_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSR_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb.exit, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i
  %i.bb = ptrtoint ptr %i.as to i64
  %i.bc = getelementptr inbounds i8, ptr %0, i64 -712
  %i.bd = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindENSJ_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bc, i8 noundef zeroext 8, i64 %i.bb)
  %.pre = load ptr, ptr %i.m, align 8
  %i.be = icmp eq ptr %.pre, null
  br i1 %i.be, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSO_INSK_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSR_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.k, !prof !13

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb.exit
  %i.bf = load ptr, ptr %i.f, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = load ptr, ptr %7, align 8               ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bg, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = getelementptr inbounds i8, ptr %0, i64 -712 ; 4 uses
  %i.bm = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, i32 %i.bd, i32 %4, ptr %i.bh, i64 %i.bk, ptr noundef %3, i32 487263) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bo = load i8, ptr %i.bn, align 8
  %i.bp = icmp eq i8 %i.bo, 1
  br i1 %i.bp, label %bb.l, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bq = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, i32 %i.bm)
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i1 [ %i.bq, %bb.l ], [ false, %bb.k ]
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bs = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, i32 %i.bm, i1 noundef zeroext %.0.i.i.i.i.i, ptr noundef nonnull %i.br, i32 487263) ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %0, i64 -720
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !5, !align !6
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = zext i32 %i.bs to i64
  %i.bz = add i64 %i.bx, %i.by
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SQ_(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i32 %i.bs)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSO_INSK_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSR_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSO_INSK_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSR_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb.exit, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i
  %.sroa.010.0.i.i = phi i32 [ %i.cb, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19.i ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret i32 %.sroa.010.0.i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = sub i64 %i.r, %i.g
  %3 = add i64 %2, -4                             ; 2 uses
  %i.s = lshr i64 %3, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !238

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !239

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm6ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.800") align 4 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(904) %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
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
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(904) %2, ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !6 ; 7 uses
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
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.f

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
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.g, !prof !8

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
end_hunk_9
