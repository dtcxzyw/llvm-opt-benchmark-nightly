Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turbolev-graph-builder?download=true
inline.NumInlined: 65942
inline.NumDeleted: 17507
loop-unroll.NumCompletelyUnrolled: 517
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 591
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES8_S9_SB_SD_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSF_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSS_13VariableTableES4_S5_E16StartNewSnapshotIS10_EEvNSX_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSX_IKT0_EEEEUlSW_RSY_S1H_E_EEvS17_S1A_RS1F_
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES8_S9_SB_SD_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSF_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSS_13VariableTableES4_S5_E16StartNewSnapshotIS10_EEvNSX_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSX_IKT0_EEEEUlSW_RSY_S1H_E_EEvS17_S1A_RS1F_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !348

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
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !2530

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !2531

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
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !344, !align !355 ; 4 uses
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
  br i1 %i.au, label %bb.j, label %bb.i, !prof !348

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.31) #28
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.av = trunc i64 %i.as to i32
  store i32 %i.av, ptr %i.ak, align 4
  %i.aw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ax = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ay = icmp ult ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i, label %bb.k, !prof !348

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
  br i1 %.not.i42, label %bb.l, label %bb.m, !prof !345

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
  br i1 %i.ca, label %bb.p, label %bb.o, !prof !348

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
  br i1 %i.cj, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, !prof !345

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
  %.pn94 = ptrtoaddr ptr %.pn to i64              ; 2 uses
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bm ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  %.pre20.i.i = load i32, ptr %i.bi, align 8      ; 2 uses
  %i.ct = add i64 %.pn94, %i.bk                   ; 2 uses
  %i.cu = add i64 %i.ct, %.idx
  %i.cv = sub i64 %i.cu, %i.bl
  %i.cw = add i64 %i.ct, 4
  %i.cx = sub i64 %i.cw, %i.bl
  %i.cy = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cx)
  %i.cz = add i64 %i.cy, %i.bl
  %i.da = xor i64 %.pn94, -1
  %i.db = add i64 %i.cz, %i.da
  %i.dc = sub i64 %i.db, %i.bk                    ; 2 uses
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
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !2532

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
  br i1 %i.dl, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !2533

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
  %.03571 = phi ptr [ %i.o, %.lr.ph.i.lr.ph ], [ %i.he, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.dt = load ptr, ptr %.03571, align 8          ; 8 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = zext i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.i, align 8
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dw ; 5 uses
  %i.dz = load ptr, ptr %3, align 8               ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -8
  br label %bb.u

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.023.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, %i.ea
  br i1 %.not.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.023.i = phi ptr [ %i.dy, %.lr.ph.i ], [ %i.ec, %bb.t ] ; 2 uses
  %i.ed = load i32, ptr %.023.i, align 4          ; 2 uses
  %.not21.i = icmp eq i32 %i.ed, -1
  br i1 %.not21.i, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %bb.u
  %i.ee = load ptr, ptr %i.eb, align 8, !nonnull !344, !align !355
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ei = zext i32 %i.ed to i64
  %i.ej = add i64 %i.eh, %i.ei
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load i8, ptr %i.ek, align 4
  %i.em = icmp eq i8 %i.el, 76
  br i1 %i.em, label %bb.v, label %bb.t

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 880
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit, label %bb.w, !prof !345

bb.w:                                             ; preds = %bb.v
  %i.eq = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.dz)
  %i.er = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_18LoadRootRegisterOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.dz, i32 %i.eq)
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit

._crit_edge.i:                                    ; preds = %bb.t
  %.sroa.0.0.copyload.i = load i8, ptr %i.dt, align 8 ; 2 uses
  %.not.i.i38 = icmp eq i8 %.sroa.0.0.copyload.i, 8
  br i1 %.not.i.i38, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 880
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit, label %bb.y, !prof !345

bb.y:                                             ; preds = %bb.x
  %i.ev = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS3_INS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerES3_S5_S7_EEEEEEEEEEEEEEEE9ReducePhiENS9_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(648) %i.dz, ptr %i.dy, i64 %2, i8 %.sroa.0.0.copyload.i), !inline_history !303
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit

bb.z:                                             ; preds = %._crit_edge.i
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.dy, align 4
  %i.ew = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.ex = add i64 %i.eh, %i.ew
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load i8, ptr %i.ey, align 4
  %i.fa = icmp eq i8 %i.ez, 92
  br i1 %i.fa, label %bb.aa, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit

bb.aa:                                            ; preds = %bb.z
  %i.fb = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE15MergeFrameStateENSA_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(648) %i.dz, ptr nonnull %i.dy, i64 %2), !inline_history !303
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit

_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.copyload.i40 = phi i32 [ -1, %bb.z ], [ -1, %bb.v ], [ %i.er, %bb.w ], [ -1, %bb.x ], [ %i.fb, %bb.aa ], [ %i.ev, %bb.y ], [ -1, %bb.u ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8            ; 3 uses
  %.not62 = icmp eq i32 %i.fd, %.sroa.0.0.copyload.i40
  br i1 %.not62, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSR_EEE_clEST_SW_.exit
  %i.fe = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ff = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.fg = icmp ult ptr %i.fe, %i.ff
  br i1 %i.fg, label %bb.ad, label %bb.ac, !prof !348

bb.ac:                                            ; preds = %bb.ab
  %i.fh = load ptr, ptr %i.f, align 8
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 4
  %i.fm = add nsw i64 %i.fl, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.fm)
  %.pre.i.i.i39 = load ptr, ptr %i.q, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fn = phi ptr [ %i.fe, %bb.ab ], [ %.pre.i.i.i39, %bb.ac ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr %i.fo, ptr %i.q, align 8
  store ptr %i.dt, ptr %i.fn, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i32 %i.fd, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  store i32 %.sroa.0.0.copyload.i40, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %.sroa.0.0.copyload.i40, ptr %i.fc, align 8
  %i.fp = load ptr, ptr %4, align 8               ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !range !343, !noundef !344
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_11ParameterOpEEEPNSJ_5EntryERKT_Pm:_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_11ParameterOpEEEmRKT0_b.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !2624
  %i.bo = icmp eq i8 %i.bl, %i.e
  %i.bp = icmp eq ptr %i.bn, %i.d
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.c, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit, %bb.d, %bb.b
  %i.br = add i64 %.02632, 1
  %i.bs = and i64 %i.am, %i.br                    ; 2 uses
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %._crit_edge, label %bb.b, !llvm.loop !2622

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.a
  %i.bx = phi ptr [ %.lcssa, %bb.a ], [ %.lcssa, %._crit_edge ], [ %i.aw, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.bx
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer12FindLoopBodyESt16reverse_iteratorIPKPNS0_6maglev10BasicBlockEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef dead_on_return %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey.4016", align 8 ; 5 uses
  %3 = alloca %"struct.absl::container_internal::HashKey.4016", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8              ; 9 uses
  store ptr %i.p, ptr %i.a, align 8
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %0, align 8, !noalias !2650 ; 4 uses
  %i.s = icmp ult i64 %i.r, 2
  br i1 %i.s, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noalias !2651
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.u, 131072
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 131072, ptr %i.t, align 8, !noalias !2651
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2651
  %i.y = icmp eq ptr %i.x, %i.p
  br i1 %i.y, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !2651
  store ptr %0, ptr %3, align 8, !noalias !2651
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.z, align 8, !noalias !2651
  %i.aa = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal6maglev10BasicBlockEvE4HashESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #27, !noalias !2651
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !2651
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !2651
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i, i64 %i.aa
  %.pre = load ptr, ptr %i.a, align 8, !noalias !2652
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !2653 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !2653
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !2653
  %i.ag = shl i64 %i.af, 48
  %i.ah = ashr exact i64 %i.ag, 48
  %i.ai = ptrtoint ptr %i.p to i64
  %i.aj = xor i64 %i.ai, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.ak = zext i64 %i.aj to i128
  %i.al = mul nuw nsw i128 %i.ak, 8779197792823184629 ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = xor i128 %i.am, %i.al
  %i.ao = trunc i128 %i.an to i64
  %i.ap = xor i64 %i.ah, %i.ao                    ; 3 uses
  %i.aq = lshr i64 %i.ap, 57
  %i.ar = trunc nuw nsw i64 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.as, align 8, !noalias !2653 ; 2 uses
  %i.at = insertelement <16 x i8> poison, i8 %i.ar, i64 0
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.pn.i = phi i64 [ %i.ap, %bb.g ], [ %i.bs, %bb.i ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.g ], [ %i.br, %bb.i ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.r             ; 5 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.av, i32 0, i32 3, i32 1), !noalias !2653
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ax = load <16 x i8>, ptr %i.aw, align 1, !noalias !2653 ; 2 uses
  %i.ay = icmp eq <16 x i8> %i.au, %i.ax
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.az, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.bi, %.critedge.i ], [ %i.az, %bb.h ] ; 3 uses
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = add i64 %.sroa.7.0.i, %i.bb
  %i.bd = and i64 %i.bc, %i.r
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !2653
  %i.bg = icmp eq ptr %i.bf, %i.p
  br i1 %i.bg, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit, label %.critedge.i, !prof !348

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bh = add i16 %.sroa.035.065.i, -1
  %i.bi = and i16 %i.bh, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.h
  %i.bj = icmp eq <16 x i8> %i.ax, splat (i8 -128)
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.bk, 0
  br i1 %.not57.i, label %bb.i, label %.thread.i, !prof !345

.thread.i:                                        ; preds = %.critedge19.i
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bk, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = add i64 %.sroa.7.0.i, %i.bm
  %i.bo = and i64 %i.bn, %i.r
  %i.bp = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ap, i64 %i.bo, i64 %.sroa.15.0.i) #27, !noalias !2653
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.as, align 8, !noalias !2653
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.bp
  br label %bb.j

