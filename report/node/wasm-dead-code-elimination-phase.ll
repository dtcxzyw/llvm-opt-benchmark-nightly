inline.NumInlined: 39175
inline.NumDeleted: 13346
loop-unroll.NumCompletelyUnrolled: 195
loop-unroll.NumRuntimeUnrolled: 134
loop-unroll.NumUnrolled: 329
begin_hunk_0_@_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE4GrowEm:bb.a
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
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
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #20
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
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #15 comdat {
bb.a:
  tail call void @abort() #21
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES9_SA_SB_SC_SD_SE_SG_SI_EEEEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSK_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINS10_13VariableTableES4_S5_E16StartNewSnapshotIS18_EEvNS15_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENS15_IKT0_EEEEUlS14_RS16_S1P_E_EEvS1F_S1I_RS1N_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #21
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
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !143

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !144

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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #21
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
  br i1 %.not.i42, label %bb.l, label %bb.m, !prof !5

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #21
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
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
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.cd) #20
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
  %5 = ptrtoint ptr %.pn to i64                   ; 2 uses
  %i.ct = add i64 %5, %i.bk
  %i.cu = sub i64 %i.ct, %i.bl                    ; 2 uses
  %i.cv = add i64 %i.cu, %.idx
  %i.cw = add i64 %i.cu, 4
  %6 = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cw)
  %7 = add i64 %6, %i.bl
  %i.cx = add i64 %5, %i.bk
  %8 = xor i64 %i.cx, -1
  %9 = add i64 %7, %8                             ; 2 uses
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
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !145

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
  br i1 %i.dg, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !146

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

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.023.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.dx, %i.dv
  br i1 %.not.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.023.i = phi ptr [ %i.dt, %.lr.ph.i ], [ %i.dx, %bb.t ] ; 2 uses
  %i.dy = load i32, ptr %.023.i, align 4          ; 2 uses
  %.not21.i = icmp eq i32 %i.dy, -1
  br i1 %.not21.i, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSF_6VectorIKSZ_EEE_clES11_S14_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %bb.u
  %i.dz = load ptr, ptr %i.dw, align 8, !nonnull !6, !align !7
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ed = zext i32 %i.dy to i64
  %i.ee = add i64 %i.ec, %i.ed
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load i8, ptr %i.ef, align 4
  %i.eh = icmp eq i8 %i.eg, 76
  br i1 %i.eh, label %bb.v, label %bb.t

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 1224
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSF_6VectorIKSZ_EEE_clES11_S14_.exit, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  %i.el = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(176) %i.du)
  %i.em = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_18LoadRootRegisterOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(176) %i.du, i32 %i.el)
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSF_6VectorIKSZ_EEE_clES11_S14_.exit

._crit_edge.i:                                    ; preds = %bb.t
  %.sroa.0.0.copyload.i = load i8, ptr %i.do, align 8 ; 2 uses
  %.not.i.i38 = icmp eq i8 %.sroa.0.0.copyload.i, 8
  br i1 %.not.i.i38, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.du, i64 1224
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSF_6VectorIKSZ_EEE_clES11_S14_.exit, label %bb.y, !prof !5

bb.y:                                             ; preds = %bb.x
  %i.eq = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE9ReducePhiENSF_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(880) %i.du, ptr %i.dt, i64 %2, i8 %.sroa.0.0.copyload.i), !inline_history !147
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSF_6VectorIKSZ_EEE_clES11_S14_.exit

bb.z:                                             ; preds = %._crit_edge.i
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.dt, align 4
  %i.er = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.es = add i64 %i.ec, %i.er
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load i8, ptr %i.et, align 4
  %i.ev = icmp eq i8 %i.eu, 92
  br i1 %i.ev, label %bb.aa, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSF_6VectorIKSZ_EEE_clES11_S14_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ew = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE15MergeFrameStateENSF_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(880) %i.du, ptr nonnull %i.dt, i64 %2), !inline_history !147
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSF_6VectorIKSZ_EEE_clES11_S14_.exit

