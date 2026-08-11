inline.NumInlined: 34333
inline.NumDeleted: 9438
loop-unroll.NumCompletelyUnrolled: 247
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE4GrowEm:bb.a
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
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit, !prof !10

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
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES9_SC_EEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSE_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSO_13VariableTableES4_S5_E16StartNewSnapshotISW_EEvNST_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENST_IKT0_EEEEUlSS_RSU_S1D_E_EEvS13_S16_RS1B_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !11

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
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !80

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !81

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
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !6, !align !13 ; 4 uses
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #20
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
  %i.bk = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 5 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 2 uses
  %i.bo = xor i64 %i.bn, -1
  %.not.i42 = icmp ugt i64 %2, %i.bo
  br i1 %.not.i42, label %bb.l, label %bb.m, !prof !10

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
  br i1 %i.ca, label %bb.p, label %bb.o, !prof !11

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
  br i1 %i.cj, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, !prof !10

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
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !82

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
  br i1 %i.dh, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !83

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

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.023.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.dy, %i.dw
  br i1 %.not.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.023.i = phi ptr [ %i.du, %.lr.ph.i ], [ %i.dy, %bb.t ] ; 2 uses
  %i.dz = load i32, ptr %.023.i, align 4          ; 2 uses
  %.not21.i = icmp eq i32 %i.dz, -1
  br i1 %.not21.i, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS9_6VectorIKSN_EEE_clESP_SS_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %bb.u
  %i.ea = load ptr, ptr %i.dx, align 8, !nonnull !6, !align !13
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ee = zext i32 %i.dz to i64
  %i.ef = add i64 %i.ed, %i.ee
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load i8, ptr %i.eg, align 4
  %i.ei = icmp eq i8 %i.eh, 76
  br i1 %i.ei, label %bb.v, label %bb.t

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 864
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS9_6VectorIKSN_EEE_clESP_SS_.exit, label %bb.w, !prof !10

bb.w:                                             ; preds = %bb.v
  %i.em = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.dv)
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS9_6VectorIKSN_EEE_clESP_SS_.exit

._crit_edge.i:                                    ; preds = %bb.t
  %.sroa.0.0.copyload.i = load i8, ptr %i.dp, align 8 ; 2 uses
  %.not.i.i38 = icmp eq i8 %.sroa.0.0.copyload.i, 8
  br i1 %.not.i.i38, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.dv, i64 864
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS9_6VectorIKSN_EEE_clESP_SS_.exit, label %bb.y, !prof !10

bb.y:                                             ; preds = %bb.x
  %i.eq = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE9ReducePhiENS9_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(520) %i.dv, ptr %i.du, i64 %2, i8 %.sroa.0.0.copyload.i), !inline_history !84
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS9_6VectorIKSN_EEE_clESP_SS_.exit

bb.z:                                             ; preds = %._crit_edge.i
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.du, align 4
  %i.er = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.es = add i64 %i.ed, %i.er
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load i8, ptr %i.et, align 4
  %i.ev = icmp eq i8 %i.eu, 92
  br i1 %i.ev, label %bb.aa, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS9_6VectorIKSN_EEE_clESP_SS_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ew = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE15MergeFrameStateENS9_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(520) %i.dv, ptr nonnull %i.du, i64 %2), !inline_history !84
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS9_6VectorIKSN_EEE_clESP_SS_.exit

_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS9_6VectorIKSN_EEE_clESP_SS_.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.copyload.i40 = phi i32 [ -1, %bb.z ], [ -1, %bb.v ], [ %i.em, %bb.w ], [ -1, %bb.x ], [ %i.ew, %bb.aa ], [ %i.eq, %bb.y ], [ -1, %bb.u ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8            ; 3 uses
  %.not62 = icmp eq i32 %i.ey, %.sroa.0.0.copyload.i40
  br i1 %.not62, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS9_6VectorIKSN_EEE_clESP_SS_.exit
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
  store ptr %i.dp, ptr %i.fi, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 %i.ey, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 %.sroa.0.0.copyload.i40, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %.sroa.0.0.copyload.i40, ptr %i.ex, align 8
  %i.fk = load ptr, ptr %4, align 8               ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

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
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
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
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !13 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, !prof !10

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
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !6, !align !13 ; 4 uses
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !10

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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !101

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !102

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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i16 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !13 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, !prof !10

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
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %i.as = add nuw i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.copyload.i = load i32, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.a, align 8, !nonnull !6, !align !13 ; 4 uses
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
  br i1 %.not.i.i8, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !11

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
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_10RttCanonOpEJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEENS2_7OpIndexEDpT0_:bb.a
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
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit
  %i.ar = add nuw i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.copyload.i = load i32, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.a, align 8, !nonnull !6, !align !13 ; 4 uses
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !10

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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !10

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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !105

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !106

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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_12FrameStateOpEJNS2_27ShadowyOpIndexVectorWrapperEbPKNS2_14FrameStateDataEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !13 ; 5 uses
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
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !10

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
  br i1 %i.ap, label %bb.c, label %bb.d, !prof !11

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
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.e, !prof !10

end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE16ReduceInputsOfOpENS2_7OpIndexESI_:.lr.ph54

bb.h:                                             ; preds = %.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i31, i64 8
  %.sroa.0.0.copyload.i.i.i.i32 = load i32, ptr %i.by, align 4
  %i.bz = icmp eq i32 %i.bu, %.sroa.0.0.copyload.i.i.i.i32
  br i1 %i.bz, label %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit33, label %.preheader, !llvm.loop !291

bb.i:                                             ; preds = %bb.g
  %i.ca = lshr i32 %i.bu, 4                       ; 2 uses
  %i.cb = xor i32 %i.ca, -1
  %i.cc = shl i32 %i.ca, 15
  %i.cd = add i32 %i.cc, %i.cb                    ; 2 uses
  %i.ce = lshr i32 %i.cd, 12
  %i.cf = xor i32 %i.ce, %i.cd
  %i.cg = mul i32 %i.cf, 5                        ; 2 uses
  %i.ch = lshr i32 %i.cg, 4
  %i.ci = xor i32 %i.ch, %i.cg
  %i.cj = mul i32 %i.ci, 2057                     ; 2 uses
  %i.ck = lshr i32 %i.cj, 16
  %i.cl = xor i32 %i.ck, %i.cj
  %i.cm = zext i32 %i.cl to i64                   ; 3 uses
  %i.cn = load i64, ptr %i.l, align 8             ; 2 uses
  %i.co = urem i64 %i.cm, %i.cn                   ; 2 uses
  %i.cp = load ptr, ptr %i.m, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i21, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = icmp eq i64 %i.cv, %i.cm
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i22 = load i32, ptr %i.ct, align 8
  %i.cx = icmp eq i32 %i.bu, %.sroa.0.0.copyload.i.i.i20.i.i.i.i22
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit33, label %.lr.ph.i.i.i.i23

bb.k:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.da = icmp eq i64 %i.df, %i.cm
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29 = load i32, ptr %i.cz, align 8
  %i.db = icmp eq i32 %i.bu, %.sroa.0.0.copyload.i.i.i.i.i.i.i29
  %i.dc = select i1 %i.da, i1 %i.db, i1 false
  br i1 %i.dc, label %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit33, label %.lr.ph.i.i.i.i23, !llvm.loop !292

.lr.ph.i.i.i.i23:                                 ; preds = %bb.j, %bb.k
  %.021.i.i.i.i24 = phi ptr [ %i.dd, %bb.k ], [ %i.cs, %bb.j ]
  %i.dd = load ptr, ptr %.021.i.i.i.i24, align 8  ; 4 uses
  %.not18.i.i.i.i25 = icmp eq ptr %i.dd, null
  br i1 %.not18.i.i.i.i25, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i23
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i64, ptr %i.de, align 8            ; 2 uses
  %i.dg = urem i64 %i.df, %i.cn
  %.not19.i.i.i.i26 = icmp eq i64 %i.dg, %i.co
  br i1 %.not19.i.i.i.i26, label %bb.k, label %..loopexit_crit_edge22.i.i.i.i27, !llvm.loop !292

..loopexit_crit_edge22.i.i.i.i27:                 ; preds = %bb.l
  br label %.loopexit, !llvm.loop !292

.loopexit:                                        ; preds = %bb.i, %.lr.ph.i.i.i.i23, %.preheader, %..loopexit_crit_edge22.i.i.i.i27
  %i.dh = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.di = load ptr, ptr %i.e, align 8
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.m, label %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit33.thread, !prof !10

bb.m:                                             ; preds = %.loopexit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %4)
  %.pre.i.i.i35 = load ptr, ptr %i.d, align 8
  br label %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit33.thread