bb.i:                                             ; preds = %.critedge19.i
  %i.br = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bs = add i64 %i.br, %.sroa.7.0.i
  br label %bb.h

bb.j:                                             ; preds = %bb.f, %bb.d, %.thread.i
  %i.bt = phi ptr [ %i.p, %.thread.i ], [ %i.p, %bb.d ], [ %.pre, %bb.f ]
  %.sroa.3.0.ph = phi ptr [ %i.bq, %.thread.i ], [ %i.v, %bb.d ], [ %i.ac, %bb.f ] ; 3 uses
  store ptr %i.bt, ptr %.sroa.3.0.ph, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.3.0.ph, i64 8
  store ptr null, ptr %i.bu, align 8
  %.pre74.a = load ptr, ptr %i.a, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.j
  %i.bv = phi ptr [ %.pre74.a, %bb.j ], [ %i.p, %bb.e ], [ %i.p, %.lr.ph.i ] ; 3 uses
  %.sroa.3.047 = phi ptr [ %.sroa.3.0.ph, %bb.j ], [ %i.w, %bb.e ], [ %i.be, %.lr.ph.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.3.047, i64 8
  store ptr %i.e, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %1, align 8               ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %.not64 = icmp eq ptr %i.bz, %i.bv
  br i1 %.not64, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.w
  %.pre7677 = phi ptr [ %i.bv, %.lr.ph ], [ %.pre7678, %bb.w ] ; 4 uses
  %i.ce = phi ptr [ %i.bv, %.lr.ph ], [ %i.ey, %bb.w ] ; 2 uses
  %i.cf = phi ptr [ %i.bx, %.lr.ph ], [ %i.fa, %bb.w ] ; 2 uses
  %i.cg = phi ptr [ %i.by, %.lr.ph ], [ %i.ez, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ch = load ptr, ptr %i.cg, align 8            ; 6 uses
  store ptr %i.ch, ptr %i.b, align 8
  %i.ci = load i64, ptr %0, align 8               ; 6 uses
  %i.cj = icmp ult i64 %i.ci, 2
  br i1 %i.cj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ck = load i64, ptr %i.cb, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.ck, 131072
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.cl = load i64, ptr %i.cb, align 8
  %i.cm = shl i64 %i.cl, 48
  %i.cn = ashr exact i64 %i.cm, 48
  %i.co = ptrtoint ptr %i.ch to i64
  %i.cp = xor i64 %i.co, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.cq = zext i64 %i.cp to i128
  %i.cr = mul nuw nsw i128 %i.cq, 8779197792823184629 ; 2 uses
  %i.cs = lshr i128 %i.cr, 64
  %i.ct = xor i128 %i.cs, %i.cr
  %i.cu = trunc i128 %i.ct to i64
  %i.cv = xor i64 %i.cn, %i.cu                    ; 4 uses
  %i.cw = lshr i64 %i.cv, 57
  %i.cx = trunc nuw nsw i64 %i.cw to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.cc, align 8 ; 4 uses
  %i.cy = insertelement <16 x i8> poison, i8 %i.cx, i64 0
  %i.cz = shufflevector <16 x i8> %i.cy, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.pn.i7.i.i.i = phi i64 [ %i.cv, %bb.m ], [ %i.dr, %bb.p ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.dq, %bb.p ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i7.i.i.i, %i.ci ; 4 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.da, i32 0, i32 3, i32 1)
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.dc = load <16 x i8>, ptr %i.db, align 1      ; 2 uses
  %i.dd = icmp eq <16 x i8> %i.cz, %i.dc
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.de, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %bb.o
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.dn, %bb.o ], [ %i.de, %bb.n ] ; 3 uses
  %i.df = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.dg = zext nneg i16 %i.df to i64
  %i.dh = add i64 %.sroa.6.0.i.i.i.i, %i.dg
  %i.di = and i64 %i.dh, %i.ci
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = icmp eq ptr %i.dk, %i.ch
  br i1 %i.dl, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread49, label %bb.o, !prof !348

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread49: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  br label %bb.w

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dm = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.dn = and i16 %i.dm, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dn, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.o, %bb.n
  %i.do = icmp eq <16 x i8> %i.dc, splat (i8 -128)
  %i.dp = bitcast <16 x i1> %i.do to i16
  %.not44.i.i.i.i = icmp eq i16 %i.dp, 0
  br i1 %.not44.i.i.i.i, label %bb.p, label %bb.s, !prof !345

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dq = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.dr = add i64 %i.dq, %.sroa.6.0.i.i.i.i
  br label %bb.n, !llvm.loop !310

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit: ; preds = %bb.l
  %4 = load ptr, ptr %i.ca, align 8
  %i.ds = icmp eq ptr %4, %i.ch
  br i1 %i.ds, label %bb.w, label %.thread51

bb.q:                                             ; preds = %bb.l
  store i64 131072, ptr %i.cb, align 8, !noalias !2654
  br label %bb.v

.thread51:                                        ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit
  %i.dt = load ptr, ptr %i.ca, align 8, !noalias !2654
  %i.du = icmp eq ptr %i.dt, %i.ch
  br i1 %i.du, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19, label %bb.r

bb.r:                                             ; preds = %.thread51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !2654
  store ptr %0, ptr %2, align 8, !noalias !2654
  store ptr %i.b, ptr %i.cd, align 8, !noalias !2654
  %i.dv = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal6maglev10BasicBlockEvE4HashESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #27, !noalias !2654
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !2654
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i14 = load ptr, ptr %i.cc, align 8, !noalias !2654
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i14, i64 %i.dv
  br label %bb.v

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !2655
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.pn.i22 = phi i64 [ %i.cv, %bb.s ], [ %i.eu, %bb.u ]
  %.sroa.15.0.i23 = phi i64 [ 0, %bb.s ], [ %i.et, %bb.u ] ; 2 uses
  %.sroa.7.0.i24 = and i64 %.pn.i22, %i.ci        ; 5 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.7.0.i24
  call void @llvm.prefetch.p0(ptr %i.dx, i32 0, i32 3, i32 1), !noalias !2655
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.7.0.i24
  %i.dz = load <16 x i8>, ptr %i.dy, align 1, !noalias !2655 ; 2 uses
  %i.ea = icmp eq <16 x i8> %i.cz, %i.dz
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %.not64.i25 = icmp eq i16 %i.eb, 0
  br i1 %.not64.i25, label %.critedge19.i30, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.t, %.critedge.i28
  %.sroa.035.065.i27 = phi i16 [ %i.ek, %.critedge.i28 ], [ %i.eb, %bb.t ] ; 3 uses
  %i.ec = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i27, i1 true)
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = add i64 %.sroa.7.0.i24, %i.ed
  %i.ef = and i64 %i.ee, %i.ci
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ef ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !2655
  %i.ei = icmp eq ptr %i.eh, %i.ch
  br i1 %i.ei, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19, label %.critedge.i28, !prof !348

.critedge.i28:                                    ; preds = %.lr.ph.i26
  %i.ej = add i16 %.sroa.035.065.i27, -1
  %i.ek = and i16 %i.ej, %.sroa.035.065.i27       ; 2 uses
  %.not.i29 = icmp eq i16 %i.ek, 0
  br i1 %.not.i29, label %.critedge19.i30, label %.lr.ph.i26

.critedge19.i30:                                  ; preds = %.critedge.i28, %bb.t
  %i.el = icmp eq <16 x i8> %i.dz, splat (i8 -128)
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not57.i31 = icmp eq i16 %i.em, 0
  br i1 %.not57.i31, label %bb.u, label %.thread.i32, !prof !345

.thread.i32:                                      ; preds = %.critedge19.i30
  %i.en = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.em, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = add i64 %.sroa.7.0.i24, %i.eo
  %i.eq = and i64 %i.ep, %i.ci
  %i.er = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.cv, i64 %i.eq, i64 %.sroa.15.0.i23) #27, !noalias !2655
  %.sroa.0.0.copyload.i.i.i2.i26.i34 = load ptr, ptr %i.cc, align 8, !noalias !2655
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i34, i64 %i.er
  br label %bb.v

bb.u:                                             ; preds = %.critedge19.i30
  %i.et = add i64 %.sroa.15.0.i23, 16             ; 2 uses
  %i.eu = add i64 %i.et, %.sroa.7.0.i24
  br label %bb.t