_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSF_6VectorIKSZ_EEE_clES11_S14_.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.copyload.i40 = phi i32 [ -1, %bb.z ], [ -1, %bb.v ], [ %i.em, %bb.w ], [ -1, %bb.x ], [ %i.ew, %bb.aa ], [ %i.eq, %bb.y ], [ -1, %bb.u ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8            ; 3 uses
  %.not62 = icmp eq i32 %i.ey, %.sroa.0.0.copyload.i40
  br i1 %.not62, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSF_6VectorIKSZ_EEE_clES11_S14_.exit
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
  store ptr %i.do, ptr %i.fi, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 %i.ey, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 %.sroa.0.0.copyload.i40, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %.sroa.0.0.copyload.i40, ptr %i.ex, align 8
  %i.fk = load ptr, ptr %4, align 8               ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !range !21, !noundef !6
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
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_:bb.a
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, !prof !5

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
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1244
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
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 2
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %.loopexit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds i8, ptr %0, i64 -24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = shl i64 %i.b, 1
  %i.l = tail call { ptr, i64 } @_ZN2v88internal4Zone9NewVectorINS0_8compiler10turboshaft21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_26DeadCodeEliminationReducerENS4_25StackCheckLoweringReducerENS4_21GrowableStacksReducerENS4_30LoadStoreSimplificationReducerENS4_30DuplicationOptimizationReducerENS4_40InstructionSelectionNormalizationReducerES5_S7_EEEEEEEEEE5EntryEA_SO_EENS9_6VectorIT_EEm(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 noundef %i.k) ; 2 uses
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
  br i1 %.not, label %._crit_edge27, label %.lr.ph26, !llvm.loop !168

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.01722 = phi i64 [ %i.z, %.lr.ph ], [ %i.ao, %bb.c ]
  %i.an = add i64 %.01722, 1
  %i.ao = and i64 %i.ae, %i.an                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %._crit_edge, label %bb.c, !llvm.loop !169

._crit_edge27:                                    ; preds = %._crit_edge, %.lr.ph30
  %i.at = add nuw i64 %.028, 1                    ; 2 uses
  %i.au = load ptr, ptr %i.q, align 8
  %i.av = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = icmp ult i64 %i.at, %i.az
  br i1 %i.ba, label %.lr.ph30, label %.loopexit, !llvm.loop !170

.loopexit:                                        ; preds = %._crit_edge27, %bb.b, %bb.a
  ret void
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %2 = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %2, %i.g
  %3 = add i64 %i.r, -4                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !171

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !172

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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_12ProjectionOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
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
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.n = load i8, ptr %i.m, align 1, !noalias !173 ; 2 uses
  %i.o = load i16, ptr %i.l, align 2, !noalias !173 ; 2 uses
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
  br i1 %i.aq, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.0810.i.i.i.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i.i, align 4
  %i.as = icmp eq i32 %i.ar, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.as, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.i: ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  %i.av = load i8, ptr %i.au, align 2, !noalias !176
  %i.aw = load i16, ptr %i.at, align 4, !noalias !176
  %i.ax = icmp eq i16 %i.aw, %i.o
  %i.ay = icmp eq i8 %i.av, %i.n
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE4FindINS2_12ProjectionOpEEEPNSL_5EntryERKT_Pm.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.i, %bb.d, %bb.c, %.lr.ph.i
  %i.ba = add i64 %.02432.i, 1
  %i.bb = and i64 %i.ba, %i.y                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.loopexit, label %.lr.ph.i, !llvm.loop !179

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i, %bb.b
  %.ph = phi ptr [ %i.ac, %bb.b ], [ %i.bc, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.thread.i ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1224
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

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE4FindINS2_12ProjectionOpEEEPNSL_5EntryERKT_Pm.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ProjectionOpEE12EqualsForGVNERKS5_.exit.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10RttCanonOpEJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEENS2_7OpIndexEDpT0_:bb.a
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
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit
  %i.ar = add nuw i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1244
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #23
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %2 = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %2, %i.g
  %3 = add i64 %i.r, -4                           ; 2 uses
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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !216

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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_12FrameStateOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
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
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !align !7
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.o, align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  %i.s = zext i16 %i.r to i64
  %i.t = load i8, ptr %i.l, align 4, !range !21, !noundef !6
  %.idx.i.i.i18 = shl nuw nsw i64 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i18
  %.not.i.i14.i.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.i14.i.i.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit, label %.lr.ph.i.i.i19

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
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit, label %.lr.ph.i.i.i19, !llvm.loop !183

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit: ; preds = %.lr.ph.i.i.i19, %bb.b
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
  br i1 %i.bn, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE4FindINS2_12FrameStateOpEEEPNSL_5EntryERKT_Pm.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit, %bb.e
  %i.bo = phi ptr [ %i.cd, %bb.e ], [ %i.bj, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit ] ; 2 uses
  %i.bp = phi i64 [ %i.ce, %bb.e ], [ %i.bg, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit ] ; 2 uses
  %i.bq = phi i64 [ %i.cj, %bb.e ], [ %i.bm, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit ]
  %i.br = phi ptr [ %i.ch, %bb.e ], [ %i.bk, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit ] ; 4 uses
  %.02432.i = phi i64 [ %i.cg, %bb.e ], [ %i.bh, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12FrameStateOpEEEmRKT0_b.exit ]
  %i.bs = icmp eq i64 %i.bq, %..i
  br i1 %i.bs, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.bt = load ptr, ptr %i.d, align 8, !nonnull !6, !align !7
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
  br i1 %i.cc, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE4FindINS2_12FrameStateOpEEEPNSL_5EntryERKT_Pm.exit, label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %bb.d
  %.pre.i = load i64, ptr %i.bf, align 8
  %.pre37.i = load ptr, ptr %i.bi, align 8
  br label %bb.e
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE21ReduceCatchBlockBeginEv:bb.a
  store ptr %i.r, ptr %.014.i.i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.0.i.i.i
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit, !llvm.loop !140

.lr.ph.i:                                         ; preds = %bb.c, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i
  %.07.i = phi ptr [ %.0.i, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i ], [ %.05.i, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %i.l, align 8, !alias.scope !440 ; 2 uses
  %i.w = load ptr, ptr %i.m, align 8, !alias.scope !440
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i, !prof !5

bb.d:                                             ; preds = %.lr.ph.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %.pre.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !440
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i: ; preds = %bb.d, %.lr.ph.i
  %i.y = phi ptr [ %.pre.i.i.i, %bb.d ], [ %i.v, %.lr.ph.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.l, align 8, !alias.scope !440
  store ptr %.07.i, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  %.0.i = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !141

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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit, label %bb.e, !prof !5

bb.e:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = load ptr, ptr %1, align 8               ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ag, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE9ReducePhiENSF_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr %i.ah, i64 %i.ak, i8 4)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit: ; preds = %._crit_edge, %bb.e
  %.sroa.05.0.i.i = phi i32 [ %i.al, %bb.e ], [ -1, %._crit_edge ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
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

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit, %bb.b
  %.sroa.016.0 = phi i32 [ %i.f, %bb.b ], [ %.sroa.05.0.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit ]
  ret i32 %.sroa.016.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_17CatchBlockBeginOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
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
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1244
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %2 = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %2, %i.g
  %3 = add i64 %i.r, -4                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !443

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !444

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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE11FixLoopPhisEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.c, align 8 ; 2 uses
  %.not4851 = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i22
  br i1 %.not4851, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.g, align 4
  %i.h = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.p = getelementptr inbounds i8, ptr %0, i64 -8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit
  %.sroa.036.052 = phi i32 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.br, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit ] ; 3 uses
  %i.s = load ptr, ptr %i.k, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = zext i32 %.sroa.036.052 to i64
  %i.v = add i64 %i.t, %i.u                       ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = load i8, ptr %i.w, align 4
  %.not = icmp eq i8 %i.x, 91
  br i1 %.not, label %bb.c, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.v, %i.ab
  %i.ad = lshr i64 %i.ac, 4
  %i.ae = and i64 %i.ad, 268435455                ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.ah, -1
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ae ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ak = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.ak, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i, i64 16
  %.sroa.02.0.copyload.i12.i = load i32, ptr %i.al, align 4 ; 2 uses
  %.not50 = icmp eq i32 %.sroa.02.0.copyload.i12.i, -1
  br i1 %.not50, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit.thread: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit
  %.sroa.010.1.i45 = phi i32 [ %.sroa.02.0.copyload.i12.i, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit ], [ %i.ah, %bb.c ] ; 4 uses
  %i.am = load i32, ptr %i.n, align 4
  %i.an = icmp ule i32 %i.am, %.sroa.010.1.i45
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.o, align 8
  %i.ao = icmp ult i32 %.sroa.010.1.i45, %.sroa.0.0.copyload.i30
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %.critedge, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit.thread
  %i.aq = load ptr, ptr %i.p, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = zext i32 %.sroa.010.1.i45 to i64
  %i.av = add i64 %i.at, %i.au
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = icmp eq i8 %i.ax, 74
  br i1 %i.ay, label %bb.e, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.az, align 4
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %2, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.sroa.0.0.copyload.i.i31 = load i32, ptr %i.ba, align 4
  %i.bb = lshr i32 %.sroa.0.0.copyload.i.i31, 4
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.be, -1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESZ_i.exit.i

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.m, align 8
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.bh = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.bh, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #24
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.f
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.bi, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESZ_i.exit.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESZ_i.exit.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.e
  %.sroa.014.0.i.i.i = phi i32 [ %i.be, %bb.e ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  store i32 %.sroa.014.0.i.i.i, ptr %i.q, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.0.0.copyload.i32 = load i8, ptr %i.bj, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.aq, i32 %.sroa.010.1.i45, ptr nonnull %2, i64 2, i8 %.sroa.0.0.copyload.i32)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit.thread, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESZ_i.exit.i, %.critedge, %bb.b
  %i.bk = load ptr, ptr %i.r, align 8
  %i.bl = lshr i32 %.sroa.036.052, 4
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = zext i16 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 3
  %i.br = add i32 %i.bq, %.sroa.036.052           ; 2 uses
  %.not48 = icmp eq i32 %i.br, %.sroa.0.0.copyload.i22
  br i1 %.not48, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE27AssembleOutputGraphTailCallERKNS2_10TailCallOpE(ptr noundef nonnull align 8 dereferenceable(880) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.318", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #24
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.r, ptr %2, align 8, !alias.scope !451
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !451
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.u, ptr %i.t, align 8, !alias.scope !451
  %.idx.i.i = shl nuw nsw i64 %i.q, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i
  %.not11.i.i = icmp eq i64 %i.q, 0
  br i1 %.not11.i.i, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm16EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1024
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.al, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i ] ; 2 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %.012.i.i, align 4, !noalias !451
  %i.x = lshr i32 %.sroa.02.0.copyload.i.i, 4
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !noalias !451
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESW_i.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !451
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.ae = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.ae, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #24
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.af, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESW_i.exit.i.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESW_i.exit.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.d
  %.sroa.014.0.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  %i.ag = load ptr, ptr %i.s, align 8, !alias.scope !451 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !alias.scope !451
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESW_i.exit.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !451
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESW_i.exit.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESW_i.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.s, align 8, !alias.scope !451
  store i32 %.sroa.014.0.i.i.i, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i3, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm16EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit.loopexit, label %bb.d

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm16EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit.loopexit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i
  %.pre = load ptr, ptr %2, align 8
  %.pre4 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm16EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm16EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm16EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit.loopexit, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit
  %i.am = phi ptr [ %.pre4, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm16EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit ]
  %i.an = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm16EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit ] ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESN_DpT0_(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 %.sroa.014.0.i.i, ptr %i.an, i64 %i.ar, ptr noundef %i.at)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %2 = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %2, %i.g
  %3 = add i64 %i.r, -4                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !452

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !453

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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESN_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
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
  %i.av = zext i16 %i.ao to i64
  %.idx.i = shl nuw nsw i64 %i.av, 2              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.ao, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10TailCallOpEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit
  %i.ax = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.ay = and i64 %i.ax, 4
  %lcmp.mod.not.not = icmp eq i64 %i.ay, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.aq, align 8
  %i.az = load ptr, ptr %i.f, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.bc = add i64 %i.ba, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1             ; 2 uses
  %.not.i.i.prol = icmp eq i8 %i.bf, -1
  br i1 %.not.i.i.prol, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, label %bb.f, !prof !5

bb.f:                                             ; preds = %.lr.ph.i.prol
  %i.bg = add nuw i8 %i.bf, 1
  store i8 %i.bg, ptr %i.be, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol: ; preds = %bb.f, %.lr.ph.i.prol
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  br label %.lr.ph.i.prol.loopexit
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_13UnreachableOpEJEEENS2_7OpIndexEDpT0_:bb.a
.lr.ph.i.i:                                       ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 104 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 96 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, %.lr.ph.i.i
  %.sroa.0.029.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i, %.lr.ph.i.i ], [ %i.cy, %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i19.i.i = load i32, ptr %i.bu, align 4
  %i.ca = lshr i32 %.sroa.0.029.i.i, 4
  %i.cb = zext nneg i32 %i.ca to i64              ; 5 uses
  %i.cc = load ptr, ptr %i.bv, align 8
  %i.cd = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  %.not.i.i.i.i.i = icmp ugt i64 %i.ch, %i.cb
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.ci = lshr i64 %i.cb, 1
  %i.cj = add nuw nsw i64 %i.cb, 32
  %i.ck = add nuw nsw i64 %i.cj, %i.ci
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.ck)
  %i.cl = load ptr, ptr %i.by, align 8
  %i.cm = load ptr, ptr %i.bw, align 8
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.cq)
  %.pre.i.i.i.i.i = load ptr, ptr %i.bw, align 8
  br label %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i: ; preds = %bb.f, %bb.e
  %i.cr = phi ptr [ %.pre.i.i.i.i.i, %bb.f ], [ %i.cd, %bb.e ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cb
  store i32 %.sroa.0.0.copyload.i19.i.i, ptr %i.cs, align 4
  %i.ct = load ptr, ptr %i.bz, align 8
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cb
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = zext i16 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 3
  %i.cy = add i32 %i.cx, %.sroa.0.029.i.i         ; 2 uses
  %.not.i.i4 = icmp eq i32 %i.cy, %i.br
  br i1 %.not.i.i4, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, %bb.d
  %i.cz = trunc i64 %i.i to i32
  store ptr null, ptr %i.bi, align 8
  ret i32 %i.cz
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE25AssembleOutputGraphReturnERKNS2_8ReturnOpE(ptr noundef nonnull align 8 dereferenceable(880) %0, ptr noundef nonnull align 4 dereferenceable(5) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.891", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #24
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.r, ptr %2, align 8, !alias.scope !466
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !466
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.u, ptr %i.t, align 8, !alias.scope !466
  %.idx.i.i = shl nuw nsw i64 %i.q, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i
  %.not11.i.i = icmp eq i64 %i.q, 0
  br i1 %.not11.i.i, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm4EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1024
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.al, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i ] ; 2 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %.012.i.i, align 4, !noalias !466
  %i.x = lshr i32 %.sroa.02.0.copyload.i.i, 4
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !noalias !466
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESW_i.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !466
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.ae = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.ae, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #24
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.af, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESW_i.exit.i.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESW_i.exit.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.d
  %.sroa.014.0.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  %i.ag = load ptr, ptr %i.s, align 8, !alias.scope !466 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !alias.scope !466
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESW_i.exit.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !466
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESW_i.exit.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESW_i.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.s, align 8, !alias.scope !466
  store i32 %.sroa.014.0.i.i.i, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i3, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm4EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit.loopexit, label %bb.d

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm4EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit.loopexit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i
  %.pre = load ptr, ptr %2, align 8
  %.pre4 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm4EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm4EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm4EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit.loopexit, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit
  %i.am = phi ptr [ %.pre4, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm4EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit ]
  %i.an = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapILm4EEENSG_11SmallVectorINS2_7OpIndexEXT_ESaIS11_EEENSG_6VectorIKS11_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit ] ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = load i8, ptr %i.as, align 4, !range !21, !noundef !6
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = call i32 @_ZN2v88internal8compiler10turboshaft21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerES3_S4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEEE12ReduceReturnENS2_1VINS2_12WordWithBitsILm32EEEEENSC_6VectorIKNS2_7OpIndexEEEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 %.sroa.014.0.i.i, ptr %i.an, i64 %i.ar, i1 noundef zeroext %i.au)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %2 = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %2, %i.g
  %3 = add i64 %i.r, -4                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !467

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !468

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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerES3_S4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEEE12ReduceReturnENS2_1VINS2_12WordWithBitsILm32EEEEENSC_6VectorIKNS2_7OpIndexEEEb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 %1, ptr %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 5 uses
  %6 = alloca %"class.v8::internal::compiler::turboshaft::OptionalOpIndex", align 4 ; 5 uses
  %7 = alloca %"struct.v8::internal::compiler::turboshaft::LoadOp::Kind", align 1 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"class.v8::internal::compiler::turboshaft::Label", align 8 ; 16 uses
  %9 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::GraphVisitor, v8::internal::compiler::turboshaft::DeadCodeEliminationReducer, v8::internal::compiler::turboshaft::StackCheckLoweringReducer, v8::internal::compiler::turboshaft::GrowableStacksReducer, v8::internal::compiler::turboshaft::LoadStoreSimplificationReducer, v8::internal::compiler::turboshaft::DuplicationOptimizationReducer, v8::internal::compiler::turboshaft::InstructionSelectionNormalizationReducer, v8::internal::compiler::turboshaft::ValueNumberingReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 6 uses
  %10 = alloca %"class.v8::internal::FixedSizeSignature", align 8 ; 8 uses
  %11 = alloca %"class.std::tuple.918", align 8   ; 5 uses
  %12 = alloca [1 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %13 = alloca %"class.std::tuple.918", align 8   ; 5 uses
  %14 = alloca %"class.std::tuple.923", align 4   ; 4 uses
  %15 = alloca %"class.v8::base::SmallVector.872", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load i8, ptr %i.c, align 8, !range !21, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  %.not = xor i1 %i.e, true
  %or.cond = and i1 %4, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_8ReturnOpEJNS2_14ShadowyOpIndexENS2_27ShadowyOpIndexVectorWrapperEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1, ptr %2, i64 %3, i1 noundef zeroext %4)
  br label %bb.am

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit: ; preds = %bb.d
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15FrameConstantOpEJNSK_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(176) %0, i8 noundef zeroext 1)
  %i.q = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_15FrameConstantOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 %i.p)
  %.pr = load ptr, ptr %i.m, align 8
  %i.r = icmp eq ptr %.pr, null
  br i1 %i.r, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, label %bb.e, !prof !120

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit
  %i.s = tail call i32 @_ZN2v88internal8compiler10turboshaft30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10ReduceLoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 %i.q, i32 -1, i8 16, i8 5, i8 0, i32 noundef -8, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit, %bb.e
  %.sroa.011.0.i.i.i.i = phi i32 [ %i.s, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit ], [ -1, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.t = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.f, label %_ZN2v88internal8compiler10turboshaft5LabelIJNS2_12WordWithBitsILm64EEEEEC2INS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerES8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEPT_NS_14SourceLocationE.exit, !prof !5

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.u)
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft5LabelIJNS2_12WordWithBitsILm64EEEEEC2INS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerES8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEPT_NS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft5LabelIJNS2_12WordWithBitsILm64EEEEEC2INS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerES8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEPT_NS_14SourceLocationE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, %bb.f
  %i.aa = phi i64 [ %i.w, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit ], [ %.pre.i.i, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ac = add i64 %i.aa, 1
  store i64 %i.ac, ptr %i.v, align 8
  %i.ad = load ptr, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aa
  %i.af = load ptr, ptr %i.ae, align 8            ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.af, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i32 -1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  store i32 -1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  store i32 0, ptr %i.al, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aj, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.ak, align 8
  store ptr %i.af, ptr %8, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store ptr %i.aq, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  store i64 0, ptr %i.ar, align 8
  store ptr %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 72
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i8 0, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.ptr6.i.i68 = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 26
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESL_NSK_4KindENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_:bb.a
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.as, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %i.at = add nuw i8 %i.as, 1
  store i8 %i.at, ptr %i.ar, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre12.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.an, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre12.i, %bb.c ]
  %i.au = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.av = add i64 %.pre-phi.i, %i.au
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.ay, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ComparisonOpEEEvRKT_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.az = add nuw i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ComparisonOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ComparisonOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1244
  %.sroa.0.0.copyload.i = load i32, ptr %i.ba, align 4
  %i.bb = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
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
  %i.bn = lshr i64 %i.bd, 1
  %i.bo = add nuw nsw i64 %i.bd, 32
  %i.bp = add nuw nsw i64 %i.bo, %i.bn
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 224
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %i.bg, align 8
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef %i.bw)
  %.pre.i.i = load ptr, ptr %i.bg, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ComparisonOpEEEvRKT_.exit, %bb.e
  %i.bx = phi ptr [ %.pre.i.i, %bb.e ], [ %i.bh, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ComparisonOpEEEvRKT_.exit ]
  %i.by = trunc i64 %i.i to i32
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bd
  store i32 %.sroa.0.0.copyload.i, ptr %i.bz, align 4
  ret i32 %i.by
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE4FindINS2_12ComparisonOpEEEPNSL_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(6) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12ComparisonOpEEEmRKT0_b.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = load i8, ptr %i.b, align 1, !noalias !551 ; 2 uses
  %i.d = load i8, ptr %i.a, align 4, !noalias !551 ; 2 uses
  %.0.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i.i, align 4 ; 2 uses
  %i.e = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %i.f = zext nneg i32 %i.e to i64
  %.0.i.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i.i.1.i.i.i = load i32, ptr %.0.i.i.ptr.1.i.i.i, align 4 ; 2 uses
  %i.g = lshr i32 %.sroa.0.0.copyload.i.i.1.i.i.i, 4
  %i.h = zext nneg i32 %i.g to i64
  %i.i = mul nuw nsw i64 %i.f, 35651567
  %i.j = add nuw nsw i64 %i.i, -4175292557550144145 ; 2 uses
  %i.k = lshr i64 %i.j, 24
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, 265                        ; 2 uses
  %i.n = lshr i64 %i.m, 14
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, 21                         ; 2 uses
  %i.q = lshr i64 %i.p, 28
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 2147483649
  %i.t = zext i8 %i.c to i64
  %i.u = mul nuw nsw i64 %i.t, 17
  %i.v = zext i8 %i.d to i64
  %i.w = add nuw nsw i64 %i.u, %i.v
  %reass.add.i.i = add nuw nsw i64 %i.w, %i.h
  %reass.mul.i.i = mul nuw nsw i64 %reass.add.i.i, 17
  %i.x = add i64 %i.s, %reass.mul.i.i
  %i.y = mul i64 %i.x, 17
  %i.z = add i64 %i.y, 68
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.z, i64 1) ; 3 uses
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

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12ComparisonOpEEEmRKT0_b.exit
  %i.aj = getelementptr inbounds i8, ptr %0, i64 -8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit.thread, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12ComparisonOpEEEmRKT0_b.exit
  %.lcssa = phi ptr [ %i.af, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_12ComparisonOpEEEmRKT0_b.exit ], [ %i.bj, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  store i64 %..i, ptr %2, align 8
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit.thread
  %i.ak = phi i64 [ %i.ah, %.lr.ph ], [ %i.bl, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.al = phi ptr [ %i.af, %.lr.ph ], [ %i.bj, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.02432 = phi i64 [ %i.ac, %.lr.ph ], [ %i.bi, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.am = icmp eq i64 %i.ak, %..i
  br i1 %i.am, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.an = load ptr, ptr %i.aj, align 8, !nonnull !6, !align !7
  %.sroa.0.0.copyload = load i32, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = zext i32 %.sroa.0.0.copyload to i64
  %i.as = add i64 %i.aq, %i.ar
  %i.at = inttoptr i64 %i.as to ptr               ; 5 uses
  %i.au = load i8, ptr %i.at, align 4
  %i.av = icmp eq i8 %i.au, 68
  br i1 %i.av, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.ax = icmp eq i32 %i.aw, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.d
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ay = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.az = icmp eq i32 %i.ay, %.sroa.0.0.copyload.i.i.1.i.i.i
  br i1 %i.az, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 5
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !554
  %i.bd = load i8, ptr %i.ba, align 4, !noalias !554
  %i.be = icmp eq i8 %i.bd, %i.d
  %i.bf = icmp eq i8 %i.bc, %i.c
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.c, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.d, %bb.b
  %i.bh = add i64 %.02432, 1
  %i.bi = and i64 %i.ab, %i.bh                    ; 2 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %._crit_edge, label %bb.b, !llvm.loop !557

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.a
  %i.bn = phi ptr [ %.lcssa, %bb.a ], [ %.lcssa, %._crit_edge ], [ %i.al, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_12ComparisonOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.bn
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %2 = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %2, %i.g
  %3 = add i64 %i.r, -4                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !558

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.preheader15

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !559

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEES8_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEElET_S9_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEElET_S9_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEElET_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES4_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SM_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSV_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES16_DpT1_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1, i32 %2, ptr %3, i64 %4, ptr noundef %5, i32 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.e, %i.h
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1, i32 %2, ptr %3, i64 %4, ptr noundef %5, i32 %6) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.l = load i8, ptr %i.k, align 8
  %i.m = icmp eq i8 %i.l, 1
  br i1 %i.m, label %bb.b, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS6_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit.i.i

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.trunc21.i.i.i = or i32 %6, 262144
  %i.n = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.j)
  br label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS6_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit.i.i

_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS6_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit.i.i: ; preds = %bb.b, %bb.a
  %.sroa.4.0.i.i.i = phi i32 [ %.sroa.4.0.extract.trunc21.i.i.i, %bb.b ], [ %6, %bb.a ]
  %.0.i.i.i = phi i1 [ %i.n, %bb.b ], [ false, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4.0.insert.ext.i.i.i = and i32 %.sroa.4.0.i.i.i, 16711680
  %i.p = and i32 %6, -16711681
  %.sroa.018.0.insert.insert.i.i.i = or disjoint i32 %.sroa.4.0.insert.ext.i.i.i, %i.p
  %i.q = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.j, i1 noundef zeroext %.0.i.i.i, ptr noundef nonnull %i.o, i32 %.sroa.018.0.insert.insert.i.i.i) ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = and i64 %i.i, 4294967295
  %i.w = add i64 %i.v, %i.u
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.y, align 8
  %i.z = and i32 %.sroa.0.0.copyload.i.i.i.i, 12
  %.not.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i, label %_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES5_S7_EEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENST_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS6_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4
  %.pre = load ptr, ptr %i.s, align 8
  %.pre18 = ptrtoint ptr %.pre to i64
  br label %_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES5_S7_EEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENST_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit

_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES5_S7_EEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENST_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS6_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit.i.i, %bb.c
  %.pre-phi = phi i64 [ %i.u, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS6_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit.i.i ], [ %.pre18, %bb.c ]
  %i.ad = zext i32 %i.q to i64
  %i.ae = add i64 %.pre-phi, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = tail call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES4_S6_EEEEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SS_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i32 %i.q)
  ret i32 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES4_S6_EEEEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SS_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::SmallVector.516", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.c = icmp ugt i64 %.sroa.2.0.copyload.i, 1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.0.0.copyload.i11 = load ptr, ptr %i.b, align 8
  %i.h = trunc i64 %.sroa.2.0.copyload.i to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.l = zext i32 %2 to i64
  %wide.trip.count = and i64 %.sroa.2.0.copyload.i, 2147483647
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %._crit_edge
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = load ptr, ptr %3, align 8                ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.q, %i.s
  %i.u = ashr exact i64 %i.t, 2
  %i.v = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_11MakeTupleOpEJNS2_27ShadowyOpIndexVectorWrapperEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr %i.r, i64 %i.u), !inline_history !560
  %i.w = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_11MakeTupleOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 %i.v), !inline_history !560
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit: ; preds = %._crit_edge, %bb.c
  %.sroa.03.0.i.i = phi i32 [ %i.w, %bb.c ], [ -1, %._crit_edge ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit ] ; 4 uses
  %i.x = trunc i64 %indvars.iv to i16
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS0_6ObjectEEESt5tupleIJNSL_INS0_3SmiEEEEEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSL_INS2_10FrameStateEEENSL_INS0_7ContextEEERKT0_:bb.a
  store ptr %i.f, ptr %7, align 8, !alias.scope !1646
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 44
  store ptr %i.i, ptr %i.h, align 8, !alias.scope !1646
  store i32 %i.e, ptr %i.f, align 8, !alias.scope !1646
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 28
  store ptr %i.j, ptr %i.g, align 8, !alias.scope !1646
  %i.k = call i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef %2) #20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %0, i64 -1088 ; 2 uses
  %i.p = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(176) %i.o, i8 noundef zeroext 7, i64 %i.k)
  %i.q = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(176) %i.o, i32 %i.p)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi i32 [ %i.q, %bb.b ], [ -1, %bb.a ]
  %i.r = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  %.pre.i.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, %bb.c
  %i.u = phi ptr [ %.pre.i.i, %bb.c ], [ %i.r, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.g, align 8
  store i32 %.sroa.02.0.i.i, ptr %i.u, align 4
  %i.w = load ptr, ptr %i.l, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit
  %i.y = getelementptr inbounds i8, ptr %0, i64 -1088 ; 2 uses
  %i.z = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(176) %i.y, i8 noundef zeroext 0, i64 noundef 1)
  %i.aa = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(176) %i.y, i32 %i.z)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.aa, %bb.d ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit ]
  %i.ab = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ac = load ptr, ptr %i.h, align 8
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  %.pre.i.i18 = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.e
  %i.ae = phi ptr [ %.pre.i.i18, %bb.e ], [ %i.ab, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store ptr %i.af, ptr %i.g, align 8
  store i32 %.sroa.0.0.i.i.i, ptr %i.ae, align 4
  %i.ag = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.h, align 8
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21, !prof !5

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  %.pre.i.i20 = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19, %bb.f
  %i.aj = phi ptr [ %.pre.i.i20, %bb.f ], [ %i.ag, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit19 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.g, align 8
  store i32 %5, ptr %i.aj, align 4
  %i.al = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %i.d, i32 noundef 0, i1 noundef zeroext false)
  %i.am = load ptr, ptr %i.l, align 8
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSP_INSL_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSS_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.g, !prof !5

bb.g:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21
  %i.ao = load ptr, ptr %i.g, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = load ptr, ptr %7, align 8               ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ap, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %i.au = getelementptr inbounds i8, ptr %0, i64 -1088
  %i.av = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES4_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SM_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSV_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES16_DpT1_(ptr noundef nonnull align 8 dereferenceable(176) %i.au, i32 %i.al, i32 %4, ptr %i.aq, i64 %i.at, ptr noundef %3, i32 487263)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSP_INSL_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSS_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSP_INSL_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSS_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21, %bb.g
  %.sroa.010.0.i.i = phi i32 [ %i.av, %bb.g ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE9push_backES5_.exit21 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(44) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret i32 %.sroa.010.0.i.i
}

declare noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef) local_unnamed_addr #2

