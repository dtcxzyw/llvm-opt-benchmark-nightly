inline.NumInlined: 29995
inline.NumDeleted: 7796
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 101
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
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #23
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
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #9 comdat {
bb.a:
  tail call void @abort() #24
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerES8_SB_EEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSD_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSM_13VariableTableES4_S5_E16StartNewSnapshotISU_EEvNSR_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSR_IKT0_EEEEUlSQ_RSS_S1B_E_EEvS11_S14_RS19_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #24
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
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not67 = icmp eq ptr %i.o, %i.p
  br i1 %.not67, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03462 = load ptr, ptr %i.t, align 8           ; 2 uses
  %.not3763 = icmp eq ptr %.03462, %i.e
  br i1 %.not3763, label %._crit_edge, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.f
  %i.u = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph65

.loopexit60:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, %.lr.ph65
  %.034 = load ptr, ptr %.03464, align 8          ; 2 uses
  %.not37 = icmp eq ptr %.034, %i.e
  br i1 %.not37, label %._crit_edge, label %.lr.ph65, !llvm.loop !84

._crit_edge:                                      ; preds = %.loopexit60, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !85

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %.loopexit60
  %.03464 = phi ptr [ %.034, %.loopexit60 ], [ %.03462, %.lr.ph65.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03464, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.03464, i64 24
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp samesign eq i64 %i.aa, %i.w
  br i1 %i.ab, label %.loopexit60, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph65
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.aa
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit
  %.sroa.044.061 = phi ptr [ %i.ad, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.044.061, i64 -16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.044.061, i64 -4
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #24
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
  %.not.i = icmp ugt i64 %2, %i.bo
  br i1 %.not.i, label %bb.l, label %bb.m, !prof !9

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #24
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #24
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
  br i1 %i.cj, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, !prof !9

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.cd) #23
  %.pre.i.i.i41 = load i64, ptr %i.cg, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i: ; preds = %bb.q, %bb.p
  %i.ck = phi i64 [ %.pre.i.i.i41, %bb.q ], [ %i.ch, %bb.p ] ; 2 uses
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
  %.pre.i40 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, %bb.r
  %i.cp = phi ptr [ %.pre.i40, %bb.r ], [ %i.cl, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i ] ; 2 uses
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
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !86

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
  br i1 %i.dh, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !87

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
  br i1 %i.do, label %.loopexit60, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph70, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03568 = phi ptr [ %i.o, %.lr.ph70 ], [ %i.fy, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.dp = load ptr, ptr %.03568, align 8          ; 8 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = zext i32 %i.dr to i64
  %i.dt = load ptr, ptr %i.i, align 8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = tail call i32 @_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSL_EEE_clESN_SQ_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %i.dp, ptr %i.du, i64 %2) ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8            ; 3 uses
  %.not59 = icmp eq i32 %i.dx, %i.dv
  br i1 %.not59, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dy = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.dz = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ea = icmp ult ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.w, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  %i.eb = load ptr, ptr %i.f, align 8
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 4
  %i.eg = add nsw i64 %i.ef, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.eg)
  %.pre.i.i.i38 = load ptr, ptr %i.q, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.eh = phi ptr [ %i.dy, %bb.u ], [ %.pre.i.i.i38, %bb.v ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store ptr %i.ei, ptr %i.q, align 8
  store ptr %i.dp, ptr %i.eh, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %i.dx, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 %i.dv, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %i.dv, ptr %i.dw, align 8
  %i.ej = load ptr, ptr %4, align 8               ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !range !5, !noundef !6
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i.i39 = icmp eq i32 %i.dx, -1
  %.not6.i.i = icmp eq i32 %i.dv, -1              ; 2 uses
  br i1 %.not.i.i39, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not6.i.i, label %bb.z, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.z:                                             ; preds = %bb.y
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8            ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 360 ; 4 uses
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  store i64 %i.eo, ptr %i.es, align 8
  %i.et = load ptr, ptr %i.ep, align 8
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 352
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.eo
  %i.ey = load i64, ptr %i.eu, align 8
  store i64 %i.ey, ptr %i.ex, align 8
  store i64 -1, ptr %i.en, align 8
  %i.ez = load ptr, ptr %i.ep, align 8
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8
  store ptr %i.fa, ptr %i.ep, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.aa:                                            ; preds = %bb.x
  br i1 %.not6.i.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 360 ; 4 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 352 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i64 %i.fi, ptr %i.fj, align 8
  %i.fk = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ej, i64 368
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %i.fn = icmp ult ptr %i.fk, %i.fm
  br i1 %i.fn, label %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_25ExplicitTruncationReducerES9_SC_EEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i, label %bb.ac, !prof !8

bb.ac:                                            ; preds = %bb.ab
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ej, i64 344
  %i.fp = load ptr, ptr %i.fd, align 8
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 3
  %i.fu = add nsw i64 %i.ft, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(33) %i.fo, i64 noundef %i.fu)
  %.pre.i.i.i.i = load ptr, ptr %i.fb, align 8
  br label %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_25ExplicitTruncationReducerES9_SC_EEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i

