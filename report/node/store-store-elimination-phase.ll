inline.NumInlined: 42522
inline.NumDeleted: 14382
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE17MergePredecessorsIZNS2_25MaybeRedundantStoresTable10BeginBlockEPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableIS8_S4_S5_E16StartNewSnapshotISI_EEvNSF_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSF_IKT0_EEEEUlSD_RSG_SY_E_EEvSO_SR_RSW_:bb.a
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
  %.not66 = icmp eq ptr %i.o, %i.p
  br i1 %.not66, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.e
  %or.cond.i.i.i = icmp eq i64 %2, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.t = add nsw i64 %.idx, -8                    ; 2 uses
  %i.u = lshr exact i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.w = icmp ult i64 %i.t, 12
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03361 = load ptr, ptr %i.x, align 8           ; 2 uses
  %.not3662 = icmp eq ptr %.03361, %i.e
  br i1 %.not3662, label %._crit_edge, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %bb.f
  %i.y = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph64

.loopexit59:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, %.lr.ph64
  %.033 = load ptr, ptr %.03363, align 8          ; 2 uses
  %.not36 = icmp eq ptr %.033, %i.e
  br i1 %.not36, label %._crit_edge, label %.lr.ph64, !llvm.loop !69

._crit_edge:                                      ; preds = %.loopexit59, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !70

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %.loopexit59
  %.03363 = phi ptr [ %.033, %.loopexit59 ], [ %.03361, %.lr.ph64.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03363, i64 16
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %.03363, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp samesign eq i64 %i.ae, %i.aa
  br i1 %i.af, label %.loopexit59, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ae
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit
  %.sroa.042.060 = phi ptr [ %i.ah, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.042.060, i64 -16 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !6, !align !8 ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.042.060, i64 -4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = zext i32 %i.al to i64
  %i.an = icmp eq i64 %indvars.iv, %i.am
  br i1 %i.an, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 28 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.h, align 8
  %i.as = load ptr, ptr %i.i, align 8
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2                 ; 2 uses
  %i.ax = add nsw i64 %i.aw, %2
  %i.ay = icmp ult i64 %i.ax, 4294967296
  br i1 %i.ay, label %bb.j, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #26
  unreachable

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cp, ptr nonnull align 4 %i.bn, i64 %i.bq, i1 false)
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
  %.03467 = phi ptr [ %i.o, %.lr.ph69 ], [ %i.hf, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
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
  %i.ef = phi i32 [ %i.ek, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i37, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.eg = phi ptr [ %i.ej, %.lr.ph.i.i.i.prol ], [ %i.ee, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.018.i.i.i.prol = phi ptr [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.ec, %.lr.ph.preheader.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.eh = load i32, ptr %i.eg, align 4            ; 2 uses
  %i.ei = icmp slt i32 %i.ef, %i.eh
  %spec.select.i.i.i.prol = select i1 %i.ei, ptr %i.eg, ptr %.018.i.i.i.prol ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 2 uses
  %i.ek = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 %i.eh) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !75

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %spec.select.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.unr = phi i32 [ %.pre.i.i.i37, %.lr.ph.preheader.i.i.i ], [ %i.ek, %.lr.ph.i.i.i.prol ]
  %.unr90 = phi ptr [ %i.ee, %.lr.ph.preheader.i.i.i ], [ %i.ej, %.lr.ph.i.i.i.prol ]
  %.018.i.i.i.unr = phi ptr [ %i.ec, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  br i1 %i.w, label %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable10BeginBlockEPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS8_EEE_clESA_SE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.el = phi i32 [ %i.fc, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.em = phi ptr [ %i.fb, %.lr.ph.i.i.i ], [ %.unr90, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.018.i.i.i = phi ptr [ %spec.select.i.i.i.3, %.lr.ph.i.i.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = icmp slt i32 %i.el, %i.en
  %spec.select.i.i.i = select i1 %i.eo, ptr %i.em, ptr %.018.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %i.eq = tail call i32 @llvm.smax.i32(i32 %i.el, i32 %i.en) ; 2 uses
  %i.er = load i32, ptr %i.ep, align 4            ; 2 uses
  %i.es = icmp slt i32 %i.eq, %i.er
  %spec.select.i.i.i.1 = select i1 %i.es, ptr %i.ep, ptr %spec.select.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.eu = tail call i32 @llvm.smax.i32(i32 %i.eq, i32 %i.er) ; 2 uses
  %i.ev = load i32, ptr %i.et, align 4            ; 2 uses
  %i.ew = icmp slt i32 %i.eu, %i.ev
  %spec.select.i.i.i.2 = select i1 %i.ew, ptr %i.et, ptr %spec.select.i.i.i.1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 12 ; 2 uses
  %i.ey = tail call i32 @llvm.smax.i32(i32 %i.eu, i32 %i.ev) ; 2 uses
  %i.ez = load i32, ptr %i.ex, align 4            ; 2 uses
  %i.fa = icmp slt i32 %i.ey, %i.ez
  %spec.select.i.i.i.3 = select i1 %i.fa, ptr %i.ex, ptr %spec.select.i.i.i.2 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.fb, %i.ed
  %i.fc = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 %i.ez)
  br i1 %.not.i.i.i.3, label %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable10BeginBlockEPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS8_EEE_clESA_SE_.exit, label %.lr.ph.i.i.i, !llvm.loop !76

_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable10BeginBlockEPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS8_EEE_clESA_SE_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.t
  %.011.i.i.i = phi ptr [ %i.ec, %bb.t ], [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %spec.select.i.i.i.3, %.lr.ph.i.i.i ]
  %i.fd = load i32, ptr %.011.i.i.i, align 4      ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8            ; 3 uses
  %.not58 = icmp eq i32 %i.ff, %i.fd
  br i1 %.not58, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.u

bb.u:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable10BeginBlockEPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS8_EEE_clESA_SE_.exit
  %i.fg = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.fh = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.fi = icmp ult ptr %i.fg, %i.fh
  br i1 %i.fi, label %bb.w, label %bb.v, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.fj = load ptr, ptr %i.f, align 8
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 4
  %i.fo = add nsw i64 %i.fn, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.fo)
  %.pre.i.i.i38 = load ptr, ptr %i.q, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.fp = phi ptr [ %i.fg, %bb.u ], [ %.pre.i.i.i38, %bb.v ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store ptr %i.fq, ptr %i.q, align 8
  store ptr %i.dx, ptr %i.fp, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 %i.ff, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 %i.fd, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %i.fd, ptr %i.fe, align 8
  %i.fr = load ptr, ptr %4, align 8               ; 6 uses
  %i.fs = icmp eq i32 %i.fd, 2
  br i1 %i.fs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8            ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 440 ; 4 uses
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable10map_to_keyENS2_7OpIndexEih:bb.a
  br i1 %i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.b, %bb.a
  br i1 %i.g, label %bb.d, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorESR_.exit, !prof !7

bb.d:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #25
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorESR_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorESR_.exit
  %i.j = load i8, ptr %i.d, align 1
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorptEv.exit, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #25
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorptEv.exit: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr
  br label %bb.r

bb.g:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorESR_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i32 %1, ptr %5, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %2, ptr %.sroa.412.0..sroa_idx, align 4
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %3, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 -1, ptr %.sroa.7.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 -1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 -1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -40
  %.not.i.i.i = icmp eq ptr %i.s, %i.v
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.w = load ptr, ptr %i.r, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  store ptr %i.x, ptr %i.r, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.y, ptr noundef nonnull align 8 dereferenceable(36) %5)
  %.pre.i.i.i = load ptr, ptr %i.r, align 8, !noalias !93
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = phi ptr [ %.pre.i.i.i, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !93
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.k, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_25MaybeRedundantStoresTableENS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE6NewKeyES6_S5_.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !93
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 480
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_25MaybeRedundantStoresTableENS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE6NewKeyES6_S5_.exit

_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_25MaybeRedundantStoresTableENS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE6NewKeyES6_S5_.exit: ; preds = %bb.j, %bb.k
  %i.ai = phi ptr [ %i.ah, %bb.k ], [ %i.z, %bb.j ]
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.ak = load i64, ptr %i.b, align 8, !noalias !117
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_25MaybeRedundantStoresTableENS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE6NewKeyES6_S5_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noalias !124
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.an, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 131072, ptr %i.am, align 8, !noalias !124
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.aq = load <2 x i32>, ptr %i.ap, align 8, !noalias !124
  %i.ar = load <2 x i32>, ptr %6, align 8, !noalias !124
  %i.as = icmp eq <2 x i32> %i.aq, %i.ar          ; 2 uses
  %i.at = extractelement <2 x i1> %i.as, i64 0
  %i.au = extractelement <2 x i1> %i.as, i64 1
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !124
  store ptr %i.b, ptr %4, align 8, !noalias !124
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %6, ptr %i.aw, align 8, !noalias !124
  %i.ax = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %4, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiEEESC_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #25, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !124
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !124
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.ax
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %.sink16.i.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %bb.o ], [ %i.ao, %bb.m ], [ %i.ap, %bb.n ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.o ], [ 1, %bb.m ], [ 0, %bb.n ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sink16.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !124
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE22find_or_prepare_insertIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_25MaybeRedundantStoresTableENS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE6NewKeyES6_S5_.exit
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_largeIS9_EES3_INSO_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.687") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %6)
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !range !5, !alias.scope !125
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE22find_or_prepare_insertIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE22find_or_prepare_insertIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %bb.p, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %i.ba = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %bb.p ]
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.q, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE7emplaceIJRS9_RSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES3_INSO_8iteratorEbEDpOST_.exit

bb.q:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE22find_or_prepare_insertIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !125 ; 2 uses
  %i.bc = load i64, ptr %6, align 8, !noalias !126
  store i64 %i.bc, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  %i.be = ptrtoint ptr %i.aj to i64
  store i64 %i.be, ptr %i.bd, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE7emplaceIJRS9_RSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES3_INSO_8iteratorEbEDpOST_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE7emplaceIJRS9_RSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES3_INSO_8iteratorEbEDpOST_.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE22find_or_prepare_insertIS9_EES3_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.r

bb.r:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE7emplaceIJRS9_RSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES3_INSO_8iteratorEbEDpOST_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorptEv.exit
  %.sroa.010.0 = phi ptr [ %i.n, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE8iteratorptEv.exit ], [ %i.aj, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE7emplaceIJRS9_RSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES3_INSO_8iteratorEbEDpOST_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret ptr %.sroa.010.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE4findIS9_EENSO_8iteratorERSL_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_smallIS9_EENSO_8iteratorERSL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load <2 x i32>, ptr %i.e, align 8
  %i.g = load <2 x i32>, ptr %1, align 4
  %i.h = icmp eq <2 x i32> %i.f, %i.g             ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 0
  %i.j = extractelement <2 x i1> %i.h, i64 1
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i = select i1 %i.k, { ptr, ptr } %.fca.1.insert.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_smallIS9_EENSO_8iteratorERSL_.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.l, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %sext = shl i64 %i.n, 48
  %i.o = ashr exact i64 %sext, 48
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4 ; 2 uses
  %i.q = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.r = xor i64 %i.o, %i.q
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.p, align 4 ; 2 uses
  %i.x = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.y = xor i64 %i.w, %i.x
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw nsw i128 %i.z, 8779197792823184629 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64                 ; 2 uses
  %i.ae = lshr i64 %i.ad, 57
  %i.af = trunc nuw nsw i64 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %i.ag, align 8 ; 2 uses
  %i.ah = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8 = phi i64 [ %i.ad, %bb.d ], [ %i.bf, %bb.g ]
  %.sroa.13.0.i = phi i64 [ 0, %bb.d ], [ %i.be, %bb.g ]
  %.sroa.6.0.i = and i64 %.pn.i8, %i.a            ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.aj, i32 0, i32 3, i32 1)
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  %i.al = load <16 x i8>, ptr %i.ak, align 1      ; 2 uses
  %i.am = icmp eq <16 x i8> %i.ai, %i.al
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not46.i = icmp eq i16 %i.an, 0
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.017.047.i = phi i16 [ %i.bb, %bb.f ], [ %i.an, %bb.e ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.6.0.i, %i.ap
  %i.ar = and i64 %i.aq, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.ar ; 3 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp eq i32 %i.at, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp eq i32 %i.aw, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = select i1 %i.au, i1 %i.ax, i1 false
  br i1 %i.ay, label %.thread33.i, label %bb.f, !prof !11

.thread33.i:                                      ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ar
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_largeIS9_EENSO_8iteratorERSL_m.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.ba = add i16 %.sroa.017.047.i, -1
  %i.bb = and i16 %i.ba, %.sroa.017.047.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %i.bc = icmp eq <16 x i8> %i.al, splat (i8 -128)
  %i.bd = bitcast <16 x i1> %i.bc to i16
  %.not44.i = icmp eq i16 %i.bd, 0
  br i1 %.not44.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_largeIS9_EENSO_8iteratorERSL_m.exit, !prof !7

bb.g:                                             ; preds = %._crit_edge.i
  %i.be = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bf = add i64 %i.be, %.sroa.6.0.i
  br label %bb.e, !llvm.loop !127

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_largeIS9_EENSO_8iteratorERSL_m.exit: ; preds = %._crit_edge.i, %.thread33.i
  %.sroa.0.4.ph.i = phi ptr [ %i.az, %.thread33.i ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.as, %.thread33.i ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_smallIS9_EENSO_8iteratorERSL_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_smallIS9_EENSO_8iteratorERSL_.exit: ; preds = %bb.c, %bb.b, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_largeIS9_EENSO_8iteratorERSL_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_largeIS9_EENSO_8iteratorERSL_m.exit ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i, %bb.c ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 12
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 40
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 40
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 461168601842738790
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.g, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.d, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %.not5.i.i.i = icmp ult i64 %i.aq, 12
  br i1 %.not5.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ao, align 8
  store ptr %i.ar, ptr %i.an, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_allocate_nodeEv.exit

bb.g:                                             ; preds = %bb.e, %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = icmp ult i64 %i.ax, 480
  br i1 %i.ay, label %bb.h, label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE8allocateEm.exit.i.i.i, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.as, i64 noundef 480) #25
  %.pre.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  br label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE8allocateEm.exit.i.i.i

_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE8allocateEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.az = phi i64 [ %.pre.i.i.i.i.i.i, %bb.h ], [ %i.aw, %bb.g ] ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = add i64 %i.az, 480
  store i64 %i.bb, ptr %i.av, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_allocate_nodeEv.exit

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_allocate_nodeEv.exit: ; preds = %bb.f, %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE8allocateEm.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.ba, %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEEE8allocateEm.exit.i.i.i ]
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.0.i.i.i, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.bf = load ptr, ptr %i.c, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.c, align 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  store ptr %i.bh, ptr %i.o, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 480
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bi, ptr %i.bj, align 8
  store ptr %i.bh, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, 1                      ; 3 uses
  %i.k = add i64 %i.j, %1                         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = shl i64 %i.k, 1
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = sub i64 %i.m, %i.k
  %i.r = lshr i64 %i.q, 1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.t = select i1 %2, i64 %1, i64 0
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 10 uses
  %i.v = icmp ult ptr %i.u, %i.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g                       ; 3 uses
  %i.z = icmp sgt i64 %i.y, 8
  br i1 %i.z, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.u, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEES9_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.y, 8
  br i1 %i.aa, label %bb.f, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEES9_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.e, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE17MergePredecessorsIZNS2_25MaybeRedundantStoresTable4SealEPbEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableIS8_S4_S5_E16StartNewSnapshotISG_EEvNSD_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSD_IKT0_EEEEUlSB_RSE_SW_E_EEvSM_SP_RSU_:bb.a
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
  %.not67 = icmp eq ptr %i.o, %i.p
  br i1 %.not67, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.e
  %or.cond.i.i.i = icmp eq i64 %2, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.t = add nsw i64 %.idx, -8                    ; 2 uses
  %i.u = lshr exact i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.w = icmp ult i64 %i.t, 12
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03362 = load ptr, ptr %i.x, align 8           ; 2 uses
  %.not3663 = icmp eq ptr %.03362, %i.e
  br i1 %.not3663, label %._crit_edge, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.f
  %i.y = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph65

.loopexit60:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, %.lr.ph65
  %.033 = load ptr, ptr %.03364, align 8          ; 2 uses
  %.not36 = icmp eq ptr %.033, %i.e
  br i1 %.not36, label %._crit_edge, label %.lr.ph65, !llvm.loop !130

._crit_edge:                                      ; preds = %.loopexit60, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !131

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %.loopexit60
  %.03364 = phi ptr [ %.033, %.loopexit60 ], [ %.03362, %.lr.ph65.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03364, i64 16
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %.03364, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp samesign eq i64 %i.ae, %i.aa
  br i1 %i.af, label %.loopexit60, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph65
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ae
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit
  %.sroa.043.061 = phi ptr [ %i.ah, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.043.061, i64 -16 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !6, !align !8 ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.043.061, i64 -4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = zext i32 %i.al to i64
  %i.an = icmp eq i64 %indvars.iv, %i.am
  br i1 %i.an, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 28 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.h, align 8
  %i.as = load ptr, ptr %i.i, align 8
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2                 ; 2 uses
  %i.ax = add nsw i64 %i.aw, %2
  %i.ay = icmp ult i64 %i.ax, 4294967296
  br i1 %i.ay, label %bb.j, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #26
  unreachable

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cp, ptr nonnull align 4 %i.bn, i64 %i.bq, i1 false)
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
  %.03468 = phi ptr [ %i.o, %.lr.ph70 ], [ %i.hj, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
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
  %i.ej = phi i32 [ %i.eo, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i37, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ek = phi ptr [ %i.en, %.lr.ph.i.i.i.prol ], [ %i.ee, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.018.i.i.i.prol = phi ptr [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.ec, %.lr.ph.preheader.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.el = load i32, ptr %i.ek, align 4            ; 2 uses
  %i.em = icmp slt i32 %i.ej, %i.el
  %spec.select.i.i.i.prol = select i1 %i.em, ptr %i.ek, ptr %.018.i.i.i.prol ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 2 uses
  %i.eo = tail call i32 @llvm.smax.i32(i32 %i.ej, i32 %i.el) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !134

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %spec.select.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.unr = phi i32 [ %.pre.i.i.i37, %.lr.ph.preheader.i.i.i ], [ %i.eo, %.lr.ph.i.i.i.prol ]
  %.unr91 = phi ptr [ %i.ee, %.lr.ph.preheader.i.i.i ], [ %i.en, %.lr.ph.i.i.i.prol ]
  %.018.i.i.i.unr = phi ptr [ %i.ec, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  br i1 %i.w, label %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable4SealEPbENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS6_EEE_clES8_SC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ep = phi i32 [ %i.fg, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.eq = phi ptr [ %i.ff, %.lr.ph.i.i.i ], [ %.unr91, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.018.i.i.i = phi ptr [ %spec.select.i.i.i.3, %.lr.ph.i.i.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.er = load i32, ptr %i.eq, align 4            ; 2 uses
  %i.es = icmp slt i32 %i.ep, %i.er
  %spec.select.i.i.i = select i1 %i.es, ptr %i.eq, ptr %.018.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 4 ; 2 uses
  %i.eu = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 %i.er) ; 2 uses
  %i.ev = load i32, ptr %i.et, align 4            ; 2 uses
  %i.ew = icmp slt i32 %i.eu, %i.ev
  %spec.select.i.i.i.1 = select i1 %i.ew, ptr %i.et, ptr %spec.select.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.ey = tail call i32 @llvm.smax.i32(i32 %i.eu, i32 %i.ev) ; 2 uses
  %i.ez = load i32, ptr %i.ex, align 4            ; 2 uses
  %i.fa = icmp slt i32 %i.ey, %i.ez
  %spec.select.i.i.i.2 = select i1 %i.fa, ptr %i.ex, ptr %spec.select.i.i.i.1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 12 ; 2 uses
  %i.fc = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 %i.ez) ; 2 uses
  %i.fd = load i32, ptr %i.fb, align 4            ; 2 uses
  %i.fe = icmp slt i32 %i.fc, %i.fd
  %spec.select.i.i.i.3 = select i1 %i.fe, ptr %i.fb, ptr %spec.select.i.i.i.2 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.ff, %i.ei
  %i.fg = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 %i.fd)
  br i1 %.not.i.i.i.3, label %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable4SealEPbENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS6_EEE_clES8_SC_.exit, label %.lr.ph.i.i.i, !llvm.loop !76

_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable4SealEPbENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS6_EEE_clES8_SC_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.v
  %.011.i.i.i = phi ptr [ %i.ec, %bb.v ], [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %spec.select.i.i.i.3, %.lr.ph.i.i.i ]
  %i.fh = load i32, ptr %.011.i.i.i, align 4      ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8            ; 3 uses
  %.not59 = icmp eq i32 %i.fj, %i.fh
  br i1 %.not59, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.w

bb.w:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft25MaybeRedundantStoresTable4SealEPbENKUlNS2_16SnapshotTableKeyINS2_18StoreObservabilityENS2_27MaybeRedundantStoresKeyDataEEENS_4base6VectorIKS6_EEE_clES8_SC_.exit
  %i.fk = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.fl = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.fm = icmp ult ptr %i.fk, %i.fl
  br i1 %i.fm, label %bb.y, label %bb.x, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.fn = load ptr, ptr %i.f, align 8
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 4
  %i.fs = add nsw i64 %i.fr, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.fs)
  %.pre.i.i.i38 = load ptr, ptr %i.q, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ft = phi ptr [ %i.fk, %bb.w ], [ %.pre.i.i.i38, %bb.x ] ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store ptr %i.fu, ptr %i.q, align 8
  store ptr %i.dx, ptr %i.ft, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i32 %i.fj, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  store i32 %i.fh, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %i.fh, ptr %i.fi, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockE:bb.a
  %i.al = add nuw nsw i64 %i.ak, %i.aj
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.al)
  %i.am = load ptr, ptr %i.i, align 8
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.ar)
  %.pre.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit

_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit: ; preds = %bb.b, %bb.c
  %i.as = phi ptr [ %.pre.i, %bb.c ], [ %i.ae, %bb.b ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ac ; 2 uses
  %.sroa.039.0.copyload = load i64, ptr %i.at, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.440.0.copyload = load i8, ptr %.sroa.440.0..sroa_idx, align 8
  %i.au = trunc nuw i8 %.sroa.440.0.copyload to i1
  br i1 %i.au, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  %i.av = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ax = icmp ult ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit
  %i.ay = load ptr, ptr %i.b, align 8
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = add nsw i64 %i.bc, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.bd)
  %.pre.i19 = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit, %bb.e
  %i.be = phi ptr [ %i.av, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit ], [ %.pre.i19, %bb.e ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bf, ptr %i.d, align 8
  store i64 %.sroa.039.0.copyload, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.043.050, i64 64
  %.sroa.043.0 = load ptr, ptr %i.bg, align 8     ; 2 uses
  %.not = icmp eq ptr %.sroa.043.0, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.f:                                             ; preds = %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not47 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not47, label %bb.k, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bl = getelementptr inbounds i8, ptr %0, i64 -24
  %i.bm = load ptr, ptr %i.bl, align 8
  store ptr %i.bm, ptr %4, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 3312 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.g

._crit_edge54:                                    ; preds = %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_28LoopStackCheckElisionReducerINS4_28StoreStoreEliminationReducerINS4_26LateLoadEliminationReducerINS4_26MachineOptimizationReducerINS4_24BranchEliminationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_12GraphVisitorESA_SB_SC_SD_SE_SG_SI_EEEEEEEEEEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE8iteratorppEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2928
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.bs, align 4
  store i32 %.sroa.0.0.copyload.i20, ptr %5, align 4
  %i.bt = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  store i8 0, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %4, align 8
  store ptr %i.bv, ptr %i.bt, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %4) #25 ; 0 uses
  store i8 1, ptr %i.bu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph53, %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_28LoopStackCheckElisionReducerINS4_28StoreStoreEliminationReducerINS4_26LateLoadEliminationReducerINS4_26MachineOptimizationReducerINS4_24BranchEliminationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_12GraphVisitorESA_SB_SC_SD_SE_SG_SI_EEEEEEEEEEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE8iteratorppEv.exit
  %i.by = phi ptr [ %i.bk, %.lr.ph53 ], [ %i.cs, %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_28LoopStackCheckElisionReducerINS4_28StoreStoreEliminationReducerINS4_26LateLoadEliminationReducerINS4_26MachineOptimizationReducerINS4_24BranchEliminationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_12GraphVisitorESA_SB_SC_SD_SE_SG_SI_EEEEEEEEEEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE8iteratorppEv.exit ]
  %.sroa.6.051 = phi i64 [ 0, %.lr.ph53 ], [ %.sroa.6.1, %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_28LoopStackCheckElisionReducerINS4_28StoreStoreEliminationReducerINS4_26LateLoadEliminationReducerINS4_26MachineOptimizationReducerINS4_24BranchEliminationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_12GraphVisitorESA_SB_SC_SD_SE_SG_SI_EEEEEEEEEEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE8iteratorppEv.exit ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.6.051
  %.sroa.01.0.copyload.i = load ptr, ptr %i.bz, align 8 ; 5 uses
  %i.ca = load ptr, ptr %i.bo, align 8
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE11SetVariableENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEESV_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit: ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 16
  %.sroa.04.0.copyload = load i32, ptr %i.cc, align 4
  %.sroa.06.0.copyload = load i8, ptr %.sroa.01.0.copyload.i, align 8
  %i.cd = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_16PendingLoopPhiOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %.sroa.04.0.copyload, i8 %.sroa.06.0.copyload) ; 3 uses
  %.pre59 = load ptr, ptr %i.bo, align 8
  %i.ce = icmp eq ptr %.pre59, null
  br i1 %i.ce, label %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE11SetVariableENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEESV_.exit, label %bb.h, !prof !177

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISW_SX_EESW_(ptr noundef nonnull align 8 dereferenceable(344) %i.r, ptr nonnull %.sroa.01.0.copyload.i, i32 %i.cd)
  br label %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE11SetVariableENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEESV_.exit

_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE11SetVariableENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEESV_.exit: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit, %bb.h
  %.sroa.04.0.i.i69 = phi i32 [ %i.cd, %bb.h ], [ %i.cd, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit ], [ -1, %bb.g ]
  %i.cf = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.cg = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.ch = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.ci = icmp ult ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE9push_backEOS9_.exit, label %bb.i, !prof !11

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE11SetVariableENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEESV_.exit
  %i.cj = load ptr, ptr %i.bn, align 8
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = add nsw i64 %i.cn, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.co)
  %.pre.i.i = load ptr, ptr %i.bp, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE9push_backEOS9_.exit

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE9push_backEOS9_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE11SetVariableENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEESV_.exit, %bb.i
  %i.cp = phi ptr [ %i.cg, %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE11SetVariableENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEESV_.exit ], [ %.pre.i.i, %bb.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.cq, ptr %i.bp, align 8
  store i64 %i.cf, ptr %i.cp, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %.sroa.04.0.i.i69, ptr %.sroa.4.0..sroa_idx, align 8
  %i.cr = load ptr, ptr %i.bh, align 8
  %i.cs = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 3                 ; 2 uses
  %i.cx = icmp ult i64 %.sroa.6.051, %i.cw
  br i1 %i.cx, label %bb.j, label %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_28LoopStackCheckElisionReducerINS4_28StoreStoreEliminationReducerINS4_26LateLoadEliminationReducerINS4_26MachineOptimizationReducerINS4_24BranchEliminationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_12GraphVisitorESA_SB_SC_SD_SE_SG_SI_EEEEEEEEEEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE8iteratorppEv.exit

bb.j:                                             ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE9push_backEOS9_.exit
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.sroa.6.051
  %.sroa.0.0.copyload.i21 = load ptr, ptr %i.cy, align 8
  %i.cz = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i21
  %i.da = zext i1 %i.cz to i64
  %spec.select = add nuw i64 %.sroa.6.051, %i.da
  br label %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_28LoopStackCheckElisionReducerINS4_28StoreStoreEliminationReducerINS4_26LateLoadEliminationReducerINS4_26MachineOptimizationReducerINS4_24BranchEliminationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_12GraphVisitorESA_SB_SC_SD_SE_SG_SI_EEEEEEEEEEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE8iteratorppEv.exit

_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_28LoopStackCheckElisionReducerINS4_28StoreStoreEliminationReducerINS4_26LateLoadEliminationReducerINS4_26MachineOptimizationReducerINS4_24BranchEliminationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_12GraphVisitorESA_SB_SC_SD_SE_SG_SI_EEEEEEEEEEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE8iteratorppEv.exit: ; preds = %bb.j, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE9push_backEOS9_.exit
  %.sroa.6.1 = phi i64 [ %.sroa.6.051, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE9push_backEOS9_.exit ], [ %spec.select, %bb.j ] ; 2 uses
  %i.db = icmp ult i64 %.sroa.6.1, %i.cw
  br i1 %i.db, label %bb.g, label %._crit_edge54

bb.k:                                             ; preds = %bb.f, %._crit_edge54, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(2464) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerES3_S5_S7_EEEEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 4 ; 3 uses
  %i.l = load i64, ptr %i.j, align 8              ; 3 uses
  %i.m = icmp ult i64 %i.l, 2
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.o, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread, label %2

2:                                                ; preds = %bb.e
  %3 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, %.sroa.0.0.copyload.i
  br i1 %5, label %bb.j, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %sext.i.i.i = shl i64 %i.r, 48
  %i.s = ashr exact i64 %sext.i.i.i, 48
  %i.t = zext i32 %.sroa.0.0.copyload.i to i64
  %i.u = xor i64 %i.s, %i.t
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw nsw i128 %i.v, 8779197792823184629 ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64                   ; 2 uses
  %i.aa = lshr i64 %i.z, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.ac, align 8 ; 2 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i7.i.i.i = phi i64 [ %i.z, %bb.f ], [ %i.aw, %bb.i ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.av, %bb.i ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i7.i.i.i, %i.l ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.ah = load <16 x i8>, ptr %i.ag, align 1      ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ae, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not47.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not47.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.sroa.017.048.i.i.i.i = phi i16 [ %i.as, %bb.h ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.6.0.i.i.i.i, %i.al
  %i.an = and i64 %i.am, %i.l
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, %.sroa.0.0.copyload.i
  br i1 %i.aq, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit, label %bb.h, !prof !11

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ar = add i16 %.sroa.017.048.i.i.i.i, -1
  %i.as = and i16 %i.ar, %.sroa.017.048.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.h, %bb.g
  %i.at = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16
  %.not44.i.i.i.i = icmp eq i16 %i.au, 0
  br i1 %.not44.i.i.i.i, label %bb.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread, !prof !7

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.aw = add i64 %i.av, %.sroa.6.0.i.i.i.i
  br label %bb.g, !llvm.loop !178

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit: ; preds = %.lr.ph.i.i.i.i
  %i.ax = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, null
  br i1 %i.ax, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread, label %bb.j

bb.j:                                             ; preds = %2, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2432
  store i8 1, ptr %i.ay, align 8
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.e, %2, %bb.c, %bb.j, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE27SealAndSaveVariableSnapshotEv(ptr noundef nonnull align 8 dereferenceable(2968) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2704 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4
  store i64 %i.l, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2720 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.n, %i.p
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %i.q = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.n, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2752
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store ptr %i.s, ptr %i.t, align 8
  store ptr %i.q, ptr %i.o, align 8
  %i.u = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.012.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.aa = load ptr, ptr %.012.i, align 8          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 -1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i32 -1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.p
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.ae = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -32
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.an, 16
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 16, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.ak, align 8
  store ptr %i.ap, ptr %i.ai, align 8
  store ptr %i.ai, ptr %i.ak, align 8
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i: ; preds = %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  store ptr %i.at, ptr %i.ah, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2648
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 480
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i: ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i, %bb.d
  %storemerge.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.aw, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.af, align 8
  store ptr %i.ae, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit: ; preds = %._crit_edge.i, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i
  %.sroa.0.0.i = phi ptr [ %i.ae, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i ], [ %i.u, %._crit_edge.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2848 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 4
  %i.ba = zext i32 %.sroa.0.0.copyload.i to i64   ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4
  %.not.i1 = icmp ugt i64 %i.bi, %i.ba
  br i1 %.not.i1, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit, label %bb.h, !prof !11

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2856 ; 2 uses
  %i.bk = lshr i64 %i.ba, 1
  %i.bl = add nuw nsw i64 %i.ba, 32
  %i.bm = add nuw nsw i64 %i.bl, %i.bk
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bd, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 4
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bt)
  %.pre.i2 = load ptr, ptr %i.bd, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit

_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit, %bb.h
  %i.bu = phi ptr [ %.pre.i2, %bb.h ], [ %i.be, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit ]
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ba ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !5, !noundef !6
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = ptrtoint ptr %.sroa.0.0.i to i64
  br i1 %i.by, label %_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  store i8 1, ptr %i.bw, align 8
  br label %_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit

_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit, %bb.i
  store i64 %i.bz, ptr %i.bv, align 8
  store ptr null, ptr %i.ax, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey.871", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !noalias !179 ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !186
  %.not.i.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !186 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4, !noalias !186
  %i.f = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4, !noalias !186
  %i.g = icmp eq i32 %i.f, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.g, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !186
  store ptr %0, ptr %2, align 8, !noalias !186
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.h, align 8, !noalias !186
  %i.i = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft10BlockIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #25, !noalias !186
  %i.j = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !186
  br label %bb.f
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES9_SA_SB_SC_SD_SF_SH_EEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSJ_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSY_13VariableTableES4_S5_E16StartNewSnapshotIS16_EEvNS13_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENS13_IKT0_EEEEUlS12_RS14_S1N_E_EEvS1D_S1G_RS1L_
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES9_SA_SB_SC_SD_SF_SH_EEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSJ_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSY_13VariableTableES4_S5_E16StartNewSnapshotIS16_EEvNS13_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENS13_IKT0_EEEEUlS12_RS14_S1N_E_EEvS1D_S1G_RS1L_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #26
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
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !215

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !216

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
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !6, !align !8 ; 4 uses
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #26
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #26
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #26
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
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.cd) #25
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cl, ptr nonnull align 4 %i.bj, i64 %i.bm, i1 false)
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
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !217

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
  br i1 %i.dl, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !218

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

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.023.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, %i.ea
  br i1 %.not.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.023.i = phi ptr [ %i.dy, %.lr.ph.i ], [ %i.ec, %bb.t ] ; 2 uses
  %i.ed = load i32, ptr %.023.i, align 4          ; 2 uses
  %.not21.i = icmp eq i32 %i.ed, -1
  br i1 %.not21.i, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSE_6VectorIKSX_EEE_clESZ_S12_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %bb.u
  %i.ee = load ptr, ptr %i.eb, align 8, !nonnull !6, !align !8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ei = zext i32 %i.ed to i64
  %i.ej = add i64 %i.eh, %i.ei
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load i8, ptr %i.ek, align 4
  %i.em = icmp eq i8 %i.el, 76
  br i1 %i.em, label %bb.v, label %bb.t

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 3312
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSE_6VectorIKSX_EEE_clESZ_S12_.exit, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.eq = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.dz)
  %i.er = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_18LoadRootRegisterOpEEENS2_7OpIndexESN_(ptr noundef nonnull align 8 dereferenceable(144) %i.dz, i32 %i.eq)
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSE_6VectorIKSX_EEE_clESZ_S12_.exit

._crit_edge.i:                                    ; preds = %bb.t
  %.sroa.0.0.copyload.i = load i8, ptr %i.dt, align 8 ; 2 uses
  %.not.i.i38 = icmp eq i8 %.sroa.0.0.copyload.i, 8
  br i1 %.not.i.i38, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 3312
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSE_6VectorIKSX_EEE_clESZ_S12_.exit, label %bb.y, !prof !7

bb.y:                                             ; preds = %bb.x
  %i.ev = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE9ReducePhiENSE_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(2968) %i.dz, ptr %i.dy, i64 %2, i8 %.sroa.0.0.copyload.i), !inline_history !219
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSE_6VectorIKSX_EEE_clESZ_S12_.exit

bb.z:                                             ; preds = %._crit_edge.i
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.dy, align 4
  %i.ew = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.ex = add i64 %i.eh, %i.ew
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load i8, ptr %i.ey, align 4
  %i.fa = icmp eq i8 %i.ez, 92
  br i1 %i.fa, label %bb.aa, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSE_6VectorIKSX_EEE_clESZ_S12_.exit

bb.aa:                                            ; preds = %bb.z
  %i.fb = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE15MergeFrameStateENSE_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(2968) %i.dz, ptr nonnull %i.dy, i64 %2), !inline_history !219
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSE_6VectorIKSX_EEE_clESZ_S12_.exit

_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSE_6VectorIKSX_EEE_clESZ_S12_.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.copyload.i40 = phi i32 [ -1, %bb.z ], [ -1, %bb.v ], [ %i.er, %bb.w ], [ -1, %bb.x ], [ %i.fb, %bb.aa ], [ %i.ev, %bb.y ], [ -1, %bb.u ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8            ; 3 uses
  %.not62 = icmp eq i32 %i.fd, %.sroa.0.0.copyload.i40
  br i1 %.not62, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSE_6VectorIKSX_EEE_clESZ_S12_.exit
  %i.fe = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ff = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.fg = icmp ult ptr %i.fe, %i.ff
  br i1 %i.fg, label %bb.ad, label %bb.ac, !prof !11

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
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE33AssembleOutputGraphCheckExceptionERKNS2_16CheckExceptionOpE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20ReducerBaseForwarderINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE20ReduceInputGraphGotoENS2_7OpIndexERKNS2_6GotoOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 4
  %i.d = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE23AssembleOutputGraphGotoERKNS2_6GotoOpE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE11FixLoopPhisEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(3176) %0, ptr noundef nonnull %i.b)
  %.pre = load i8, ptr %i.i, align 4, !range !5
  %i.l = trunc nuw i8 %.pre to i1
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE23AssembleOutputGraphGotoERKNS2_6GotoOpE.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE23AssembleOutputGraphGotoERKNS2_6GotoOpE.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i1 [ false, %bb.a ], [ %i.l, %bb.b ]
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(2968) %0, ptr noundef %i.h, i1 noundef zeroext %i.m) ; 0 uses
  ret i32 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE11FixLoopPhisEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(3176) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
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
  %i.d = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.g, align 4
  %i.h = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.p = getelementptr inbounds i8, ptr %0, i64 -8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit
  %.sroa.036.052 = phi i32 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.br, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit ] ; 3 uses
  %i.s = load ptr, ptr %i.k, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = zext i32 %.sroa.036.052 to i64
  %i.v = add i64 %i.t, %i.u                       ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = load i8, ptr %i.w, align 4
  %.not = icmp eq i8 %i.x, 91
  br i1 %.not, label %bb.c, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8
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
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESU_i.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ae ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ak = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.ak, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESU_i.exit, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESU_i.exit: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i, i64 16
  %.sroa.02.0.copyload.i12.i = load i32, ptr %i.al, align 4 ; 2 uses
  %.not50 = icmp eq i32 %.sroa.02.0.copyload.i12.i, -1
  br i1 %.not50, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESU_i.exit.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESU_i.exit.thread: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESU_i.exit
  %.sroa.010.1.i45 = phi i32 [ %.sroa.02.0.copyload.i12.i, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESU_i.exit ], [ %i.ah, %bb.c ] ; 4 uses
  %i.am = load i32, ptr %i.n, align 4
  %i.an = icmp ule i32 %i.am, %.sroa.010.1.i45
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.o, align 8
  %i.ao = icmp ult i32 %.sroa.010.1.i45, %.sroa.0.0.copyload.i30
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %.critedge, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESU_i.exit.thread
  %i.aq = load ptr, ptr %i.p, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = zext i32 %.sroa.010.1.i45 to i64
  %i.av = add i64 %i.at, %i.au
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = icmp eq i8 %i.ax, 74
  br i1 %i.ay, label %bb.e, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
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
  br i1 %.not.i.i.i, label %bb.f, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESX_i.exit.i

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.m, align 8
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.bh = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.bh, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.f
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.bi, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESX_i.exit.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESX_i.exit.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.e
  %.sroa.014.0.i.i.i = phi i32 [ %i.be, %bb.e ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  store i32 %.sroa.014.0.i.i.i, ptr %i.q, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.0.0.copyload.i32 = load i8, ptr %i.bj, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.aq, i32 %.sroa.010.1.i45, ptr nonnull %2, i64 2, i8 %.sroa.0.0.copyload.i32)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESU_i.exit.thread, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESU_i.exit, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESX_i.exit.i, %.critedge, %bb.b
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
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(2968) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = tail call i32 @_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerES3_S5_S7_EEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i1 noundef zeroext %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4              ; 5 uses
  %.not30 = icmp eq i32 %i.c, -1
  br i1 %.not30, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2928 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %i.h = load i64, ptr %i.g, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.h, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %5

5:                                                ; preds = %bb.c
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %6, align 8
  %7 = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %8 = icmp eq i32 %7, %i.c
  br i1 %8, label %bb.h, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i.i, 48
  %i.m = zext i32 %i.c to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i.i = phi i64 [ %i.s, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i8.i.i.i, %i.e ; 4 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.al, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.e
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %i.c
  br i1 %i.aj, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit, label %bb.f, !prof !11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.al = and i16 %i.ak, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.am = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %.not44.i.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not44.i.i.i.i, label %bb.g, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, !prof !7

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ao = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !567

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit: ; preds = %.lr.ph.i.i.i.i
  %i.aq = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, null
  br i1 %i.aq, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.h

bb.h:                                             ; preds = %5, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 %i.c, ptr %3, align 4
  %i.ar = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i8, ptr %i.as, align 8, !range !5, !noundef !6
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not32 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not32, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit
  %i.az = getelementptr inbounds i8, ptr %0, i64 -8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.033 = phi ptr [ %i.aw, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %.sroa.0.0.copyload24 = load ptr, ptr %.033, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.sroa_idx, align 8 ; 2 uses
  %i.bb = load ptr, ptr %i.az, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = zext i32 %.sroa.4.0.copyload to i64
  %i.bg = add i64 %i.be, %i.bf
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bi, align 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %4, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24, i64 16
  %.sroa.02.0.copyload.i = load i32, ptr %i.bj, align 4
  store i32 %.sroa.02.0.copyload.i, ptr %i.ba, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %.sroa.0.0.copyload = load i8, ptr %i.bk, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.bb, i32 %.sroa.4.0.copyload, ptr nonnull %4, i64 2, i8 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %.033, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.ay
  br i1 %.not, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.j

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.j, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, %bb.c, %5, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit, %bb.a
  ret i32 %i.a
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
  br i1 %i.bj, label %bb.e, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !7

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
  br i1 %i.ci, label %bb.f, label %bb.g, !prof !11

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
end_hunk_5