declare i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @_ZN2v88internal11CodeFactory6CEntryEPNS0_7IsolateEiNS0_8ArgvModeEbb(ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext false) #20 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -1120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 63768
  %i.g = load ptr, ptr %i.f, align 8
  %.not5.i.i = icmp eq ptr %i.g, null
  br i1 %.not5.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.e, ptr %i.a) #20
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISN_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISN_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.sink.split, !prof !5

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = sext i32 %2 to i64
  %i.m = select i1 %4, i64 0, i64 %i.l
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @_ZN2v88internal11CodeFactory6CEntryEPNS0_7IsolateEiNS0_8ArgvModeEbb(ptr noundef %1, i32 noundef %2, i32 noundef 0, i1 noundef zeroext %4, i1 noundef zeroext false) #20 ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  store i64 %i.r, ptr %i.n, align 8
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %bb.g, label %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit, !prof !1647

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.33) #21
  unreachable

_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit: ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.q, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %0, i64 -1120
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.x, null
  br i1 %.not.i.i17, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 63768
  %i.z = load ptr, ptr %i.y, align 8
  %.not5.i.i18 = icmp eq ptr %i.z, null
  br i1 %.not5.i.i18, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.x, ptr nonnull %i.t) #20
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19: ; preds = %bb.i, %bb.h, %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISN_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISN_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.sink.split, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISN_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.sink.split: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i
  %.sink = phi ptr [ %i.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i ], [ %i.t, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19 ]
  %i.ad = ptrtoint ptr %.sink to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 -1088 ; 2 uses
  %i.af = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindENSK_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(176) %i.ae, i8 noundef zeroext 8, i64 %i.ad)
  %i.ag = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(176) %i.ae, i32 %i.af)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISN_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISN_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISN_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.sink.split, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i
  %.sroa.016.0 = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i19 ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISN_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.sink.split ]
  ret i32 %.sroa.016.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %2 = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %2, %i.g
  %3 = add i64 %i.r, -4                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1648

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1649

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #4 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm5ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef 0)
  ret void
}