_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_25ExplicitTruncationReducerES9_SC_EEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i: ; preds = %bb.ac, %bb.ab
  %i.fv = phi ptr [ %i.fk, %bb.ab ], [ %.pre.i.i.i.i, %bb.ac ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fw, ptr %i.fb, align 8
  %i.fx = ptrtoint ptr %i.dp to i64
  store i64 %i.fx, ptr %i.fv, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_25ExplicitTruncationReducerES9_SC_EEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.t
  %i.fy = getelementptr inbounds nuw i8, ptr %.03568, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fy, %i.p
  br i1 %.not, label %.loopexit, label %bb.t

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerES9_SC_EEEEEEEEEEEE13VariableTableES4_S5_E16StartNewSnapshotIZNSN_4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSE_6VectorIKS4_EEE_EEvNSV_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSV_IKT0_EEEEUlSU_RSW_S1B_E_EERNS6_12SnapshotDataES11_S14_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %.idx = shl i64 %2, 3                           ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 %.idx
  %.not58 = icmp eq i64 %.idx, 8
  br i1 %.not58, label %.loopexit, label %.lr.ph.preheader
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSE_4KindENSE_10AssumptionENS2_22RegisterRepresentationESI_EEENS2_7OpIndexEDpT0_:bb.a
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
  store i8 69, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %3, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %4, ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  store i8 %5, ptr %i.am, align 1
  %i.an = load ptr, ptr %i.f, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = zext i32 %1 to i64
  %i.aq = add i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.at, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8ChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS4_10AssumptionENS2_22RegisterRepresentationESA_EEERS4_PNS2_5GraphEDpT_.exit
  %i.au = add nuw i8 %i.at, 1
  store i8 %i.au, ptr %i.as, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8ChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS4_10AssumptionENS2_22RegisterRepresentationESA_EEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 972
  %.sroa.0.0.copyload.i = load i32, ptr %i.av, align 4
  %i.aw = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.ax = lshr i64 %i.i, 4
  %i.ay = and i64 %i.ax, 268435455                ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 216
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 208 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  %.not.i.i11 = icmp ugt i64 %i.bg, %i.ay
  br i1 %.not.i.i11, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 200 ; 2 uses
  %i.bi = lshr i64 %i.ay, 1
  %i.bj = add nuw nsw i64 %i.ay, 32
  %i.bk = add nuw nsw i64 %i.bj, %i.bi
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 224
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.bb, align 8
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.br)
  %.pre.i.i = load ptr, ptr %i.bb, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit, %bb.d
  %i.bs = phi ptr [ %.pre.i.i, %bb.d ], [ %i.bc, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit ]
  %i.bt = trunc i64 %i.i to i32
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ay
  store i32 %.sroa.0.0.copyload.i, ptr %i.bu, align 4
  ret i32 %i.bt
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, i16 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableProjectionIJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT_.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -816
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = zext i32 %1 to i64
  %i.k = add i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = icmp eq i8 %i.m, 96
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = zext i16 %2 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.q, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableProjectionIJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %0, i64 -280 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 -264
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 9
  br i1 %i.y, label %bb.e, label %_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE97ENS2_21UniformReducerAdapterIS3_SH_E28ReduceProjectionContinuationEJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT1_.exit.i

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorImLm32ESaImEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %i.r, i64 noundef 2), !inline_history !105
  %.pre.i.i.i.i = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE97ENS2_21UniformReducerAdapterIS3_SH_E28ReduceProjectionContinuationEJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT1_.exit.i