_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit33: ; preds = %bb.k, %bb.h, %bb.j, %.lr.ph
  %i.dk = getelementptr inbounds nuw i8, ptr %.01852, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.dk, %i.bt
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit33.thread: ; preds = %bb.m, %.loopexit
  %i.dl = phi ptr [ %.pre.i.i.i35, %bb.m ], [ %i.dh, %.loopexit ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store ptr %i.dm, ptr %i.d, align 8
  store i32 %i.bu, ptr %i.dl, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.01852, i64 4 ; 2 uses
  %.not70 = icmp eq ptr %i.dn, %i.bt
  br i1 %.not70, label %._crit_edge.thread, label %.lr.ph.outer

.critedge:                                        ; preds = %._crit_edge..critedge_crit_edge, %.loopexit48
  %i.do = phi ptr [ %.pre, %._crit_edge..critedge_crit_edge ], [ %i.q, %.loopexit48 ]
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -4
  store ptr %i.dp, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.i, ptr %3, align 8
  %i.dq = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SM_NS7_10_AllocNodeINS5_INS7_10_Hash_nodeIS4_Lb1EEEEEEEEESt4pairINS7_14_Node_iteratorIS4_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.dr = load i32, ptr %5, align 4               ; 4 uses
  %i.ds = icmp eq i32 %i.dr, %2
  br i1 %i.ds, label %._crit_edge.thread, label %bb.n, !llvm.loop !293

bb.n:                                             ; preds = %.critedge
  %i.dt = load ptr, ptr %i.p, align 8
  %.not88 = icmp eq ptr %i.dt, null
  br i1 %.not88, label %._crit_edge.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.du = call i32 @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22VisitOpNoMappingUpdateILb0EEENS2_7OpIndexESK_PKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(728) %0, i32 %i.dr, ptr noundef %i.b), !inline_history !58 ; 3 uses
  %i.dv = load ptr, ptr %i.o, align 8, !nonnull !6, !align !13
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = zext i32 %i.dr to i64
  %i.ea = add i64 %i.dy, %i.dz
  %i.eb = inttoptr i64 %i.ea to ptr               ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 4
  %i.ed = icmp eq i8 %i.ec, 92
  br i1 %i.ed, label %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i, label %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i

_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i: ; preds = %bb.o
  %i.ee = call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.eb), !inline_history !58
  %i.ef = extractvalue { ptr, i64 } %i.ee, 1
  %i.eg = icmp ne i64 %i.ef, 0
  %i.eh = icmp ne i32 %i.du, -1
  %or.cond.i = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond.i, label %bb.p, label %._crit_edge.thread

_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i: ; preds = %bb.o
  %.old.not.i = icmp eq i32 %i.du, -1
  br i1 %.old.not.i, label %._crit_edge.thread, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i
  call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE21CreateOldToNewMappingENS2_7OpIndexESJ_(ptr noundef nonnull align 8 dereferenceable(728) %0, i32 %i.dr, i32 %i.du), !inline_history !58
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit33.thread, %bb.p, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i, %bb.n, %.critedge, %._crit_edge, %_ZNKSt13unordered_setIN2v88internal8compiler10turboshaft7OpIndexENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE8containsERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ei = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ej = load ptr, ptr %4, align 8
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %._crit_edge55, label %bb.a