bb.v:                                             ; preds = %bb.r, %bb.q, %.thread.i32
  %.sroa.342.0.ph = phi ptr [ %i.es, %.thread.i32 ], [ %i.ca, %bb.q ], [ %i.dw, %bb.r ] ; 3 uses
  %i.ev = load ptr, ptr %i.b, align 8, !noalias !2656
  store ptr %i.ev, ptr %.sroa.342.0.ph, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.342.0.ph, i64 8
  store ptr null, ptr %i.ew, align 8
  %.pre76.pre = load ptr, ptr %i.a, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19: ; preds = %.lr.ph.i26, %.thread51, %bb.v
  %.pre76 = phi ptr [ %.pre76.pre, %bb.v ], [ %.pre7677, %.thread51 ], [ %.pre7677, %.lr.ph.i26 ] ; 2 uses
  %.sroa.342.054 = phi ptr [ %.sroa.342.0.ph, %bb.v ], [ %i.ca, %.thread51 ], [ %i.eg, %.lr.ph.i26 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.342.054, i64 8
  store ptr %i.e, ptr %i.ex, align 8
  %.pre75 = load ptr, ptr %1, align 8
  br label %bb.w

bb.w:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread49, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19
  %.pre7678 = phi ptr [ %.pre7677, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread49 ], [ %.pre7677, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit ], [ %.pre76, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19 ]
  %i.ey = phi ptr [ %i.ce, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread49 ], [ %i.ce, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit ], [ %.pre76, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19 ] ; 2 uses
  %i.ez = phi ptr [ %i.cf, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread49 ], [ %i.cf, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit ], [ %.pre75, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  store ptr %i.fa, ptr %1, align 8
  %i.fb = load ptr, ptr %i.ez, align 8
  %.not = icmp eq ptr %i.fb, %i.ey
  br i1 %.not, label %.loopexit, label %bb.k, !llvm.loop !2649

.loopexit:                                        ; preds = %bb.w, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal6maglev10BasicBlockEvE4HashESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !344, !align !355
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 8779197792823184629 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64
  %i.k = xor i64 %1, %i.j
  ret i64 %i.k
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal6maglev10BasicBlock10successorsEv(ptr dead_on_unwind noalias writable sret(%"class.v8::base::SmallVector.4019") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i16                    ; 2 uses
  %i.f = add i16 %i.e, -320
  %i.g = icmp ult i16 %i.f, -3
  %.not42 = icmp eq ptr %i.b, null                ; 3 uses
  %.not = or i1 %.not42, %i.g
  br i1 %.not, label %bb.b, label %_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit

_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.l, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.k, align 8
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = add i16 %i.e, -317
  %i.p = icmp ult i16 %i.o, -15
  %.not22 = or i1 %.not42, %i.p
  br i1 %.not22, label %bb.c, label %_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit26

_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit26: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load <2 x ptr>, ptr %i.q, align 8
  store ptr %i.r, ptr %0, align 8
  store ptr %i.u, ptr %i.t, align 8
  store <2 x ptr> %i.v, ptr %i.r, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.w, ptr %i.s, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.x = and i64 %i.d, 65535
  %i.y = icmp ne i64 %i.x, 301
  %.not23 = or i1 %.not42, %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not23, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.z, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ai = load i8, ptr %i.ah, align 8, !range !343, !noundef !344
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit, label %bb.i

bb.e:                                             ; preds = %.lr.ph, %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit ] ; 2 uses
  %i.ak = load ptr, ptr %i.ag, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ao = load ptr, ptr %i.ab, align 8
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit, !prof !345

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit: ; preds = %bb.e, %bb.f
  %i.aq = phi ptr [ %.pre.i.i, %bb.f ], [ %i.an, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.aa, align 8
  store ptr %i.am, ptr %i.aq, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.ad, align 8
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.e, label %._crit_edge, !llvm.loop !2657

_ZNK2v88internal6maglev6Switch11fallthroughEv.exit: ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.ab, align 8
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.g, label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit29, !prof !345

bb.g:                                             ; preds = %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre.i.i28 = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit29

_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit29: ; preds = %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit, %bb.g
  %i.ba = phi ptr [ %.pre.i.i28, %bb.g ], [ %i.ax, %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.aa, align 8
  store ptr %i.aw, ptr %i.ba, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.bc, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bf, ptr %i.be, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit26, %._crit_edge, %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit29, %bb.h, %_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 6 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i.i.i = icmp ugt i64 %i.d, 131071
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, %1
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.g, i1 false
  br i1 %or.cond, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 5 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = shl i64 %i.j, 48
  %i.l = ashr exact i64 %i.k, 48
  %i.m = ptrtoint ptr %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64
  %i.t = xor i64 %i.l, %i.s                       ; 4 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.w, align 8 ; 4 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i7.i.i.i = phi i64 [ %i.t, %bb.c ], [ %i.aq, %bb.f ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ap, %bb.f ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i7.i.i.i, %i.a ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.am, %bb.e ], [ %i.ad, %bb.d ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.a
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %bb.g, label %bb.e, !prof !348

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.an = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i.i.i, label %bb.f, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread, !prof !345

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ap = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i.i.i
  br label %bb.d, !llvm.loop !310

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  tail call void @llvm.prefetch.p0(ptr nonnull %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !2660
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.pn.i = phi i64 [ %i.t, %bb.g ], [ %i.bi, %bb.i ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.g ], [ %i.bh, %bb.i ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !2660
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !noalias !2660 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.y, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.av, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.h ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.a
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.az ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !2660
  %i.bc = icmp eq ptr %i.bb, %1
  br i1 %i.bc, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit, label %.critedge.i, !prof !348

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.035.065.i, -1
  %i.be = and i16 %i.bd, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.be, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.h
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.bg, 0
  br i1 %.not57.i, label %bb.i, label %bb.j, !prof !345

bb.i:                                             ; preds = %.critedge19.i
  %i.bh = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bi = add i64 %i.bh, %.sroa.7.0.i
  br label %bb.h

bb.j:                                             ; preds = %.critedge19.i
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = add i64 %.sroa.7.0.i, %i.bk
  %i.bm = and i64 %i.bl, %i.a
  %i.bn = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.t, i64 %i.bm, i64 %.sroa.15.0.i) #27, !noalias !2660
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.w, align 8, !noalias !2660
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.bn ; 3 uses
  store ptr %1, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr null, ptr %i.bp, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.j
  %.sroa.3.07 = phi ptr [ %i.bo, %bb.j ], [ %i.e, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.3.07, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.b, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit
  %.0 = phi ptr [ %i.br, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit ], [ null, %bb.b ], [ null, %._crit_edge.i.i.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer22RecordHeadersForBypassEPNS0_6maglev10BasicBlockEPKS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  store ptr %1, ptr %i.a, align 8
  store ptr %2, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.f, ptr %4, align 8
  %i.g = call { ptr, i8 } @_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb0EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call noundef ptr @_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.h) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8
  %.not3 = icmp eq ptr %i.i, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.f, ptr %3, align 8
  %i.j = call { ptr, i8 } @_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb0EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = call noundef ptr @_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.k) ; 2 uses
  store ptr %i.l, ptr %i.c, align 8
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2661
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !345

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
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.f, label %bb.g, !prof !348

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.p, align 8
  store ptr %i.w, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.x = shl nuw i64 1, %i.j
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.y, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.a, %i.k
  br i1 %i.l, label %.loopexit30, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.m = icmp eq ptr %i.a, %i.p
  br i1 %i.m, label %.loopexit30, label %.lr.ph.i.i, !llvm.loop !311

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  %i.n = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.n, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = urem i64 %i.q, %i.d
  %.not19.i.i = icmp eq i64 %i.r, %i.e
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !311

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !311

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.s = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %1, align 8
  store ptr %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i64, ptr %i.c, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 noundef %i.x, i64 noundef %i.z, i64 noundef 1) #27 ; 2 uses
  %i.ab = extractvalue { i8, i64 } %i.aa, 0
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.ad = extractvalue { i8, i64 } %i.aa, 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor30ComputePredecessorPermutationsEPNS0_6maglev10BasicBlockEPNS2_5BlockEbb:bb.a
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !2760

._crit_edge45:                                    ; preds = %bb.r, %_ZN2v84base11SmallVectorIiLm16ESaIiEE6resizeEmRKi.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.e:                                             ; preds = %.lr.ph44, %bb.r
  %.sroa.025.042 = phi ptr [ %.sroa.025.038, %.lr.ph44 ], [ %.sroa.025.0, %bb.r ] ; 2 uses
  %.021.in41 = phi i32 [ %i.at, %.lr.ph44 ], [ %.02143, %bb.r ] ; 2 uses
  %.02143 = add nsw i32 %.021.in41, -1            ; 2 uses
  br i1 %4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bl = load i32, ptr %i.ar, align 8
  %i.bm = icmp eq i32 %.021.in41, %i.bl
  br i1 %i.bm, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.025.042, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bn, align 4
  %i.bo = zext i32 %.sroa.0.0.copyload.i.i to i64 ; 4 uses
  %i.bp = load ptr, ptr %i.au, align 8
  %i.bq = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3
  %.not.i.i = icmp ugt i64 %i.bu, %i.bo
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit, label %bb.h, !prof !348

bb.h:                                             ; preds = %bb.g
  %i.bv = lshr i64 %i.bo, 1
  %i.bw = add nuw nsw i64 %i.bo, 32
  %i.bx = add nuw nsw i64 %i.bw, %i.bv
  call void @_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 noundef %i.bx)
  %i.by = load ptr, ptr %i.ax, align 8
  %i.bz = load ptr, ptr %i.av, align 8
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 3
  call void @_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 noundef %i.cd)
  %.pre.i.i = load ptr, ptr %i.av, align 8
  br label %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit: ; preds = %bb.g, %bb.h
  %i.ce = phi ptr [ %.pre.i.i, %bb.h ], [ %i.bq, %bb.g ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bo
  %i.cg = load ptr, ptr %i.cf, align 8            ; 7 uses
  %i.ch = load ptr, ptr %5, align 8               ; 4 uses
  %i.ci = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 3 uses
  %i.cm = ashr i64 %i.cl, 5                       ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit
  %i.co = and i64 %i.cl, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ch, i64 %i.co ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.cm, %.lr.ph.i.i.i.i ], [ %i.db, %bb.m ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %i.da, %bb.m ] ; 9 uses
  %i.cp = load ptr, ptr %.02946.i.i.i.i, align 8
  %i.cq = icmp eq ptr %i.cp, %i.cg
  br i1 %i.cq, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = icmp eq ptr %i.cs, %i.cg
  br i1 %i.ct, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = icmp eq ptr %i.cv, %i.cg
  br i1 %i.cw, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit56, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = icmp eq ptr %i.cy, %i.cg
  br i1 %i.cz, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit58, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.db = add nsw i64 %.047.i.i.i.i, -1
  %i.dc = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.dc, label %bb.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !2761

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.m
  %.pre54.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre55.i.i.i.i = sub i64 %i.cj, %.pre54.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit
  %.pre-phi56.i.i.i.i = phi i64 [ %.pre55.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.cl, %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ch, %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit ] ; 5 uses
  %i.dd = ashr exact i64 %.pre-phi56.i.i.i.i, 3
  switch i64 %i.dd, label %_ZN2v84base8index_ofINS0_11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS7_EEES7_EESt8optionalImERKT_RKT0_.exit [
    i64 3, label %bb.n
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  %i.de = load ptr, ptr %.029.lcssa.i.i.i.i, align 8
  %i.df = icmp eq ptr %i.de, %i.cg
  br i1 %i.df, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.o
  %.1.i.i.i.i = phi ptr [ %i.dg, %bb.o ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.dh = load ptr, ptr %.1.i.i.i.i, align 8
  %i.di = icmp eq ptr %i.dh, %i.cg
  br i1 %i.di, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.p
  %.2.i.i.i.i = phi ptr [ %i.dj, %bb.p ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.dk = load ptr, ptr %.2.i.i.i.i, align 8
  %i.dl = icmp eq ptr %i.dk, %i.cg
  br i1 %i.dl, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i, label %_ZN2v84base8index_ofINS0_11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS7_EEES7_EESt8optionalImERKT_RKT0_.exit

_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i

_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit56: ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i

_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit58: ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i

_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i: ; preds = %bb.i, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit56, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit58, %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.n
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.n ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.do, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit58 ], [ %i.dm, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.dn, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit56 ], [ %.02946.i.i.i.i, %bb.i ] ; 2 uses
  %.not.i = icmp eq ptr %.028.i.i.i.i, %i.ci
  br i1 %.not.i, label %_ZN2v84base8index_ofINS0_11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS7_EEES7_EESt8optionalImERKT_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i
  %i.dp = ptrtoint ptr %.028.i.i.i.i to i64
  %i.dq = sub i64 %i.dp, %i.ck
  %i.dr = ashr exact i64 %i.dq, 3
  br label %_ZN2v84base8index_ofINS0_11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS7_EEES7_EESt8optionalImERKT_RKT0_.exit

_ZN2v84base8index_ofINS0_11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS7_EEES7_EESt8optionalImERKT_RKT0_.exit: ; preds = %._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i, %bb.q
  %.sroa.0.0.i = phi i64 [ %i.dr, %bb.q ], [ undef, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i ], [ undef, %._crit_edge.i.i.i.i ], [ undef, %._crit_edge._crit_edge52.i.i.i.i ]
  %i.ds = load ptr, ptr %i.r, align 8
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.sroa.0.0.i
  store i32 %.02143, ptr %i.dt, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %_ZN2v84base8index_ofINS0_11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS7_EEES7_EESt8optionalImERKT_RKT0_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.025.042, i64 64
  %.sroa.025.0 = load ptr, ptr %i.du, align 8     ; 2 uses
  %.not = icmp eq ptr %.sroa.025.0, null
  br i1 %.not, label %._crit_edge45, label %bb.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i1 noundef zeroext %2), !inline_history !2762
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE14AddPredecessorEPNS2_5BlockESH_b(ptr noundef nonnull align 8 dereferenceable(936) %i.a, ptr noundef %i.d, ptr noundef %1, i1 noundef zeroext false), !inline_history !2763
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4              ; 5 uses
  %.not36 = icmp eq i32 %i.g, -1
  br i1 %.not36, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.l = load i64, ptr %i.k, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.l, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.o = load i64, ptr %i.n, align 8
  %i.p = shl i64 %i.o, 48
  %i.q = ashr exact i64 %i.p, 48
  %i.r = zext i32 %i.g to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw nsw i128 %i.t, 8779197792823184629 ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = xor i128 %i.v, %i.u
  %i.x = trunc i128 %i.w to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.aa, align 8 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i.i = phi i64 [ %i.x, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i8.i.i.i, %i.i ; 4 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1      ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.aq, %bb.f ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.6.0.i.i.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp eq i32 %i.an, %i.g
  br i1 %i.ao, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34, label %bb.f, !prof !348

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ap = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not44.i.i.i.i = icmp eq i16 %i.as, 0
  br i1 %.not44.i.i.i.i, label %bb.g, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, !prof !345

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.at = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !2764

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit: ; preds = %bb.c
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %5, align 8
  %6 = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.av = icmp eq i32 %6, %i.g
  br i1 %i.av, label %bb.h, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 %i.g, ptr %3, align 4
  %i.aw = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i8, ptr %i.ax, align 8, !range !343, !noundef !344
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not38 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not38, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.039 = phi ptr [ %i.bb, %.lr.ph ], [ %i.bp, %bb.j ] ; 3 uses
  %.sroa.0.0.copyload24 = load ptr, ptr %.039, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.039, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.sroa_idx, align 8 ; 2 uses
  %i.bf = load ptr, ptr %i.b, align 8, !nonnull !344, !align !355 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = zext i32 %.sroa.4.0.copyload to i64
  %i.bk = add i64 %i.bi, %i.bj
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bm, align 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %4, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24, i64 16
  %.sroa.02.0.copyload.i = load i32, ptr %i.bn, align 4
  store i32 %.sroa.02.0.copyload.i, ptr %i.be, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %.sroa.0.0.copyload = load i8, ptr %i.bo, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.bf, i32 %.sroa.4.0.copyload, ptr nonnull %4, i64 2, i8 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bp = getelementptr inbounds nuw i8, ptr %.039, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bp, %i.bd
  br i1 %.not, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.j

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.j, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, %bb.c, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit, %bb.a
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %0, i32 %1, ptr %2, i64 %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
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
  %i.r = ptrtoint ptr %i.b to i64
  %i.s = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.t = add i64 %i.s, %i.r
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = add i8 %i.w, -1                          ; 2 uses
  %spec.select.i.i.prol = icmp ult i8 %i.x, -2
  br i1 %spec.select.i.i.prol, label %bb.b, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, !prof !348

bb.b:                                             ; preds = %.lr.ph.i.prol
  store i8 %i.x, ptr %i.v, align 1
  %.pre.i.prol = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol: ; preds = %bb.b, %.lr.ph.i.prol
  %i.y = phi ptr [ %i.b, %.lr.ph.i.prol ], [ %.pre.i.prol, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.y, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol ]
  %.unr = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.y, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol ]
  %.011.i.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.z, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol ]
  %i.aa = icmp eq i64 %i.p, 0
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1
  %i.ab = phi ptr [ %i.as, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1 ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.011.i = phi ptr [ %i.at, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1 ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = zext i32 %.sroa.01.0.copyload.i to i64
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  %spec.select.i.i = icmp ult i8 %i.ai, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i, !prof !348

bb.c:                                             ; preds = %.lr.ph.i
  store i8 %i.ai, ptr %i.ag, align 1
  %.pre.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.aj = phi ptr [ %i.ab, %.lr.ph.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.ak, align 4
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.an = add i64 %i.am, %i.al
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = add i8 %i.aq, -1                        ; 2 uses
  %spec.select.i.i.1 = icmp ult i8 %i.ar, -2
  br i1 %spec.select.i.i.1, label %bb.d, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, !prof !348

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  store i8 %i.ar, ptr %i.ap, align 1
  %.pre.i.1 = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  %i.as = phi ptr [ %i.aj, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i ], [ %.pre.i.1, %bb.d ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.at, %i.o
  br i1 %.not.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, %.lr.ph.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.as, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1 ]
  %.pre29 = ptrtoint ptr %.lcssa to i64           ; 2 uses
  %.pre30 = add i64 %.pre29, %i.d                 ; 2 uses
  %.pre32 = inttoptr i64 %.pre30 to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, %bb.a
  %.pre-phi33 = phi ptr [ %.pre32, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi31 = phi i64 [ %.pre30, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre29, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.04.0.copyload = load i8, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = lshr i32 %1, 4
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2            ; 3 uses
  store ptr %.pre-phi33, ptr %i.av, align 8
  %i.bd = add i64 %3, 3
  %i.be = lshr i64 %i.bd, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.be, i64 2) ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = sub i64 %i.bh, %.pre-phi31
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = icmp ult i64 %i.bj, %.sroa.speculated.i.i.i
  br i1 %i.bk, label %bb.e, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !345

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %i.bl = sub i64 %i.bh, %.pre-phi
  %i.bm = lshr exact i64 %i.bl, 3
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = add nuw i64 %i.bn, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %0, i64 noundef %i.bo)
  %.pre.i.i.i.i = load ptr, ptr %i.av, align 8    ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.a, align 8
  %.pre28 = load ptr, ptr %i.ax, align 8
  %.pre34 = ptrtoint ptr %.pre to i64
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %.pre-phi35 = phi i64 [ %.pre34, %bb.e ], [ %.pre-phi, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %i.bp = phi ptr [ %.pre28, %bb.e ], [ %i.ay, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %.pre-phi.i.i.i.i = phi i64 [ %.pre10.i.i.i.i, %bb.e ], [ %.pre-phi31, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %i.bq = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %.pre-phi33, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ] ; 7 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.sroa.speculated.i.i.i
  store ptr %i.br, ptr %i.av, align 8
  %i.bs = sub i64 %.pre-phi.i.i.i.i, %.pre-phi35  ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.bv = lshr i64 %i.bs, 4
  %i.bw = and i64 %i.bv, 268435455
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.bw
  store i16 %i.bu, ptr %i.bx, align 2
  %i.by = load ptr, ptr %i.ax, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.bz = shl i32 %.tr.i.i.i.i, 3
  %i.ca = add i32 %i.bz, %i.bt
  %i.cb = lshr i32 %i.ca, 4
  %i.cc = add nsw i32 %i.cb, -1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.cd
  store i16 %i.bu, ptr %i.ce, align 2
  store i8 91, ptr %i.bq, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  store i8 0, ptr %i.cf, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 2 uses
  %i.ch = trunc i64 %3 to i16
  store i16 %i.ch, ptr %i.cg, align 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 5 uses
  %i.cj = icmp ugt i64 %3, 1
  br i1 %i.cj, label %bb.f, label %bb.g, !prof !348

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i.i = shl nuw nsw i64 %3, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ci, ptr align 4 %2, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.ck = icmp eq i64 %3, 1
  br i1 %i.ck, label %bb.h, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.h:                                             ; preds = %bb.g
  %i.cl = load i32, ptr %2, align 4
  store i32 %i.cl, ptr %i.ci, align 4
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i8 %4, ptr %i.cm, align 4
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev6SwitchERKNS4_15ProcessingStateE:bb.a
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit70

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit70: ; preds = %bb.l, %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockE.exit
  %i.gt = load ptr, ptr %i.bq, align 8
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.sink.split, !prof !345

bb.u:                                             ; preds = %.lr.ph238, %bb.bo
  %indvars.iv253 = phi i64 [ 0, %.lr.ph238 ], [ %indvars.iv.next254, %bb.bo ] ; 10 uses
  %i.gv = load ptr, ptr %i.ag, align 8
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv253
  %i.gx = load ptr, ptr %i.gw, align 8            ; 7 uses
  %i.gy = load i64, ptr %i.ai, align 8
  %.not.not.i.i.i = icmp eq i64 %i.gy, 0
  br i1 %.not.not.i.i.i, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.u, %bb.v
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.v ], [ %i.al, %bb.u ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8 ; 3 uses
  %i.gz = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.gz, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.preheader
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = icmp eq ptr %i.gx, %i.hb
  br i1 %i.hc, label %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer18JumpBypassesHeaderEPKNS0_6maglev10BasicBlockE.exit, label %.preheader, !llvm.loop !4023

bb.w:                                             ; preds = %bb.u
  %i.hd = ptrtoint ptr %i.gx to i64
  %i.he = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.hf = urem i64 %i.hd, %i.he                   ; 2 uses
  %i.hg = load ptr, ptr %i.aj, align 8
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hf
  %i.hi = load ptr, ptr %i.hh, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hj = load ptr, ptr %i.hi, align 8            ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = icmp eq ptr %i.gx, %i.hl
  br i1 %i.hm, label %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer18JumpBypassesHeaderEPKNS0_6maglev10BasicBlockE.exit, label %.lr.ph.i.i.i.i.i

bb.y:                                             ; preds = %bb.z
  %i.hn = icmp eq ptr %i.gx, %i.hq
  br i1 %i.hn, label %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer18JumpBypassesHeaderEPKNS0_6maglev10BasicBlockE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !311

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.x, %bb.y
  %.020.i.i.i.i.i = phi ptr [ %i.ho, %bb.y ], [ %i.hj, %bb.x ]
  %i.ho = load ptr, ptr %.020.i.i.i.i.i, align 8  ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8            ; 2 uses
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = urem i64 %i.hr, %i.he
  %.not19.i.i.i.i.i = icmp eq i64 %i.hs, %i.hf
  br i1 %.not19.i.i.i.i.i, label %bb.y, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !311

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.z
  br label %.loopexit, !llvm.loop !311

_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer18JumpBypassesHeaderEPKNS0_6maglev10BasicBlockE.exit: ; preds = %bb.y, %bb.v, %bb.x
  %i.ht = load ptr, ptr %i.m, align 8, !nonnull !344, !align !355 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 88 ; 3 uses
  %i.hv = load i64, ptr %i.hu, align 8            ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 80
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = icmp eq i64 %i.hv, %i.hx
  br i1 %i.hy, label %bb.aa, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit81, !prof !345

bb.aa:                                            ; preds = %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer18JumpBypassesHeaderEPKNS0_6maglev10BasicBlockE.exit
  call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.ht)
  %.pre.i80 = load i64, ptr %i.hu, align 8
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit81

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit81: ; preds = %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer18JumpBypassesHeaderEPKNS0_6maglev10BasicBlockE.exit, %bb.aa
  %i.hz = phi i64 [ %i.hv, %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer18JumpBypassesHeaderEPKNS0_6maglev10BasicBlockE.exit ], [ %.pre.i80, %bb.aa ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 72
  %i.ib = add i64 %i.hz, 1
  store i64 %i.ib, ptr %i.hu, align 8
  %i.ic = load ptr, ptr %i.ia, align 8
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.hz
  %i.ie = load ptr, ptr %i.id, align 8            ; 11 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.ie, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.if, align 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 48
  store i32 -1, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 52
  store i32 -1, ptr %i.ih, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 56
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 88
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 96
  store i32 0, ptr %i.ik, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ii, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.ij, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.gx, ptr %i.f, align 8
  %i.il = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.im = load ptr, ptr %i.il, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.im, ptr %i.h, align 8
  %i.in = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_St6vectorINS2_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISD_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.gx, ptr %i.e, align 8
  %i.io = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_PNS2_8compiler10turboshaft5BlockEENS2_13ZoneAllocatorISD_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.ip = load ptr, ptr %i.io, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.ir = load ptr, ptr %i.iq, align 8            ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 3 uses
  %i.it = load ptr, ptr %i.is, align 8
  %.not.i.i82 = icmp eq ptr %i.ir, %i.it
  br i1 %.not.i.i82, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit81
  store ptr %i.ie, ptr %i.ir, align 8
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store ptr %i.ip, ptr %.sroa.5189.0..sroa_idx, align 8
  %.sroa.6192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.iu = trunc nuw nsw i64 %indvars.iv253 to i32
  store i32 %i.iu, ptr %.sroa.6192.0..sroa_idx, align 8
  %i.iv = load ptr, ptr %i.iq, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  store ptr %i.iw, ptr %i.iq, align 8
  br label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit

bb.ac:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit81
  %i.ix = load ptr, ptr %i.in, align 8            ; 4 uses
  %i.iy = ptrtoint ptr %i.ir to i64
  %i.iz = ptrtoint ptr %i.ix to i64               ; 2 uses
  %i.ja = sub i64 %i.iy, %i.iz                    ; 5 uses
  %i.jb = icmp eq i64 %i.ja, 9223372036854775800
  br i1 %i.jb, label %bb.ad, label %_ZNKSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #28
  unreachable

_ZNKSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.jc = sdiv exact i64 %i.ja, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jc, i64 1)
  %i.jd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jc ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.jc
  %i.jf = call i64 @llvm.umin.i64(i64 %i.jd, i64 384307168202282325)
  %i.jg = select i1 %i.je, i64 384307168202282325, i64 %i.jf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.jg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.jh = mul nuw nsw i64 %i.jg, 24
  %i.ji = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #32 ; 4 uses
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 %i.ja ; 4 uses
  store ptr %i.ie, ptr %i.jj, align 8
  %.sroa.5189.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %i.ip, ptr %.sroa.5189.0..sroa_idx190, align 8
  %.sroa.6192.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jk = trunc nuw nsw i64 %indvars.iv253 to i32
  store i32 %i.jk, ptr %.sroa.6192.0..sroa_idx193, align 8
  %i.jl = icmp sgt i64 %i.ja, 0
  br i1 %i.jl, label %bb.ae, label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

bb.ae:                                            ; preds = %_ZNKSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ji, ptr align 8 %i.ix, i64 %i.ja, i1 false)
  br label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i: ; preds = %bb.ae, %_ZNKSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %.not.i17.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  %i.jn = load ptr, ptr %i.is, align 8
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = sub i64 %i.jo, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.jp) #30
  br label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  store ptr %i.ji, ptr %i.in, align 8
  store ptr %i.jm, ptr %i.iq, align 8
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %i.ji, i64 %i.jg
  store ptr %i.jq, ptr %i.is, align 8
  br label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ab, %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.jr = load ptr, ptr %i.h, align 8
  %i.js = call noundef ptr @_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(184) %i.ah, ptr noundef %i.jr) ; 2 uses
  %.not232 = icmp eq ptr %i.js, null
  br i1 %.not232, label %._crit_edge236, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit
  %i.jt = trunc nuw nsw i64 %indvars.iv253 to i32
  %i.ju = trunc nuw nsw i64 %indvars.iv253 to i32
  br label %.lr.ph235

._crit_edge236:                                   ; preds = %bb.bf, %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit, %._crit_edge.i.i.i.i.i, %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit
  %.065.lcssa = phi ptr [ %i.ie, %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit ], [ %i.ki, %._crit_edge.i.i.i.i.i ], [ %i.ki, %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit ], [ %i.ki, %bb.bf ]
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv253 ; 3 uses
  store i8 0, ptr %i.jv, align 8
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.jw = trunc nuw nsw i64 %indvars.iv253 to i32
  store i32 %i.jw, ptr %.sroa.4174.0..sroa_idx, align 4
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store ptr %.065.lcssa, ptr %.sroa.5175.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %bb.bo

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit
  %.065234 = phi ptr [ %i.ki, %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit ], [ %i.ie, %.lr.ph235.preheader ] ; 2 uses
  %storemerge233 = phi ptr [ %i.qk, %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit ], [ %i.js, %.lr.ph235.preheader ] ; 8 uses
  %i.jx = load ptr, ptr %i.m, align 8, !nonnull !344, !align !355 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 88 ; 3 uses
  %i.jz = load i64, ptr %i.jy, align 8            ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 80
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = icmp eq i64 %i.jz, %i.kb
  br i1 %i.kc, label %bb.ag, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit84, !prof !345

bb.ag:                                            ; preds = %.lr.ph235
  call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.jx)
  %.pre.i83 = load i64, ptr %i.jy, align 8
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit84

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit84: ; preds = %.lr.ph235, %bb.ag
  %i.kd = phi i64 [ %i.jz, %.lr.ph235 ], [ %.pre.i83, %bb.ag ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 72
  %i.kf = add i64 %i.kd, 1
  store i64 %i.kf, ptr %i.jy, align 8
  %i.kg = load ptr, ptr %i.ke, align 8
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.kd
  %i.ki = load ptr, ptr %i.kh, align 8            ; 13 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.ki, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.kj, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  store i32 -1, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 52
  store i32 -1, ptr %i.kl, align 4
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 56
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 88
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 96
  store i32 0, ptr %i.ko, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.km, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.kn, align 8
  %i.kp = ptrtoint ptr %storemerge233 to i64      ; 3 uses
  %i.kq = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.kr = urem i64 %i.kp, %i.kq                   ; 3 uses
  %i.ks = load ptr, ptr %i.am, align 8
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kr
  %i.ku = load ptr, ptr %i.kt, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit84
  %i.kv = load ptr, ptr %i.ku, align 8            ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = icmp eq ptr %storemerge233, %i.kx
  br i1 %i.ky, label %_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_St6vectorINS2_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISD_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_.exit, label %.lr.ph.i.i.i

bb.ai:                                            ; preds = %bb.aj
  %i.kz = icmp eq ptr %storemerge233, %i.lc
  br i1 %i.kz, label %_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_St6vectorINS2_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISD_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !300

.lr.ph.i.i.i:                                     ; preds = %bb.ah, %bb.ai
  %.020.i.i.i = phi ptr [ %i.la, %bb.ai ], [ %i.kv, %bb.ah ]
  %i.la = load ptr, ptr %.020.i.i.i, align 8      ; 4 uses
  %.not18.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not18.i.i.i, label %.loopexit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8            ; 2 uses
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = urem i64 %i.ld, %i.kq
  %.not19.i.i.i = icmp eq i64 %i.le, %i.kr
  br i1 %.not19.i.i.i, label %bb.ai, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !300

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.aj
  br label %.loopexit.i, !llvm.loop !300

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit84
  %i.lf = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 8 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store ptr %storemerge233, ptr %i.lg, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lh, i8 0, i64 24, i1 false)
  %i.li = load i64, ptr %i.ao, align 8
  %i.lj = load i64, ptr %i.aq, align 8
  %i.lk = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 noundef %i.li, i64 noundef %i.lj, i64 noundef 1) #27 ; 2 uses
  %i.ll = extractvalue { i8, i64 } %i.lk, 0
  %i.lm = trunc i8 %i.ll to i1
  br i1 %i.lm, label %bb.ak, label %.loopexit.i._crit_edge

.loopexit.i._crit_edge:                           ; preds = %.loopexit.i
  %.pre256 = load ptr, ptr %i.am, align 8
  br label %bb.av

bb.ak:                                            ; preds = %.loopexit.i
  %i.ln = extractvalue { i8, i64 } %i.lk, 1       ; 7 uses
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %bb.al, label %bb.am, !prof !345

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.ar, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.lp = icmp ugt i64 %i.ln, 1152921504606846975
  br i1 %i.lp, label %bb.an, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN2v88internal6maglev10BasicBlockESt6vectorINS4_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISE_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !345

bb.an:                                            ; preds = %bb.am
  %i.lq = icmp ugt i64 %i.ln, 2305843009213693951
  br i1 %i.lq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN2v88internal6maglev10BasicBlockESt6vectorINS4_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISE_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.am
  %i.lr = shl nuw nsw i64 %i.ln, 3                ; 2 uses
  %i.ls = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lr) #32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ls, i8 0, i64 %i.lr, i1 false)
  br label %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN2v88internal6maglev10BasicBlockESt6vectorINS4_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISE_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i, %bb.al
  %.0.i.i160 = phi ptr [ %i.ar, %bb.al ], [ %i.ls, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN2v88internal6maglev10BasicBlockESt6vectorINS4_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISE_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i ] ; 4 uses
  %i.lt = load ptr, ptr %i.as, align 8            ; 2 uses
  store ptr null, ptr %i.as, align 8
  %.not29.i = icmp eq ptr %i.lt, null
  br i1 %.not29.i, label %._crit_edge.i164, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i, %bb.at
  %.031.i = phi i64 [ %.1.i162, %bb.at ], [ 0, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  %.02530.i = phi ptr [ %i.lu, %bb.at ], [ %i.lt, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 8 uses
  %i.lu = load ptr, ptr %.02530.i, align 8        ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.02530.i, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = urem i64 %i.lx, %i.ln                   ; 3 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i160, i64 %i.ly ; 3 uses
  %i.ma = load ptr, ptr %i.lz, align 8            ; 2 uses
  %.not27.i = icmp eq ptr %i.ma, null
  br i1 %.not27.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.lr.ph.i161
  %i.mb = load ptr, ptr %i.as, align 8
  store ptr %i.mb, ptr %.02530.i, align 8
  store ptr %.02530.i, ptr %i.as, align 8
  store ptr %i.as, ptr %i.lz, align 8
  %i.mc = load ptr, ptr %.02530.i, align 8
  %.not28.i = icmp eq ptr %i.mc, null
  br i1 %.not28.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i160, i64 %.031.i
  store ptr %.02530.i, ptr %i.md, align 8
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph.i161
  %i.me = load ptr, ptr %i.ma, align 8
  store ptr %i.me, ptr %.02530.i, align 8
  %i.mf = load ptr, ptr %i.lz, align 8
  store ptr %.02530.i, ptr %i.mf, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.1.i162 = phi i64 [ %.031.i, %bb.as ], [ %i.ly, %bb.ar ], [ %i.ly, %bb.aq ]
  %.not.i163 = icmp eq ptr %i.lu, null
  br i1 %.not.i163, label %._crit_edge.i164, label %.lr.ph.i161, !llvm.loop !326

._crit_edge.i164:                                 ; preds = %bb.at, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i
  %i.mg = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.ar
  br i1 %i.mh, label %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i164
  %i.mi = load i64, ptr %i.ao, align 8
  %i.mj = shl i64 %i.mi, 3
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mj) #30
  br label %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit

_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit: ; preds = %._crit_edge.i164, %bb.au
  store i64 %i.ln, ptr %i.ao, align 8
  store ptr %.0.i.i160, ptr %i.am, align 8
  %i.mk = urem i64 %i.kp, %i.ln
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.i._crit_edge, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit
  %i.ml = phi ptr [ %.0.i.i160, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit ], [ %.pre256, %.loopexit.i._crit_edge ] ; 3 uses
  %.0.i19.i = phi i64 [ %i.mk, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit ], [ %i.kr, %.loopexit.i._crit_edge ] ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %.0.i19.i
  %i.mn = load ptr, ptr %i.mm, align 8            ; 3 uses
  %.not.i.i20.i = icmp eq ptr %i.mn, null
  br i1 %.not.i.i20.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mo = load ptr, ptr %i.mn, align 8
  store ptr %i.mo, ptr %i.lf, align 8
  store ptr %i.lf, ptr %i.mn, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.mp = load ptr, ptr %i.as, align 8            ; 3 uses
  store ptr %i.mp, ptr %i.lf, align 8
  store ptr %i.lf, ptr %i.as, align 8
  %.not11.i.i.i = icmp eq ptr %i.mp, null
  br i1 %.not11.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load i64, ptr %i.ao, align 8
  %i.ms = load ptr, ptr %i.mq, align 8
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = urem i64 %i.mt, %i.mr
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mu
  store ptr %i.lf, ptr %i.mv, align 8
  %.pre.i159 = load ptr, ptr %i.am, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.mw = phi ptr [ %.pre.i159, %bb.ay ], [ %i.ml, %bb.ax ]
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %.0.i19.i
  store ptr %i.as, ptr %i.mx, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i

_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %bb.az, %bb.aw
  %i.my = load i64, ptr %i.aq, align 8
  %i.mz = add i64 %i.my, 1
  store i64 %i.mz, ptr %i.aq, align 8
  br label %_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_St6vectorINS2_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISD_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_.exit

_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_St6vectorINS2_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISD_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_.exit: ; preds = %bb.ai, %bb.ah, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i
  %.pn.i = phi ptr [ %i.lf, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.kv, %bb.ah ], [ %i.la, %bb.ai ] ; 3 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24 ; 4 uses
  %i.nb = load ptr, ptr %i.na, align 8            ; 5 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 3 uses
  %i.nd = load ptr, ptr %i.nc, align 8
  %.not.i.i85 = icmp eq ptr %i.nb, %i.nd
  br i1 %.not.i.i85, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_St6vectorINS2_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISD_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_.exit
  store ptr %i.ki, ptr %i.nb, align 8
  %.sroa.5178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store ptr %.065234, ptr %.sroa.5178.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store i32 %i.jt, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ne = load ptr, ptr %i.na, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  store ptr %i.nf, ptr %i.na, align 8
  br label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit92

bb.bb:                                            ; preds = %_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_St6vectorINS2_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISD_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_.exit
  %i.ng = load ptr, ptr %.1.i, align 8            ; 4 uses
  %i.nh = ptrtoint ptr %i.nb to i64
  %i.ni = ptrtoint ptr %i.ng to i64               ; 2 uses
  %i.nj = sub i64 %i.nh, %i.ni                    ; 5 uses
  %i.nk = icmp eq i64 %i.nj, 9223372036854775800
  br i1 %i.nk, label %bb.bc, label %_ZNKSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #28
  unreachable

_ZNKSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86: ; preds = %bb.bb
  %i.nl = sdiv exact i64 %i.nj, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i87 = call i64 @llvm.umax.i64(i64 %i.nl, i64 1)
  %i.nm = add nsw i64 %.sroa.speculated.i.i.i.i87, %i.nl ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.nl
  %i.no = call i64 @llvm.umin.i64(i64 %i.nm, i64 384307168202282325)
  %i.np = select i1 %i.nn, i64 384307168202282325, i64 %i.no ; 3 uses
  %.not.i.i.i.i88 = icmp ne i64 %i.np, 0
  call void @llvm.assume(i1 %.not.i.i.i.i88)
  %i.nq = mul nuw nsw i64 %i.np, 24
  %i.nr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nq) #32 ; 4 uses
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 %i.nj ; 4 uses
  store ptr %i.ki, ptr %i.ns, align 8
  %.sroa.5178.0..sroa_idx179 = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store ptr %.065234, ptr %.sroa.5178.0..sroa_idx179, align 8
  %.sroa.6.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  store i32 %i.ju, ptr %.sroa.6.0..sroa_idx181, align 8
  %i.nt = icmp sgt i64 %i.nj, 0
  br i1 %i.nt, label %bb.bd, label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i89

bb.bd:                                            ; preds = %_ZNKSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nr, ptr align 8 %i.ng, i64 %i.nj, i1 false)
  br label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i89

