inline.NumInlined: 30203
inline.NumDeleted: 8013
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES8_SB_EEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSD_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSN_13VariableTableES4_S5_E16StartNewSnapshotISV_EEvNSS_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSS_IKT0_EEEEUlSR_RST_S1C_E_EEvS12_S15_RS1A_
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES8_SB_EEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSD_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSN_13VariableTableES4_S5_E16StartNewSnapshotISV_EEvNSS_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSS_IKT0_EEEEUlSR_RST_S1C_E_EEvS12_S15_RS1A_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.53) #21
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
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !83

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !84

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
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !11, !align !19 ; 4 uses
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.54) #21
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
  %i.bk = ptrtoint ptr %i.bh to i64               ; 4 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 5 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 2 uses
  %i.bo = xor i64 %i.bn, -1
  %.not.i42 = icmp ugt i64 %2, %i.bo
  br i1 %.not.i42, label %bb.l, label %bb.m, !prof !9

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.55) #21
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #21
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
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.cd) #22
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
  %i.ct = add i64 %i.bl, -1
  %i.cu = add i64 %.idx, %.pn94
  %i.cv = add i64 %i.cu, %i.bk
  %i.cw = sub i64 %i.cv, %i.bl
  %i.cx = add i64 %.pn94, 4
  %i.cy = add i64 %i.cx, %i.bk
  %i.cz = sub i64 %i.cy, %i.bl
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 %i.cz)
  %i.da = add i64 %i.ct, %umax
  %i.db = add i64 %.pn94, %i.bk
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dc, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i
  %n.vec = and i64 %i.de, 9223372036854775800     ; 3 uses
  %i.df = shl i64 %n.vec, 2
  %i.dg = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.df
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.di, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %._crit_edge.i.i, %middle.block
  %.116.i.i.ph = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.dg, %middle.block ]
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.dk, %.lr.ph18.i.i ], [ %.116.i.i.ph, %.lr.ph18.i.i.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i, ptr %.116.i.i, align 4
  %i.dl = icmp ult ptr %i.dk, %i.cs
  br i1 %i.dl, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !86

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i, %middle.block
  %.pre.i = load i32, ptr %i.ak, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.dm = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i ], [ %i.al, %bb.g ]
  %i.dn = add i32 %i.dm, %i.u
  %i.do = zext i32 %i.dn to i64
  %i.dp = load ptr, ptr %i.i, align 8
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load i32, ptr %i.af, align 4
  store i32 %i.dr, ptr %i.dq, align 4
  store i32 %i.u, ptr %i.ag, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.ds = icmp eq ptr %i.ad, %i.y
  br i1 %i.ds, label %.loopexit63, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03571 = phi ptr [ %i.o, %.lr.ph.i.lr.ph ], [ %i.hd, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.dt = load ptr, ptr %.03571, align 8          ; 8 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = zext i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.i, align 8
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dw ; 5 uses
  %i.dz = load ptr, ptr %3, align 8               ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -8
  br label %bb.u

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.023.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, %i.ea
  br i1 %.not.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.023.i = phi ptr [ %i.dy, %.lr.ph.i ], [ %i.ec, %bb.t ] ; 2 uses
  %i.ed = load i32, ptr %.023.i, align 4          ; 2 uses
  %.not21.i = icmp eq i32 %i.ed, -1
  br i1 %.not21.i, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %bb.u
  %i.ee = load ptr, ptr %i.eb, align 8, !nonnull !11, !align !19
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ei = zext i32 %i.ed to i64
  %i.ej = add i64 %i.eh, %i.ei
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load i8, ptr %i.ek, align 4
  %i.em = icmp eq i8 %i.el, 76
  br i1 %i.em, label %bb.v, label %bb.t

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 640
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit, label %bb.w, !prof !9

bb.w:                                             ; preds = %bb.v
  %i.eq = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.dz)
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit

._crit_edge.i:                                    ; preds = %bb.t
  %.sroa.0.0.copyload.i = load i8, ptr %i.dt, align 8 ; 2 uses
  %.not.i.i38 = icmp eq i8 %.sroa.0.0.copyload.i, 8
  br i1 %.not.i.i38, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.dz, i64 640
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit, label %bb.y, !prof !9

bb.y:                                             ; preds = %bb.x
  %i.eu = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEEEE9ReducePhiENS8_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(504) %i.dz, ptr %i.dy, i64 %2, i8 %.sroa.0.0.copyload.i), !inline_history !87
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit

bb.z:                                             ; preds = %._crit_edge.i
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.dy, align 4
  %i.ev = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.ew = add i64 %i.eh, %i.ev
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load i8, ptr %i.ex, align 4
  %i.ez = icmp eq i8 %i.ey, 92
  br i1 %i.ez, label %bb.aa, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit

bb.aa:                                            ; preds = %bb.z
  %i.fa = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE15MergeFrameStateENS8_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(504) %i.dz, ptr nonnull %i.dy, i64 %2), !inline_history !87
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit

_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.copyload.i40 = phi i32 [ -1, %bb.z ], [ -1, %bb.v ], [ %i.eq, %bb.w ], [ -1, %bb.x ], [ %i.fa, %bb.aa ], [ %i.eu, %bb.y ], [ -1, %bb.u ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8            ; 3 uses
  %.not62 = icmp eq i32 %i.fc, %.sroa.0.0.copyload.i40
  br i1 %.not62, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit
  %i.fd = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.fe = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ff = icmp ult ptr %i.fd, %i.fe
  br i1 %i.ff, label %bb.ad, label %bb.ac, !prof !8

bb.ac:                                            ; preds = %bb.ab
  %i.fg = load ptr, ptr %i.f, align 8
  %i.fh = ptrtoint ptr %i.fe to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 4
  %i.fl = add nsw i64 %i.fk, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.fl)
  %.pre.i.i.i39 = load ptr, ptr %i.q, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fm = phi ptr [ %i.fd, %bb.ab ], [ %.pre.i.i.i39, %bb.ac ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fn, ptr %i.q, align 8
  store ptr %i.dt, ptr %i.fm, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i32 %i.fc, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 %.sroa.0.0.copyload.i40, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %.sroa.0.0.copyload.i40, ptr %i.fb, align 8
  %i.fo = load ptr, ptr %4, align 8               ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !range !10, !noundef !11
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6NullOpEJNS0_4wasm9ValueTypeEEEENS2_7OpIndexEDpT0_:bb.a
  %.pre = load ptr, ptr %i.f, align 8
  %.pre7 = ptrtoint ptr %.pre to i64
  %.pre8 = sub i64 %.pre10.i.i.i.i, %.pre7
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_6NullOpEE3NewIJNS0_4wasm9ValueTypeEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_6NullOpEE3NewIJNS0_4wasm9ValueTypeEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi9 = phi i64 [ %i.i, %bb.a ], [ %.pre8, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 5 uses
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
  store i8 14, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19 ; 4 uses
  %i.al = lshr i64 %i.i, 4
  %i.am = and i64 %i.al, 268435455                ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 216
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 208 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %.not.i.i = icmp ugt i64 %i.au, %i.am
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_6NullOpEE3NewIJNS0_4wasm9ValueTypeEEEERS4_PNS2_5GraphEDpT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 200 ; 2 uses
  %i.aw = lshr i64 %i.am, 1
  %i.ax = add nuw nsw i64 %i.am, 32
  %i.ay = add nuw nsw i64 %i.ax, %i.aw
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ap, align 8
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.bf)
  %.pre.i.i = load ptr, ptr %i.ap, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_6NullOpEE3NewIJNS0_4wasm9ValueTypeEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bg = phi ptr [ %.pre.i.i, %bb.c ], [ %i.aq, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_6NullOpEE3NewIJNS0_4wasm9ValueTypeEEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bh = trunc i64 %i.i to i32
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.am
  store i32 %.sroa.0.0.copyload.i, ptr %i.bi, align 4
  ret i32 %i.bh
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_17Simd128ConstantOpEJPKhEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17Simd128ConstantOpEE3NewIJPKhEEERS4_PNS2_5GraphEDpT_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 3
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre6 = ptrtoint ptr %.pre to i64
  %.pre7 = sub i64 %.pre10.i.i.i.i, %.pre6
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17Simd128ConstantOpEE3NewIJPKhEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17Simd128ConstantOpEE3NewIJPKhEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi8 = phi i64 [ %i.i, %bb.a ], [ %.pre7, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi8 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi8, 4
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
  store i8 35, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19 ; 4 uses
  %i.al = lshr i64 %i.i, 4
  %i.am = and i64 %i.al, 268435455                ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 216
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 208 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %.not.i.i = icmp ugt i64 %i.au, %i.am
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17Simd128ConstantOpEE3NewIJPKhEEERS4_PNS2_5GraphEDpT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 200 ; 2 uses
  %i.aw = lshr i64 %i.am, 1
  %i.ax = add nuw nsw i64 %i.am, 32
  %i.ay = add nuw nsw i64 %i.ax, %i.aw
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ap, align 8
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.bf)
  %.pre.i.i = load ptr, ptr %i.ap, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17Simd128ConstantOpEE3NewIJPKhEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bg = phi ptr [ %.pre.i.i, %bb.c ], [ %i.aq, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17Simd128ConstantOpEE3NewIJPKhEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bh = trunc i64 %i.i to i32
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.am
  store i32 %.sroa.0.0.copyload.i, ptr %i.bi, align 4
  ret i32 %i.bh
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i1 noundef zeroext %2), !inline_history !120
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE14AddPredecessorEPNS2_5BlockESE_b(ptr noundef nonnull align 8 dereferenceable(696) %i.a, ptr noundef %i.c, ptr noundef %1, i1 noundef zeroext false), !inline_history !120
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4              ; 5 uses
  %.not34 = icmp eq i32 %i.g, -1
  br i1 %.not34, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.l = load i64, ptr %i.k, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.l, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.o = load i64, ptr %i.n, align 8
  %sext.i.i.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i.i.i, 48
  %i.q = zext i32 %i.g to i64
  %i.r = xor i64 %i.p, %i.q
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i.i = phi i64 [ %i.w, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i8.i.i.i, %i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1      ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.i
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, %i.g
  br i1 %i.an, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32, label %bb.f, !prof !8

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i.i.i, label %bb.g, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, !prof !9

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !121

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit: ; preds = %bb.c
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %5, align 8
  %6 = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.au = icmp eq i32 %6, %i.g
  br i1 %i.au, label %bb.h, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 %i.g, ptr %3, align 4
  %i.av = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i8, ptr %i.aw, align 8, !range !10, !noundef !11
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #25
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not36 = icmp eq ptr %i.ba, %i.bc
  br i1 %.not36, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.037 = phi ptr [ %i.ba, %.lr.ph ], [ %i.bo, %bb.j ] ; 3 uses
  %.sroa.0.0.copyload24 = load ptr, ptr %.037, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.037, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.sroa_idx, align 8 ; 2 uses
  %i.be = load ptr, ptr %i.e, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = zext i32 %.sroa.4.0.copyload to i64
  %i.bj = add i64 %i.bh, %i.bi
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bl, align 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %4, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24, i64 16
  %.sroa.02.0.copyload.i = load i32, ptr %i.bm, align 4
  store i32 %.sroa.02.0.copyload.i, ptr %i.bd, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %.sroa.0.0.copyload = load i8, ptr %i.bn, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.be, i32 %.sroa.4.0.copyload, ptr nonnull %4, i64 2, i8 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %.037, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.bc
  br i1 %.not, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.j

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.j, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, %bb.c, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit, %bb.a
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %0, i32 %1, ptr %2, i64 %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
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
  br i1 %spec.select.i.i.prol, label %bb.b, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, !prof !8

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
  br i1 %spec.select.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i, !prof !8

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
  br i1 %spec.select.i.i.1, label %bb.d, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.as, %i.o
  br i1 %.not.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %i.a, align 8
  %.pre28 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre29 = add i64 %.pre28, %i.d                 ; 2 uses
  %.pre31 = inttoptr i64 %.pre29 to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, %bb.a
  %.pre-phi32 = phi ptr [ %.pre31, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi30 = phi i64 [ %.pre29, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre28, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.04.0.copyload = load i8, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = lshr i32 %1, 4
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2            ; 3 uses
  store ptr %.pre-phi32, ptr %i.au, align 8
  %i.bc = add i64 %3, 3
  %i.bd = lshr i64 %i.bc, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bd, i64 2) ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = sub i64 %i.bg, %.pre-phi30
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = icmp ult i64 %i.bi, %.sroa.speculated.i.i.i
  br i1 %i.bj, label %bb.e, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !9

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %i.bk = sub i64 %i.bg, %.pre-phi
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = add nuw i64 %i.bm, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %0, i64 noundef %i.bn)
  %.pre.i.i.i.i = load ptr, ptr %i.au, align 8    ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre26 = load ptr, ptr %i.a, align 8
  %.pre27 = load ptr, ptr %i.aw, align 8
  %.pre33 = ptrtoint ptr %.pre26 to i64
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %.pre-phi34 = phi i64 [ %.pre33, %bb.e ], [ %.pre-phi, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %i.bo = phi ptr [ %.pre27, %bb.e ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %.pre-phi.i.i.i.i = phi i64 [ %.pre10.i.i.i.i, %bb.e ], [ %.pre-phi30, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %i.bp = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %.pre-phi32, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ] ; 7 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.speculated.i.i.i
  store ptr %i.bq, ptr %i.au, align 8
  %i.br = sub i64 %.pre-phi.i.i.i.i, %.pre-phi34  ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.bu = lshr i64 %i.br, 4
  %i.bv = and i64 %i.bu, 268435455
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bv
  store i16 %i.bt, ptr %i.bw, align 2
  %i.bx = load ptr, ptr %i.aw, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.by = shl i32 %.tr.i.i.i.i, 3
  %i.bz = add i32 %i.by, %i.bs
  %i.ca = lshr i32 %i.bz, 4
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.cc
  store i16 %i.bt, ptr %i.cd, align 2
  store i8 91, ptr %i.bp, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  store i8 0, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  %i.cg = trunc i64 %3 to i16
  store i16 %i.cg, ptr %i.cf, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 5 uses
  %i.ci = icmp ugt i64 %3, 1
  br i1 %i.ci, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i.i = shl nuw nsw i64 %3, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr align 4 %2, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.cj = icmp eq i64 %3, 1
  br i1 %i.cj, label %bb.h, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.h:                                             ; preds = %bb.g
  %i.ck = load i32, ptr %2, align 4
  store i32 %i.ck, ptr %i.ch, align 4
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i8 %4, ptr %i.cl, align 4
  store ptr %i.av, ptr %i.au, align 8
  %i.cm = load ptr, ptr %i.aw, align 8
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.az
  store i16 %i.bb, ptr %i.cn, align 2
  %i.co = load ptr, ptr %i.aw, align 8
  %i.cp = zext i16 %i.bb to i32
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface2IfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS2_5ValueEPNS2_7ControlE:bb.a
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr exact i64 %i.bl, 3
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.r, align 4
  %i.bo = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp ult ptr %i.bo, %i.bq
  br i1 %i.br, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.av, align 8
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  %i.bx = add nsw i64 %i.bw, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 noundef %i.bx)
  %.pre.i17 = load ptr, ptr %i.at, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.h, %bb.i
  %i.by = phi ptr [ %i.bo, %bb.h ], [ %.pre.i17, %bb.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.bz, ptr %i.at, align 8
  store ptr %i.o, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.s, align 8             ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.j, label %.preheader.i, !prof !9

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.o, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  br label %bb.n

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.ca, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = sub nsw i32 %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = sub nsw i32 %i.cj, %i.cm
  %i.co = icmp eq i32 %i.ck, %i.cn
  br i1 %i.co, label %bb.k, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.k, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.cq, %bb.k ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.07.lcssa.i, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.0.i.i, ptr %i.cs, align 8
  %i.ct = load i32, ptr %i.cg, align 4
  %i.cu = add nsw i32 %i.ct, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 %i.cx, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  store ptr %i.da, ptr %i.o, align 8
  store ptr %i.o, ptr %i.cz, align 8
  %.pre.i20 = load i32, ptr %i.cv, align 4
  br label %bb.n

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i
  %.012.i = phi ptr [ %.0.i18, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %.09.i, %.preheader.i ] ; 4 uses
  %.0711.i = phi ptr [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %i.ca, %.preheader.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i, i64 20
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.0711.i, i64 20
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = icmp sgt i32 %i.dc, %i.de               ; 2 uses
  %spec.select.i.i = select i1 %i.df, ptr %.012.i, ptr %.0711.i ; 3 uses
  %spec.select17.i.i = select i1 %i.df, ptr %.0711.i, ptr %.012.i ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %spec.select17.i.i, i64 20
  %i.dh = load i32, ptr %i.dg, align 4            ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 20
  %i.dj = load i32, ptr %i.di, align 4
  %.not18.i.i = icmp eq i32 %i.dj, %i.dh
  br i1 %.not18.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.116.lcssa.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %storemerge7.i.i, %.lr.ph.i.i ] ; 3 uses
  %.not520.i.i = icmp eq ptr %.116.lcssa.i.i, %spec.select17.i.i
  br i1 %.not520.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.11619.i.i = phi ptr [ %storemerge7.i.i, %.lr.ph.i.i ], [ %spec.select.i.i, %.lr.ph.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 16
  %i.dl = load i32, ptr %i.dk, align 8
  %.not6.i.i = icmp slt i32 %i.dl, %i.dh
  %storemerge7.in.v.i.i = select i1 %.not6.i.i, i64 24, i64 32
  %storemerge7.in.i.i = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 %storemerge7.in.v.i.i
  %storemerge7.i.i = load ptr, ptr %storemerge7.in.i.i, align 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %storemerge7.i.i, i64 20
  %i.dn = load i32, ptr %i.dm, align 4
  %.not.i.i = icmp eq i32 %i.dn, %i.dh
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !37

.lr.ph23.i.i:                                     ; preds = %.preheader.i.i, %bb.m
  %.122.i.i = phi ptr [ %storemerge.i.i, %bb.m ], [ %spec.select17.i.i, %.preheader.i.i ] ; 2 uses
  %.221.i.i = phi ptr [ %.3.i.i, %bb.m ], [ %.116.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 32
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ds = icmp eq ptr %i.dp, %i.dr
  br i1 %i.ds, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph23.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 24
  %storemerge.pre.i.i = load ptr, ptr %i.dv, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph23.i.i
  %storemerge.i.i = phi ptr [ %storemerge.pre.i.i, %bb.l ], [ %i.dr, %.lr.ph23.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %i.du, %bb.l ], [ %i.dp, %.lr.ph23.i.i ] ; 3 uses
  %.not5.i.i = icmp eq ptr %.3.i.i, %storemerge.i.i
  br i1 %.not5.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i, !llvm.loop !38

_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i: ; preds = %bb.m, %.preheader.i.i
  %.2.lcssa.i.i = phi ptr [ %.116.lcssa.i.i, %.preheader.i.i ], [ %.3.i.i, %bb.m ] ; 2 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 64
  %.0.i18 = load ptr, ptr %.0.in.i, align 8       ; 2 uses
  %.not.i19 = icmp eq ptr %.0.i18, null
  br i1 %.not.i19, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !39

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i, %bb.j
  %i.dw = phi i32 [ %.pre.i20, %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i ], [ 0, %bb.j ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ar, i64 232 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.dy, i32 %i.dw)
  store i32 %.sroa.speculated, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ai, i64 672
  store ptr %i.o, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(504) %i.ea, ptr noundef nonnull %i.o)
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit: ; preds = %bb.g, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface20SetupControlFlowEdgeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS0_8compiler10turboshaft5BlockEjNSA_1VINS0_6ObjectEEEPNS1_5MergeINS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 %4, ptr noundef %5) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8
  %.not.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.k, align 8 ; 2 uses
  %i.l = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.m = icmp eq ptr %i.l, %2
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.m, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %sext.i = shl i64 %i.p, 48
  %i.q = ashr exact i64 %sext.i, 48
  %i.r = ptrtoint ptr %2 to i64
  %i.s = xor i64 %i.r, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw nsw i128 %i.t, 8779197792823184629 ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = xor i128 %i.v, %i.u
  %i.x = trunc i128 %i.w to i64
  %i.y = xor i64 %i.q, %i.x                       ; 2 uses
  %i.z = lshr i64 %i.y, 57
  %i.aa = trunc nuw nsw i64 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.ab, align 8 ; 2 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i7.i = phi i64 [ %i.y, %bb.e ], [ %i.aw, %bb.h ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.e ], [ %i.av, %bb.h ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.g        ; 4 uses
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ae, i32 0, i32 3, i32 1)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ag = load <16 x i8>, ptr %i.af, align 1      ; 2 uses
  %i.ah = icmp eq <16 x i8> %i.ad, %i.ag
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.sroa.017.047.i.i = phi i16 [ %i.as, %bb.g ], [ %i.ai, %bb.f ] ; 3 uses
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.6.0.i.i, %i.ak
  %i.am = and i64 %i.al, %i.g                     ; 2 uses
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.ao, %2
  br i1 %i.ap, label %.thread33.i.i, label %bb.g, !prof !8

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ar = add i16 %.sroa.017.047.i.i, -1
  %i.as = and i16 %i.ar, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.at = icmp eq <16 x i8> %i.ag, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16
  %.not44.i.i = icmp eq i16 %i.au, 0
  br i1 %.not44.i.i, label %bb.h, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i, !prof !9

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.av = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aw = add i64 %i.av, %.sroa.6.0.i.i
  br label %bb.f, !llvm.loop !329

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.aq, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.an, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit: ; preds = %bb.c, %bb.d, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.c ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %i.ax = extractvalue { ptr, ptr } %.pn.i, 0     ; 3 uses
  %i.ay = extractvalue { ptr, ptr } %.pn.i, 1     ; 18 uses
  %i.az = icmp eq ptr %i.ax, null
  br i1 %i.az, label %bb.i, label %bb.j, !prof !9

bb.i:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101) #22
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit
  %i.ba = icmp eq ptr %i.ax, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.ba, label %bb.k, label %bb.l, !prof !9

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.101) #22
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bb = load i8, ptr %i.ax, align 1
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.101) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit: ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  %i.bi = sub i32 %i.bf, %i.bh                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not42 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 28 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  %.pre = load i32, ptr %i.bn, align 4
  %.pre47 = load i32, ptr %i.bo, align 8
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit
  %i.bt = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bt, label %._crit_edge41, label %bb.r

bb.n:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit
  %i.bu = phi i32 [ %.pre47, %.lr.ph ], [ %i.ch, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit ]
  %i.bv = phi i32 [ %.pre, %.lr.ph ], [ %i.cd, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit ]
  %i.bw = phi ptr [ %i.bm, %.lr.ph ], [ %i.cm, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit ]
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.ck, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.037
  %.sroa.05.0.copyload = load i32, ptr %i.bx, align 4
  %.not.i = icmp ult i32 %i.bv, %i.bu
  br i1 %.not.i, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  tail call preserve_mostcc void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis16GrowInputsVectorEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bd)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = load ptr, ptr %i.bp, align 8
  %i.bz = load i32, ptr %i.bq, align 8
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ca
  store i32 %.sroa.05.0.copyload, ptr %i.cb, align 4
  %i.cc = load i32, ptr %i.bn, align 4
  %i.cd = add i32 %i.cc, 1                        ; 2 uses
  store i32 %i.cd, ptr %i.bn, align 4
  %i.ce = load i32, ptr %i.br, align 4
  %i.cf = load i32, ptr %i.bq, align 8
  %i.cg = add i32 %i.cf, %i.ce                    ; 2 uses
  store i32 %i.cg, ptr %i.bq, align 8
  %i.ch = load i32, ptr %i.bo, align 8            ; 2 uses
  %.not1.i = icmp ult i32 %i.cg, %i.ch
  br i1 %.not1.i, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = load i32, ptr %i.bs, align 8
  %i.cj = add i32 %i.ci, 1                        ; 2 uses
  store i32 %i.cj, ptr %i.bs, align 8
  store i32 %i.cj, ptr %i.bq, align 8
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit: ; preds = %bb.p, %bb.q
  %i.ck = add nuw i64 %.037, 1                    ; 2 uses
  %i.cl = load ptr, ptr %i.bj, align 8
  %i.cm = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 2
  %i.cr = icmp ult i64 %i.ck, %i.cq
  br i1 %i.cr, label %bb.n, label %._crit_edge, !llvm.loop !330

bb.r:                                             ; preds = %._crit_edge
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load i32, ptr %5, align 8
  %i.ct = icmp eq i32 %i.cs, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = select i1 %i.ct, ptr %i.cu, ptr %i.cv
  br label %.lr.ph40

bb.t:                                             ; preds = %bb.r
  %i.cx = add i32 %i.bi, %3
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = zext i32 %i.cx to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.db
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.s, %bb.t
  %.ph = phi ptr [ %i.dc, %bb.t ], [ %i.cw, %bb.s ]
  %i.dd = zext i32 %i.bi to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.ay, i64 28 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  %.pre48 = load i32, ptr %i.de, align 4
  %.pre49 = load i32, ptr %i.df, align 8
  br label %bb.u

._crit_edge41:                                    ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29, %._crit_edge
  %.not33 = icmp eq i32 %4, -1
  br i1 %.not33, label %bb.aa, label %bb.y

bb.u:                                             ; preds = %.lr.ph40, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29
  %i.dk = phi i32 [ %.pre49, %.lr.ph40 ], [ %i.dx, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29 ]
  %i.dl = phi i32 [ %.pre48, %.lr.ph40 ], [ %i.dt, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29 ]
  %.02438 = phi i64 [ 0, %.lr.ph40 ], [ %i.ea, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.ph, i64 %.02438
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %.sroa.01.0.copyload = load i32, ptr %i.dn, align 4
  %.not.i27 = icmp ult i32 %i.dl, %i.dk
  br i1 %.not.i27, label %bb.w, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  tail call preserve_mostcc void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis16GrowInputsVectorEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bd)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.do = load ptr, ptr %i.dg, align 8
  %i.dp = load i32, ptr %i.dh, align 8
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dq
  store i32 %.sroa.01.0.copyload, ptr %i.dr, align 4
  %i.ds = load i32, ptr %i.de, align 4
  %i.dt = add i32 %i.ds, 1                        ; 2 uses
  store i32 %i.dt, ptr %i.de, align 4
  %i.du = load i32, ptr %i.di, align 4
  %i.dv = load i32, ptr %i.dh, align 8
  %i.dw = add i32 %i.dv, %i.du                    ; 2 uses
  store i32 %i.dw, ptr %i.dh, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface24BindBlockAndGeneratePhisEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS0_8compiler10turboshaft5BlockEPNS1_5MergeINS2_5ValueEEEPNSA_7OpIndexE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.v, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load ptr, ptr %i.m, align 8
  %i.ad = load ptr, ptr %i.o, align 8
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ult ptr %i.ak, %i.am
  br i1 %i.an, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.g, !prof !8

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
  store ptr %2, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.h, label %.preheader.i, !prof !9

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %2, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
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
  %.0.i.i = phi ptr [ %i.bn, %bb.i ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.07.lcssa.i, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.0.i.i, ptr %i.bp, align 8
  %i.bq = load i32, ptr %i.bd, align 4
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  store ptr %i.bx, ptr %2, align 8
  store ptr %2, ptr %i.bw, align 8
  %.pre.i44 = load i32, ptr %i.bs, align 4
  br label %bb.l

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i
  %.012.i = phi ptr [ %.0.i42, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %.09.i, %.preheader.i ] ; 4 uses
  %.0711.i = phi ptr [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %i.ax, %.preheader.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i, i64 20
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.0711.i, i64 20
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp sgt i32 %i.bz, %i.cb               ; 2 uses
  %spec.select.i.i = select i1 %i.cc, ptr %.012.i, ptr %.0711.i ; 3 uses
  %spec.select17.i.i = select i1 %i.cc, ptr %.0711.i, ptr %.012.i ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %spec.select17.i.i, i64 20
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 20
  %i.cg = load i32, ptr %i.cf, align 4
  %.not18.i.i = icmp eq i32 %i.cg, %i.ce
  br i1 %.not18.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.116.lcssa.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %storemerge7.i.i, %.lr.ph.i.i ] ; 3 uses
  %.not520.i.i = icmp eq ptr %.116.lcssa.i.i, %spec.select17.i.i
  br i1 %.not520.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.11619.i.i = phi ptr [ %storemerge7.i.i, %.lr.ph.i.i ], [ %spec.select.i.i, %.lr.ph.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 16
  %i.ci = load i32, ptr %i.ch, align 8
  %.not6.i.i = icmp slt i32 %i.ci, %i.ce
  %storemerge7.in.v.i.i = select i1 %.not6.i.i, i64 24, i64 32
  %storemerge7.in.i.i = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 %storemerge7.in.v.i.i
  %storemerge7.i.i = load ptr, ptr %storemerge7.in.i.i, align 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge7.i.i, i64 20
  %i.ck = load i32, ptr %i.cj, align 4
  %.not.i.i = icmp eq i32 %i.ck, %i.ce
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !37

.lr.ph23.i.i:                                     ; preds = %.preheader.i.i, %bb.k
  %.122.i.i = phi ptr [ %storemerge.i.i, %bb.k ], [ %spec.select17.i.i, %.preheader.i.i ] ; 2 uses
  %.221.i.i = phi ptr [ %.3.i.i, %bb.k ], [ %.116.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 32
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph23.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 24
  %storemerge.pre.i.i = load ptr, ptr %i.cs, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph23.i.i
  %storemerge.i.i = phi ptr [ %storemerge.pre.i.i, %bb.j ], [ %i.co, %.lr.ph23.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %i.cr, %bb.j ], [ %i.cm, %.lr.ph23.i.i ] ; 3 uses
  %.not5.i.i = icmp eq ptr %.3.i.i, %storemerge.i.i
  br i1 %.not5.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i, !llvm.loop !38

_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i: ; preds = %bb.k, %.preheader.i.i
  %.2.lcssa.i.i = phi ptr [ %.116.lcssa.i.i, %.preheader.i.i ], [ %.3.i.i, %bb.k ] ; 2 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 64
  %.0.i42 = load ptr, ptr %.0.in.i, align 8       ; 2 uses
  %.not.i43 = icmp eq ptr %.0.i42, null
  br i1 %.not.i43, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !39

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i, %bb.h
  %i.ct = phi i32 [ %.pre.i44, %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i ], [ 0, %bb.h ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 232 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.cv, i32 %i.ct)
  store i32 %.sroa.speculated, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  store ptr %2, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(504) %i.cx, ptr noundef nonnull %2)
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit: ; preds = %bb.e, %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8            ; 3 uses
  %i.da = icmp ult i64 %i.cz, 2
  br i1 %i.da, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dc = load i64, ptr %i.db, align 8
  %.not.i.i.i = icmp ult i64 %i.dc, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.dd, align 8 ; 2 uses
  %i.de = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.df = icmp eq ptr %i.de, %2
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i47 = select i1 %i.df, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.dg, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.di = load i64, ptr %i.dh, align 8
  %sext.i = shl i64 %i.di, 48
  %i.dj = ashr exact i64 %sext.i, 48
  %i.dk = ptrtoint ptr %2 to i64
  %i.dl = xor i64 %i.dk, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.dm = zext i64 %i.dl to i128
  %i.dn = mul nuw nsw i128 %i.dm, 8779197792823184629 ; 2 uses
  %i.do = lshr i128 %i.dn, 64
  %i.dp = xor i128 %i.do, %i.dn
  %i.dq = trunc i128 %i.dp to i64
  %i.dr = xor i64 %i.dj, %i.dq                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 57
  %i.dt = trunc nuw nsw i64 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.du, align 8 ; 2 uses
  %i.dv = insertelement <16 x i8> poison, i8 %i.dt, i64 0
  %i.dw = shufflevector <16 x i8> %i.dv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.pn.i7.i = phi i64 [ %i.dr, %bb.o ], [ %i.ep, %bb.r ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.o ], [ %i.eo, %bb.r ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.cz       ; 4 uses
  %i.dx = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.dx, i32 0, i32 3, i32 1)
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.dz = load <16 x i8>, ptr %i.dy, align 1      ; 2 uses
  %i.ea = icmp eq <16 x i8> %i.dw, %i.dz
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.eb, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %bb.p, %bb.q
  %.sroa.017.047.i.i = phi i16 [ %i.el, %bb.q ], [ %i.eb, %bb.p ] ; 3 uses
  %i.ec = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = add i64 %.sroa.6.0.i.i, %i.ed
  %i.ef = and i64 %i.ee, %i.cz                    ; 2 uses
  %i.eg = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ef ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = icmp eq ptr %i.eh, %2
  br i1 %i.ei, label %.thread33.i.i, label %bb.q, !prof !8

.thread33.i.i:                                    ; preds = %.lr.ph.i.i45
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ef
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i

bb.q:                                             ; preds = %.lr.ph.i.i45
  %i.ek = add i16 %.sroa.017.047.i.i, -1
  %i.el = and i16 %i.ek, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i46 = icmp eq i16 %i.el, 0
  br i1 %.not.i.i46, label %._crit_edge.i.i, label %.lr.ph.i.i45

._crit_edge.i.i:                                  ; preds = %bb.q, %bb.p
  %i.em = icmp eq <16 x i8> %i.dz, splat (i8 -128)
  %i.en = bitcast <16 x i1> %i.em to i16
  %.not44.i.i = icmp eq i16 %i.en, 0
  br i1 %.not44.i.i, label %bb.r, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i, !prof !9

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.eo = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ep = add i64 %i.eo, %.sroa.6.0.i.i
  br label %bb.p, !llvm.loop !329

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ej, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.eg, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit: ; preds = %bb.m, %bb.n, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.m ], [ %spec.select.i.i47, %bb.n ] ; 2 uses
  %i.eq = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.er = extractvalue { ptr, ptr } %.pn.i, 1     ; 10 uses
  %i.es = icmp eq ptr %i.eq, null
  br i1 %i.es, label %bb.s, label %bb.t, !prof !9

bb.s:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101) #22
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit
  %i.et = icmp eq ptr %i.eq, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.et, label %bb.u, label %bb.v, !prof !9

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.101) #22
  tail call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.eu = load i8, ptr %i.eq, align 1
  %i.ev = icmp sgt i8 %i.eu, -1
  br i1 %i.ev, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.101) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit: ; preds = %bb.v
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit
  %i.ex = load i32, ptr %3, align 8
  br label %bb.y