_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE97ENS2_21UniformReducerAdapterIS3_SH_E28ReduceProjectionContinuationEJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT1_.exit.i: ; preds = %bb.e, %bb.d
  %i.z = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.u, %bb.d ] ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -272
  store ptr %i.aa, ptr %i.ab, align 8
  store i8 97, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 0, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i16 1, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i16 %2, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  store i8 %3, ptr %i.ag, align 2
  %i.ah = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(816) %i.d, i32 %1, i16 noundef zeroext %2, i8 %3), !inline_history !105
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableProjectionIJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableProjectionIJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE97ENS2_21UniformReducerAdapterIS3_SH_E28ReduceProjectionContinuationEJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT1_.exit.i, %bb.c, %bb.a
  %.sroa.05.0.i = phi i32 [ -1, %bb.a ], [ %i.ah, %_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE97ENS2_21UniformReducerAdapterIS3_SH_E28ReduceProjectionContinuationEJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT1_.exit.i ], [ %.sroa.0.0.copyload.i.i, %bb.c ]
  ret i32 %.sroa.05.0.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 7 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !106

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !107

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i16 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, !prof !9

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
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %i.as = add nuw i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 972
  %.sroa.0.0.copyload.i = load i32, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
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
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bp)
  %.pre.i.i = load ptr, ptr %i.az, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit, %bb.d
  %i.bq = phi ptr [ %.pre.i.i, %bb.d ], [ %i.ba, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit ]
  %i.br = trunc i64 %i.i to i32
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aw
  store i32 %.sroa.0.0.copyload.i, ptr %i.bs, align 4
  ret i32 %i.br
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11MakeTupleOpEJNS2_27ShadowyOpIndexVectorWrapperEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
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
  %i.j = add i64 %2, 2
  %i.k = lshr i64 %i.j, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.e
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.r = sub i64 %i.n, %i.h
  %i.s = lshr exact i64 %i.r, 3
  %i.t = and i64 %i.s, 4294967295
  %i.u = add nuw i64 %i.t, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre9 = ptrtoint ptr %.pre to i64
  %.pre10 = sub i64 %.pre10.i.i.i.i, %.pre9
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi11 = phi i64 [ %.pre10, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi11 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi11, 4
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
  store i8 96, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.an = trunc i64 %2 to i16                     ; 2 uses
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 4 uses
  %i.ap = icmp ugt i64 %2, 1
  br i1 %i.ap, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i.i = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %1, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.aq = icmp eq i64 %2, 1
  br i1 %i.aq, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread: ; preds = %bb.d
  %i.ar = load i32, ptr %1, align 4
  store i32 %i.ar, ptr %i.ao, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %.lr.ph.i.preheader

_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit: ; preds = %bb.c, %bb.d
  %i.at = shl i64 %2, 2
  %.idx.i = and i64 %i.at, 262140
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.an, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11MakeTupleOpEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit
  %i.av = phi ptr [ %i.as, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread ], [ %i.au, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %.011.i = phi ptr [ %i.be, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ], [ %i.ao, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.aw = load ptr, ptr %i.f, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = zext i32 %.sroa.01.0.copyload.i to i64
  %i.az = add i64 %i.ax, %i.ay
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.bc, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.e, !prof !9

bb.e:                                             ; preds = %.lr.ph.i
  %i.bd = add nuw i8 %i.bc, 1
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.be = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.av
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11MakeTupleOpEEEvRKT_.exit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11MakeTupleOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 972
  %.sroa.0.0.copyload.i = load i32, ptr %i.bf, align 4
  %i.bg = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.bh = lshr i64 %i.i, 4
  %i.bi = and i64 %i.bh, 268435455                ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 216
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 208 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  %.not.i.i7 = icmp ugt i64 %i.bq, %i.bi
  br i1 %.not.i.i7, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11MakeTupleOpEEEvRKT_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 200 ; 2 uses
  %i.bs = lshr i64 %i.bi, 1
  %i.bt = add nuw nsw i64 %i.bi, 32
  %i.bu = add nuw nsw i64 %i.bt, %i.bs
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 noundef %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load ptr, ptr %i.bl, align 8
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 noundef %i.cb)
  %.pre.i.i = load ptr, ptr %i.bl, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11MakeTupleOpEEEvRKT_.exit, %bb.f
  %i.cc = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bm, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11MakeTupleOpEEEvRKT_.exit ]
  %i.cd = trunc i64 %i.i to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bi
  store i32 %.sroa.0.0.copyload.i, ptr %i.ce, align 4
  ret i32 %i.cd
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 7 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !108

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !109

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, !prof !9

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
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 972
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
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerES3_S6_EEEEEEEEEEEE15MergeFrameStateENS8_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::SmallVector.571", align 8 ; 11 uses
  %4 = alloca %"class.v8::base::SmallVector.572", align 8 ; 13 uses
  %5 = alloca %"class.v8::internal::ZoneVector.8", align 8 ; 7 uses
  %6 = alloca %"class.v8::internal::ZoneVector.8", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 280
  store ptr %i.d, ptr %i.c, align 8
  %.idx = shl nuw nsw i64 %2, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not117 = icmp eq i64 %2, 0
  br i1 %.not117, label %._crit_edge, label %.lr.ph

end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSE_4KindENSE_7StorageEEEENS2_7OpIndexEDpT0_:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %2, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 972
  %.sroa.0.0.copyload.i = load i32, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
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
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10RttCanonOpEJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit, !prof !9

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
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit
  %i.ar = add nuw i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 972
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 7 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !120

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !121

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #5 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10FrameStateENS5_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableFrameStateIJNS5_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataEEEESG_DpT_.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -816
  %i.e = getelementptr inbounds i8, ptr %0, i64 -280 ; 3 uses
  %i.f = add i64 %2, 5
  %i.g = lshr i64 %i.f, 1
  %.sroa.speculated.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 2) ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 -264
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = icmp ugt i64 %.sroa.speculated.i.i.i.i, %i.n
  br i1 %i.o, label %bb.c, label %_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorImLm32ESaImEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %i.e, i64 noundef %.sroa.speculated.i.i.i.i)
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i.i.i

