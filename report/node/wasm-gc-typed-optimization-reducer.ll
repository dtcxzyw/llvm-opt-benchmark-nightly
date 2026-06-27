inline.NumInlined: 1835
inline.NumDeleted: 1081
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEE:bb.a
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.j, align 8
  %i.ar = load ptr, ptr %i.k, align 8
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = add nsw i64 %i.av, %2
  %i.ax = icmp ult i64 %i.aw, 4294967296
  br i1 %i.ax, label %bb.j, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.41) #20
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = trunc i64 %i.av to i32
  store i32 %i.ay, ptr %i.an, align 4
  %i.az = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ba = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE9push_backEOS9_.exit.i.i.i, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.o, align 8
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = add nsw i64 %i.bg, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.bh)
  %.pre.i.i.i.i.i = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE9push_backEOS9_.exit.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE9push_backEOS9_.exit.i.i.i: ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %i.az, %bb.j ], [ %.pre.i.i.i.i.i, %bb.k ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.l, align 8
  store ptr %i.ah, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.j, align 8             ; 3 uses
  %i.bl = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 5 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = ashr exact i64 %i.bo, 2                 ; 2 uses
  %i.bq = xor i64 %i.bp, -1
  %.not.i39.i.i = icmp ugt i64 %2, %i.bq
  br i1 %.not.i39.i.i, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE9push_backEOS9_.exit.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.42) #20
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE9push_backEOS9_.exit.i.i.i
  %i.br = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.bn                    ; 2 uses
  %i.bu = ashr exact i64 %i.bt, 2
  %i.bv = add nsw i64 %i.bp, %2                   ; 2 uses
  %i.bw = icmp ult i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bx = icmp eq ptr %i.bl, %i.br
  %i.by = ashr exact i64 %i.bt, 1
  %i.bz = select i1 %i.bx, i64 2, i64 %i.by
  %i.ca = call noundef i64 @llvm.umax.i64(i64 %i.bz, i64 %i.bv) ; 3 uses
  %i.cb = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.cc = icmp ult i64 %i.ca, 4611686018427387903
  br i1 %i.cc, label %bb.p, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cd = shl nuw i64 %i.ca, 2
  %i.ce = add nuw i64 %i.cd, 4
  %i.cf = and i64 %i.ce, -8                       ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8            ; 2 uses
  %i.ck = sub i64 %i.ch, %i.cj
  %i.cl = icmp ugt i64 %i.cf, %i.ck
  br i1 %i.cl, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i, !prof !7

bb.q:                                             ; preds = %bb.p
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, i64 noundef %i.cf) #19
  %.pre.i.i.i41.i.i = load i64, ptr %i.ci, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i: ; preds = %bb.q, %bb.p
  %i.cm = phi i64 [ %.pre.i.i.i41.i.i, %bb.q ], [ %i.cj, %bb.p ] ; 2 uses
  %i.cn = inttoptr i64 %i.cm to ptr               ; 4 uses
  %i.co = add i64 %i.cm, %i.cf
  store i64 %i.co, ptr %i.ci, align 8
  store ptr %i.cn, ptr %i.k, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.bo
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %2
  store ptr %i.cq, ptr %i.j, align 8
  %.not26.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not26.i.i.i, label %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.thread.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cn, ptr nonnull align 4 %i.bl, i64 %i.bo, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %.pre.i40.i.i = load ptr, ptr %i.k, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.thread.i.i

