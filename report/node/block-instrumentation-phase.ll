inline.NumInlined: 37930
inline.NumDeleted: 12443
loop-unroll.NumCompletelyUnrolled: 190
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 322
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
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
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #12 comdat {
bb.a:
  tail call void @abort() #20
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES9_SA_SC_SE_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSG_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSS_13VariableTableES4_S5_E16StartNewSnapshotIS10_EEvNSX_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSX_IKT0_EEEEUlSW_RSY_S1H_E_EEvS17_S1A_RS1F_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #20
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
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !88

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !89

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
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !6, !align !7 ; 4 uses
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #20
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
  %i.bl = ptrtoint ptr %i.bj to i64               ; 5 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 2 uses
  %i.bo = xor i64 %i.bn, -1
  %.not.i42 = icmp ugt i64 %2, %i.bo
  br i1 %.not.i42, label %bb.l, label %bb.m, !prof !5

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #20
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20
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
  br i1 %i.cj, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, !prof !5

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.cd) #19
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
  %5 = add i64 %i.ct, %i.bk                       ; 2 uses
  %i.cu = add i64 %5, %.idx
  %i.cv = sub i64 %i.cu, %i.bl
  %i.cw = add i64 %5, 4
  %6 = sub i64 %i.cw, %i.bl
  %i.cx = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %6)
  %i.cy = add i64 %i.cx, %i.bl
  %7 = xor i64 %i.ct, -1
  %8 = add i64 %i.cy, %7
  %9 = sub i64 %8, %i.bk                          ; 2 uses
  %i.cz = lshr i64 %9, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 28
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
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !90

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
  br i1 %i.dh, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !91

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

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.023.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.dy, %i.dw
  br i1 %.not.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.023.i = phi ptr [ %i.du, %.lr.ph.i ], [ %i.dy, %bb.t ] ; 2 uses
  %i.dz = load i32, ptr %.023.i, align 4          ; 2 uses
  %.not21.i = icmp eq i32 %i.dz, -1
  br i1 %.not21.i, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSB_6VectorIKSR_EEE_clEST_SW_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %bb.u
  %i.ea = load ptr, ptr %i.dx, align 8, !nonnull !6, !align !7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ee = zext i32 %i.dz to i64
  %i.ef = add i64 %i.ed, %i.ee
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load i8, ptr %i.eg, align 4
  %i.ei = icmp eq i8 %i.eh, 76
  br i1 %i.ei, label %bb.v, label %bb.t

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 1040
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSB_6VectorIKSR_EEE_clEST_SW_.exit, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  %i.em = tail call i32 @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE76ENS2_21UniformReducerAdapterIS3_SK_E34ReduceLoadRootRegisterContinuationEJEEENS2_7OpIndexEDpT1_(ptr noundef nonnull align 8 dereferenceable(192) %i.dv)
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSB_6VectorIKSR_EEE_clEST_SW_.exit

._crit_edge.i:                                    ; preds = %bb.t
  %.sroa.0.0.copyload.i = load i8, ptr %i.dp, align 8 ; 2 uses
  %.not.i.i38 = icmp eq i8 %.sroa.0.0.copyload.i, 8
  br i1 %.not.i.i38, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.dv, i64 1040
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSB_6VectorIKSR_EEE_clEST_SW_.exit, label %bb.y, !prof !5

bb.y:                                             ; preds = %bb.x
  %i.eq = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE9ReducePhiENSB_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(696) %i.dv, ptr %i.du, i64 %2, i8 %.sroa.0.0.copyload.i), !inline_history !92
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSB_6VectorIKSR_EEE_clEST_SW_.exit

bb.z:                                             ; preds = %._crit_edge.i
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.du, align 4
  %i.er = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.es = add i64 %i.ed, %i.er
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load i8, ptr %i.et, align 4
  %i.ev = icmp eq i8 %i.eu, 92
  br i1 %i.ev, label %bb.aa, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSB_6VectorIKSR_EEE_clEST_SW_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ew = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE15MergeFrameStateENSB_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(696) %i.dv, ptr nonnull %i.du, i64 %2), !inline_history !92
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSB_6VectorIKSR_EEE_clEST_SW_.exit