_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.j, %bb.b ] ; 7 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.speculated.i.i.i.i
  %i.r = getelementptr inbounds i8, ptr %0, i64 -272
  store ptr %i.q, ptr %i.r, align 8
  store i8 92, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.u = trunc i64 %2 to i16
  store i16 %i.u, ptr %i.t, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.w = icmp ugt i64 %2, 1
  br i1 %i.w, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i.i.i
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 4 %1, i64 %.idx.i.i.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE16ReduceFrameStateIJNSA_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataEEEEDaDpT_.exit

bb.e:                                             ; preds = %_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i.i.i
  %i.x = icmp eq i64 %2, 1
  br i1 %i.x, label %bb.f, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE16ReduceFrameStateIJNSA_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataEEEEDaDpT_.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %1, align 4
  store i32 %i.y, ptr %i.v, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE16ReduceFrameStateIJNSA_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataEEEEDaDpT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE16ReduceFrameStateIJNSA_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataEEEEDaDpT_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.z = zext i1 %3 to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i8 %i.z, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %4, ptr %i.ab, align 8
  %i.ac = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12FrameStateOpEJNS2_27ShadowyOpIndexVectorWrapperEbPKNS2_14FrameStateDataEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(816) %i.d, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef %4)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableFrameStateIJNS5_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataEEEESG_DpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableFrameStateIJNS5_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataEEEESG_DpT_.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE16ReduceFrameStateIJNSA_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataEEEEDaDpT_.exit
  %.sroa.04.0.i = phi i32 [ %i.ac, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE16ReduceFrameStateIJNSA_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataEEEEDaDpT_.exit ], [ -1, %bb.a ]
  ret i32 %.sroa.04.0.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !9

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
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 5 uses
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #5 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

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
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit, !prof !9

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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 7 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !122

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !123

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE(i8 noundef zeroext %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i8 %0, label %bb.j [
    i8 1, label %bb.k
    i8 2, label %bb.k
    i8 3, label %bb.k
    i8 4, label %bb.k
    i8 5, label %bb.b
    i8 7, label %bb.c
    i8 8, label %bb.c
    i8 9, label %bb.c
    i8 12, label %bb.c
    i8 10, label %bb.d
    i8 11, label %bb.d
    i8 16, label %bb.e
    i8 17, label %bb.e
    i8 18, label %bb.f
    i8 19, label %bb.g
    i8 20, label %bb.h
    i8 6, label %bb.c
    i8 13, label %bb.b
    i8 14, label %bb.b
    i8 0, label %bb.i
    i8 15, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.k

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.k

bb.d:                                             ; preds = %bb.a, %bb.a
  br label %bb.k

bb.e:                                             ; preds = %bb.a, %bb.a
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  br label %bb.k

bb.i:                                             ; preds = %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #24
  unreachable

bb.j:                                             ; preds = %bb.a
  unreachable

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 1, %bb.b ], [ 4, %bb.c ], [ 5, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12FrameStateOpEJNS2_27ShadowyOpIndexVectorWrapperEbPKNS2_14FrameStateDataEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
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
  %i.j = add i64 %2, 5
  %i.k = lshr i64 %i.j, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.e
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !9

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
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_17CatchBlockBeginOpEJEEENS2_7OpIndexEDpT0_:bb.a
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
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 972
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !9

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
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 5 uses
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 7 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !170

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !171

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 7 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !172

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !173

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
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
  %i.n = icmp ult i64 %i.m, 17
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit, !prof !9

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
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 972
  %.sroa.0.0.copyload.i = load i32, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
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
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10OsrValueOpEJiEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
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
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_:bb.a
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ugt i64 %.sroa.speculated.i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorImLm32ESaImEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %i.a, i64 noundef %.sroa.speculated.i.i)
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i

_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i: ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 11 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.speculated.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %i.n, ptr %i.o, align 8
  %.not.i.i = icmp eq i32 %2, -1                  ; 2 uses
  %i.p = select i1 %.not.i.i, i64 1, i64 2        ; 2 uses
  %i.q = add i64 %i.p, %4
  store i8 93, ptr %i.l, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 0, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %i.t = trunc i64 %i.q to i16
  store i16 %i.t, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %5, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i32 %6, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 6 uses
  store i32 %1, ptr %i.w, align 8
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store i32 %2, ptr %i.x, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.p ; 2 uses
  %i.z = icmp ugt i64 %4, 1
  br i1 %i.z, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  %.idx.i.i.i = shl nuw nsw i64 %4, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %3, i64 %.idx.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_6CallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEPT_RNSH_11SmallVectorImLm32ESaImEEEDpT0_.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq i64 %4, 1
  br i1 %i.aa, label %bb.g, label %_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_6CallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEPT_RNSH_11SmallVectorImLm32ESaImEEEDpT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr %3, align 4
  store i32 %i.ab, ptr %i.y, align 4
  br label %_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_6CallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEPT_RNSH_11SmallVectorImLm32ESaImEEEDpT0_.exit

_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_6CallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEPT_RNSH_11SmallVectorImLm32ESaImEEEDpT0_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ad = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft6CallOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE(ptr noundef nonnull align 8 dereferenceable(20) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ac) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1      ; 3 uses
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %.critedge59, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_6CallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEPT_RNSH_11SmallVectorImLm32ESaImEEEDpT0_.exit
  %i.ag = getelementptr inbounds i8, ptr %0, i64 -16
  br label %.outer

.outer:                                           ; preds = %.critedge.thread, %.lr.ph
  %.058.ph = phi i1 [ true, %.critedge.thread ], [ false, %.lr.ph ]
  %.04057.ph = phi i64 [ %i.az, %.critedge.thread ], [ 0, %.lr.ph ]
  br label %bb.h

._crit_edge:                                      ; preds = %.critedge
  br i1 %.058.ph, label %._crit_edge.thread, label %.critedge59

bb.h:                                             ; preds = %.outer, %.critedge
  %.04057 = phi i64 [ %i.aw, %.critedge ], [ %.04057.ph, %.outer ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.04057
  %.sroa.014.0.copyload = load i8, ptr %i.ah, align 1
  %i.ai = icmp eq i8 %.sroa.014.0.copyload, 0
  br i1 %i.ai, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.ag, align 8, !nonnull !6, !align !7
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.04057
  %.sroa.012.0.copyload = load i32, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = zext i32 %.sroa.012.0.copyload to i64
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.aq) ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 1
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.au = extractvalue { ptr, i64 } %i.ar, 0
  %.sroa.011.0.copyload = load i8, ptr %i.au, align 1
  %i.av = icmp eq i8 %.sroa.011.0.copyload, 1
  br i1 %i.av, label %.critedge.thread, label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.h
  %i.aw = add nuw i64 %.04057, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !279

.critedge.thread:                                 ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.04057 ; 2 uses
  %.sroa.07.0.copyload = load i32, ptr %i.ax, align 4
  %i.ay = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSE_4KindENSE_10AssumptionENS2_22RegisterRepresentationESI_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.07.0.copyload, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 1, i8 0), !inline_history !114
  store i32 %i.ay, ptr %i.ax, align 4
  %i.az = add nuw i64 %.04057, 1                  ; 2 uses
  %exitcond.not65 = icmp eq i64 %i.az, %i.af
  br i1 %exitcond.not65, label %._crit_edge.thread, label %.outer, !llvm.loop !279