_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i89: ; preds = %bb.bd, %_ZNKSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %.not.i17.i.i.i90 = icmp eq ptr %i.ng, null
  br i1 %.not.i17.i.i.i90, label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i91, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i89
  %i.nv = load ptr, ptr %i.nc, align 8
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = sub i64 %i.nw, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.nx) #30
  br label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i91

_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i91: ; preds = %bb.be, %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i89
  store ptr %i.nr, ptr %.1.i, align 8
  store ptr %i.nu, ptr %i.na, align 8
  %i.ny = getelementptr inbounds nuw [24 x i8], ptr %i.nr, i64 %i.np
  store ptr %i.ny, ptr %i.nc, align 8
  br label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit92

_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit92: ; preds = %bb.ba, %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i91
  %i.nz = load i64, ptr %i.ah, align 8            ; 6 uses
  %i.oa = icmp ult i64 %i.nz, 2
  br i1 %i.oa, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit92
  %i.ob = load i64, ptr %i.au, align 8
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ob, 131071
  %i.oc = load ptr, ptr %i.at, align 8
  %i.od = icmp eq ptr %i.oc, %storemerge233
  %or.cond.i = select i1 %.not.i.i.i.i.i.i, i1 %i.od, i1 false
  br i1 %or.cond.i, label %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit, label %._crit_edge236