_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSB_6VectorIKSR_EEE_clEST_SW_.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.copyload.i40 = phi i32 [ -1, %bb.z ], [ -1, %bb.v ], [ %i.em, %bb.w ], [ -1, %bb.x ], [ %i.ew, %bb.aa ], [ %i.eq, %bb.y ], [ -1, %bb.u ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8            ; 3 uses
  %.not62 = icmp eq i32 %i.ey, %.sroa.0.0.copyload.i40
  br i1 %.not62, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSB_6VectorIKSR_EEE_clEST_SW_.exit
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
  %i.fm = load i8, ptr %i.fl, align 1, !range !24, !noundef !6
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
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSH_5EntryERKT_Pm:bb.a
  %i.p = lshr i32 %i.o, 16
  %i.q = xor i32 %i.p, %i.o
  %i.r = zext i32 %i.q to i64
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_10ConstantOpEEEmRKT0_b.exit

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.s = load i64, ptr %i.c, align 8              ; 2 uses
  %i.t = trunc i64 %i.s to i32
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_10ConstantOpEEEmRKT0_b.exit

bb.e:                                             ; preds = %bb.a
  %i.u = load i64, ptr %i.c, align 8              ; 2 uses
  %i.v = trunc i64 %i.u to i32
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_10ConstantOpEEEmRKT0_b.exit

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = trunc i64 %i.x to i32
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_10ConstantOpEEEmRKT0_b.exit

bb.g:                                             ; preds = %bb.a
  unreachable

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_10ConstantOpEEEmRKT0_b.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.z = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.t, %bb.d ], [ %i.v, %bb.e ], [ %i.y, %bb.f ]
  %.0.i.in.in.i = phi i64 [ %i.d, %bb.b ], [ %i.r, %bb.c ], [ %i.s, %bb.d ], [ %i.u, %bb.e ], [ %i.x, %bb.f ]
  %.0.i.in.i = mul i64 %.0.i.in.in.i, 289
  %.0.i.i = add i64 %.0.i.in.i, 75
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %.0.i.i, i64 1) ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = and i64 %..i, %i.ab                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_10ConstantOpEEEmRKT0_b.exit
  %i.aj = getelementptr inbounds i8, ptr %0, i64 -8
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_10ConstantOpEEEmRKT0_b.exit
  %.lcssa = phi ptr [ %i.af, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_10ConstantOpEEEmRKT0_b.exit ], [ %i.bw, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  store i64 %..i, ptr %2, align 8
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread
  %i.ak = phi i32 [ %i.z, %.lr.ph ], [ %i.bt, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread ] ; 5 uses
  %i.al = phi i64 [ %i.ah, %.lr.ph ], [ %i.by, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.am = phi ptr [ %i.af, %.lr.ph ], [ %i.bw, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread ] ; 6 uses
  %.02438 = phi i64 [ %i.ac, %.lr.ph ], [ %i.bv, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.an = icmp eq i64 %i.al, %..i
  br i1 %i.an, label %bb.j, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.aj, align 8, !nonnull !6, !align !7
  %.sroa.0.0.copyload = load i32, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = zext i32 %.sroa.0.0.copyload to i64
  %i.at = add i64 %i.ar, %i.as
  %i.au = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = icmp eq i8 %i.av, 75
  br i1 %i.aw, label %bb.k, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ay = load i8, ptr %i.ax, align 4
  %.not.i.i = icmp eq i8 %i.ay, %i.b
  br i1 %.not.i.i, label %bb.l, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 5 uses
  switch i8 %i.b, label %bb.m [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit
    i8 1, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit
    i8 4, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit
    i8 6, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit
    i8 11, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit
    i8 12, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit
    i8 14, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit
    i8 13, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit
    i8 2, label %.split32
    i8 3, label %.split31
    i8 5, label %.split31
    i8 7, label %.split30
    i8 8, label %.split
    i8 9, label %.split
    i8 10, label %.split
  ]

.split32:                                         ; preds = %bb.l
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = icmp eq i32 %i.ba, %i.ak
  br i1 %i.bb, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread

.split31:                                         ; preds = %bb.l, %bb.l
  %i.bc = load i64, ptr %i.az, align 8
  %i.bd = load i64, ptr %i.c, align 8             ; 2 uses
  %i.be = icmp eq i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.bd to i32
  br i1 %i.be, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread

.split30:                                         ; preds = %bb.l
  %i.bg = load i64, ptr %i.az, align 8
  %i.bh = load i64, ptr %i.c, align 8             ; 2 uses
  %i.bi = icmp eq i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bh to i32
  br i1 %i.bi, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread

.split:                                           ; preds = %bb.l, %bb.l, %bb.l
  %i.bk = load ptr, ptr %i.az, align 8
  %i.bl = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = trunc i64 %i.bn to i32
  br i1 %i.bm, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread

bb.m:                                             ; preds = %bb.l
  unreachable

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.bp = load i64, ptr %i.az, align 8
  %i.bq = load i64, ptr %i.c, align 8             ; 2 uses
  %i.br = icmp eq i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.bq to i32
  br i1 %i.br, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.j, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit, %.split, %.split30, %.split31, %.split32, %bb.k, %bb.i
  %i.bt = phi i32 [ %i.ak, %bb.j ], [ %i.bs, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit ], [ %i.bo, %.split ], [ %i.bj, %.split30 ], [ %i.bf, %.split31 ], [ %i.ak, %.split32 ], [ %i.ak, %bb.k ], [ %i.ak, %bb.i ]
  %i.bu = add i64 %.02438, 1
  %i.bv = and i64 %i.ab, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.bv ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %._crit_edge, label %bb.i, !llvm.loop !134

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit, %.split, %.split30, %.split31, %.split32, %._crit_edge, %bb.h
  %i.ca = phi ptr [ %.lcssa, %bb.h ], [ %.lcssa, %._crit_edge ], [ %i.am, %.split32 ], [ %i.am, %.split31 ], [ %i.am, %.split30 ], [ %i.am, %.split ], [ %i.am, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.ca
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = add i64 %i.r, -4
  %3 = sub i64 %2, %i.g                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !135

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !136

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE16ReduceProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(1096) %0, i32 %1, i16 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = zext i32 %1 to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = icmp eq i8 %i.j, 96
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = zext i16 %2 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l
  %.sroa.0.0.copyload.i = load i32, ptr %i.n, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %bb.d, label %_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE97ENS2_21UniformReducerAdapterIS3_SK_E28ReduceProjectionContinuationEJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT1_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.u, align 4 ; 2 uses
  %i.v = tail call i32 @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE16LoadCounterValueEi(ptr noundef nonnull align 8 dereferenceable(192) %i.a, i32 noundef %.sroa.0.0.copyload.i.i), !inline_history !137 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 4 uses
  %i.x = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.w, i64 0, i32 %i.v, i64 4294967297, i32 -1), !inline_history !137 ; 2 uses
  %i.y = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.w, i64 0, i32 %i.x, i64 0, i32 %i.v), !inline_history !137
  %i.z = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9Word32SubENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.w, i64 4294967296, i32 -1, i64 0, i32 %i.y), !inline_history !137
  %i.aa = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Word32BitwiseOrENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.w, i64 0, i32 %i.x, i64 0, i32 %i.z), !inline_history !137
  tail call void @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE17StoreCounterValueEiNS2_1VINS2_12WordWithBitsILm32EEEEE(ptr noundef nonnull align 8 dereferenceable(192) %i.a, i32 noundef %.sroa.0.0.copyload.i.i, i32 %i.aa), !inline_history !137
  br label %_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE97ENS2_21UniformReducerAdapterIS3_SK_E28ReduceProjectionContinuationEJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT1_.exit