.critedge59:                                      ; preds = %_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_6CallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEPT_RNSH_11SmallVectorImLm32ESaImEEEDpT0_.exit, %._crit_edge
  %i.ba = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, ptr %3, i64 %4, ptr noundef %5, i32 %6) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = icmp eq i8 %i.bc, 1
  br i1 %i.bd, label %bb.k, label %_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSO_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENSA_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit

bb.k:                                             ; preds = %.critedge59
  %.sroa.4.0.extract.trunc21.i.i.i.i.i = or i32 %6, 262144
  %i.be = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.ba)
  br label %_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSO_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENSA_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit

_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSO_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENSA_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit: ; preds = %.critedge59, %bb.k
  %.sroa.4.0.i.i.i.i.i = phi i32 [ %.sroa.4.0.extract.trunc21.i.i.i.i.i, %bb.k ], [ %6, %.critedge59 ]
  %.0.i.i.i.i.i = phi i1 [ %i.be, %bb.k ], [ false, %.critedge59 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4.0.insert.ext.i.i.i.i.i = and i32 %.sroa.4.0.i.i.i.i.i, 16711680
  %i.bg = and i32 %6, -16711681
  %.sroa.018.0.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.4.0.insert.ext.i.i.i.i.i, %i.bg
  %i.bh = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.ba, i1 noundef zeroext %.0.i.i.i.i.i, ptr noundef nonnull %i.bf, i32 %.sroa.018.0.insert.insert.i.i.i.i.i) ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %0, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !6, !align !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = zext i32 %i.bh to i64
  %i.bo = add i64 %i.bm, %i.bn
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = tail call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i32 %i.bh)
  br label %bb.n

