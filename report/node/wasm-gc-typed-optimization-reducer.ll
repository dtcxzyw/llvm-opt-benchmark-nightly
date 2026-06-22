inline.NumInlined: 1835
inline.NumDeleted: 1081
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEE:bb.a
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE17MoveToNewSnapshotINS2_16NoChangeCallbackEEERNS7_12SnapshotDataENS_4base6VectorIKNS7_8SnapshotEEERKT_(ptr noundef nonnull align 8 dereferenceable(344) %i.a, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 0 uses
  %i.c = icmp ult i64 %2, 4294967296
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.40) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %2, 2               ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.q = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not28.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not28.i.i, label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit", label %.lr.ph31.i.i

.lr.ph31.i.i:                                     ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.not.i.i.i = icmp eq i64 %4, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.t

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.d
  %indvars.iv.i.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i
  %.03423.i.i = load ptr, ptr %i.w, align 8       ; 2 uses
  %.not3724.i.i = icmp eq ptr %.03423.i.i, %i.g
  br i1 %.not3724.i.i, label %._crit_edge.i.i, label %.lr.ph26.preheader.i.i

.lr.ph26.preheader.i.i:                           ; preds = %bb.f
  %i.x = trunc nuw i64 %indvars.iv.i.i to i32     ; 2 uses
  br label %.lr.ph26.i.i

.loopexit20.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS5_S6_EERKS5_jj.exit.i.i, %.lr.ph26.i.i
  %.034.i.i = load ptr, ptr %.03425.i.i, align 8  ; 2 uses
  %.not37.i.i = icmp eq ptr %.034.i.i, %i.g
  br i1 %.not37.i.i, label %._crit_edge.i.i, label %.lr.ph26.i.i, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %.loopexit20.i.i, %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %2
  br i1 %exitcond.not.i.i, label %bb.e, label %bb.f, !llvm.loop !15