declare ptr @_ZN2v88internal11CodeFactory6CEntryEPNS0_7IsolateEiNS0_8ArgvModeEbb(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef, ptr) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler7Linkage24GetRuntimeCallDescriptorEPNS0_4ZoneENS0_7Runtime10FunctionIdEiNS_4base5FlagsINS1_8Operator8PropertyEhhEENS8_INS1_14CallDescriptor4FlagEiiEENS1_16LazyDeoptOnThrowE(ptr noundef, i32 noundef, i32 noundef, i8, i32, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS0_6ObjectEEESt5tupleIJEEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSL_INS2_10FrameStateEEENSL_INS0_7ContextEEERKT0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 %4, i32 %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.v8::base::SmallVector.891", align 8 ; 12 uses
  %i.a = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef %2) #20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.c = load i8, ptr %i.b, align 1
  %i.d = sext i8 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !1650
  store ptr %i.e, ptr %7, align 8, !alias.scope !1650
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store ptr %i.e, ptr %i.f, align 8, !alias.scope !1650
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !1650
  %i.i = call i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef %2) #20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -1088 ; 2 uses
  %i.n = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(176) %i.m, i8 noundef zeroext 7, i64 %i.i)
  %i.o = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(176) %i.m, i32 %i.n)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi i32 [ %i.o, %bb.b ], [ -1, %bb.a ]
  %i.p = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %bb.c ], [ %i.p, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store ptr %i.t, ptr %i.f, align 8
  store i32 %.sroa.02.0.i.i, ptr %i.s, align 4
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit
  %i.w = getelementptr inbounds i8, ptr %0, i64 -1088 ; 2 uses
  %i.x = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(176) %i.w, i8 noundef zeroext 0, i64 noundef 0)
  %i.y = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(176) %i.w, i32 %i.x)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.y, %bb.d ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit ]
  %i.z = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.g, align 8
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit19, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
  %.pre.i.i18 = load ptr, ptr %i.f, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit19

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit19: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.e
  %i.ac = phi ptr [ %.pre.i.i18, %bb.e ], [ %i.z, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.ad, ptr %i.f, align 8
  store i32 %.sroa.0.0.i.i.i, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.af = load ptr, ptr %i.g, align 8
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit21, !prof !5

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit19
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
  %.pre.i.i20 = load ptr, ptr %i.f, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit21

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit21: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit19, %bb.f
  %i.ah = phi ptr [ %.pre.i.i20, %bb.f ], [ %i.ae, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit19 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.ai, ptr %i.f, align 8
  store i32 %5, ptr %i.ah, align 4
  %i.aj = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE18CEntryStubConstantEPNS0_7IsolateEiNS0_8ArgvModeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %i.d, i32 noundef 0, i1 noundef zeroext false)
  %i.ak = load ptr, ptr %i.j, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSP_INSL_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSS_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.g, !prof !5

bb.g:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit21
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = load ptr, ptr %7, align 8               ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = getelementptr inbounds i8, ptr %0, i64 -1088
  %i.at = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES4_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SM_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSV_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES16_DpT1_(ptr noundef nonnull align 8 dereferenceable(176) %i.as, i32 %i.aj, i32 %4, ptr %i.ao, i64 %i.ar, ptr noundef %3, i32 487263)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSP_INSL_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSS_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSP_INSL_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSS_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit21, %bb.g
  %.sroa.010.0.i.i = phi i32 [ %i.at, %bb.g ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit21 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret i32 %.sroa.010.0.i.i
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %2 = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %2, %i.g
  %3 = add i64 %i.r, -4                           ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1661

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1662

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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #8 comdat align 2 {
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
    i8 112, label %bb.c
    i8 113, label %bb.c
    i8 114, label %bb.c
end_hunk_6