._crit_edge55:                                    ; preds = %._crit_edge.thread
  %i.el = load ptr, ptr %i.m, align 8
  %i.em = load i64, ptr %i.l, align 8
  %i.en = shl i64 %i.em, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.el, i8 0, i64 %i.en, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !10

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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !294

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !295

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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SM_NS7_10_AllocNodeINS5_INS7_10_Hash_nodeIS4_Lb1EEEEEEEEESt4pairINS7_14_Node_iteratorIS4_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not.not = icmp eq i64 %i.b, 0                 ; 2 uses
  %.sroa.0.0.copyload.i.i17.pre = load i32, ptr %1, align 4 ; 4 uses
  br i1 %.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.025.0.in = phi ptr [ %i.c, %bb.b ], [ %.sroa.025.0, %bb.d ]
  %.sroa.025.0 = load ptr, ptr %.sroa.025.0.in, align 8 ; 4 uses
  %i.d = icmp eq ptr %.sroa.025.0, null
  br i1 %i.d, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 4
  %i.f = icmp eq i32 %.sroa.0.0.copyload.i.i17.pre, %.sroa.0.0.copyload.i.i
  br i1 %i.f, label %_ZNKSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS4_EEPNS7_10_Hash_nodeIS4_Lb1EEEmRKT_m.exit, label %bb.c, !llvm.loop !296

.thread:                                          ; preds = %bb.c, %bb.a
  %i.g = lshr i32 %.sroa.0.0.copyload.i.i17.pre, 4 ; 2 uses
  %i.h = xor i32 %i.g, -1
  %i.i = shl i32 %i.g, 15
  %i.j = add i32 %i.i, %i.h                       ; 2 uses
  %i.k = lshr i32 %i.j, 12
  %i.l = xor i32 %i.k, %i.j
  %i.m = mul i32 %i.l, 5                          ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = xor i32 %i.n, %i.m
  %i.p = mul i32 %i.o, 2057                       ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %i.r = xor i32 %i.q, %i.p
  %i.s = zext i32 %i.r to i64                     ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = urem i64 %i.s, %i.u                      ; 3 uses
  br i1 %.not.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.z, align 8             ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ad, %i.s
  %.sroa.0.0.copyload.i.i.i20.i.i = load i32, ptr %i.ab, align 8
  %i.af = icmp eq i32 %.sroa.0.0.copyload.i.i17.pre, %.sroa.0.0.copyload.i.i.i20.i.i
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %_ZNKSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS4_EEPNS7_10_Hash_nodeIS4_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ai = icmp eq i64 %i.an, %i.s
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.ah, align 8
  %i.aj = icmp eq i32 %.sroa.0.0.copyload.i.i17.pre, %.sroa.0.0.copyload.i.i.i.i.i
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %_ZNKSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS4_EEPNS7_10_Hash_nodeIS4_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !297

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.021.i.i = phi ptr [ %i.al, %bb.g ], [ %i.aa, %bb.f ]
  %i.al = load ptr, ptr %.021.i.i, align 8        ; 5 uses
  %.not18.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = urem i64 %i.an, %i.u
  %.not19.i.i = icmp eq i64 %i.ao, %i.v
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge22.i.i, !llvm.loop !297

..loopexit_crit_edge22.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !297

.critedge:                                        ; preds = %.lr.ph.i.i, %..loopexit_crit_edge22.i.i, %bb.e, %.thread
  %i.ap = load ptr, ptr %3, align 8, !nonnull !6, !align !13
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %i.aw = icmp ult i64 %i.av, 24
  br i1 %i.aw, label %bb.i, label %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKN2v88internal8compiler10turboshaft7OpIndexESA_NS_10_AllocNodeINS5_13ZoneAllocatorINS_10_Hash_nodeIS8_Lb1EEEEEEEEEPNT1_11__node_typeEOT_OT0_RKSH_.exit, !prof !10

bb.i:                                             ; preds = %.critedge
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 noundef 24) #19
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8
  br label %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKN2v88internal8compiler10turboshaft7OpIndexESA_NS_10_AllocNodeINS5_13ZoneAllocatorINS_10_Hash_nodeIS8_Lb1EEEEEEEEEPNT1_11__node_typeEOT_OT0_RKSH_.exit

_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKN2v88internal8compiler10turboshaft7OpIndexESA_NS_10_AllocNodeINS5_13ZoneAllocatorINS_10_Hash_nodeIS8_Lb1EEEEEEEEEPNT1_11__node_typeEOT_OT0_RKSH_.exit: ; preds = %.critedge, %bb.i
  %i.ax = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.i ], [ %i.au, %.critedge ] ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 10 uses
  %i.az = add i64 %i.ax, 24
  store i64 %i.az, ptr %i.at, align 8
  store ptr null, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i32, ptr %1, align 4
  store i32 %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load i64, ptr %i.t, align 8
  %i.be = load i64, ptr %i.a, align 8
  %i.bf = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 noundef %i.bd, i64 noundef %i.be, i64 noundef 1) #19 ; 2 uses
  %i.bg = extractvalue { i8, i64 } %i.bf, 0
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE30ReduceForceOrIntersectPackNodeINS2_10TailCallOpENS2_21UniformReducerAdapterIS3_SG_E26ReduceTailCallContinuationEEEvPNS2_8PackNodeENS2_7OpIndexEPSP_:bb.a
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = zext i32 %.sroa.0.0.copyload.i.1 to i64
  %i.ar = add i64 %i.ap, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = tail call i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE27AssembleOutputGraphTailCallERKNS2_10TailCallOpE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.as) ; 4 uses
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE21CreateOldToNewMappingENS2_7OpIndexESJ_(ptr noundef nonnull align 8 dereferenceable(728) %0, i32 %.sroa.0.0.copyload.i.1, i32 %i.at)
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread

bb.n:                                             ; preds = %bb.l
  store i32 %i.at, ptr %3, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread: ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread, %bb.i, %bb.n, %bb.m, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1
  %.sroa.8.1 = phi i32 [ %i.at, %bb.n ], [ %i.at, %bb.m ], [ %.sroa.02.0.copyload.i12.i.1, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1 ], [ %i.z, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread ], [ %i.ah, %bb.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16SimdPack128To256ENS2_1VINS2_12WordWithBitsILm128EEEEESH_.exit, label %bb.b, !prof !10
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE27AssembleOutputGraphTailCallERKNS2_10TailCallOpE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.846", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
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
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.r, ptr %2, align 8, !alias.scope !313
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !313
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.u, ptr %i.t, align 8, !alias.scope !313
  %.idx.i.i = shl nuw nsw i64 %i.q, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i
  %.not11.i.i = icmp eq i64 %i.q, 0
  br i1 %.not11.i.i, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm16EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.al, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i ] ; 2 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %.012.i.i, align 4, !noalias !313
  %i.x = lshr i32 %.sroa.02.0.copyload.i.i, 4
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !noalias !313
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESK_i.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !313
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
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESK_i.exit.i.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESK_i.exit.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.d
  %.sroa.014.0.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  %i.ag = load ptr, ptr %i.s, align 8, !alias.scope !313 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !alias.scope !313
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i, !prof !10

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESK_i.exit.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !313
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESK_i.exit.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESK_i.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.s, align 8, !alias.scope !313
  store i32 %.sroa.014.0.i.i.i, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i3, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm16EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit.loopexit, label %bb.d

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm16EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit.loopexit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i
  %.pre = load ptr, ptr %2, align 8
  %.pre4 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm16EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm16EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm16EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit.loopexit, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit
  %i.am = phi ptr [ %.pre4, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm16EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit ]
  %i.an = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm16EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit ] ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESH_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.014.0.i.i, ptr %i.an, i64 %i.ar, ptr noundef %i.at)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.au
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !10

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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !314

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !315

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #6 comdat align 2 {
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
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESH_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !13 ; 5 uses
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
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !10

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
  br i1 %i.as, label %bb.c, label %bb.d, !prof !11

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
  br i1 %.not.i.i.prol, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, label %bb.f, !prof !10

bb.f:                                             ; preds = %.lr.ph.i.prol
  %i.bg = add nuw i8 %i.bf, 1
  store i8 %i.bg, ptr %i.be, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol

end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE30ReduceForceOrIntersectPackNodeINS2_8ReturnOpENS2_21UniformReducerAdapterIS3_SG_E24ReduceReturnContinuationEEEvPNS2_8PackNodeENS2_7OpIndexEPSP_:bb.a
  %i.aq = zext i32 %.sroa.0.0.copyload.i.1 to i64
  %i.ar = add i64 %i.ap, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = tail call i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE25AssembleOutputGraphReturnERKNS2_8ReturnOpE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 4 dereferenceable(5) %i.as) ; 4 uses
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE21CreateOldToNewMappingENS2_7OpIndexESJ_(ptr noundef nonnull align 8 dereferenceable(728) %0, i32 %.sroa.0.0.copyload.i.1, i32 %i.at)
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread

bb.n:                                             ; preds = %bb.l
  store i32 %i.at, ptr %3, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread: ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread, %bb.i, %bb.n, %bb.m, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1
  %.sroa.8.1 = phi i32 [ %i.at, %bb.n ], [ %i.at, %bb.m ], [ %.sroa.02.0.copyload.i12.i.1, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1 ], [ %i.z, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread ], [ %i.ah, %bb.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16SimdPack128To256ENS2_1VINS2_12WordWithBitsILm128EEEEESH_.exit, label %bb.b, !prof !10
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE25AssembleOutputGraphReturnERKNS2_8ReturnOpE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 4 dereferenceable(5) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.1323", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
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
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.r, ptr %2, align 8, !alias.scope !328
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !328
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.u, ptr %i.t, align 8, !alias.scope !328
  %.idx.i.i = shl nuw nsw i64 %i.q, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i
  %.not11.i.i = icmp eq i64 %i.q, 0
  br i1 %.not11.i.i, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm4EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.al, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i ] ; 2 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %.012.i.i, align 4, !noalias !328
  %i.x = lshr i32 %.sroa.02.0.copyload.i.i, 4
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !noalias !328
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESK_i.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !328
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
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESK_i.exit.i.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESK_i.exit.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.d
  %.sroa.014.0.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  %i.ag = load ptr, ptr %i.s, align 8, !alias.scope !328 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !alias.scope !328
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i, !prof !10

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESK_i.exit.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !328
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESK_i.exit.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESK_i.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.s, align 8, !alias.scope !328
  store i32 %.sroa.014.0.i.i.i, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i3, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm4EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit.loopexit, label %bb.d

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm4EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit.loopexit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i
  %.pre = load ptr, ptr %2, align 8
  %.pre4 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm4EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm4EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm4EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit.loopexit, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit
  %i.am = phi ptr [ %.pre4, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm4EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit ]
  %i.an = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapILm4EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISP_EEENSA_6VectorIKSP_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit ] ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = load i8, ptr %i.as, align 4, !range !5, !noundef !6
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_8ReturnOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEbEEESH_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.014.0.i.i, ptr %i.an, i64 %i.ar, i1 noundef zeroext %i.au)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.av
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !10

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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !329

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !330

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 {
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
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_8ReturnOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEbEEESH_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !13 ; 5 uses
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
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !10

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
  br i1 %i.at, label %bb.c, label %bb.d, !prof !11

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

_ZN2v88internal8compiler10turboshaft8ReturnOp3NewEPNS2_5GraphENS2_1VINS2_12WordWithBitsILm32EEEEENS_4base6VectorIKNS2_7OpIndexEEEb.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.aw = zext i16 %i.ap to i64
  %.idx.i = shl nuw nsw i64 %i.aw, 2              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.ap, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ReturnOpEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10turboshaft8ReturnOp3NewEPNS2_5GraphENS2_1VINS2_12WordWithBitsILm32EEEEENS_4base6VectorIKNS2_7OpIndexEEEb.exit
  %i.ay = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.az = and i64 %i.ay, 4
  %lcmp.mod.not.not = icmp eq i64 %i.az, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.ar, align 4
  %i.ba = load ptr, ptr %i.f, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.bd = add i64 %i.bb, %i.bc
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %.not.i.i.prol = icmp eq i8 %i.bg, -1
  br i1 %.not.i.i.prol, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, label %bb.f, !prof !10

bb.f:                                             ; preds = %.lr.ph.i.prol
  %i.bh = add nuw i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE10ResolvePhiIZNSH_19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEEUlSK_iiE_EESK_SN_OT_NS2_22RegisterRepresentationE:bb.a
bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.0.0.copyload.i.i.i71 = load i32, ptr %i.ah, align 8
  br label %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit72

_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit72: ; preds = %bb.e, %bb.f
  %.sroa.03.0.i.i70 = phi i32 [ %.sroa.0.0.copyload.i.i.i71, %bb.f ], [ -1, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = icmp eq i32 %.sroa.0.0.copyload.i, %i.t
  br i1 %i.aj, label %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit, label %bb.g

bb.g:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit72
  %i.ak = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_16PendingLoopPhiOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.03.0.i.i70, i8 %3)
  br label %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.al, ptr %4, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 280
  store ptr %i.ao, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp eq i16 %i.b, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.at = zext i16 %i.b to i64                    ; 2 uses
  %.idx = shl nuw nsw i64 %i.at, 2
  %.add = add nuw nsw i64 %.idx, 8
  %i.au = load ptr, ptr %i.ap, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

._crit_edge:                                      ; preds = %bb.n, %bb.h
  %.055.lcssa = phi ptr [ %i.ar, %bb.h ], [ %.156, %bb.n ]
  %.not = icmp eq ptr %.055.lcssa, null
  br i1 %.not, label %.loopexit, label %bb.o

bb.i:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %i.at, %.lr.ph ], [ %indvars.iv.next, %bb.n ]
  %.0115.in = phi ptr [ %i.av, %.lr.ph ], [ %i.bu, %bb.n ]
  %.055114 = phi ptr [ %i.ar, %.lr.ph ], [ %.156, %bb.n ] ; 4 uses
  %.sroa.090.0.idx112 = phi i64 [ %.add, %.lr.ph ], [ %.sroa.090.0.add, %bb.n ]
  %.0115 = load ptr, ptr %.0115.in, align 8       ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %.sroa.090.0.add = add nsw i64 %.sroa.090.0.idx112, -4 ; 2 uses
  %.not64 = icmp eq ptr %.055114, null
  br i1 %.not64, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.055114, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.ay, %.0115
  br i1 %i.az, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !13
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %.not.i.i77 = icmp ugt i64 %i.bj, %indvars.iv.next
  br i1 %.not.i.i77, label %bb.l, label %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit80

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %.sroa.0.0.copyload.i.i.i79 = load i32, ptr %i.bm, align 8
  br label %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit80