bb.bg:                                            ; preds = %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit92
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.oe = load i64, ptr %i.au, align 8
  %i.of = shl i64 %i.oe, 48
  %i.og = ashr exact i64 %i.of, 48
  %i.oh = xor i64 %i.kp, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.oi = zext i64 %i.oh to i128
  %i.oj = mul nuw nsw i128 %i.oi, 8779197792823184629 ; 2 uses
  %i.ok = lshr i128 %i.oj, 64
  %i.ol = xor i128 %i.ok, %i.oj
  %i.om = trunc i128 %i.ol to i64
  %i.on = xor i64 %i.og, %i.om                    ; 4 uses
  %i.oo = lshr i64 %i.on, 57
  %i.op = trunc nuw nsw i64 %i.oo to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i = load ptr, ptr %i.av, align 8 ; 4 uses
  %i.oq = insertelement <16 x i8> poison, i8 %i.op, i64 0
  %i.or = shufflevector <16 x i8> %i.oq, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bj, %bb.bg
  %.pn.i7.i.i.i.i = phi i64 [ %i.on, %bb.bg ], [ %i.pj, %bb.bj ]
  %.sroa.13.0.i.i.i.i.i = phi i64 [ 0, %bb.bg ], [ %i.pi, %bb.bj ]
  %.sroa.6.0.i.i.i.i.i = and i64 %.pn.i7.i.i.i.i, %i.nz ; 4 uses
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.os, i32 0, i32 3, i32 1)
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  %i.ou = load <16 x i8>, ptr %i.ot, align 1      ; 2 uses
  %i.ov = icmp eq <16 x i8> %i.or, %i.ou
  %i.ow = bitcast <16 x i1> %i.ov to i16          ; 2 uses
  %.not46.i.i.i.i.i = icmp eq i16 %i.ow, 0
  br i1 %.not46.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %bb.bh, %bb.bi
  %.sroa.017.047.i.i.i.i.i = phi i16 [ %i.pf, %bb.bi ], [ %i.ow, %bb.bh ] ; 3 uses
  %i.ox = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i.i, i1 true)
  %i.oy = zext nneg i16 %i.ox to i64
  %i.oz = add i64 %.sroa.6.0.i.i.i.i.i, %i.oy
  %i.pa = and i64 %i.oz, %i.nz
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.pa
  %i.pc = load ptr, ptr %i.pb, align 8
  %i.pd = icmp eq ptr %i.pc, %storemerge233
  br i1 %i.pd, label %bb.bk, label %bb.bi, !prof !348

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.i93
  %i.pe = add i16 %.sroa.017.047.i.i.i.i.i, -1
  %i.pf = and i16 %i.pe, %.sroa.017.047.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i94 = icmp eq i16 %i.pf, 0
  br i1 %.not.i.i.i.i.i94, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i93

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bi, %bb.bh
  %i.pg = icmp eq <16 x i8> %i.ou, splat (i8 -128)
  %i.ph = bitcast <16 x i1> %i.pg to i16
  %.not44.i.i.i.i.i = icmp eq i16 %i.ph, 0
  br i1 %.not44.i.i.i.i.i, label %bb.bj, label %._crit_edge236, !prof !345