bb.y:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit, %bb.x
  %i.ey = phi i32 [ %i.ex, %bb.x ], [ 0, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 8
  %.not76 = icmp eq i32 %i.fa, 0
  br i1 %.not76, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 44
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.z

.preheader:                                       ; preds = %bb.z, %bb.y
  %.not77 = icmp eq i32 %i.ey, 0
  br i1 %.not77, label %._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %.preheader
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 44
  %i.fg = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %wide.trip.count = zext i32 %i.ey to i64
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 4 uses
  %i.fj = load i32, ptr %i.fb, align 4
  %i.fk = zext i32 %i.fj to i64
  %i.fl = mul nuw i64 %indvars.iv, %i.fk
  %i.fm = load ptr, ptr %i.fc, align 8
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fl
  %i.fo = load i32, ptr %i.fd, align 8
  %i.fp = zext i32 %i.fo to i64
  %i.fq = load ptr, ptr %i.ew, align 8
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i32, ptr %i.fr, align 4
  %i.fs = tail call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr %i.fn, i64 %i.fp, i32 %.sroa.0.0.copyload.i)
  %i.ft = load ptr, ptr %i.fe, align 8
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv
  store i32 %i.fs, ptr %i.fu, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fv = load i32, ptr %i.ez, align 8
  %i.fw = zext i32 %i.fv to i64
  %i.fx = icmp samesign ult i64 %indvars.iv.next, %i.fw
  br i1 %i.fx, label %bb.z, label %.preheader, !llvm.loop !338