_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit80: ; preds = %bb.k, %bb.l
  %.sroa.03.0.i.i78 = phi i32 [ %.sroa.0.0.copyload.i.i.i79, %bb.l ], [ -1, %bb.k ]
  %i.bn = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.bo = load ptr, ptr %i.an, align 8
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.m, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit, !prof !10

bb.m:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit80
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %4)
  %.pre.i.i = load ptr, ptr %i.am, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit80, %bb.m
  %i.bq = phi ptr [ %.pre.i.i, %bb.m ], [ %i.bn, %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit80 ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store ptr %i.br, ptr %i.am, align 8
  store i32 %.sroa.03.0.i.i78, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.055114, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit, %bb.j, %bb.i
  %.156 = phi ptr [ %i.bt, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit ], [ %.055114, %bb.j ], [ null, %bb.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0115, i64 64
  %i.bv = icmp eq i64 %.sroa.090.0.add, 8
  br i1 %i.bv, label %._crit_edge, label %bb.i

bb.o:                                             ; preds = %._crit_edge
  %i.bw = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %.1117 = load ptr, ptr %i.bx, align 8           ; 2 uses
  %.not62118 = icmp eq ptr %.1117, null
  br i1 %.not62118, label %._crit_edge123, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.bz = load i32, ptr %i.by, align 8
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %.lr.ph122
  %.1120 = phi ptr [ %.1, %.lr.ph122 ], [ %.1117, %.lr.ph122.preheader ] ; 2 uses
  %.061.in119 = phi i32 [ %.061, %.lr.ph122 ], [ %i.bz, %.lr.ph122.preheader ]
  %.061 = add i32 %.061.in119, -1                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1120, i64 96
  store i32 %.061, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.1120, i64 64
  %.1 = load ptr, ptr %i.cb, align 8              ; 2 uses
  %.not62 = icmp eq ptr %.1, null
  br i1 %.not62, label %._crit_edge123, label %.lr.ph122, !llvm.loop !858

._crit_edge123:                                   ; preds = %.lr.ph122, %bb.o
  %i.cc = load ptr, ptr %4, align 8
  store ptr %i.cc, ptr %i.am, align 8
  %i.cd = load ptr, ptr %i.u, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %.2124 = load ptr, ptr %i.ce, align 8           ; 2 uses
  %.not63125 = icmp eq ptr %.2124, null
  br i1 %.not63125, label %.loopexit, label %.lr.ph128

.lr.ph128:                                        ; preds = %._crit_edge123
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph128, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit86
  %.2126 = phi ptr [ %.2124, %.lr.ph128 ], [ %.2, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit86 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.2126, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = load ptr, ptr %i.cf, align 8, !nonnull !6, !align !13
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 3
  %.not.i.i81 = icmp ugt i64 %i.cu, %i.ck
  br i1 %.not.i.i81, label %bb.q, label %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit84

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ck
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %.sroa.0.0.copyload.i.i.i83 = load i32, ptr %i.cx, align 8
  br label %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit84

_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit84: ; preds = %bb.p, %bb.q
  %.sroa.03.0.i.i82 = phi i32 [ %.sroa.0.0.copyload.i.i.i83, %bb.q ], [ -1, %bb.p ]
  %i.cy = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.cz = load ptr, ptr %i.an, align 8
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.r, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit86, !prof !10

bb.r:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit84
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %4)
  %.pre.i.i85 = load ptr, ptr %i.am, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit86

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit86: ; preds = %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit84, %bb.r
  %i.db = phi ptr [ %.pre.i.i85, %bb.r ], [ %i.cy, %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit84 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store ptr %i.dc, ptr %i.am, align 8
  store i32 %.sroa.03.0.i.i82, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.2126, i64 64
  %.2 = load ptr, ptr %i.dd, align 8              ; 2 uses
  %.not63 = icmp eq ptr %.2, null
  br i1 %.not63, label %.loopexit, label %bb.p, !llvm.loop !859

.loopexit:                                        ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit86, %._crit_edge123, %._crit_edge
  %i.de = load ptr, ptr %i.am, align 8            ; 5 uses
  %i.df = load ptr, ptr %4, align 8               ; 11 uses
  %i.dg = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64               ; 7 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = icmp eq i64 %i.di, 4
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.loopexit
  %.sroa.054.0.copyload = load i32, ptr %i.df, align 4
  br label %bb.u

bb.t:                                             ; preds = %.loopexit
  %i.dk = icmp ne ptr %i.df, %i.de
  %.012.i.i = getelementptr inbounds i8, ptr %i.de, i64 -4 ; 5 uses
  %i.dl = icmp ult ptr %i.df, %.012.i.i
  %or.cond.i.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.t
  %i.dm = add i64 %i.dg, -8
  %i.dn = add i64 %i.dh, 4
  %i.do = call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.dn)
  %5 = add i64 %i.do, -4                          ; 2 uses
  %i.dp = icmp ne i64 %5, %i.dh
  %i.dq = zext i1 %i.dp to i64                    ; 2 uses
  %6 = add i64 %i.dh, %i.dq
  %7 = sub i64 %5, %6
  %i.dr = lshr i64 %7, 3
  %i.ds = add nuw nsw i64 %i.dr, %i.dq            ; 2 uses
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ds, 31
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader152, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.du = add i64 %i.dg, -8
  %i.dv = add i64 %i.dh, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.du, i64 %i.dv)
  %i.dw = add i64 %umax, -4                       ; 2 uses
  %i.dx = icmp ne i64 %i.dw, %i.dh
  %umin = zext i1 %i.dx to i64                    ; 2 uses
  %i.dy = add i64 %i.dh, %umin
  %i.dz = sub i64 %i.dw, %i.dy
  %i.ea = lshr i64 %i.dz, 3
  %i.eb = add nuw nsw i64 %i.ea, %umin
  %i.ec = shl nuw i64 %i.eb, 2                    ; 2 uses
  %i.ed = getelementptr i8, ptr %i.df, i64 %i.ec
  %scevgep = getelementptr i8, ptr %i.ed, i64 4
  %i.ee = sub nuw nsw i64 -4, %i.ec
  %scevgep143 = getelementptr i8, ptr %i.de, i64 %i.ee
  %bound0 = icmp ult ptr %i.df, %i.de
  %bound1 = icmp ult ptr %scevgep143, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader152, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dt, 9223372036854775800     ; 4 uses
  %i.ef = mul i64 %n.vec, -4
  %i.eg = getelementptr i8, ptr %.012.i.i, i64 %i.ef
  %i.eh = shl i64 %n.vec, 2
  %i.ei = getelementptr i8, ptr %i.df, i64 %i.eh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ej = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.012.i.i, i64 %i.ej ; 2 uses
  %i.ek = shl i64 %index, 2
  %next.gep144 = getelementptr i8, ptr %i.df, i64 %i.ek ; 3 uses
  %i.el = getelementptr i8, ptr %next.gep144, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep144, align 4, !alias.scope !860, !noalias !863
  %wide.load145 = load <4 x i32>, ptr %i.el, align 4, !alias.scope !860, !noalias !863
  %i.em = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %i.en = getelementptr i8, ptr %next.gep, i64 -28 ; 2 uses
  %wide.load146 = load <4 x i32>, ptr %i.em, align 4, !alias.scope !863
  %wide.load147 = load <4 x i32>, ptr %i.en, align 4, !alias.scope !863
  %reverse = shufflevector <4 x i32> %wide.load146, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse148 = shufflevector <4 x i32> %wide.load147, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep144, align 4, !alias.scope !860, !noalias !863
  store <4 x i32> %reverse148, ptr %i.el, align 4, !alias.scope !860, !noalias !863
  %reverse149 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse150 = shufflevector <4 x i32> %wide.load145, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse149, ptr %i.em, align 4, !alias.scope !863
  store <4 x i32> %reverse150, ptr %i.en, align 4, !alias.scope !863
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !865

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit, label %.lr.ph.i.i.preheader152

.lr.ph.i.i.preheader152:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.014.i.i.ph = phi ptr [ %.012.i.i, %vector.memcheck ], [ %.012.i.i, %.lr.ph.i.i.preheader ], [ %i.eg, %middle.block ]
  %.0913.i.i.ph = phi ptr [ %i.df, %vector.memcheck ], [ %i.df, %.lr.ph.i.i.preheader ], [ %i.ei, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader152, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.014.i.i.ph, %.lr.ph.i.i.preheader152 ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.eq, %.lr.ph.i.i ], [ %.0913.i.i.ph, %.lr.ph.i.i.preheader152 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0913.i.i, align 4
  %i.ep = load i32, ptr %.014.i.i, align 4
  store i32 %i.ep, ptr %.0913.i.i, align 4
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.014.i.i, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 4 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -4 ; 2 uses
  %i.er = icmp ult ptr %i.eq, %.0.i.i
  br i1 %i.er, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit, !llvm.loop !866

_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit: ; preds = %.lr.ph.i.i, %middle.block
  %.pre = load ptr, ptr %4, align 8               ; 2 uses
  %.pre130 = load ptr, ptr %i.am, align 8
  %.pre131 = ptrtoint ptr %.pre130 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  %.pre134 = sub i64 %.pre131, %.pre132
  br label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit

_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit: ; preds = %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit, %bb.t
  %.pre-phi135 = phi i64 [ %.pre134, %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit ], [ %i.di, %bb.t ]
  %i.es = phi ptr [ %.pre, %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit ], [ %i.df, %bb.t ]
  %i.et = ashr exact i64 %.pre-phi135, 2
  %i.eu = call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE9ReducePhiENS9_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.es, i64 %i.et, i8 %3)
  br label %bb.u

bb.u:                                             ; preds = %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit, %bb.s
  %.sroa.054.1 = phi i32 [ %.sroa.054.0.copyload, %bb.s ], [ %i.eu, %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit

_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit: ; preds = %bb.u, %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit72, %bb.g, %bb.c, %bb.b
  %.sroa.054.3 = phi i32 [ -1, %bb.b ], [ %.sroa.0.0.copyload.i.i.i, %bb.c ], [ %.sroa.054.1, %bb.u ], [ %.sroa.03.0.i.i70, %_ZZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE19ReduceInputGraphPhiENS2_7OpIndexERKNS2_5PhiOpEENKUlSI_iiE_clESI_ii.exit72 ], [ %i.ak, %bb.g ]
  ret i32 %.sroa.054.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE25ReduceInputGraphOperationINS2_5PhiOpENS2_21UniformReducerAdapterIS3_SG_E21ReducePhiContinuationEEENS2_7OpIndexESN_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(5) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.1690, align 8           ; 4 uses
  %4 = alloca %class.anon.1690, align 8           ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 -1, ptr %5, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !13 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load i64, ptr %i.c, align 8
  %.not.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.0.in.i.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.07.0.i.i.i, %bb.d ]
  %.sroa.07.0.i.i.i = load ptr, ptr %.sroa.07.0.in.i.i.i, align 8 ; 4 uses
  %i.f = icmp eq ptr %.sroa.07.0.i.i.i, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.g, align 4
  %i.h = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit, label %bb.c, !llvm.loop !270

bb.e:                                             ; preds = %bb.a
  %i.i = lshr i32 %1, 4                           ; 2 uses
  %i.j = xor i32 %i.i, -1
  %i.k = shl i32 %i.i, 15
  %i.l = add i32 %i.k, %i.j                       ; 2 uses
  %i.m = lshr i32 %i.l, 12
  %i.n = xor i32 %i.m, %i.l
  %i.o = mul i32 %i.n, 5                          ; 2 uses
  %i.p = lshr i32 %i.o, 4
  %i.q = xor i32 %i.p, %i.o
  %i.r = mul i32 %i.q, 2057                       ; 2 uses
  %i.s = lshr i32 %i.r, 16
  %i.t = xor i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = urem i64 %i.u, %i.w                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %i.af, %i.u
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i = load i32, ptr %i.ad, align 8
  %i.ah = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ak = icmp eq i64 %i.ap, %i.u
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.aj, align 8
  %i.al = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !271

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.021.i.i.i.i.i = phi ptr [ %i.an, %bb.g ], [ %i.ac, %bb.f ]
  %i.an = load ptr, ptr %.021.i.i.i.i.i, align 8  ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not18.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = urem i64 %i.ap, %i.w
  %.not19.i.i.i.i.i = icmp eq i64 %i.aq, %i.x
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge22.i.i.i.i.i, !llvm.loop !271

..loopexit_crit_edge22.i.i.i.i.i:                 ; preds = %bb.h
  br label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, !llvm.loop !271

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.07.1.i.i.i = phi ptr [ %.sroa.07.0.i.i.i, %bb.d ], [ %i.ac, %bb.f ], [ %i.an, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i, i64 16
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE10ResolvePhiIZNSI_22AssembleOutputGraphPhiERKNS2_5PhiOpEEUlNS2_7OpIndexEiiE_EESN_SM_OT_NS2_22RegisterRepresentationE:bb.a
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %.not.i.i81 = icmp eq i32 %i.bq, -1
  br i1 %.not.i.i81, label %bb.m, label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit88

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 664
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
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit88

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
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 304
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cc
  %.0.i.i.i.i = select i1 %i.bz, ptr %i.ca, ptr %i.cf
  %.sroa.02.0.copyload.i12.i.i = load i32, ptr %.0.i.i.i.i, align 4
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit88

_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit88: ; preds = %bb.l, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i86, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i
  %.sroa.014.0.i.i82 = phi i32 [ %i.bq, %bb.l ], [ %.sroa.02.0.copyload.i12.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i ], [ %.sroa.02.0.copyload.i10.i.i87, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i86 ]
  %i.cg = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.ch = load ptr, ptr %i.av, align 8
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.r, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit, !prof !10

bb.r:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit88
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %4)
  %.pre.i.i = load ptr, ptr %i.au, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit88, %bb.r
  %i.cj = phi ptr [ %.pre.i.i, %bb.r ], [ %i.cg, %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit88 ] ; 2 uses
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
  br i1 %.not62, label %._crit_edge138, label %.lr.ph137, !llvm.loop !867

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
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 560
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dh
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %.not.i.i89 = icmp eq i32 %i.dl, -1
  br i1 %.not.i.i89, label %bb.u, label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit99

bb.u:                                             ; preds = %.lr.ph144
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 664
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
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit99

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
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 304
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  %.0.i.i.i.i95 = select i1 %i.du, ptr %i.dv, ptr %i.ea
  %.sroa.02.0.copyload.i12.i.i96 = load i32, ptr %.0.i.i.i.i95, align 4
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit99

_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit99: ; preds = %.lr.ph144, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i97, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i94
  %.sroa.014.0.i.i90 = phi i32 [ %i.dl, %.lr.ph144 ], [ %.sroa.02.0.copyload.i12.i.i96, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i94 ], [ %.sroa.02.0.copyload.i10.i.i98, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i97 ]
  %i.eb = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.ec = load ptr, ptr %i.av, align 8
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %bb.z, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101, !prof !10

bb.z:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit99
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %4)
  %.pre.i.i100 = load ptr, ptr %i.au, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101: ; preds = %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit99, %bb.z
  %i.ee = phi ptr [ %.pre.i.i100, %bb.z ], [ %i.eb, %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit99 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store ptr %i.ef, ptr %i.au, align 8
  store i32 %.sroa.014.0.i.i90, ptr %i.ee, align 4
  %i.eg = add nsw i32 %.259141, -1
  %i.eh = getelementptr inbounds nuw i8, ptr %.2142, i64 64
  %.2 = load ptr, ptr %i.eh, align 8              ; 2 uses
  %.not63 = icmp eq ptr %.2, null
  br i1 %.not63, label %.loopexit, label %.lr.ph144, !llvm.loop !868

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
  %wide.load = load <4 x i32>, ptr %next.gep160, align 4, !alias.scope !869, !noalias !872
  %wide.load161 = load <4 x i32>, ptr %i.fp, align 4, !alias.scope !869, !noalias !872
  %i.fq = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %i.fr = getelementptr i8, ptr %next.gep, i64 -28 ; 2 uses
  %wide.load162 = load <4 x i32>, ptr %i.fq, align 4, !alias.scope !872
  %wide.load163 = load <4 x i32>, ptr %i.fr, align 4, !alias.scope !872
  %reverse = shufflevector <4 x i32> %wide.load162, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse164 = shufflevector <4 x i32> %wide.load163, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep160, align 4, !alias.scope !869, !noalias !872
  store <4 x i32> %reverse164, ptr %i.fp, align 4, !alias.scope !869, !noalias !872
  %reverse165 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse166 = shufflevector <4 x i32> %wide.load161, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse165, ptr %i.fq, align 4, !alias.scope !872
  store <4 x i32> %reverse166, ptr %i.fr, align 4, !alias.scope !872
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !874

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
  br i1 %i.fv, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit, !llvm.loop !875

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
  %i.fy = call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE9ReducePhiENS9_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.fw, i64 %i.fx, i8 %3)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit, %bb.aa
  %.sroa.054.1 = phi i32 [ %.sroa.054.0.copyload, %bb.aa ], [ %i.fy, %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit

_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit: ; preds = %bb.ac, %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit76, %bb.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, %bb.b
  %.sroa.054.3 = phi i32 [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ], [ %i.k, %bb.b ], [ %.sroa.054.1, %bb.ac ], [ %.sroa.014.0.i.i70, %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESM_ii.exit76 ], [ %i.as, %bb.i ]
  ret i32 %.sroa.054.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE25ReduceInputGraphOperationINS2_12FrameStateOpENS2_21UniformReducerAdapterIS3_SG_E28ReduceFrameStateContinuationEEENS2_7OpIndexESN_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 -1, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !13 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load i64, ptr %i.c, align 8
  %.not.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.0.in.i.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.07.0.i.i.i, %bb.d ]
  %.sroa.07.0.i.i.i = load ptr, ptr %.sroa.07.0.in.i.i.i, align 8 ; 4 uses
  %i.f = icmp eq ptr %.sroa.07.0.i.i.i, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.g, align 4
  %i.h = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit, label %bb.c, !llvm.loop !270