bb.bj:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.pi = add i64 %.sroa.13.0.i.i.i.i.i, 16       ; 2 uses
  %i.pj = add i64 %i.pi, %.sroa.6.0.i.i.i.i.i
  br label %bb.bh, !llvm.loop !310

bb.bk:                                            ; preds = %.lr.ph.i.i.i.i.i93
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.prefetch.p0(ptr nonnull %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !4029
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  %.pn.i.i = phi i64 [ %i.on, %bb.bk ], [ %i.qb, %bb.bm ]
  %.sroa.15.0.i.i = phi i64 [ 0, %bb.bk ], [ %i.qa, %bb.bm ] ; 2 uses
  %.sroa.7.0.i.i = and i64 %.pn.i.i, %i.nz        ; 5 uses
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.7.0.i.i
  call void @llvm.prefetch.p0(ptr %i.pk, i32 0, i32 3, i32 1), !noalias !4029
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.7.0.i.i
  %i.pm = load <16 x i8>, ptr %i.pl, align 1, !noalias !4029 ; 2 uses
  %i.pn = icmp eq <16 x i8> %i.or, %i.pm
  %i.po = bitcast <16 x i1> %i.pn to i16          ; 2 uses
  %.not64.i.i = icmp eq i16 %i.po, 0
  br i1 %.not64.i.i, label %.critedge19.i.i, label %.lr.ph.i.i96

.lr.ph.i.i96:                                     ; preds = %bb.bl, %.critedge.i.i
  %.sroa.035.065.i.i = phi i16 [ %i.px, %.critedge.i.i ], [ %i.po, %bb.bl ] ; 3 uses
  %i.pp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i.i, i1 true)
  %i.pq = zext nneg i16 %i.pp to i64
  %i.pr = add i64 %.sroa.7.0.i.i, %i.pq
  %i.ps = and i64 %i.pr, %i.nz
  %i.pt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.ps ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !noalias !4029
  %i.pv = icmp eq ptr %i.pu, %storemerge233
  br i1 %i.pv, label %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit, label %.critedge.i.i, !prof !348

