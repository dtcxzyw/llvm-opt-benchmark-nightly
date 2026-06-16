inline.NumInlined: 42521
inline.NumDeleted: 14382
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE17MergePredecessorsIZNS2_25MaybeRedundantStoresTable10BeginBlockEPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableIS8_S4_S5_E16StartNewSnapshotISI_EEvNSF_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSF_IKT0_EEEEUlSD_RSG_SY_E_EEvSO_SR_RSW_:bb.a

bb.j:                                             ; preds = %bb.h
  %i.az = trunc i64 %i.aw to i32
  store i32 %i.az, ptr %i.ao, align 4
  %i.ba = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bc = icmp ult ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE9push_backEOS8_.exit.i, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.m, align 8
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = add nsw i64 %i.bh, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.bi)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE9push_backEOS8_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE9push_backEOS8_.exit.i: ; preds = %bb.k, %bb.j
  %i.bj = phi ptr [ %i.ba, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.j, align 8
  store ptr %i.ai, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bn = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.bo = ptrtoint ptr %i.bl to i64               ; 4 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 5 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 4 uses
  %i.br = ashr exact i64 %i.bq, 2                 ; 2 uses
  %i.bs = xor i64 %i.br, -1
  %.not.i = icmp ugt i64 %2, %i.bs
  br i1 %.not.i, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #26
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE9push_backEOS8_.exit.i
  %i.bt = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bp                    ; 2 uses
  %i.bw = ashr exact i64 %i.bv, 2
  %i.bx = add nsw i64 %i.br, %2                   ; 2 uses
  %i.by = icmp ult i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq ptr %i.bn, %i.bt
  %i.ca = ashr exact i64 %i.bv, 1
  %i.cb = select i1 %i.bz, i64 2, i64 %i.ca
  %i.cc = tail call noundef i64 @llvm.umax.i64(i64 %i.cb, i64 %i.bx) ; 3 uses
  %i.cd = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.ce = icmp ult i64 %i.cc, 4611686018427387903
  br i1 %i.ce, label %bb.p, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #26
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cf = shl nuw i64 %i.cc, 2
  %i.cg = add nuw i64 %i.cf, 4
  %i.ch = and i64 %i.cg, -8                       ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.cm = sub i64 %i.cj, %i.cl
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft18StoreObservabilityEA_S5_EEPT_m.exit.i, !prof !7

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 noundef %i.ch) #25
  %.pre.i.i.i40 = load i64, ptr %i.ck, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft18StoreObservabilityEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft18StoreObservabilityEA_S5_EEPT_m.exit.i: ; preds = %bb.q, %bb.p
  %i.co = phi i64 [ %.pre.i.i.i40, %bb.q ], [ %i.cl, %bb.p ] ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 4 uses
  %i.cq = add i64 %i.co, %i.ch
  store i64 %i.cq, ptr %i.ck, align 8
  store ptr %i.cp, ptr %i.i, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %2
  store ptr %i.cs, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.bn, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft18StoreObservabilityEA_S5_EEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cp, ptr nonnull align 4 %i.bn, i64 %i.bq, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %.pre.i39 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft18StoreObservabilityEA_S5_EEPT_m.exit.i, %bb.r
  %i.ct = phi ptr [ %.pre.i39, %bb.r ], [ %i.cp, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft18StoreObservabilityEA_S5_EEPT_m.exit.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cc
  store ptr %i.cu, ptr %i.n, align 8
  br label %._crit_edge.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit: ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %2
  store ptr %i.cv, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit.thread
  %.pn = phi ptr [ %i.bn, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit ], [ %i.ct, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit.thread ] ; 2 uses
  %.pn89 = ptrtoint ptr %.pn to i64               ; 3 uses
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bq ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  %.pre20.i.i = load i32, ptr %i.bm, align 8      ; 2 uses
  %i.cx = add i64 %i.bp, -1
  %i.cy = add i64 %.idx, %.pn89
  %i.cz = add i64 %i.cy, %i.bo
  %i.da = sub i64 %i.cz, %i.bp
  %i.db = add i64 %.pn89, 4
  %i.dc = add i64 %i.db, %i.bo
  %i.dd = sub i64 %i.dc, %i.bp
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.dd)
  %i.de = add i64 %i.cx, %umax
  %i.df = add i64 %.pn89, %i.bo
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = lshr i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i
  %n.vec = and i64 %i.di, 9223372036854775800     ; 3 uses
  %i.dj = shl i64 %n.vec, 2
  %i.dk = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dj
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dm, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE6insertEPKS4_mRS6_.exit.i, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %._crit_edge.i.i, %middle.block
  %.116.i.i.ph = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.dk, %middle.block ]
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.do, %.lr.ph18.i.i ], [ %.116.i.i.ph, %.lr.ph18.i.i.preheader ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i, ptr %.116.i.i, align 4
  %i.dp = icmp ult ptr %i.do, %i.cw
  br i1 %i.dp, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !74

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i, %middle.block
  %.pre.i = load i32, ptr %i.ao, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.dq = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE6insertEPKS4_mRS6_.exit.i ], [ %i.ap, %bb.g ]
  %i.dr = load i32, ptr %i.aj, align 4
  %i.ds = add i32 %i.dq, %i.y
  %i.dt = zext i32 %i.ds to i64
  %i.du = load ptr, ptr %i.i, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dt
  store i32 %i.dr, ptr %i.dv, align 4
  store i32 %i.y, ptr %i.ak, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.dw = icmp eq ptr %i.ah, %i.ac
  br i1 %i.dw, label %.loopexit59, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph69, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03467 = phi ptr [ %i.o, %.lr.ph69 ], [ %i.gt, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.dx = load ptr, ptr %.03467, align 8          ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load ptr, ptr %i.i, align 8
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ea ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx
  br i1 %or.cond.i.i.i, label %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable10BeginBlockEPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS8_EEE_clESA_SE_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 2 uses
  %.pre.i.i.i37 = load i32, ptr %i.ec, align 4    ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.prol
  %i.ef = phi i32 [ %5, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i37, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.eg = phi ptr [ %6, %.lr.ph.i.i.i.prol ], [ %i.ee, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.018.i.i.i.prol = phi ptr [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.ec, %.lr.ph.preheader.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.eh = load i32, ptr %i.eg, align 4            ; 2 uses
  %i.ei = icmp slt i32 %i.ef, %i.eh
  %5 = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 %i.eh) ; 2 uses
  %spec.select.i.i.i.prol = select i1 %i.ei, ptr %i.eg, ptr %.018.i.i.i.prol ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !75

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %spec.select.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.unr = phi i32 [ %.pre.i.i.i37, %.lr.ph.preheader.i.i.i ], [ %5, %.lr.ph.i.i.i.prol ]
  %.unr90 = phi ptr [ %i.ee, %.lr.ph.preheader.i.i.i ], [ %6, %.lr.ph.i.i.i.prol ]
  %.018.i.i.i.unr = phi ptr [ %i.ec, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  br i1 %i.w, label %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable10BeginBlockEPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS8_EEE_clESA_SE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ej = phi i32 [ %16, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.ek = phi ptr [ %i.eq, %.lr.ph.i.i.i ], [ %.unr90, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.018.i.i.i = phi ptr [ %spec.select.i.i.i.3, %.lr.ph.i.i.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.el = load i32, ptr %i.ek, align 4            ; 2 uses
  %i.em = icmp slt i32 %i.ej, %i.el
  %7 = tail call i32 @llvm.smax.i32(i32 %i.ej, i32 %i.el) ; 2 uses
  %spec.select.i.i.i = select i1 %i.em, ptr %i.ek, ptr %.018.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 2 uses
  %8 = load i32, ptr %i.en, align 4               ; 2 uses
  %9 = icmp slt i32 %7, %8
  %10 = tail call i32 @llvm.smax.i32(i32 %7, i32 %8) ; 2 uses
  %spec.select.i.i.i.1 = select i1 %9, ptr %i.en, ptr %spec.select.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %11 = load i32, ptr %i.eo, align 4              ; 2 uses
  %12 = icmp slt i32 %10, %11
  %13 = tail call i32 @llvm.smax.i32(i32 %10, i32 %11) ; 2 uses
  %spec.select.i.i.i.2 = select i1 %12, ptr %i.eo, ptr %spec.select.i.i.i.1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12 ; 2 uses
  %14 = load i32, ptr %i.ep, align 4              ; 2 uses
  %15 = icmp slt i32 %13, %14
  %16 = tail call i32 @llvm.smax.i32(i32 %13, i32 %14)
  %spec.select.i.i.i.3 = select i1 %15, ptr %i.ep, ptr %spec.select.i.i.i.2 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.eq, %i.ed
  br i1 %.not.i.i.i.3, label %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable10BeginBlockEPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS8_EEE_clESA_SE_.exit, label %.lr.ph.i.i.i, !llvm.loop !76

_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable10BeginBlockEPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS8_EEE_clESA_SE_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.t
  %.011.i.i.i = phi ptr [ %i.ec, %bb.t ], [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %spec.select.i.i.i.3, %.lr.ph.i.i.i ]
  %i.er = load i32, ptr %.011.i.i.i, align 4      ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8            ; 3 uses
  %.not58 = icmp eq i32 %i.et, %i.er
  br i1 %.not58, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.u

bb.u:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable10BeginBlockEPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS8_EEE_clESA_SE_.exit
  %i.eu = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ev = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ew = icmp ult ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.w, label %bb.v, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.ex = load ptr, ptr %i.f, align 8
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 4
  %i.fc = add nsw i64 %i.fb, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.fc)
  %.pre.i.i.i38 = load ptr, ptr %i.q, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.fd = phi ptr [ %i.eu, %bb.u ], [ %.pre.i.i.i38, %bb.v ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store ptr %i.fe, ptr %i.q, align 8
  store ptr %i.dx, ptr %i.fd, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 %i.et, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 %i.er, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %i.er, ptr %i.es, align 8
  %i.ff = load ptr, ptr %4, align 8               ; 6 uses
  %i.fg = icmp eq i32 %i.er, 2
  br i1 %i.fg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8            ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 440 ; 4 uses
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16
  store i64 %i.fi, ptr %i.fm, align 8
  %i.fn = load ptr, ptr %i.fj, align 8
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ff, i64 432
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fi
  %i.fs = load i64, ptr %i.fo, align 8
  store i64 %i.fs, ptr %i.fr, align 8
  store i64 -1, ptr %i.fh, align 8
  %i.ft = load ptr, ptr %i.fj, align 8
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -8
  store ptr %i.fu, ptr %i.fj, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.y:                                             ; preds = %bb.w
  %i.fv = icmp eq i32 %i.et, 2
  br i1 %i.fv, label %bb.z, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.z:                                             ; preds = %bb.y
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 440 ; 4 uses
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ff, i64 432 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = ptrtoint ptr %i.fx to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %i.gd, ptr %i.ge, align 8
  %i.gf = load ptr, ptr %i.fw, align 8            ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ff, i64 448
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = icmp ult ptr %i.gf, %i.gh
  br i1 %i.gi, label %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEEENS4_25MaybeRedundantStoresTable18GetActiveKeysIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i, label %bb.aa, !prof !11

bb.aa:                                            ; preds = %bb.z
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ff, i64 424
  %i.gk = load ptr, ptr %i.fy, align 8
  %i.gl = ptrtoint ptr %i.gh to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 3
  %i.gp = add nsw i64 %i.go, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft16SnapshotTableKeyINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(33) %i.gj, i64 noundef %i.gp)
  %.pre.i.i.i.i = load ptr, ptr %i.fw, align 8
  br label %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEEENS4_25MaybeRedundantStoresTable18GetActiveKeysIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i

_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEEENS4_25MaybeRedundantStoresTable18GetActiveKeysIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i: ; preds = %bb.aa, %bb.z
  %i.gq = phi ptr [ %i.gf, %bb.z ], [ %.pre.i.i.i.i, %bb.aa ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.gr, ptr %i.fw, align 8
  %i.gs = ptrtoint ptr %i.dx to i64
  store i64 %i.gs, ptr %i.gq, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEEENS4_25MaybeRedundantStoresTable18GetActiveKeysIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i, %bb.y, %bb.x, %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable10BeginBlockEPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS8_EEE_clESA_SE_.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %.03467, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gt, %i.p
  br i1 %.not, label %.loopexit, label %bb.t

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS2_25MaybeRedundantStoresTableES4_S5_E16StartNewSnapshotIZNS9_10BeginBlockEPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_EEvNSI_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSI_IKT0_EEEEUlSG_RSJ_SY_E_EERNS6_12SnapshotDataESO_SR_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
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
  %.not60 = icmp eq i64 %.idx, 8
  br i1 %.not60, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %.02059 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit
  %.02062 = phi ptr [ %.020, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit ], [ %.02059, %.lr.ph.preheader ] ; 2 uses
  %.061 = phi ptr [ %.1.lcssa.i, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %.02062, align 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.061, i64 8
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ugt i32 %i.k, %i.i
  br i1 %i.l, label %.lr.ph.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %.lr.ph.i, %.lr.ph
  %.012.lcssa.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.k, %.lr.ph ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.m = icmp ugt i32 %i.i, %.lcssa.i
  br i1 %i.m, label %.lr.ph18.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.01215.i = phi ptr [ %i.n, %.lr.ph.i ], [ %.sroa.0.0.copyload, %.lr.ph ]
  %i.n = load ptr, ptr %.01215.i, align 8         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp ugt i32 %i.p, %i.i
  br i1 %i.q, label %.lr.ph.i, label %.preheader14.i, !llvm.loop !77

.preheader.i:                                     ; preds = %.lr.ph18.i, %.preheader14.i
  %.0.lcssa.i = phi ptr [ %.061, %.preheader14.i ], [ %i.r, %.lr.ph18.i ] ; 3 uses
  %.not20.i = icmp eq ptr %.012.lcssa.i, %.0.lcssa.i
  br i1 %.not20.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit, label %.lr.ph23.i

.lr.ph18.i:                                       ; preds = %.preheader14.i, %.lr.ph18.i
  %.017.i = phi ptr [ %i.r, %.lr.ph18.i ], [ %.061, %.preheader14.i ]
  %i.r = load ptr, ptr %.017.i, align 8           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp ugt i32 %i.t, %.lcssa.i
  br i1 %i.u, label %.lr.ph18.i, label %.preheader.i, !llvm.loop !78

.lr.ph23.i:                                       ; preds = %.preheader.i, %.lr.ph23.i
  %.122.i = phi ptr [ %i.v, %.lr.ph23.i ], [ %.0.lcssa.i, %.preheader.i ]
  %.11321.i = phi ptr [ %i.w, %.lr.ph23.i ], [ %.012.lcssa.i, %.preheader.i ]
  %i.v = load ptr, ptr %.122.i, align 8           ; 3 uses
  %i.w = load ptr, ptr %.11321.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.v
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit, label %.lr.ph23.i, !llvm.loop !79

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit: ; preds = %.lr.ph23.i, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.v, %.lr.ph23.i ] ; 2 uses
  %.020 = getelementptr inbounds nuw i8, ptr %.02062, i64 8 ; 2 uses
  %.not = icmp eq ptr %.020, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit, %bb.c, %bb.b
  %.1 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %.1.lcssa.i, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, %i.aa
  br i1 %i.ad, label %.lr.ph.i37, label %.preheader14.i24

end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE17MergePredecessorsIZNS2_25MaybeRedundantStoresTable4SealEPbEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableIS8_S4_S5_E16StartNewSnapshotISG_EEvNSD_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSD_IKT0_EEEEUlSB_RSE_SW_E_EEvSM_SP_RSU_:bb.a
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = add nsw i64 %i.bh, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.bi)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE9push_backEOS8_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE9push_backEOS8_.exit.i: ; preds = %bb.k, %bb.j
  %i.bj = phi ptr [ %i.ba, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.j, align 8
  store ptr %i.ai, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bn = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.bo = ptrtoint ptr %i.bl to i64               ; 4 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 5 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 4 uses
  %i.br = ashr exact i64 %i.bq, 2                 ; 2 uses
  %i.bs = xor i64 %i.br, -1
  %.not.i39 = icmp ugt i64 %2, %i.bs
  br i1 %.not.i39, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #26
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE9push_backEOS8_.exit.i
  %i.bt = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bp                    ; 2 uses
  %i.bw = ashr exact i64 %i.bv, 2
  %i.bx = add nsw i64 %i.br, %2                   ; 2 uses
  %i.by = icmp ult i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq ptr %i.bn, %i.bt
  %i.ca = ashr exact i64 %i.bv, 1
  %i.cb = select i1 %i.bz, i64 2, i64 %i.ca
  %i.cc = tail call noundef i64 @llvm.umax.i64(i64 %i.cb, i64 %i.bx) ; 3 uses
  %i.cd = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.ce = icmp ult i64 %i.cc, 4611686018427387903
  br i1 %i.ce, label %bb.p, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #26
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cf = shl nuw i64 %i.cc, 2
  %i.cg = add nuw i64 %i.cf, 4
  %i.ch = and i64 %i.cg, -8                       ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.cm = sub i64 %i.cj, %i.cl
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft18StoreObservabilityEA_S5_EEPT_m.exit.i, !prof !7

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 noundef %i.ch) #25
  %.pre.i.i.i41 = load i64, ptr %i.ck, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft18StoreObservabilityEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft18StoreObservabilityEA_S5_EEPT_m.exit.i: ; preds = %bb.q, %bb.p
  %i.co = phi i64 [ %.pre.i.i.i41, %bb.q ], [ %i.cl, %bb.p ] ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 4 uses
  %i.cq = add i64 %i.co, %i.ch
  store i64 %i.cq, ptr %i.ck, align 8
  store ptr %i.cp, ptr %i.i, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %2
  store ptr %i.cs, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.bn, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft18StoreObservabilityEA_S5_EEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cp, ptr nonnull align 4 %i.bn, i64 %i.bq, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %.pre.i40 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft18StoreObservabilityEA_S5_EEPT_m.exit.i, %bb.r
  %i.ct = phi ptr [ %.pre.i40, %bb.r ], [ %i.cp, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft18StoreObservabilityEA_S5_EEPT_m.exit.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cc
  store ptr %i.cu, ptr %i.n, align 8
  br label %._crit_edge.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit: ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %2
  store ptr %i.cv, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit.thread
  %.pn = phi ptr [ %i.bn, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit ], [ %i.ct, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE19PrepareForInsertionEPKS4_mPm.exit.thread ] ; 2 uses
  %.pn90 = ptrtoint ptr %.pn to i64               ; 3 uses
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bq ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  %.pre20.i.i = load i32, ptr %i.bm, align 8      ; 2 uses
  %i.cx = add i64 %i.bp, -1
  %i.cy = add i64 %.idx, %.pn90
  %i.cz = add i64 %i.cy, %i.bo
  %i.da = sub i64 %i.cz, %i.bp
  %i.db = add i64 %.pn90, 4
  %i.dc = add i64 %i.db, %i.bo
  %i.dd = sub i64 %i.dc, %i.bp
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.dd)
  %i.de = add i64 %i.cx, %umax
  %i.df = add i64 %.pn90, %i.bo
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = lshr i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i
  %n.vec = and i64 %i.di, 9223372036854775800     ; 3 uses
  %i.dj = shl i64 %n.vec, 2
  %i.dk = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dj
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dm, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE6insertEPKS4_mRS6_.exit.i, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %._crit_edge.i.i, %middle.block
  %.116.i.i.ph = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.dk, %middle.block ]
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.do, %.lr.ph18.i.i ], [ %.116.i.i.ph, %.lr.ph18.i.i.preheader ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i, ptr %.116.i.i, align 4
  %i.dp = icmp ult ptr %i.do, %i.cw
  br i1 %i.dp, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !133

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i, %middle.block
  %.pre.i = load i32, ptr %i.ao, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.dq = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft18StoreObservabilityEE6insertEPKS4_mRS6_.exit.i ], [ %i.ap, %bb.g ]
  %i.dr = load i32, ptr %i.aj, align 4
  %i.ds = add i32 %i.dq, %i.y
  %i.dt = zext i32 %i.ds to i64
  %i.du = load ptr, ptr %i.i, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dt
  store i32 %i.dr, ptr %i.dv, align 4
  store i32 %i.y, ptr %i.ak, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.dw = icmp eq ptr %i.ah, %i.ac
  br i1 %i.dw, label %.loopexit60, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph70, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03468 = phi ptr [ %i.o, %.lr.ph70 ], [ %i.gx, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.dx = load ptr, ptr %.03468, align 8          ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load ptr, ptr %i.i, align 8
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ea ; 7 uses
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 4
  %.not.i = icmp eq i32 %i.ed, %i.ef
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eg = load ptr, ptr %3, align 8, !nonnull !6, !align !8
  %i.eh = load ptr, ptr %i.eg, align 8
  store i8 1, ptr %i.eh, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx
  br i1 %or.cond.i.i.i, label %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable4SealEPbENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS6_EEE_clES8_SC_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.v
  %.pre.i.i.i37 = load i32, ptr %i.ec, align 4    ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.prol
  %i.ej = phi i32 [ %5, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i37, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ek = phi ptr [ %6, %.lr.ph.i.i.i.prol ], [ %i.ee, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.018.i.i.i.prol = phi ptr [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.ec, %.lr.ph.preheader.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.el = load i32, ptr %i.ek, align 4            ; 2 uses
  %i.em = icmp slt i32 %i.ej, %i.el
  %5 = tail call i32 @llvm.smax.i32(i32 %i.ej, i32 %i.el) ; 2 uses
  %spec.select.i.i.i.prol = select i1 %i.em, ptr %i.ek, ptr %.018.i.i.i.prol ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !134

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %spec.select.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.unr = phi i32 [ %.pre.i.i.i37, %.lr.ph.preheader.i.i.i ], [ %5, %.lr.ph.i.i.i.prol ]
  %.unr91 = phi ptr [ %i.ee, %.lr.ph.preheader.i.i.i ], [ %6, %.lr.ph.i.i.i.prol ]
  %.018.i.i.i.unr = phi ptr [ %i.ec, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  br i1 %i.w, label %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable4SealEPbENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS6_EEE_clES8_SC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.en = phi i32 [ %16, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.eo = phi ptr [ %i.eu, %.lr.ph.i.i.i ], [ %.unr91, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.018.i.i.i = phi ptr [ %spec.select.i.i.i.3, %.lr.ph.i.i.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.ep = load i32, ptr %i.eo, align 4            ; 2 uses
  %i.eq = icmp slt i32 %i.en, %i.ep
  %7 = tail call i32 @llvm.smax.i32(i32 %i.en, i32 %i.ep) ; 2 uses
  %spec.select.i.i.i = select i1 %i.eq, ptr %i.eo, ptr %.018.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %8 = load i32, ptr %i.er, align 4               ; 2 uses
  %9 = icmp slt i32 %7, %8
  %10 = tail call i32 @llvm.smax.i32(i32 %7, i32 %8) ; 2 uses
  %spec.select.i.i.i.1 = select i1 %9, ptr %i.er, ptr %spec.select.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %11 = load i32, ptr %i.es, align 4              ; 2 uses
  %12 = icmp slt i32 %10, %11
  %13 = tail call i32 @llvm.smax.i32(i32 %10, i32 %11) ; 2 uses
  %spec.select.i.i.i.2 = select i1 %12, ptr %i.es, ptr %spec.select.i.i.i.1
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 12 ; 2 uses
  %14 = load i32, ptr %i.et, align 4              ; 2 uses
  %15 = icmp slt i32 %13, %14
  %16 = tail call i32 @llvm.smax.i32(i32 %13, i32 %14)
  %spec.select.i.i.i.3 = select i1 %15, ptr %i.et, ptr %spec.select.i.i.i.2 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.eu, %i.ei
  br i1 %.not.i.i.i.3, label %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable4SealEPbENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS6_EEE_clES8_SC_.exit, label %.lr.ph.i.i.i, !llvm.loop !76

_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable4SealEPbENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS6_EEE_clES8_SC_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.v
  %.011.i.i.i = phi ptr [ %i.ec, %bb.v ], [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %spec.select.i.i.i.3, %.lr.ph.i.i.i ]
  %i.ev = load i32, ptr %.011.i.i.i, align 4      ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8            ; 3 uses
  %.not59 = icmp eq i32 %i.ex, %i.ev
  br i1 %.not59, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.w

bb.w:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable4SealEPbENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS6_EEE_clES8_SC_.exit
  %i.ey = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ez = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.fa = icmp ult ptr %i.ey, %i.ez
  br i1 %i.fa, label %bb.y, label %bb.x, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.fb = load ptr, ptr %i.f, align 8
  %i.fc = ptrtoint ptr %i.ez to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 4
  %i.fg = add nsw i64 %i.ff, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.fg)
  %.pre.i.i.i38 = load ptr, ptr %i.q, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.fh = phi ptr [ %i.ey, %bb.w ], [ %.pre.i.i.i38, %bb.x ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store ptr %i.fi, ptr %i.q, align 8
  store ptr %i.dx, ptr %i.fh, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i32 %i.ex, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  store i32 %i.ev, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %i.ev, ptr %i.ew, align 8
  %i.fj = load ptr, ptr %4, align 8               ; 6 uses
  %i.fk = icmp eq i32 %i.ev, 2
  br i1 %i.fk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 440 ; 4 uses
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16
  store i64 %i.fm, ptr %i.fq, align 8
  %i.fr = load ptr, ptr %i.fn, align 8
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 432
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fm
  %i.fw = load i64, ptr %i.fs, align 8
  store i64 %i.fw, ptr %i.fv, align 8
  store i64 -1, ptr %i.fl, align 8
  %i.fx = load ptr, ptr %i.fn, align 8
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -8
  store ptr %i.fy, ptr %i.fn, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.aa:                                            ; preds = %bb.y
  %i.fz = icmp eq i32 %i.ex, 2
  br i1 %i.fz, label %bb.ab, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fj, i64 440 ; 4 uses
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fj, i64 432 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %i.gh, ptr %i.gi, align 8
  %i.gj = load ptr, ptr %i.ga, align 8            ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fj, i64 448
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %i.gm = icmp ult ptr %i.gj, %i.gl
  br i1 %i.gm, label %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEEENS4_25MaybeRedundantStoresTable18GetActiveKeysIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fj, i64 424
  %i.go = load ptr, ptr %i.gc, align 8
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = ashr exact i64 %i.gr, 3
  %i.gt = add nsw i64 %i.gs, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft16SnapshotTableKeyINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(33) %i.gn, i64 noundef %i.gt)
  %.pre.i.i.i.i = load ptr, ptr %i.ga, align 8
  br label %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEEENS4_25MaybeRedundantStoresTable18GetActiveKeysIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i

_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEEENS4_25MaybeRedundantStoresTable18GetActiveKeysIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i: ; preds = %bb.ac, %bb.ab
  %i.gu = phi ptr [ %i.gj, %bb.ab ], [ %.pre.i.i.i.i, %bb.ac ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.gv, ptr %i.ga, align 8
  %i.gw = ptrtoint ptr %i.dx to i64
  store i64 %i.gw, ptr %i.gu, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_18StoreObservabilityENS4_27MaybeRedundantStoresKeyDataEEENS4_25MaybeRedundantStoresTable18GetActiveKeysIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i, %bb.aa, %bb.z, %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable4SealEPbENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS6_EEE_clES8_SC_.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %.03468, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gx, %i.p
  br i1 %.not, label %.loopexit, label %bb.t

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS2_25MaybeRedundantStoresTableES4_S5_E16StartNewSnapshotIZNS9_4SealEPbEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_EEvNSG_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSG_IKT0_EEEEUlSE_RSH_SW_E_EERNS6_12SnapshotDataESM_SP_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
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
  %.not60 = icmp eq i64 %.idx, 8
  br i1 %.not60, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %.02059 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit
  %.02062 = phi ptr [ %.020, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit ], [ %.02059, %.lr.ph.preheader ] ; 2 uses
  %.061 = phi ptr [ %.1.lcssa.i, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %.02062, align 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.061, i64 8
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ugt i32 %i.k, %i.i
  br i1 %i.l, label %.lr.ph.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %.lr.ph.i, %.lr.ph
  %.012.lcssa.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.k, %.lr.ph ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.m = icmp ugt i32 %i.i, %.lcssa.i
  br i1 %i.m, label %.lr.ph18.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.01215.i = phi ptr [ %i.n, %.lr.ph.i ], [ %.sroa.0.0.copyload, %.lr.ph ]
  %i.n = load ptr, ptr %.01215.i, align 8         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp ugt i32 %i.p, %i.i
  br i1 %i.q, label %.lr.ph.i, label %.preheader14.i, !llvm.loop !77

.preheader.i:                                     ; preds = %.lr.ph18.i, %.preheader14.i
  %.0.lcssa.i = phi ptr [ %.061, %.preheader14.i ], [ %i.r, %.lr.ph18.i ] ; 3 uses
  %.not20.i = icmp eq ptr %.012.lcssa.i, %.0.lcssa.i
  br i1 %.not20.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit, label %.lr.ph23.i

.lr.ph18.i:                                       ; preds = %.preheader14.i, %.lr.ph18.i
  %.017.i = phi ptr [ %i.r, %.lr.ph18.i ], [ %.061, %.preheader14.i ]
  %i.r = load ptr, ptr %.017.i, align 8           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp ugt i32 %i.t, %.lcssa.i
  br i1 %i.u, label %.lr.ph18.i, label %.preheader.i, !llvm.loop !78

.lr.ph23.i:                                       ; preds = %.preheader.i, %.lr.ph23.i
  %.122.i = phi ptr [ %i.v, %.lr.ph23.i ], [ %.0.lcssa.i, %.preheader.i ]
  %.11321.i = phi ptr [ %i.w, %.lr.ph23.i ], [ %.012.lcssa.i, %.preheader.i ]
  %i.v = load ptr, ptr %.122.i, align 8           ; 3 uses
  %i.w = load ptr, ptr %.11321.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.v
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit, label %.lr.ph23.i, !llvm.loop !79

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit: ; preds = %.lr.ph23.i, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.v, %.lr.ph23.i ] ; 2 uses
  %.020 = getelementptr inbounds nuw i8, ptr %.02062, i64 8 ; 2 uses
  %.not = icmp eq ptr %.020, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit, %bb.c, %bb.b
  %.1 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %.1.lcssa.i, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, %i.aa
  br i1 %i.ad, label %.lr.ph.i37, label %.preheader14.i24

end_hunk_1