bb.e:                                             ; preds = %bb.a
  %i.i = lshr i32 %1, 4                           ; 2 uses
  %i.j = xor i32 %i.i, -1
  %i.k = shl i32 %i.i, 15
  %i.l = add i32 %i.k, %i.j                       ; 2 uses
  %i.m = lshr i32 %i.l, 12
  %i.n = xor i32 %i.m, %i.l
  %i.o = mul i32 %i.n, 5                          ; 2 uses
  %i.p = lshr i32 %i.o, 4
  %i.q = xor i32 %i.p, %i.o
  %i.r = mul i32 %i.q, 2057                       ; 2 uses
  %i.s = lshr i32 %i.r, 16
  %i.t = xor i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = urem i64 %i.u, %i.w                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %i.af, %i.u
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i = load i32, ptr %i.ad, align 8
  %i.ah = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ak = icmp eq i64 %i.ap, %i.u
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.aj, align 8
  %i.al = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !271

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.021.i.i.i.i.i = phi ptr [ %i.an, %bb.g ], [ %i.ac, %bb.f ]
  %i.an = load ptr, ptr %.021.i.i.i.i.i, align 8  ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not18.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = urem i64 %i.ap, %i.w
  %.not19.i.i.i.i.i = icmp eq i64 %i.aq, %i.x
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge22.i.i.i.i.i, !llvm.loop !271