.critedge.i.i:                                    ; preds = %.lr.ph.i.i96
  %i.pw = add i16 %.sroa.035.065.i.i, -1
  %i.px = and i16 %i.pw, %.sroa.035.065.i.i       ; 2 uses
  %.not.i.i97 = icmp eq i16 %i.px, 0
  br i1 %.not.i.i97, label %.critedge19.i.i, label %.lr.ph.i.i96

.critedge19.i.i:                                  ; preds = %.critedge.i.i, %bb.bl
  %i.py = icmp eq <16 x i8> %i.pm, splat (i8 -128)
  %i.pz = bitcast <16 x i1> %i.py to i16          ; 2 uses
  %.not57.i.i = icmp eq i16 %i.pz, 0
  br i1 %.not57.i.i, label %bb.bm, label %bb.bn, !prof !345

bb.bm:                                            ; preds = %.critedge19.i.i
  %i.qa = add i64 %.sroa.15.0.i.i, 16             ; 2 uses
  %i.qb = add i64 %i.qa, %.sroa.7.0.i.i
  br label %bb.bl

bb.bn:                                            ; preds = %.critedge19.i.i
  %i.qc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.pz, i1 true)
  %i.qd = zext nneg i16 %i.qc to i64
  %i.qe = add i64 %.sroa.7.0.i.i, %i.qd
  %i.qf = and i64 %i.qe, %i.nz
  %i.qg = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(184) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.on, i64 %i.qf, i64 %.sroa.15.0.i.i) #27, !noalias !4029
  %.sroa.0.0.copyload.i.i.i2.i26.i.i = load ptr, ptr %i.av, align 8, !noalias !4029
  %i.qh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i.i, i64 %i.qg ; 3 uses
  store ptr %storemerge233, ptr %i.qh, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  store ptr null, ptr %i.qi, align 8
  br label %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit

_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit: ; preds = %.lr.ph.i.i96, %bb.bf, %bb.bn
  %.sroa.3.07.i = phi ptr [ %i.qh, %bb.bn ], [ %i.at, %bb.bf ], [ %i.pt, %.lr.ph.i.i96 ]
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.3.07.i, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8            ; 2 uses
  %.not = icmp eq ptr %i.qk, null
  br i1 %.not, label %._crit_edge236, label %.lr.ph235, !llvm.loop !4026

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.gx, ptr %i.d, align 8
  %i.ql = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_PNS2_8compiler10turboshaft5BlockEENS2_13ZoneAllocatorISD_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.qm = load ptr, ptr %i.ql, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.qn = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv253 ; 3 uses
  store i8 0, ptr %i.qn, align 8
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %i.qo = trunc nuw nsw i64 %indvars.iv253 to i32
  store i32 %i.qo, ptr %.sroa.4170.0..sroa_idx, align 4
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store ptr %i.qm, ptr %.sroa.5171.0..sroa_idx, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %.loopexit, %._crit_edge236
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.qp = load i32, ptr %i.q, align 8
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %indvars.iv.next254, %i.qq
  br i1 %i.qr, label %bb.u, label %._crit_edge239, !llvm.loop !4027

bb.bp:                                            ; preds = %bb.a
  br i1 %i.s, label %bb.br, label %bb.bq, !prof !348

bb.bq:                                            ; preds = %bb.bp
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17) #28
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.qs = zext nneg i32 %i.r to i64
  %i.qt = shl nuw nsw i64 %i.qs, 4                ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.qv = load i64, ptr %i.qu, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.qx = load i64, ptr %i.qw, align 8            ; 2 uses
  %i.qy = sub i64 %i.qv, %i.qx
  %i.qz = icmp ugt i64 %i.qt, %i.qy
  br i1 %i.qz, label %bb.bs, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit99, !prof !345

bb.bs:                                            ; preds = %bb.br
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.qt) #27
  %.pre.i.i98 = load i64, ptr %i.qw, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit99

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit99: ; preds = %bb.br, %bb.bs
  %i.ra = phi i64 [ %.pre.i.i98, %bb.bs ], [ %i.qx, %bb.br ] ; 2 uses
  %i.rb = inttoptr i64 %i.ra to ptr               ; 2 uses
  %i.rc = add i64 %i.ra, %i.qt
  store i64 %i.rc, ptr %i.qw, align 8
  %i.rd = load i32, ptr %i.q, align 8
  %i.re = icmp sgt i32 %i.rd, 0
  br i1 %i.re, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit99
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.rg = load i32, ptr %i.rf, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.bt

._crit_edge:                                      ; preds = %bb.bt, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit99
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.rk = load i8, ptr %i.rj, align 8, !range !343, !noundef !344
  %i.rl = trunc nuw i8 %i.rk to i1                ; 2 uses
  br i1 %i.rl, label %bb.bu, label %bb.bw

bb.bt:                                            ; preds = %.lr.ph, %bb.bt
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bt ] ; 4 uses
  %i.rm = load ptr, ptr %i.rh, align 8
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %indvars.iv
  %i.ro = load ptr, ptr %i.rn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ro, ptr %i.c, align 8
  %i.rp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_PNS2_8compiler10turboshaft5BlockEENS2_13ZoneAllocatorISD_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ri, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.rq = load ptr, ptr %i.rp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %i.rb, i64 %indvars.iv ; 3 uses
  store i8 0, ptr %i.rr, align 8
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %i.rs = trunc i64 %indvars.iv to i32
  %i.rt = add i32 %i.rg, %i.rs
  store i32 %i.rt, ptr %.sroa.4166.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  store ptr %i.rq, ptr %.sroa.5.0..sroa_idx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ru = load i32, ptr %i.q, align 8
  %i.rv = sext i32 %i.ru to i64
  %i.rw = icmp slt i64 %indvars.iv.next, %i.rv
  br i1 %i.rw, label %bb.bt, label %._crit_edge, !llvm.loop !4028

bb.bu:                                            ; preds = %._crit_edge
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 2 uses
  %i.sa = load ptr, ptr %2, align 8
  %i.sb = icmp eq ptr %i.rz, %i.sa
  br i1 %i.sb, label %_ZNK2v88internal6maglev15ProcessingState10next_blockEv.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sc = load ptr, ptr %i.rz, align 8
  br label %_ZNK2v88internal6maglev15ProcessingState10next_blockEv.exit

_ZNK2v88internal6maglev15ProcessingState10next_blockEv.exit: ; preds = %bb.bu, %bb.bv
  %.0.i100 = phi ptr [ %i.sc, %bb.bv ], [ null, %bb.bu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.0.i100, ptr %i.b, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.se = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_PNS2_8compiler10turboshaft5BlockEENS2_13ZoneAllocatorISD_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.sd, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.sf = load ptr, ptr %i.se, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.by

bb.bw:                                            ; preds = %._crit_edge
  %i.sg = load ptr, ptr %i.m, align 8, !nonnull !344, !align !355 ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 88 ; 3 uses
  %i.si = load i64, ptr %i.sh, align 8            ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sg, i64 80
  %i.sk = load i64, ptr %i.sj, align 8
  %i.sl = icmp eq i64 %i.si, %i.sk
  br i1 %i.sl, label %bb.bx, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit102, !prof !345

bb.bx:                                            ; preds = %bb.bw
  call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.sg)
  %.pre.i101 = load i64, ptr %i.sh, align 8
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit102

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit102: ; preds = %bb.bw, %bb.bx
  %i.sm = phi i64 [ %i.si, %bb.bw ], [ %.pre.i101, %bb.bx ] ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sg, i64 72
  %i.so = add i64 %i.sm, 1
  store i64 %i.so, ptr %i.sh, align 8
  %i.sp = load ptr, ptr %i.sn, align 8
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %i.sm
  %i.sr = load ptr, ptr %i.sq, align 8            ; 8 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 44
end_hunk_3