_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.thread.i.i: ; preds = %bb.r, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i
  %i.cr = phi ptr [ %.pre.i40.i.i, %bb.r ], [ %i.cn, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ca
  store ptr %i.cs, ptr %i.p, align 8
  br label %._crit_edge.i.i.i.i

_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.i.i: ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %2
  store ptr %i.ct, ptr %i.j, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.i.i, %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.thread.i.i
  %.pn.i.i = phi ptr [ %i.bl, %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.i.i ], [ %i.cr, %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE19PrepareForInsertionEPKS3_mPm.exit.thread.i.i ] ; 2 uses
  %.pn.i.i39 = ptrtoint ptr %.pn.i.i to i64       ; 3 uses
  %.0.lcssa.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %i.bo ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %.idx.i.i
  %.pre20.i.i.i.i = load i32, ptr %i.ah, align 4  ; 2 uses
  %i.cv = add i64 %i.bn, -1
  %i.cw = add i64 %.idx.i.i, %.pn.i.i39
  %i.cx = add i64 %i.cw, %i.bm
  %i.cy = sub i64 %i.cx, %i.bn
  %i.cz = add i64 %.pn.i.i39, 4
  %i.da = add i64 %i.cz, %i.bm
  %i.db = sub i64 %i.da, %i.bn
  %umax = call i64 @llvm.umax.i64(i64 %i.cy, i64 %i.db)
  %i.dc = add i64 %i.cv, %umax
  %i.dd = add i64 %.pn.i.i39, %i.bm
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = lshr i64 %i.de, 2
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.de, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i.i.i
  %n.vec = and i64 %i.dg, 9223372036854775800     ; 3 uses
  %i.dh = shl i64 %n.vec, 2
  %i.di = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.dh
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.dj ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dk, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE6insertEPKS3_mRS5_.exit.i.i.i, label %.lr.ph18.i.i.i.i.preheader

.lr.ph18.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i, %middle.block
  %.116.i.i.i.i.ph = phi ptr [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.di, %middle.block ]
  br label %.lr.ph18.i.i.i.i

.lr.ph18.i.i.i.i:                                 ; preds = %.lr.ph18.i.i.i.i.preheader, %.lr.ph18.i.i.i.i
  %.116.i.i.i.i = phi ptr [ %i.dm, %.lr.ph18.i.i.i.i ], [ %.116.i.i.i.i.ph, %.lr.ph18.i.i.i.i.preheader ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i.i.i, ptr %.116.i.i.i.i, align 4
  %i.dn = icmp ult ptr %i.dm, %i.cu
  br i1 %i.dn, label %.lr.ph18.i.i.i.i, label %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE6insertEPKS3_mRS5_.exit.i.i.i, !llvm.loop !20

_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE6insertEPKS3_mRS5_.exit.i.i.i: ; preds = %.lr.ph18.i.i.i.i, %middle.block
  %.pre.i.i.i = load i32, ptr %i.an, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE6insertEPKS3_mRS5_.exit.i.i.i, %bb.g
  %i.do = phi i32 [ %.pre.i.i.i, %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE6insertEPKS3_mRS5_.exit.i.i.i ], [ %i.ao, %bb.g ]
  %i.dp = add i32 %i.do, %i.x
  %i.dq = zext i32 %i.dp to i64
  %i.dr = load ptr, ptr %i.k, align 8
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = load i32, ptr %i.ai, align 4
  store i32 %i.dt, ptr %i.ds, align 4
  store i32 %i.x, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS5_S6_EERKS5_jj.exit.i.i

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS5_S6_EERKS5_jj.exit.i.i: ; preds = %bb.s, %.lr.ph.i.i
  %i.du = icmp eq ptr %i.ag, %i.ab
  br i1 %i.du, label %.loopexit20.i.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i, %.lr.ph31.i.i
  %.0 = phi i1 [ true, %.lr.ph31.i.i ], [ %.1, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i ] ; 3 uses
  %.03529.i.i = phi ptr [ %i.q, %.lr.ph31.i.i ], [ %i.fv, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i ] ; 2 uses
  %i.dv = load ptr, ptr %.03529.i.i, align 8      ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = zext i32 %i.dx to i64
  %i.dz = load ptr, ptr %i.k, align 8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dy ; 2 uses
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i
  %.021.i.i.i = phi i64 [ %i.eo, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i ], [ 0, %bb.t ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 %.021.i.i.i
  %i.ec = load i8, ptr %i.eb, align 1, !range !10, !noundef !5
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.u, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.021.i.i.i
  %i.ef = load i32, ptr %i.ee, align 4
  %.fr2.i.i.i.i = freeze i32 %i.ef                ; 4 uses
  %i.eg = and i32 %.fr2.i.i.i.i, 268435427        ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 514
  br i1 %i.eh, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = and i32 %.fr2.i.i.i.i, 3
  %i.ej = and i32 %.fr2.i.i.i.i, 5
  %i.ek = icmp ne i32 %i.ej, 5
  %.off.i.i.i.i = add nsw i32 %i.ei, -1
  %switch.i.i.i.i = icmp ult i32 %.off.i.i.i.i, 2
  %or.cond.i.i.i.i = and i1 %i.ek, %switch.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.w, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.el = add nsw i32 %i.eg, -1153                ; 2 uses
  %i.em = call i32 @llvm.fshl.i32(i32 %i.el, i32 %i.el, i32 27)
  switch i32 %i.em, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.i.i.i [
    i32 0, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i
    i32 4, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i
    i32 12, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i
    i32 21, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i
    i32 28, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i
  ]

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.i.i.i: ; preds = %bb.w, %bb.v
  %i.en = add nuw i64 %.021.i.i.i, 1
  br label %.loopexit.i.i.i

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i: ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.u, %.lr.ph.i.i.i
  %i.eo = add nuw i64 %.021.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.eo, %4
  br i1 %exitcond.not.i.i.i, label %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i", label %.lr.ph.i.i.i, !llvm.loop !21

.loopexit.i.i.i:                                  ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.i.i.i, %bb.t
  %.sroa.07.0.i.i.i = phi i32 [ %.fr2.i.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.i.i.i ], [ 514, %bb.t ] ; 3 uses
  %.1.i.i.i = phi i64 [ %i.en, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.ep = icmp ult i64 %.1.i.i.i, %4
  br i1 %i.ep, label %.lr.ph25.i.i.i, label %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i"

.lr.ph25.i.i.i:                                   ; preds = %.loopexit.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
  %.2 = phi i1 [ %.3, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.0, %.loopexit.i.i.i ] ; 8 uses
  %.224.i.i.i = phi i64 [ %i.fi, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %.sroa.012.023.i.i.i = phi i32 [ %.sroa.012.2.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.sroa.07.0.i.i.i, %.loopexit.i.i.i ] ; 9 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 %.224.i.i.i
  %i.er = load i8, ptr %i.eq, align 1, !range !10, !noundef !5
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.x, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i

bb.x:                                             ; preds = %.lr.ph25.i.i.i
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.224.i.i.i
  %i.eu = load i32, ptr %i.et, align 4
  %.fr2.i15.i.i.i = freeze i32 %i.eu              ; 6 uses
  %i.ev = and i32 %.fr2.i15.i.i.i, 268435427      ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 514
  br i1 %i.ew, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ex = and i32 %.fr2.i15.i.i.i, 3
  %i.ey = and i32 %.fr2.i15.i.i.i, 5
  %i.ez = icmp ne i32 %i.ey, 5
  %.off.i16.i.i.i = add nsw i32 %i.ex, -1
  %switch.i17.i.i.i = icmp ult i32 %.off.i16.i.i.i, 2
  %or.cond.i18.i.i.i = and i1 %i.ez, %switch.i17.i.i.i
  br i1 %or.cond.i18.i.i.i, label %bb.z, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fa = add nsw i32 %i.ev, -1153                ; 2 uses
  %i.fb = call i32 @llvm.fshl.i32(i32 %i.fa, i32 %i.fa, i32 27)
  switch i32 %i.fb, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i [
    i32 0, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
    i32 4, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
    i32 12, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
    i32 21, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
    i32 28, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
  ]

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i: ; preds = %bb.z, %bb.y
  %i.fc = icmp eq i32 %.sroa.07.0.i.i.i, %.fr2.i15.i.i.i
  %6 = select i1 %i.fc, i1 %.2, i1 false          ; 2 uses
  %i.fd = icmp eq i32 %.sroa.012.023.i.i.i, 2
  %i.fe = icmp eq i32 %.fr2.i15.i.i.i, 2
  %or.cond.i.i.i = or i1 %i.fd, %i.fe
  br i1 %or.cond.i.i.i, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i
  %i.ff = load ptr, ptr %i.v, align 8
  %i.fg = call { i32, ptr } @_ZN2v88internal4wasm5UnionENS1_9ValueTypeES2_PKNS1_10WasmModuleE(i32 %.sroa.012.023.i.i.i, i32 %.fr2.i15.i.i.i, ptr noundef %i.ff) #19
  %i.fh = extractvalue { i32, ptr } %i.fg, 0
  br label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i: ; preds = %bb.aa, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.x, %.lr.ph25.i.i.i
  %.3 = phi i1 [ %.2, %bb.x ], [ %6, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i ], [ %6, %bb.aa ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %.lr.ph25.i.i.i ] ; 2 uses
  %.sroa.012.2.i.i.i = phi i32 [ %.sroa.012.023.i.i.i, %bb.x ], [ 2, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i ], [ %i.fh, %bb.aa ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %.lr.ph25.i.i.i ] ; 2 uses
  %i.fi = add i64 %.224.i.i.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fi, %4
  br i1 %exitcond.not, label %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i", label %.lr.ph25.i.i.i, !llvm.loop !22

"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i": ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i, %.loopexit.i.i.i
  %.1 = phi i1 [ %.3, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.0, %.loopexit.i.i.i ], [ %.0, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i ] ; 2 uses
  %.sroa.012.0.lcssa.i.i.i = phi i32 [ %.sroa.012.2.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.sroa.07.0.i.i.i, %.loopexit.i.i.i ], [ 514, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i ] ; 3 uses
  %i.fj = load i32, ptr %i.dv, align 4            ; 2 uses
  %.not18.i.i = icmp eq i32 %i.fj, %.sroa.012.0.lcssa.i.i.i
  br i1 %.not18.i.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i"
  %i.fk = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.fl = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.fm = icmp ult ptr %i.fk, %i.fl
  br i1 %i.fm, label %bb.ad, label %bb.ac, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.fn = load ptr, ptr %i.h, align 8
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 4
  %i.fs = add nsw i64 %i.fr, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.fs)
  %.pre.i.i.i38.i.i = load ptr, ptr %i.s, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ft = phi ptr [ %i.fk, %bb.ab ], [ %.pre.i.i.i38.i.i, %bb.ac ] ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store ptr %i.fu, ptr %i.s, align 8
  store ptr %i.dv, ptr %i.ft, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i32 %i.fj, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  store i32 %.sroa.012.0.lcssa.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  store i32 %.sroa.012.0.lcssa.i.i.i, ptr %i.dv, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i: ; preds = %bb.ad, %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i"
  %i.fv = getelementptr inbounds nuw i8, ptr %.03529.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fv, %i.r
  br i1 %.not.i.i, label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit.loopexit", label %bb.t

"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit.loopexit": ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i
  %i.fw = xor i1 %.1, true
  br label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit"

"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit": ; preds = %"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit.loopexit", %bb.c, %bb.e
  %.4 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ %i.fw, %"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit.loopexit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i1 %.4
}

declare void @_ZN2v88internal8compiler10turboshaft16AnalyzerIterator28MarkLoopForRevisitSkipHeaderEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare void @_ZN2v88internal8compiler10turboshaft16AnalyzerIterator18MarkLoopForRevisitEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19StartNewSnapshotForERKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(561) initializes((560, 561)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(100) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [1 x %"class.v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::wasm::ValueType>::Snapshot"], align 8 ; 4 uses
  %3 = alloca [1 x %"class.v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::wasm::ValueType>::Snapshot"], align 8 ; 4 uses
  %4 = alloca %"struct.v8::internal::compiler::turboshaft::NoChangeCallback", align 1 ; 3 uses
  %5 = alloca %"struct.v8::internal::compiler::turboshaft::NoChangeCallback", align 1 ; 3 uses
  %6 = alloca %"struct.v8::internal::compiler::turboshaft::NoChangeCallback", align 1 ; 3 uses
  %7 = alloca %"class.v8::base::SmallVector", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 7 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.b, align 4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp sgt i32 %.sroa.0.0.copyload.i.i, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = lshr i32 %.sroa.0.0.copyload.i.i, 6
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i32 %.sroa.0.0.copyload.i.i, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k                      ; 2 uses
  %i.m = and i64 %i.i, %i.l
  %.not.i = icmp eq i64 %i.m, 0                   ; 2 uses
  %.not.i.not = xor i1 %.not.i, true
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 898), align 2, !range !10
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond64 = select i1 %.not.i.not, i1 %i.o, i1 false
  br i1 %or.cond64, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.4, i32 noundef %.sroa.0.0.copyload.i.i) #19
  %.sroa.0.0.copyload.i34.pre = load i32, ptr %i.b, align 4 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8
  %.pre73 = and i32 %.sroa.0.0.copyload.i34.pre, 63
  %.pre74 = zext nneg i32 %.pre73 to i64
  %.pre76 = shl nuw i64 1, %.pre74
  %.pre78 = lshr i32 %.sroa.0.0.copyload.i34.pre, 6
  %.pre80 = zext nneg i32 %.pre78 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi81 = phi i64 [ %.pre80, %bb.b ], [ %i.g, %bb.a ]
  %.pre-phi77 = phi i64 [ %.pre76, %bb.b ], [ %i.l, %bb.a ]
  %i.p = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.a ]
  %i.q = xor i64 %.pre-phi77, -1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi81 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 4 uses
  %.not65 = icmp eq ptr %i.v, null
  br i1 %.not65, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.x = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE17MoveToNewSnapshotINS2_16NoChangeCallbackEEERNS7_12SnapshotDataENS_4base6VectorIKNS7_8SnapshotEEERKT_(ptr noundef nonnull align 8 dereferenceable(344) %i.w, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i8, ptr %i.y, align 8
  switch i8 %i.z, label %bb.v [
    i8 1, label %bb.f
    i8 2, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 52 ; 2 uses
  %.sroa.0.0.copyload.i.i35 = load i32, ptr %i.ac, align 4 ; 4 uses
  %i.ad = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ae = icmp sgt i32 %.sroa.0.0.copyload.i.i35, -1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = lshr i32 %.sroa.0.0.copyload.i.i35, 6
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i32 %.sroa.0.0.copyload.i.i35, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.ai, %i.al
  %.not.i36 = icmp eq i64 %i.am, 0
  br i1 %.not.i36, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 898), align 2, !range !10, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.b, align 4
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.5, i32 noundef %.sroa.0.0.copyload.i37, i32 noundef %.sroa.0.0.copyload.i.i35) #19
  %.pre70 = load ptr, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = phi ptr [ %.pre70, %bb.h ], [ %i.ad, %bb.g ]
  %.sroa.0.0.copyload.i39 = load i32, ptr %i.b, align 4 ; 3 uses
  %i.aq = and i32 %.sroa.0.0.copyload.i39, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw i64 1, %i.ar
  %i.at = icmp sgt i32 %.sroa.0.0.copyload.i39, -1
  tail call void @llvm.assume(i1 %i.at)
  %i.au = lshr i32 %.sroa.0.0.copyload.i39, 6
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = or i64 %i.ax, %i.as
  store i64 %i.ay, ptr %i.aw, align 8
  %.pre71 = load ptr, ptr %i.u, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.az = phi ptr [ %.pre71, %bb.i ], [ %i.v, %bb.f ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 52
  %.sroa.0.0.copyload.i40 = load i32, ptr %i.ba, align 4
  %i.bb = zext i32 %.sroa.0.0.copyload.i40 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp ne i64 %i.bf, 0
  %or.cond = and i1 %.not.i, %i.bg
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotERKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 898), align 2, !range !10, !noundef !5
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload.i41 = load i32, ptr %i.b, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  %.sroa.0.0.copyload.i.i42 = load i32, ptr %i.bl, align 4 ; 3 uses
  %i.bm = load ptr, ptr %i.c, align 8
  %i.bn = icmp sgt i32 %.sroa.0.0.copyload.i.i42, -1
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = lshr i32 %.sroa.0.0.copyload.i.i42, 6
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = and i32 %.sroa.0.0.copyload.i.i42, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = and i64 %i.br, %i.bu
  %.not.i43 = icmp eq i64 %i.bv, 0
  %i.bw = select i1 %.not.i43, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.6, i32 noundef %.sroa.0.0.copyload.i41, ptr noundef nonnull %i.bw) #19
  %.pre72 = load ptr, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bx = phi ptr [ %.pre72, %bb.m ], [ %i.bd, %bb.l ]
  store i8 1, ptr %i.a, align 8
  %.sroa.0.0.copyload.i44 = load i32, ptr %i.ac, align 4
  %i.by = zext i32 %.sroa.0.0.copyload.i44 to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ca, ptr %3, align 8
  %i.cc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE17MoveToNewSnapshotINS2_16NoChangeCallbackEEERNS7_12SnapshotDataENS_4base6VectorIKNS7_8SnapshotEEERKT_(ptr noundef nonnull align 8 dereferenceable(344) %i.cb, ptr nonnull %3, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.w

bb.o:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 52 ; 2 uses
  %.sroa.0.0.copyload.i45 = load i32, ptr %i.ce, align 4
  %i.cf = zext i32 %.sroa.0.0.copyload.i45 to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
end_hunk_0