..loopexit_crit_edge22.i.i.i.i.i:                 ; preds = %bb.h
  br label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, !llvm.loop !271

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.07.1.i.i.i = phi ptr [ %.sroa.07.0.i.i.i, %bb.d ], [ %i.ac, %bb.f ], [ %i.an, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8            ; 5 uses
  %.not = icmp eq ptr %i.as, null
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE30ReduceForceOrIntersectPackNodeINS2_14JSStackCheckOpENS2_21UniformReducerAdapterIS3_SG_E30ReduceJSStackCheckContinuationEEEvPNS2_8PackNodeENS2_7OpIndexEPSP_:bb.a
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE30ReduceJSStackCheckContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_14JSStackCheckOpE.exit.1
  store i32 %i.cp, ptr %3, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread: ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread, %bb.n, %bb.v, %bb.u, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1
  %.sroa.8.1 = phi i32 [ %i.cp, %bb.v ], [ %i.cp, %bb.u ], [ %.sroa.02.0.copyload.i12.i.1, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1 ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread ], [ %i.bf, %bb.n ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16SimdPack128To256ENS2_1VINS2_12WordWithBitsILm128EEEEESH_.exit, label %bb.b, !prof !10
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_14JSStackCheckOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSE_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !13 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !10

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
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.av = add nuw i8 %i.au, 1
  store i8 %i.av, ptr %i.at, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.d, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %i.an
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit, label %bb.c

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.ax, align 4
  %i.ay = load ptr, ptr %i.a, align 8, !nonnull !6, !align !13 ; 4 uses
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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !10

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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1259

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
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1260

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #6 comdat align 2 {
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
end_hunk_8