.lr.ph26.i.i:                                     ; preds = %.loopexit20.i.i, %.lr.ph26.preheader.i.i
  %.03425.i.i = phi ptr [ %.034.i.i, %.loopexit20.i.i ], [ %.03423.i.i, %.lr.ph26.preheader.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03425.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.03425.i.i, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp samesign eq i64 %i.ad, %i.z
  br i1 %i.ae, label %.loopexit20.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph26.i.i
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ad
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS5_S6_EERKS5_jj.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.03.022.i.i = phi ptr [ %i.ag, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS5_S6_EERKS5_jj.exit.i.i ], [ %i.af, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.03.022.i.i, i64 -16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !align !16 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.03.022.i.i, i64 -4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp eq i64 %indvars.iv.i.i, %i.al
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS5_S6_EERKS5_jj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
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
  %.0 = phi i8 [ 1, %.lr.ph31.i.i ], [ %.1, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i ] ; 3 uses
  %.03529.i.i = phi ptr [ %i.q, %.lr.ph31.i.i ], [ %i.fy, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i ] ; 2 uses
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
  %.2 = phi i8 [ %.3, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.0, %.loopexit.i.i.i ] ; 8 uses
  %.224.i.i.i = phi i64 [ %i.fl, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i ] ; 3 uses
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
  %i.fd = icmp ne i8 %.2, 0
  %i.fe = and i1 %i.fd, %i.fc
  %i.ff = zext i1 %i.fe to i8                     ; 2 uses
  %i.fg = icmp eq i32 %.sroa.012.023.i.i.i, 2
  %i.fh = icmp eq i32 %.fr2.i15.i.i.i, 2
  %or.cond.i.i.i = or i1 %i.fg, %i.fh
  br i1 %or.cond.i.i.i, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i
  %i.fi = load ptr, ptr %i.v, align 8
  %i.fj = call { i32, ptr } @_ZN2v88internal4wasm5UnionENS1_9ValueTypeES2_PKNS1_10WasmModuleE(i32 %.sroa.012.023.i.i.i, i32 %.fr2.i15.i.i.i, ptr noundef %i.fi) #19
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer26RefineTypeKnowledgeNotNullENS2_7OpIndexERKNS2_9OperationE:bb.a
  tail call void @llvm.assume(i1 %i.w)
  %i.x = lshr i32 %.sroa.0.0.copyload.i, 6
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i32 %.sroa.0.0.copyload.i, 63
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = and i64 %i.aa, %i.ad
  %.not.i = icmp eq i64 %i.ae, 0
  %i.af = select i1 %.not.i, ptr @.str.8, ptr @.str.7
  %i.ag = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ah, %i.ak
  %i.am = trunc i64 %i.al to i32
  %i.an = lshr i32 %i.am, 4
  %i.ao = load i8, ptr %2, align 4
  %i.ap = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft10OpcodeNameENS2_6OpcodeE(i8 noundef zeroext %i.ao) #19
  %i.aq = lshr i32 %.sroa.08.0.i, 4
  %i.ar = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = add i64 %i.au, %i.f
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft10OpcodeNameENS2_6OpcodeE(i8 noundef zeroext %i.ax) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #19
  %i.az = load ptr, ptr %4, align 8
  %i.ba = load i32, ptr %3, align 4
  %.fr2.i = freeze i32 %i.ba                      ; 3 uses
  %i.bb = and i32 %.fr2.i, 268435427              ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 514
  br i1 %i.bc, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = and i32 %.fr2.i, 3
  %i.be = and i32 %.fr2.i, 5
  %i.bf = icmp ne i32 %i.be, 5
  %.off.i = add nsw i32 %i.bd, -1
  %switch.i = icmp ult i32 %.off.i, 2
  %or.cond.i = and i1 %i.bf, %switch.i
  br i1 %or.cond.i, label %bb.i, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = add nsw i32 %i.bb, -1153                ; 2 uses
  %i.bh = call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 27) ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 29
  br i1 %i.bi, label %switch.lookup, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit

switch.lookup:                                    ; preds = %bb.i
  %i.bj = zext nneg i32 %i.bh to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer26RefineTypeKnowledgeNotNullENS2_7OpIndexERKNS2_9OperationE, i64 %i.bj
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit: ; preds = %bb.i, %switch.lookup, %bb.g, %bb.h
  %i.bk = phi ptr [ @.str.17, %bb.g ], [ @.str.8, %bb.h ], [ %switch.load, %switch.lookup ], [ @.str.8, %bb.i ]
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.16, i32 noundef %.sroa.0.0.copyload.i, ptr noundef nonnull %i.af, i32 noundef %i.an, ptr noundef %i.ap, i32 noundef %i.aq, ptr noundef %i.ay, ptr noundef %i.az, ptr noundef nonnull %i.bk) #19
  %i.bl = load ptr, ptr %4, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit
  %i.bo = load i64, ptr %i.bm, align 8
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.sroa.0.0.copyload.pre = load i32, ptr %3, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.sroa.0.0.copyload = phi i32 [ %.sroa.0.0.copyload.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %bb.f ] ; 3 uses
  %i.bq = call ptr @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.k, i32 %.sroa.08.0.i) ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %.not = icmp eq i32 %i.br, %.sroa.0.0.copyload
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_7OpIndexES5_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp ult ptr %i.bt, %i.bv
  br i1 %i.bw, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE9push_backEOS9_.exit.i.i, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 4
  %i.ce = add nsw i64 %i.cd, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.ce)
  %.pre.i.i.i.i = load ptr, ptr %i.bs, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE9push_backEOS9_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE9push_backEOS9_.exit.i.i: ; preds = %bb.l, %bb.k
  %i.cf = phi ptr [ %i.bt, %bb.k ], [ %.pre.i.i.i.i, %bb.l ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %i.cg, ptr %i.bs, align 8
  store ptr %i.bq, ptr %i.cf, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  store i32 %.sroa.0.0.copyload, ptr %i.bq, align 4
  br label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_7OpIndexES5_.exit

_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_7OpIndexES5_.exit: ; preds = %bb.j, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE9push_backEOS9_.exit.i.i
  %i.ch = load i32, ptr %3, align 4
  %.fr2.i10 = freeze i32 %i.ch                    ; 3 uses
  %i.ci = and i32 %.fr2.i10, 268435427            ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 514
  br i1 %i.cj, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_7OpIndexES5_.exit
  %i.ck = and i32 %.fr2.i10, 3
  %i.cl = and i32 %.fr2.i10, 5
  %i.cm = icmp ne i32 %i.cl, 5
  %.off.i11 = add nsw i32 %i.ck, -1
  %switch.i12 = icmp ult i32 %.off.i11, 2
  %or.cond.i13 = and i1 %i.cm, %switch.i12
  br i1 %or.cond.i13, label %bb.n, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit15

bb.n:                                             ; preds = %bb.m
  %i.cn = add nsw i32 %i.ci, -1153                ; 2 uses
  %i.co = call i32 @llvm.fshl.i32(i32 %i.cn, i32 %i.cn, i32 27)
  switch i32 %i.co, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit15 [
    i32 0, label %bb.o
    i32 4, label %bb.o
    i32 12, label %bb.o
    i32 21, label %bb.o
    i32 28, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_7OpIndexES5_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 52
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.cr, align 4 ; 3 uses
  %i.cs = and i32 %.sroa.0.0.copyload.i16, 63
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl nuw i64 1, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = icmp sgt i32 %.sroa.0.0.copyload.i16, -1
  call void @llvm.assume(i1 %i.cx)
  %i.cy = lshr i32 %.sroa.0.0.copyload.i16, 6
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = or i64 %i.db, %i.cu
  store i64 %i.dc, ptr %i.da, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit15

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit15: ; preds = %bb.n, %bb.m, %bb.o
  %.sroa.08.0 = phi i32 [ 514, %bb.o ], [ %i.l, %bb.m ], [ %i.l, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.p

bb.p:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit15
  %.sroa.08.1 = phi i32 [ %.sroa.08.0, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit15 ], [ %i.l, %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit ]
  ret i32 %.sroa.08.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_14const_iteratorERSL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_14const_iteratorERSL_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i8.i.i, %i.b    ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !13

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add i16 %.sroa.017.047.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i.i, !prof !7

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !50

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ak, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ah, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_14const_iteratorERSL_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_14const_iteratorERSL_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_14const_iteratorERSL_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_14const_iteratorERSL_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorESR_.exit, !prof !7

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31) #19
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorESR_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorESR_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorptEv.exit, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35) #19
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8
  %i.ba = load i32, ptr %.sroa.0.0.copyload, align 4
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorESR_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorptEv.exit
  %.sroa.06.0 = phi i32 [ %i.ba, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorptEv.exit ], [ 2, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorESR_.exit ]
  ret i32 %.sroa.06.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer18GetTypeForPhiInputERKNS2_5PhiOpEi(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 4 dereferenceable(5) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.08.0.i.in = phi ptr [ %i.h, %bb.a ], [ %i.m, %bb.e ]
  %.sroa.08.0.i = load i32, ptr %.sroa.08.0.i.in, align 4 ; 4 uses
  %i.i = zext i32 %.sroa.08.0.i to i64
  %i.j = add i64 %i.i, %i.e
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  switch i8 %i.l, label %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit [
    i8 19, label %bb.e
    i8 16, label %bb.c
    i8 22, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink.i = phi i64 [ 8, %bb.d ], [ 12, %bb.c ], [ 16, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink.i
  br label %bb.b

_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit: ; preds = %bb.b
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.e
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.s, align 4
  %i.t = lshr i32 %.sroa.0.0.copyload.i8, 4
  %i.u = lshr i32 %.sroa.08.0.i, 4                ; 2 uses
  %.not = icmp samesign ule i32 %i.t, %i.u
  %i.v = lshr i32 %i.p, 4
  %i.w = icmp samesign ult i32 %i.u, %i.v
  %or.cond = select i1 %.not, i1 %i.w, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %or.cond, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit
  %i.y = tail call i32 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.x, i32 %.sroa.08.0.i)
  br label %bb.g

.critedge:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit
  %i.z = tail call i32 @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE19GetPredecessorValueENS2_7OpIndexEi(ptr noundef nonnull align 8 dereferenceable(384) %i.x, i32 %.sroa.08.0.i, i32 noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  %.sroa.07.0 = phi i32 [ %i.y, %bb.f ], [ %i.z, %.critedge ]
  ret i32 %.sroa.07.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(561) %0, i32 %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.08.0 = phi i32 [ %1, %bb.a ], [ %.sroa.08.2, %bb.e ] ; 2 uses
  %i.f = zext i32 %.sroa.08.0 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  switch i8 %i.i, label %bb.f [
    i8 19, label %bb.e
    i8 16, label %bb.c
    i8 22, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sink = phi i64 [ 8, %bb.d ], [ 12, %bb.c ], [ 16, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink
  %.sroa.08.2 = load i32, ptr %i.j, align 4
  br label %bb.b

bb.f:                                             ; preds = %bb.b
  ret i32 %.sroa.08.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE19GetPredecessorValueENS2_7OpIndexEi(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.b        ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !13

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = add i16 %.sroa.017.047.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i, !prof !7

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !50

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ah, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit, !prof !7

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31) #19
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35) #19
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = icmp eq i32 %i.bb, -1
  %i.bd = add i32 %i.bb, %2
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be
  %.0.i = select i1 %i.bc, ptr %.sroa.0.0.copyload, ptr %i.bh
  %i.bi = load i32, ptr %.0.i, align 4
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit
  %.sroa.06.0 = phi i32 [ %i.bi, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit ], [ 2, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit ]
  ret i32 %.sroa.06.0
}

declare { i32, ptr } @_ZN2v88internal4wasm5UnionENS1_9ValueTypeES2_PKNS1_10WasmModuleE(i32, i32, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler10turboshaft10OpcodeNameENS2_6OpcodeE(i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare i32 @_ZN2v88internal4wasm14ToNullSentinelENS1_12TypeInModuleE(i32, ptr) local_unnamed_addr #3

declare { i32, ptr } @_ZN2v88internal4wasm12IntersectionENS1_9ValueTypeES2_PKNS1_10WasmModuleE(i32, i32, ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal8compiler10turboshaft10LoopFinder3RunEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #7

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
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
  %i.m = ashr exact i64 %i.l, 3
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 1152921504606846975
  br i1 %i.q, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
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

end_hunk_1
begin_hunk_2_@_ZN2v84base11SmallVectorIbLm8ESaIbEE4GrowEm:bb.a
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false) ; 2 uses
  %i.j = sub nuw nsw i64 64, %i.i
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = icmp eq i64 %i.i, 1
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22 ; 5 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.o, %i.f                       ; 4 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.b, i64 %i.p, i1 false)
  br label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.p, 1
  br i1 %i.r, label %bb.f, label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.b, align 1, !range !10, !noundef !5
  store i8 %i.s, ptr %i.n, align 1
  br label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit:  ; preds = %bb.d, %bb.e, %bb.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIbLm8ESaIbEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.n, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store ptr %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store ptr %i.u, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
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
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
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
  %i.m = ashr exact i64 %i.l, 3
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 1152921504606846975
  br i1 %i.q, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS4_9NoKeyDataEE8LogEntryEA_SA_EEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS4_9NoKeyDataEE8LogEntryEA_SA_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS4_9NoKeyDataEE8LogEntryEA_SA_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS4_9NoKeyDataEE8LogEntryEA_SA_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS4_9NoKeyDataEE8LogEntryEA_SA_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS4_9NoKeyDataEE8LogEntryEA_SA_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %3 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry", align 4 ; 7 uses
  %4 = alloca %"struct.std::pair.333", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.b        ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !13

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = add i16 %.sroa.017.047.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i, !prof !7

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !50

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ah, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit, !prof !7

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31) #19
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35) #19
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %bb.z

bb.m:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 2, ptr %3, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 -1, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -12
  %.not.i.i.i1 = icmp eq ptr %i.bf, %i.bi
  br i1 %.not.i.i.i1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bf, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bj = load ptr, ptr %i.be, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12 ; 2 uses
  store ptr %i.bk, ptr %i.be, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE16_M_push_back_auxIJS8_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %.pre.i.i.i = load ptr, ptr %i.be, align 8, !noalias !71
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bm = phi ptr [ %.pre.i.i.i, %bb.o ], [ %i.bk, %bb.n ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !71
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %bb.q, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE6NewKeyES5_.exit

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !71
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE6NewKeyES5_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE6NewKeyES5_.exit: ; preds = %bb.p, %bb.q
  %i.bv = phi ptr [ %i.bu, %bb.q ], [ %i.bm, %bb.p ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 %1, ptr %4, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  store i64 %i.by, ptr %i.bx, align 8
  %i.bz = load i64, ptr %i.a, align 8, !noalias !74 ; 4 uses
  %i.ca = icmp ult i64 %i.bz, 2
  br i1 %i.ca, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE6NewKeyES5_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !91
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.cc, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 131072, ptr %i.cb, align 8, !noalias !91
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cf = load i32, ptr %i.ce, align 8, !noalias !91
  %i.cg = icmp eq i32 %i.cf, %1
  br i1 %i.cg, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE6insertEOSK_IS7_SC_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !91
  store ptr %i.a, ptr %2, align 8, !noalias !91
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %4, ptr %i.ch, align 8, !noalias !91
  %i.ci = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #19, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !91
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !noalias !91
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ci
  %.pre = load i32, ptr %4, align 8, !noalias !96
  br label %bb.y

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE6NewKeyES5_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i2 = load ptr, ptr %i.cl, align 8, !noalias !97 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i2, i32 0, i32 1, i32 1), !noalias !97
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !97
  %sext.i3 = shl i64 %i.cn, 48
  %i.co = ashr exact i64 %sext.i3, 48
  %i.cp = zext i32 %1 to i64
  %i.cq = xor i64 %i.co, %i.cp
  %i.cr = zext i64 %i.cq to i128
  %i.cs = mul nuw nsw i128 %i.cr, 8779197792823184629 ; 2 uses
  %i.ct = lshr i128 %i.cs, 64
  %i.cu = xor i128 %i.ct, %i.cs
  %i.cv = trunc i128 %i.cu to i64                 ; 3 uses
  %i.cw = lshr i64 %i.cv, 57
  %i.cx = trunc nuw nsw i64 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.cy, align 8, !noalias !97 ; 2 uses
  %i.cz = insertelement <16 x i8> poison, i8 %i.cx, i64 0
  %i.da = shufflevector <16 x i8> %i.cz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.pn.i5 = phi i64 [ %i.cv, %bb.v ], [ %i.dy, %bb.x ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.v ], [ %i.dx, %bb.x ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i5, %i.bz           ; 5 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.db, i32 0, i32 3, i32 1), !noalias !97
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i2, i64 %.sroa.7.0.i
  %i.dd = load <16 x i8>, ptr %i.dc, align 1, !noalias !97 ; 2 uses
  %i.de = icmp eq <16 x i8> %i.da, %i.dd
  %i.df = bitcast <16 x i1> %i.de to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.df, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.do, %.critedge.i ], [ %i.df, %bb.w ] ; 3 uses
  %i.dg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = add i64 %.sroa.7.0.i, %i.dh
  %i.dj = and i64 %i.di, %i.bz
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.dj
end_hunk_2