_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE97ENS2_21UniformReducerAdapterIS3_SK_E28ReduceProjectionContinuationEJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT1_.exit: ; preds = %bb.c, %bb.d
  %i.ab = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i32 %1, i16 noundef zeroext %2, i8 %3), !inline_history !138
  %i.ac = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_12ProjectionOpEEENS2_7OpIndexESK_(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i32 %i.ab), !inline_history !138
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE97ENS2_21UniformReducerAdapterIS3_SK_E28ReduceProjectionContinuationEJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT1_.exit
  %.sroa.012.1 = phi i32 [ %i.ac, %_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE97ENS2_21UniformReducerAdapterIS3_SK_E28ReduceProjectionContinuationEJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT1_.exit ], [ %.sroa.0.0.copyload.i, %bb.b ]
  ret i32 %.sroa.012.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_12ProjectionOpEEENS2_7OpIndexESK_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.n = load i8, ptr %i.m, align 1, !noalias !139 ; 2 uses
  %i.o = load i16, ptr %i.l, align 2, !noalias !139 ; 2 uses
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
  %i.ai = load ptr, ptr %i.d, align 8, !nonnull !6, !align !7
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %.sroa.0.0.copyload.i to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr               ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = icmp eq i8 %i.ap, 97
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10RttCanonOpEJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEENS2_7OpIndexEDpT0_:bb.a
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
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit
  %i.ar = add nuw i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %.sroa.0.0.copyload.i = load i32, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 5 uses
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #4 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = add i64 %i.r, -4
  %3 = sub i64 %2, %i.g                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !255

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !256

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #4 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE92ENS2_21UniformReducerAdapterIS3_SK_E28ReduceFrameStateContinuationEJNSA_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataEEEESS_DpT1_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 4 ; 2 uses
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE16LoadCounterValueEi(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %.sroa.0.0.copyload.i), !inline_history !109 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 4 uses
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 0, i32 %i.h, i64 4294967297, i32 -1), !inline_history !109 ; 2 uses
  %i.k = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 0, i32 %i.j, i64 0, i32 %i.h), !inline_history !109
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9Word32SubENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 4294967296, i32 -1, i64 0, i32 %i.k), !inline_history !109
  %i.m = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Word32BitwiseOrENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 0, i32 %i.j, i64 0, i32 %i.l), !inline_history !109
  tail call void @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE17StoreCounterValueEiNS2_1VINS2_12WordWithBitsILm32EEEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %.sroa.0.0.copyload.i, i32 %i.m), !inline_history !109
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_12FrameStateOpEJNS2_27ShadowyOpIndexVectorWrapperEbPKNS2_14FrameStateDataEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef %4)
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_12FrameStateOpEEENS2_7OpIndexESK_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.n)
  ret i32 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_12FrameStateOpEEENS2_7OpIndexESK_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 5 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !align !7
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.o, align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  %i.s = zext i16 %i.r to i64
  %i.t = load i8, ptr %i.l, align 4, !range !24, !noundef !6
  %.idx.i.i.i18 = shl nuw nsw i64 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i18
  %.not.i.i14.i.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.i14.i.i.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit, label %.lr.ph.i.i.i19

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
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit, label %.lr.ph.i.i.i19, !llvm.loop !149

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit: ; preds = %.lr.ph.i.i.i19, %bb.b
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
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE21ReduceCatchBlockBeginEv:bb.a
  %i.ac = phi ptr [ %.pre, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %.not17 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE9push_backES5_.exit, %bb.c, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit, label %bb.e, !prof !5

bb.e:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = load ptr, ptr %1, align 8               ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ag, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE9ReducePhiENSB_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr %i.ah, i64 %i.ak, i8 4)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit: ; preds = %._crit_edge, %bb.e
  %.sroa.05.0.i.i = phi i32 [ %i.al, %bb.e ], [ -1, %._crit_edge ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.g

.lr.ph:                                           ; preds = %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE9push_backES5_.exit
  %.018 = phi ptr [ %i.at, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE9push_backES5_.exit ], [ %i.ac, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit ] ; 2 uses
  %i.am = load ptr, ptr %.018, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %.sroa.0.0.copyload.i = load i32, ptr %i.an, align 4
  %i.ao = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ap = load ptr, ptr %i.i, align 8
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE9push_backES5_.exit, !prof !5

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

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit, %bb.b
  %.sroa.016.0 = phi i32 [ %i.f, %bb.b ], [ %.sroa.05.0.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit ]
  ret i32 %.sroa.016.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_17CatchBlockBeginOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, !prof !5

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
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = add i64 %i.r, -4
  %3 = sub i64 %2, %i.g                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !563

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !564

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE27AssembleOutputGraphTailCallERKNS2_10TailCallOpE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.r, ptr %2, align 8, !alias.scope !571
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !571
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.u, ptr %i.t, align 8, !alias.scope !571
  %.idx.i.i = shl nuw nsw i64 %i.q, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i
  %.not11.i.i = icmp eq i64 %i.q, 0
  br i1 %.not11.i.i, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm16EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 840
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.al, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i ] ; 2 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %.012.i.i, align 4, !noalias !571
  %i.x = lshr i32 %.sroa.02.0.copyload.i.i, 4
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !noalias !571
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !571
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.ae = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.ae, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.af, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.d
  %.sroa.014.0.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  %i.ag = load ptr, ptr %i.s, align 8, !alias.scope !571 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !alias.scope !571
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !571
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.s, align 8, !alias.scope !571
  store i32 %.sroa.014.0.i.i.i, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i3, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm16EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit.loopexit, label %bb.d

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm16EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit.loopexit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i
  %.pre = load ptr, ptr %2, align 8
  %.pre4 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm16EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm16EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm16EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit.loopexit, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit
  %i.am = phi ptr [ %.pre4, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm16EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit ]
  %i.an = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm16EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit ] ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i32 @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE2ENS2_21UniformReducerAdapterIS3_SK_E26ReduceTailCallContinuationEJNS2_7OpIndexENSA_6VectorISR_EEPKNS2_16TSCallDescriptorEEEESR_DpT1_(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 %.sroa.014.0.i.i, ptr %i.an, i64 %i.ar, ptr noundef %i.at)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.au
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = add i64 %i.r, -4
  %3 = sub i64 %2, %i.g                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !572

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !573

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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE2ENS2_21UniformReducerAdapterIS3_SK_E26ReduceTailCallContinuationEJNS2_7OpIndexENSA_6VectorISR_EEPKNS2_16TSCallDescriptorEEEESR_DpT1_(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 %1, ptr %2, i64 %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 4 ; 2 uses
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE16LoadCounterValueEi(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %.sroa.0.0.copyload.i), !inline_history !109 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 4 uses
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 0, i32 %i.h, i64 4294967297, i32 -1), !inline_history !109 ; 2 uses
  %i.k = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 0, i32 %i.j, i64 0, i32 %i.h), !inline_history !109
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9Word32SubENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 4294967296, i32 -1, i64 0, i32 %i.k), !inline_history !109
  %i.m = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Word32BitwiseOrENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 0, i32 %i.j, i64 0, i32 %i.l), !inline_history !109
  tail call void @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE17StoreCounterValueEiNS2_1VINS2_12WordWithBitsILm32EEEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %.sroa.0.0.copyload.i, i32 %i.m), !inline_history !109
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESJ_DpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1, ptr %2, i64 %3, ptr noundef %4)
  ret i32 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESJ_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = add i64 %3, 6
  %i.k = lshr i64 %i.j, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.e
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.r = sub i64 %i.n, %i.h
  %i.s = lshr exact i64 %i.r, 3
  %i.t = and i64 %i.s, 4294967295
  %i.u = add nuw i64 %i.t, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre12 = ptrtoint ptr %.pre to i64
  %.pre13 = sub i64 %.pre10.i.i.i.i, %.pre12
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi14 = phi i64 [ %.pre13, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 8 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi14 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi14, 4
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
  store i8 2, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.an = trunc i64 %3 to i16
  %i.ao = add i16 %i.an, 1                        ; 3 uses
  store i16 %i.ao, ptr %i.am, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  store i32 %1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 2 uses
  %i.as = icmp ugt i64 %3, 1
  br i1 %i.as, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i = shl nuw nsw i64 %3, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %2, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.at = icmp eq i64 %3, 1
  br i1 %i.at, label %bb.e, label %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit

bb.e:                                             ; preds = %bb.d
  %i.au = load i32, ptr %2, align 4
  store i32 %i.au, ptr %i.ar, align 4
  br label %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit

_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit: ; preds = %bb.c, %bb.d, %bb.e
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESJ_DpT0_:bb.a
  %.pre.i.i.i.i.i = load ptr, ptr %i.dp, align 8
  br label %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i: ; preds = %bb.l, %bb.k
  %i.ek = phi ptr [ %.pre.i.i.i.i.i, %bb.l ], [ %i.dw, %bb.k ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.du
  store i32 %.sroa.0.0.copyload.i19.i.i, ptr %i.el, align 4
  %i.em = load ptr, ptr %i.ds, align 8
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %i.du
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = zext i16 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 3
  %i.er = add i32 %i.eq, %.sroa.0.029.i.i         ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.er, %i.dk
  br i1 %.not.i.i11, label %.loopexit, label %bb.k

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, %bb.j
  %i.es = trunc i64 %i.i to i32
  store ptr null, ptr %i.db, align 8
  ret i32 %i.es
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE25AssembleOutputGraphReturnERKNS2_8ReturnOpE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 4 dereferenceable(5) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.1308", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.r, ptr %2, align 8, !alias.scope !583
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !583
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.u, ptr %i.t, align 8, !alias.scope !583
  %.idx.i.i = shl nuw nsw i64 %i.q, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i
  %.not11.i.i = icmp eq i64 %i.q, 0
  br i1 %.not11.i.i, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm4EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 840
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.al, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i ] ; 2 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %.012.i.i, align 4, !noalias !583
  %i.x = lshr i32 %.sroa.02.0.copyload.i.i, 4
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !noalias !583
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !583
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.ae = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.ae, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.af, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.d
  %.sroa.014.0.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  %i.ag = load ptr, ptr %i.s, align 8, !alias.scope !583 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !alias.scope !583
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !583
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.s, align 8, !alias.scope !583
  store i32 %.sroa.014.0.i.i.i, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i3, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm4EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit.loopexit, label %bb.d

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm4EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit.loopexit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i
  %.pre = load ptr, ptr %2, align 8
  %.pre4 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm4EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm4EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm4EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit.loopexit, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit
  %i.am = phi ptr [ %.pre4, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm4EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit ]
  %i.an = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapILm4EEENSC_11SmallVectorINS2_7OpIndexEXT_ESaIST_EEENSC_6VectorIKST_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit ] ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = load i8, ptr %i.as, align 4, !range !24, !noundef !6
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = call i32 @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE4ENS2_21UniformReducerAdapterIS3_SK_E24ReduceReturnContinuationEJNS2_7OpIndexENSA_6VectorISR_EEbEEESR_DpT1_(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 %.sroa.014.0.i.i, ptr %i.an, i64 %i.ar, i1 noundef zeroext %i.au)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.av
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = add i64 %i.r, -4
  %3 = sub i64 %2, %i.g                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !584

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !585

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE4ENS2_21UniformReducerAdapterIS3_SK_E24ReduceReturnContinuationEJNS2_7OpIndexENSA_6VectorISR_EEbEEESR_DpT1_(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 %1, ptr %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 4 ; 2 uses
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE16LoadCounterValueEi(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %.sroa.0.0.copyload.i), !inline_history !109 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 4 uses
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 0, i32 %i.h, i64 4294967297, i32 -1), !inline_history !109 ; 2 uses
  %i.k = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 0, i32 %i.j, i64 0, i32 %i.h), !inline_history !109
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9Word32SubENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 4294967296, i32 -1, i64 0, i32 %i.k), !inline_history !109
  %i.m = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Word32BitwiseOrENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESJ_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 0, i32 %i.j, i64 0, i32 %i.l), !inline_history !109
  tail call void @_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE17StoreCounterValueEiNS2_1VINS2_12WordWithBitsILm32EEEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %.sroa.0.0.copyload.i, i32 %i.m), !inline_history !109
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_8ReturnOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEbEEESJ_DpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1, ptr %2, i64 %3, i1 noundef zeroext %4)
  ret i32 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_8ReturnOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEbEEESJ_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = add i64 %3, 4
  %i.k = lshr i64 %i.j, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.e
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.r = sub i64 %i.n, %i.h
  %i.s = lshr exact i64 %i.r, 3
  %i.t = and i64 %i.s, 4294967295
  %i.u = add nuw i64 %i.t, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre13 = ptrtoint ptr %.pre to i64
  %.pre14 = sub i64 %.pre10.i.i.i.i, %.pre13
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi15 = phi i64 [ %.pre14, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 8 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi15 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi15, 4
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
  %i.al = zext i1 %4 to i8
  store i8 4, ptr %i.v, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ao = trunc i64 %3 to i16
  %i.ap = add i16 %i.ao, 1                        ; 3 uses
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.al, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  store i32 %1, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.at = icmp ugt i64 %3, 1
  br i1 %i.at, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i = shl nuw nsw i64 %3, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.as, ptr align 4 %2, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft8ReturnOp3NewEPNS2_5GraphENS2_1VINS2_12WordWithBitsILm32EEEEENS_4base6VectorIKNS2_7OpIndexEEEb.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.au = icmp eq i64 %3, 1
  br i1 %i.au, label %bb.e, label %_ZN2v88internal8compiler10turboshaft8ReturnOp3NewEPNS2_5GraphENS2_1VINS2_12WordWithBitsILm32EEEEENS_4base6VectorIKNS2_7OpIndexEEEb.exit

bb.e:                                             ; preds = %bb.d
  %i.av = load i32, ptr %2, align 4
  store i32 %i.av, ptr %i.as, align 4
  br label %_ZN2v88internal8compiler10turboshaft8ReturnOp3NewEPNS2_5GraphENS2_1VINS2_12WordWithBitsILm32EEEEENS_4base6VectorIKNS2_7OpIndexEEEb.exit

end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10ResolvePhiIZNSM_22AssembleOutputGraphPhiERKNS2_5PhiOpEEUlNS2_7OpIndexEiiE_EESR_SQ_OT_NS2_22RegisterRepresentationE:bb.a
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %.not.i.i81 = icmp eq i32 %i.bq, -1
  br i1 %.not.i.i81, label %bb.m, label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit88

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 840
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bm ; 2 uses
  %.sroa.02.0.copyload.i.i.i83 = load ptr, ptr %i.bt, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i84 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.2.0.copyload.i.i.i85 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i84, align 8
  %i.bu = icmp eq i32 %.057129, -1
  %i.bv = trunc nuw i8 %.sroa.2.0.copyload.i.i.i85 to i1 ; 2 uses
  br i1 %i.bu, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %i.bv, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i86, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i86: ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i83, i64 16
  %.sroa.02.0.copyload.i10.i.i87 = load i32, ptr %i.bw, align 4
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit88

bb.p:                                             ; preds = %bb.m
  br i1 %i.bv, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i: ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i83, i64 20
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = icmp eq i32 %i.by, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i83, i64 16
  %i.cb = add i32 %i.by, %.057129
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 480
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cc
  %.0.i.i.i.i = select i1 %i.bz, ptr %i.ca, ptr %i.cf
  %.sroa.02.0.copyload.i12.i.i = load i32, ptr %.0.i.i.i.i, align 4
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit88

_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit88: ; preds = %bb.l, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i86, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i
  %.sroa.014.0.i.i82 = phi i32 [ %i.bq, %bb.l ], [ %.sroa.02.0.copyload.i12.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i ], [ %.sroa.02.0.copyload.i10.i.i87, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i86 ]
  %i.cg = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.ch = load ptr, ptr %i.av, align 8
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.r, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit, !prof !5

bb.r:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit88
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %4)
  %.pre.i.i = load ptr, ptr %i.au, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit88, %bb.r
  %i.cj = phi ptr [ %.pre.i.i, %bb.r ], [ %i.cg, %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit88 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store ptr %i.ck, ptr %i.au, align 8
  store i32 %.sroa.014.0.i.i82, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.055130, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = add nsw i32 %.057129, -1
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit, %bb.k, %.lr.ph
  %.158 = phi i32 [ %i.cn, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit ], [ %.057129, %bb.k ], [ %.057129, %.lr.ph ]
  %.156 = phi ptr [ %i.cm, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit ], [ %.055130, %bb.k ], [ null, %.lr.ph ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0131, i64 64
  %i.cp = icmp eq i64 %.sroa.0105.0.add, 8
  br i1 %i.cp, label %._crit_edge, label %.lr.ph

bb.t:                                             ; preds = %._crit_edge
  %i.cq = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %.1132 = load ptr, ptr %i.cr, align 8           ; 2 uses
  %.not62133 = icmp eq ptr %.1132, null
  br i1 %.not62133, label %._crit_edge138, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.ct = load i32, ptr %i.cs, align 8
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %.lr.ph137
  %.1135 = phi ptr [ %.1, %.lr.ph137 ], [ %.1132, %.lr.ph137.preheader ] ; 2 uses
  %.061.in134 = phi i32 [ %.061, %.lr.ph137 ], [ %i.ct, %.lr.ph137.preheader ]
  %.061 = add i32 %.061.in134, -1                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1135, i64 96
  store i32 %.061, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.1135, i64 64
  %.1 = load ptr, ptr %i.cv, align 8              ; 2 uses
  %.not62 = icmp eq ptr %.1, null
  br i1 %.not62, label %._crit_edge138, label %.lr.ph137, !llvm.loop !1133

._crit_edge138:                                   ; preds = %.lr.ph137, %bb.t
  %i.cw = load ptr, ptr %4, align 8
  store ptr %i.cw, ptr %i.au, align 8
  %i.cx = load ptr, ptr %i.y, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %.2139 = load ptr, ptr %i.cy, align 8           ; 2 uses
  %.not63140 = icmp eq ptr %.2139, null
  br i1 %.not63140, label %.loopexit, label %.lr.ph144

.lr.ph144:                                        ; preds = %._crit_edge138, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101
  %.2142 = phi ptr [ %.2, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101 ], [ %.2139, %._crit_edge138 ] ; 2 uses
  %.259141 = phi i32 [ %i.eg, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101 ], [ %i.bc, %._crit_edge138 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.2142, i64 88
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.dd
  %.sroa.04.0.copyload = load i32, ptr %i.de, align 4
  %i.df = load ptr, ptr %2, align 8               ; 3 uses
  %i.dg = lshr i32 %.sroa.04.0.copyload, 4
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 736
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dh
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %.not.i.i89 = icmp eq i32 %i.dl, -1
  br i1 %.not.i.i89, label %bb.u, label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit99

bb.u:                                             ; preds = %.lr.ph144
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 840
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.dh ; 2 uses
  %.sroa.02.0.copyload.i.i.i91 = load ptr, ptr %i.do, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i92 = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.2.0.copyload.i.i.i93 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i92, align 8
  %i.dp = icmp eq i32 %.259141, -1
  %i.dq = trunc nuw i8 %.sroa.2.0.copyload.i.i.i93 to i1 ; 2 uses
  br i1 %i.dp, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  br i1 %i.dq, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i97, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i97: ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i91, i64 16
  %.sroa.02.0.copyload.i10.i.i98 = load i32, ptr %i.dr, align 4
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit99

bb.x:                                             ; preds = %bb.u
  br i1 %i.dq, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i94, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i94: ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i91, i64 20
  %i.dt = load i32, ptr %i.ds, align 4            ; 2 uses
  %i.du = icmp eq i32 %i.dt, -1
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i91, i64 16
  %i.dw = add i32 %i.dt, %.259141
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 480
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  %.0.i.i.i.i95 = select i1 %i.du, ptr %i.dv, ptr %i.ea
  %.sroa.02.0.copyload.i12.i.i96 = load i32, ptr %.0.i.i.i.i95, align 4
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit99

_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit99: ; preds = %.lr.ph144, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i97, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i94
  %.sroa.014.0.i.i90 = phi i32 [ %i.dl, %.lr.ph144 ], [ %.sroa.02.0.copyload.i12.i.i96, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i94 ], [ %.sroa.02.0.copyload.i10.i.i98, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i97 ]
  %i.eb = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.ec = load ptr, ptr %i.av, align 8
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %bb.z, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101, !prof !5

bb.z:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit99
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %4)
  %.pre.i.i100 = load ptr, ptr %i.au, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101: ; preds = %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit99, %bb.z
  %i.ee = phi ptr [ %.pre.i.i100, %bb.z ], [ %i.eb, %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit99 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store ptr %i.ef, ptr %i.au, align 8
  store i32 %.sroa.014.0.i.i90, ptr %i.ee, align 4
  %i.eg = add nsw i32 %.259141, -1
  %i.eh = getelementptr inbounds nuw i8, ptr %.2142, i64 64
  %.2 = load ptr, ptr %i.eh, align 8              ; 2 uses
  %.not63 = icmp eq ptr %.2, null
  br i1 %.not63, label %.loopexit, label %.lr.ph144, !llvm.loop !1134

.loopexit:                                        ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101, %._crit_edge138, %._crit_edge
  %i.ei = load ptr, ptr %i.au, align 8            ; 5 uses
  %i.ej = load ptr, ptr %4, align 8               ; 11 uses
  %i.ek = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.el = ptrtoint ptr %i.ej to i64               ; 7 uses
  %i.em = sub i64 %i.ek, %i.el                    ; 2 uses
  %i.en = icmp eq i64 %i.em, 4
  br i1 %i.en, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit
  %.sroa.054.0.copyload = load i32, ptr %i.ej, align 4
  br label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  %i.eo = icmp ne ptr %i.ej, %i.ei
  %.012.i.i = getelementptr inbounds i8, ptr %i.ei, i64 -4 ; 5 uses
  %i.ep = icmp ult ptr %i.ej, %.012.i.i
  %or.cond.i.i = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ab
  %i.eq = add i64 %i.ek, -8
  %i.er = add i64 %i.el, 4
  %i.es = call i64 @llvm.umax.i64(i64 %i.eq, i64 %i.er)
  %5 = add i64 %i.es, -4                          ; 2 uses
  %i.et = icmp ne i64 %5, %i.el
  %i.eu = zext i1 %i.et to i64                    ; 2 uses
  %6 = add i64 %i.el, %i.eu
  %7 = sub i64 %5, %6
  %i.ev = lshr i64 %7, 3
  %i.ew = add nuw nsw i64 %i.ev, %i.eu            ; 2 uses
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ew, 31
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader168, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ey = add i64 %i.ek, -8
  %i.ez = add i64 %i.el, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.ez)
  %i.fa = add i64 %umax, -4                       ; 2 uses
  %i.fb = icmp ne i64 %i.fa, %i.el
  %umin = zext i1 %i.fb to i64                    ; 2 uses
  %i.fc = add i64 %i.el, %umin
  %i.fd = sub i64 %i.fa, %i.fc
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = add nuw nsw i64 %i.fe, %umin
  %i.fg = shl nuw i64 %i.ff, 2                    ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ej, i64 %i.fg
  %scevgep = getelementptr i8, ptr %i.fh, i64 4
  %i.fi = sub nuw nsw i64 -4, %i.fg
  %scevgep159 = getelementptr i8, ptr %i.ei, i64 %i.fi
  %bound0 = icmp ult ptr %i.ej, %i.ei
  %bound1 = icmp ult ptr %scevgep159, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader168, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ex, 9223372036854775800     ; 4 uses
  %i.fj = mul i64 %n.vec, -4
  %i.fk = getelementptr i8, ptr %.012.i.i, i64 %i.fj
  %i.fl = shl i64 %n.vec, 2
  %i.fm = getelementptr i8, ptr %i.ej, i64 %i.fl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fn = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.012.i.i, i64 %i.fn ; 2 uses
  %i.fo = shl i64 %index, 2
  %next.gep160 = getelementptr i8, ptr %i.ej, i64 %i.fo ; 3 uses
  %i.fp = getelementptr i8, ptr %next.gep160, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep160, align 4, !alias.scope !1135, !noalias !1138
  %wide.load161 = load <4 x i32>, ptr %i.fp, align 4, !alias.scope !1135, !noalias !1138
  %i.fq = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %i.fr = getelementptr i8, ptr %next.gep, i64 -28 ; 2 uses
  %wide.load162 = load <4 x i32>, ptr %i.fq, align 4, !alias.scope !1138
  %wide.load163 = load <4 x i32>, ptr %i.fr, align 4, !alias.scope !1138
  %reverse = shufflevector <4 x i32> %wide.load162, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse164 = shufflevector <4 x i32> %wide.load163, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep160, align 4, !alias.scope !1135, !noalias !1138
  store <4 x i32> %reverse164, ptr %i.fp, align 4, !alias.scope !1135, !noalias !1138
  %reverse165 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse166 = shufflevector <4 x i32> %wide.load161, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse165, ptr %i.fq, align 4, !alias.scope !1138
  store <4 x i32> %reverse166, ptr %i.fr, align 4, !alias.scope !1138
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !1140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ex, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit, label %.lr.ph.i.i.preheader168

.lr.ph.i.i.preheader168:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.014.i.i.ph = phi ptr [ %.012.i.i, %vector.memcheck ], [ %.012.i.i, %.lr.ph.i.i.preheader ], [ %i.fk, %middle.block ]
  %.0913.i.i.ph = phi ptr [ %i.ej, %vector.memcheck ], [ %i.ej, %.lr.ph.i.i.preheader ], [ %i.fm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader168, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.014.i.i.ph, %.lr.ph.i.i.preheader168 ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.fu, %.lr.ph.i.i ], [ %.0913.i.i.ph, %.lr.ph.i.i.preheader168 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0913.i.i, align 4
  %i.ft = load i32, ptr %.014.i.i, align 4
  store i32 %i.ft, ptr %.0913.i.i, align 4
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.014.i.i, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 4 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -4 ; 2 uses
  %i.fv = icmp ult ptr %i.fu, %.0.i.i
  br i1 %i.fv, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit, !llvm.loop !1141

_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit: ; preds = %.lr.ph.i.i, %middle.block
  %.pre = load ptr, ptr %4, align 8               ; 2 uses
  %.pre145 = load ptr, ptr %i.au, align 8
  %.pre146 = ptrtoint ptr %.pre145 to i64
  %.pre147 = ptrtoint ptr %.pre to i64
  %.pre149 = sub i64 %.pre146, %.pre147
  br label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit

_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit: ; preds = %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit, %bb.ab
  %.pre-phi150 = phi i64 [ %.pre149, %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit ], [ %i.em, %bb.ab ]
  %i.fw = phi ptr [ %.pre, %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit ], [ %i.ej, %bb.ab ]
  %i.fx = ashr exact i64 %.pre-phi150, 2
  %i.fy = call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEEEE9ReducePhiENSB_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr %i.fw, i64 %i.fx, i8 %3)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit, %bb.aa
  %.sroa.054.1 = phi i32 [ %.sroa.054.0.copyload, %bb.aa ], [ %i.fy, %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit

_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit: ; preds = %bb.ac, %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit76, %bb.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, %bb.b
  %.sroa.054.3 = phi i32 [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ], [ %i.k, %bb.b ], [ %.sroa.054.1, %bb.ac ], [ %.sroa.014.0.i.i70, %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESQ_ii.exit76 ], [ %i.as, %bb.i ]
  ret i32 %.sroa.054.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20ReducerBaseForwarderINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE26ReduceInputGraphFrameStateENS2_7OpIndexERKNS2_12FrameStateOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::SmallVector.948", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.c = load i16, ptr %i.b, align 2              ; 2 uses
  %i.d = zext i16 %i.c to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %i.e, ptr %3, align 8, !alias.scope !1142
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %i.e, ptr %i.f, align 8, !alias.scope !1142
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 152
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !1142
  %.idx.i = shl nuw nsw i64 %i.d, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i
  %.not11.i = icmp eq i16 %i.c, 0
  br i1 %.not11.i, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSB_6VectorIKSP_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 840
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit.i, %.lr.ph.i
  %.012.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.z, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit.i ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %.012.i, align 4, !noalias !1142
  %i.l = lshr i32 %.sroa.02.0.copyload.i, 4
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = load ptr, ptr %i.j, align 8, !noalias !1142
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, -1
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.k, align 8, !noalias !1142
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.m ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.s = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.s, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.c
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.t, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, %bb.b
  %.sroa.014.0.i.i = phi i32 [ %i.p, %bb.b ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  %i.u = load ptr, ptr %i.f, align 8, !alias.scope !1142 ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !alias.scope !1142
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit.i, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %3)
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1142
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit.i: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i
  %i.x = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.u, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESO_i.exit.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.f, align 8, !alias.scope !1142
  store i32 %.sroa.014.0.i.i, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.i
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSB_6VectorIKSP_EE.exit.loopexit, label %bb.b

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSB_6VectorIKSP_EE.exit.loopexit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit.i
  %.pre = load ptr, ptr %3, align 8
  %.pre3 = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSB_6VectorIKSP_EE.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSB_6VectorIKSP_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSB_6VectorIKSP_EE.exit.loopexit, %bb.a
  %i.aa = phi ptr [ %.pre3, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSB_6VectorIKSP_EE.exit.loopexit ], [ %i.e, %bb.a ]
  %i.ab = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSB_6VectorIKSP_EE.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !range !24, !noundef !6
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft27BlockInstrumentationReducerINS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S6_S8_EEEEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE171ENS2_21UniformReducerAdapterIS3_SK_E30ReduceJSStackCheckContinuationEJNS2_7OpIndexENS2_15OptionalOpIndexENS2_14JSStackCheckOp4KindEEEESR_DpT1_:bb.a
  %i.ag = icmp eq i8 %i.af, 2
  br i1 %i.ag, label %_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEE30ReduceJSStackCheckContinuation6ReduceIJNS2_7OpIndexENS2_15OptionalOpIndexENS2_14JSStackCheckOp4KindEEEEDaDpT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4
  br label %_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEE30ReduceJSStackCheckContinuation6ReduceIJNS2_7OpIndexENS2_15OptionalOpIndexENS2_14JSStackCheckOp4KindEEEEDaDpT_.exit

_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S7_S9_EEEEEEEEEEEEEEEE30ReduceJSStackCheckContinuation6ReduceIJNS2_7OpIndexENS2_15OptionalOpIndexENS2_14JSStackCheckOp4KindEEEEDaDpT_.exit: ; preds = %bb.c, %bb.d
  ret i32 %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_14JSStackCheckOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSG_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre14 = ptrtoint ptr %.pre to i64
  %.pre15 = sub i64 %.pre10.i.i.i.i, %.pre14
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi16 = phi i64 [ %.pre15, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.s = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi16 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi16, 4
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
  %.not.i.i.i = icmp eq i32 %2, -1                ; 2 uses
  store i8 -85, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ai = select i1 %.not.i.i.i, i16 1, i16 2
  store i16 %i.ai, ptr %i.ah, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i32 %1, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  br i1 %.not.i.i.i, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft14JSStackCheckOp3NewEPNS2_5GraphENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS3_4KindE.exit

_ZN2v88internal8compiler10turboshaft14JSStackCheckOp3NewEPNS2_5GraphENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS3_4KindE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  store i32 %2, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, %_ZN2v88internal8compiler10turboshaft14JSStackCheckOp3NewEPNS2_5GraphENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS3_4KindE.exit
  %i.an = phi ptr [ %i.am, %_ZN2v88internal8compiler10turboshaft14JSStackCheckOp3NewEPNS2_5GraphENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS3_4KindE.exit ], [ %i.al, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i ]
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %.lr.ph.i
  %.011.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.aw, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.ao = load ptr, ptr %i.f, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = zext i32 %.sroa.01.0.copyload.i to i64
  %i.ar = add i64 %i.ap, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.au, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.av = add nuw i8 %i.au, 1
  store i8 %i.av, ptr %i.at, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.d, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %i.an
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit, label %bb.c

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.ax, align 4
  %i.ay = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
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
  br i1 %.not.i.i9, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !8

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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %2 = add i64 %i.r, -4
  %3 = sub i64 %2, %i.g                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1592

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1593

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #4 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4
  switch i8 %i.a, label %bb.ay [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 1, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 2, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 3, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 4, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 5, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 6, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 7, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 8, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 9, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 10, label %bb.b
    i8 11, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 12, label %bb.c
    i8 13, label %bb.d
    i8 14, label %bb.c
    i8 15, label %bb.d
    i8 16, label %bb.c
    i8 17, label %bb.c
    i8 18, label %bb.d
    i8 19, label %bb.c
    i8 20, label %bb.c
    i8 21, label %bb.c
    i8 22, label %bb.c
    i8 23, label %bb.e
    i8 24, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 25, label %bb.f
    i8 26, label %bb.g
    i8 27, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 28, label %bb.h
    i8 29, label %bb.d
    i8 30, label %bb.c
    i8 31, label %bb.c
    i8 32, label %bb.c
    i8 33, label %bb.c
    i8 34, label %bb.i
    i8 35, label %bb.j
    i8 36, label %bb.j
    i8 37, label %bb.j
    i8 38, label %bb.j
    i8 39, label %bb.j
    i8 40, label %bb.d
    i8 41, label %bb.j
    i8 42, label %bb.j
    i8 43, label %bb.k
    i8 44, label %bb.j
    i8 45, label %bb.n
    i8 46, label %bb.j
    i8 47, label %bb.j
    i8 48, label %bb.o
    i8 49, label %bb.j
    i8 50, label %bb.o
    i8 51, label %bb.o
    i8 52, label %bb.o
    i8 53, label %bb.o
    i8 54, label %bb.o
    i8 55, label %bb.o
    i8 56, label %bb.o
    i8 57, label %bb.o
    i8 58, label %bb.o
    i8 59, label %bb.o
    i8 60, label %bb.p
    i8 61, label %bb.q
    i8 62, label %bb.r
    i8 63, label %bb.s
    i8 64, label %bb.t
    i8 65, label %bb.u
    i8 66, label %bb.v
    i8 67, label %bb.w
    i8 68, label %bb.d
    i8 69, label %bb.x
    i8 70, label %bb.y
    i8 71, label %bb.as
    i8 72, label %bb.z
    i8 73, label %bb.aa
    i8 74, label %bb.ab
    i8 75, label %bb.ac
    i8 76, label %bb.ar
    i8 77, label %bb.ad
    i8 78, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 79, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 80, label %bb.ae
    i8 81, label %bb.c
    i8 82, label %bb.d
    i8 83, label %bb.ar
    i8 84, label %bb.af
    i8 85, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 86, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 87, label %bb.ar
    i8 88, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 89, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 90, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 91, label %bb.ag
    i8 92, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 93, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 94, label %bb.c
    i8 95, label %bb.ah
    i8 96, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 97, label %bb.ai
    i8 98, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 99, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 100, label %bb.aj
    i8 101, label %bb.ak
    i8 102, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 103, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 104, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 105, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 106, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 107, label %bb.c
    i8 108, label %bb.c
    i8 109, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 110, label %bb.c
    i8 111, label %bb.c
end_hunk_6