._crit_edge:                                      ; preds = %bb.aa, %.preheader
  %.not41 = icmp eq ptr %4, null
  br i1 %.not41, label %bb.ag, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph75, %bb.aa
  %indvars.iv82 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next83, %bb.aa ] ; 3 uses
  %i.fy = load i32, ptr %i.ez, align 8
  %i.fz = trunc nuw i64 %indvars.iv82 to i32
  %i.ga = add i32 %i.fy, %i.fz
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = load i32, ptr %i.ff, align 4
  %i.gd = zext i32 %i.gc to i64
  %i.ge = mul nuw i64 %i.gb, %i.gd
  %i.gf = load ptr, ptr %i.fg, align 8
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.ge
  %i.gh = load i32, ptr %i.fh, align 8
  %i.gi = zext i32 %i.gh to i64
  %i.gj = load ptr, ptr %i.ew, align 8
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gb
  %.sroa.0.0.copyload.i52 = load i32, ptr %i.gk, align 4
  %i.gl = tail call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr %i.gg, i64 %i.gi, i32 %.sroa.0.0.copyload.i52)
  %i.gm = load i32, ptr %3, align 8
  %i.gn = icmp eq i32 %i.gm, 1
  %i.go = load ptr, ptr %i.fi, align 8
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv82
  %i.gq = select i1 %i.gn, ptr %i.fi, ptr %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i32 %i.gl, ptr %i.gr, align 4
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.aa, !llvm.loop !339