._crit_edge.thread:                               ; preds = %.critedge.thread, %._crit_edge
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.w, align 8
  %i.br = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.bt, align 8
  %i.bu = trunc i32 %.sroa.0.0.copyload.i.i.i.i to i1
  br i1 %i.bu, label %bb.l, label %_ZNK2v88internal8compiler10turboshaft6CallOp11frame_stateEv.exit

bb.l:                                             ; preds = %._crit_edge.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %.sroa.0.0.copyload.i.i41 = load i32, ptr %i.bv, align 4
  br label %_ZNK2v88internal8compiler10turboshaft6CallOp11frame_stateEv.exit

_ZNK2v88internal8compiler10turboshaft6CallOp11frame_stateEv.exit: ; preds = %._crit_edge.thread, %bb.l
  %i.bw = phi i64 [ 2, %bb.l ], [ 1, %._crit_edge.thread ] ; 5 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i.i41, %bb.l ], [ -1, %._crit_edge.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bx = load i16, ptr %i.s, align 2
  %i.by = zext i16 %i.bx to i64                   ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bw ; 5 uses
  %i.ca = sub nsw i64 %i.by, %i.bw                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  store ptr %i.cb, ptr %7, align 8, !alias.scope !280
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !alias.scope !280
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.ce, ptr %i.cd, align 8, !alias.scope !280
  %i.cf = icmp ugt i64 %i.ca, 16
  br i1 %i.cf, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread.i: ; preds = %_ZNK2v88internal8compiler10turboshaft6CallOp11frame_stateEv.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %7, i64 noundef %i.ca)
  %.pre.i = load ptr, ptr %7, align 8, !alias.scope !280
  br label %.lr.ph.i.i.i.preheader.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i: ; preds = %_ZNK2v88internal8compiler10turboshaft6CallOp11frame_stateEv.exit
  %.not9.i.i.i.i = icmp eq i64 %i.bw, %i.by
  br i1 %.not9.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread.i
  %i.cg = phi ptr [ %.pre.i, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread.i ], [ %i.cb, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ] ; 5 uses
  %.idx9.pn.i = shl nuw nsw i64 %i.ca, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx9.pn.i
  %8 = shl nuw nsw i64 %i.by, 2
  %i.ci = add nsw i64 %8, -4
  %9 = shl nuw nsw i64 %i.bw, 2
  %10 = sub nsw i64 %i.ci, %9                     ; 2 uses
  %11 = lshr exact i64 %10, 2
  %i.cj = add nuw nsw i64 %11, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %10, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader.i
  %i.ck = ptrtoaddr ptr %i.cg to i64
  %i.cl = shl nuw nsw i64 %i.bw, 2
  %i.cm = add i64 %i.cl, %i.m
  %i.cn = sub i64 %i.ck, %i.cm
  %i.co = add i64 %i.cn, -25
  %diff.check = icmp ult i64 %i.co, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cj, 9223372036854775800     ; 3 uses
  %i.cp = shl i64 %n.vec, 2                       ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cg, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.bz, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cs ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.bz, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep73, align 4, !noalias !280
  %wide.load74 = load <4 x i32>, ptr %i.ct, align 4, !noalias !280
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load74, ptr %i.cu, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader.i, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph.i.i.i.preheader.i ], [ %i.cq, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i.i.i.preheader.i ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.cw = load i32, ptr %.0810.i.i.i.i, align 4, !noalias !280
  store i32 %i.cw, ptr %.011.i.i.i.i, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.cx, %i.ch
  br i1 %.not.i.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !284

_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre8.i = load ptr, ptr %7, align 8, !alias.scope !280
  %.pre = load ptr, ptr %i.u, align 8
  br label %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit

_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i
  %i.cz = phi ptr [ %.pre, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i ], [ %i.br, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ] ; 3 uses
  %i.da = phi ptr [ %.pre8.i, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i ], [ %i.cb, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ca
  store ptr %i.db, ptr %i.cc, align 8, !alias.scope !280
  %.sroa.0.0.copyload.i = load i32, ptr %i.v, align 8 ; 4 uses
  %i.dc = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.0.0.i, ptr %i.da, i64 %i.ca, ptr noundef %i.cz, i32 %.sroa.0.0.copyload.i) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.de = load i8, ptr %i.dd, align 8
  %i.df = icmp eq i8 %i.de, 1
  br i1 %i.df, label %bb.m, label %_ZZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_ENKUlDpT_E_clIJSW_SZ_NS10_IS11_EES16_S17_EEES11_S1B_.exit

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit
  %.sroa.4.0.extract.trunc21.i.i.i.i.i.i = or i32 %.sroa.0.0.copyload.i, 262144
  %i.dg = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.dc)
  br label %_ZZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_ENKUlDpT_E_clIJSW_SZ_NS10_IS11_EES16_S17_EEES11_S1B_.exit

_ZZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_ENKUlDpT_E_clIJSW_SZ_NS10_IS11_EES16_S17_EEES11_S1B_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit, %bb.m
  %.sroa.4.0.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.extract.trunc21.i.i.i.i.i.i, %bb.m ], [ %.sroa.0.0.copyload.i, %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit ]
  %.0.i.i.i.i.i.i = phi i1 [ %i.dg, %bb.m ], [ false, %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %.sroa.4.0.insert.ext.i.i.i.i.i.i = and i32 %.sroa.4.0.i.i.i.i.i.i, 16711680
  %i.di = and i32 %.sroa.0.0.copyload.i, -16711681
  %.sroa.018.0.insert.insert.i.i.i.i.i.i = or disjoint i32 %.sroa.4.0.insert.ext.i.i.i.i.i.i, %i.di
  %i.dj = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.dc, i1 noundef zeroext %.0.i.i.i.i.i.i, ptr noundef nonnull %i.dh, i32 %.sroa.018.0.insert.insert.i.i.i.i.i.i) ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %0, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !6, !align !7
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = zext i32 %i.dj to i64
  %i.dq = add i64 %i.do, %i.dp
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i32 %i.dj)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.n

bb.n:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_ENKUlDpT_E_clIJSW_SZ_NS10_IS11_EES16_S17_EEES11_S1B_.exit, %_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSO_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENSA_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit
  %.sroa.039.0 = phi i32 [ %i.ds, %_ZZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_ENKUlDpT_E_clIJSW_SZ_NS10_IS11_EES16_S17_EEES11_S1B_.exit ], [ %i.bq, %_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSO_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENSA_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit ]
  ret i32 %.sroa.039.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft6CallOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %.not.i.i = icmp ult i64 %i.j, %i.c
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c)
  %.pre.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i: ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.g, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.c ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp ult ptr %i.n, %i.l
  br i1 %i.o, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i
  %i.p = ptrtoaddr ptr %i.n to i64
  %i.q = ptrtoaddr ptr %i.k to i64
  %i.r = add i64 %i.q, %i.c
  %i.s = sub i64 %i.r, %i.p
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 -1, i64 %i.s, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  store ptr %i.l, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = icmp ult i32 %i.w, 9
  br i1 %i.y, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit
  %i.z = zext nneg i32 %i.w to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK2v88internal8compiler10turboshaft6CallOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE, i64 %i.z
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit, %switch.lookup
  %.sink = phi i8 [ %switch.load, %switch.lookup ], [ 1, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit ]
  store i8 %.sink, ptr %i.x, align 1
  %i.aa = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ac, align 8
  %i.ad = trunc i32 %.sroa.0.0.copyload.i.i.i to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.f, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 8, ptr %i.af, align 1
  %.pre = load ptr, ptr %i.t, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = phi ptr [ %.pre, %bb.d ], [ %i.aa, %bb.c ] ; 2 uses
  %.1 = phi i64 [ 2, %bb.d ], [ 1, %bb.c ]        ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %.not39 = icmp samesign eq i64 %i.ak, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.241 = phi i64 [ %i.ao, %bb.f ], [ %.1, %bb.e ] ; 4 uses
  %.02940 = phi ptr [ %i.ar, %bb.f ], [ %i.ai, %bb.e ] ; 2 uses
  %i.am = load i16, ptr %i.a, align 2
  %i.an = zext i16 %i.am to i64
  %.not30 = icmp samesign ult i64 %.241, %i.an
  br i1 %.not30, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload = load i8, ptr %.02940, align 1
  %i.ao = add nuw nsw i64 %.241, 1                ; 2 uses
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.241
  store i8 %.sroa.0.0.copyload, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.02940, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %.lr.ph, %bb.e
end_hunk_5