bb.ab:                                            ; preds = %._crit_edge
  %i.gs = load i32, ptr %4, align 4
  %.not68 = icmp eq i32 %i.gs, -1
  br i1 %.not68, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.gu = load ptr, ptr %i.gt, align 8            ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 2 uses
  %i.ha = ashr exact i64 %i.gz, 2                 ; 2 uses
  %i.hb = icmp eq ptr %i.gw, %i.gu
  br i1 %i.hb, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit, label %.preheader.i54

.preheader.i54:                                   ; preds = %bb.ac
  %.not17.i = icmp eq i64 %i.gz, 4
  %.sroa.08.0.copyload.pre.i = load i32, ptr %i.gu, align 4 ; 3 uses
  br i1 %.not17.i, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit, label %.lr.ph.i55

bb.ad:                                            ; preds = %.lr.ph.i55
  %i.hc = add nuw i64 %.016.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hc, %i.ha
  br i1 %exitcond.not.i, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit, label %.lr.ph.i55, !llvm.loop !340

.lr.ph.i55:                                       ; preds = %.preheader.i54, %bb.ad
  %.016.i = phi i64 [ %i.hc, %bb.ad ], [ 1, %.preheader.i54 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.016.i
  %i.he = load i32, ptr %i.hd, align 4
  %.not.i56 = icmp eq i32 %i.he, %.sroa.08.0.copyload.pre.i
  br i1 %.not.i56, label %bb.ad, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i55
  %i.hf = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 672
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit, label %bb.af, !prof !9

bb.af:                                            ; preds = %bb.ae
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hk = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEEEE9ReducePhiENS8_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 1 dereferenceable(1) %i.hj, ptr nonnull %i.gu, i64 %i.ha, i8 4)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit: ; preds = %bb.ad, %bb.ac, %.preheader.i54, %bb.ae, %bb.af
  %.sroa.08.1.i = phi i32 [ -1, %bb.ac ], [ %i.hk, %bb.af ], [ -1, %bb.ae ], [ %.sroa.08.0.copyload.pre.i, %.preheader.i54 ], [ %.sroa.08.0.copyload.pre.i, %bb.ad ]
  store i32 %.sroa.08.1.i, ptr %4, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit, %bb.ab, %._crit_edge
  tail call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE5eraseENSM_8iteratorE(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr nonnull %i.eq, ptr %i.er)
  ret void
end_hunk_3
