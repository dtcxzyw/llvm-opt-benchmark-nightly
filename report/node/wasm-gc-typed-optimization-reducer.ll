Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-gc-typed-optimization-reducer?download=true
inline.NumInlined: 1835
inline.NumDeleted: 1081
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEE:bb.a
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
  br i1 %.not37.i.i, label %._crit_edge.i.i, label %.lr.ph26.i.i, !llvm.loop !18

._crit_edge.i.i:                                  ; preds = %.loopexit20.i.i, %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %2
  br i1 %exitcond.not.i.i, label %bb.e, label %bb.f, !llvm.loop !19

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
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !6, !align !12 ; 4 uses
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
  br i1 %i.ax, label %bb.j, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.41) #20
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = trunc i64 %i.av to i32
  store i32 %i.ay, ptr %i.an, align 4
  %i.az = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ba = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE9push_backEOS9_.exit.i.i.i, label %bb.k, !prof !11

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
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 5 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = ashr exact i64 %i.bo, 2                 ; 2 uses
  %i.bq = xor i64 %i.bp, -1
  %.not.i39.i.i = icmp ugt i64 %2, %i.bq
  br i1 %.not.i39.i.i, label %bb.l, label %bb.m, !prof !8

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
  br i1 %i.cc, label %bb.p, label %bb.o, !prof !11

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
  br i1 %i.cl, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit.i.i.i, !prof !8

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
  %.pn.i.i39 = ptrtoaddr ptr %.pn.i.i to i64      ; 2 uses
  %.0.lcssa.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %i.bo ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %.idx.i.i
  %.pre20.i.i.i.i = load i32, ptr %i.ah, align 4  ; 2 uses
  %i.cv = add i64 %.pn.i.i39, %i.bm               ; 2 uses
  %i.cw = add i64 %i.cv, %.idx.i.i
  %i.cx = sub i64 %i.cw, %i.bn
  %i.cy = add i64 %i.cv, 4
  %i.cz = sub i64 %i.cy, %i.bn
  %i.da = call i64 @llvm.umax.i64(i64 %i.cx, i64 %i.cz)
  %i.db = add i64 %i.da, %i.bn
  %i.dc = xor i64 %.pn.i.i39, -1
  %i.dd = add i64 %i.db, %i.dc
  %i.de = sub i64 %i.dd, %i.bm                    ; 2 uses
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
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !20

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
  br i1 %i.dn, label %.lr.ph18.i.i.i.i, label %_ZN2v88internal10ZoneVectorINS0_4wasm9ValueTypeEE6insertEPKS3_mRS5_.exit.i.i.i, !llvm.loop !21

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
  %i.ec = load i8, ptr %i.eb, align 1, !range !10, !noundef !6
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
  br i1 %exitcond.not.i.i.i, label %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i", label %.lr.ph.i.i.i, !llvm.loop !22

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
  %i.er = load i8, ptr %i.eq, align 1, !range !10, !noundef !6
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
  %i.fk = extractvalue { i32, ptr } %i.fj, 0
  br label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i: ; preds = %bb.aa, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.x, %.lr.ph25.i.i.i
  %.3 = phi i8 [ %.2, %bb.x ], [ %i.ff, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i ], [ %i.ff, %bb.aa ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %.lr.ph25.i.i.i ] ; 2 uses
  %.sroa.012.2.i.i.i = phi i32 [ %.sroa.012.023.i.i.i, %bb.x ], [ 2, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i ], [ %i.fk, %bb.aa ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %.lr.ph25.i.i.i ] ; 2 uses
  %i.fl = add i64 %.224.i.i.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %4
  br i1 %exitcond.not, label %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i", label %.lr.ph25.i.i.i, !llvm.loop !23

"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i": ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i, %.loopexit.i.i.i
  %.1 = phi i8 [ %.3, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.0, %.loopexit.i.i.i ], [ %.0, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i ] ; 2 uses
  %.sroa.012.0.lcssa.i.i.i = phi i32 [ %.sroa.012.2.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.sroa.07.0.i.i.i, %.loopexit.i.i.i ], [ 514, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i ] ; 3 uses
  %i.fm = load i32, ptr %i.dv, align 4            ; 2 uses
  %.not18.i.i = icmp eq i32 %i.fm, %.sroa.012.0.lcssa.i.i.i
  br i1 %.not18.i.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i"
  %i.fn = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.fo = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.fp = icmp ult ptr %i.fn, %i.fo
  br i1 %i.fp, label %bb.ad, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.fq = load ptr, ptr %i.h, align 8
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = ashr exact i64 %i.ft, 4
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotERKNS2_5BlockE:bb.a
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %i.bw, i64 %i.ce
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, ptr noundef null) #19
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.cg, ptr %4, align 8
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ci = getelementptr i8, ptr %i.cg, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %4, i64 %i.cj
  store ptr %i.ch, ptr %i.ck, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.bh, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.bw, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cm, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #19
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cl, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 24, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  store ptr %i.cq, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 0, ptr %i.cr, align 8
  store i8 0, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %4, align 8
  %i.ct = getelementptr i8, ptr %i.cs, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %4, i64 %i.cu
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cv, ptr noundef nonnull %i.cl) #19
  %.sroa.046.063 = load ptr, ptr %i.j, align 8    ; 2 uses
  %.not5864 = icmp eq ptr %.sroa.046.063, null
  br i1 %.not5864, label %._crit_edge69, label %.lr.ph68

._crit_edge69:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.h
  %i.cw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 898), align 2, !range !10, !noundef !6
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.m, label %bb.p

.lr.ph68:                                         ; preds = %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %.sroa.046.066 = phi ptr [ %.sroa.046.0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %.sroa.046.063, %bb.h ] ; 2 uses
  %.02365 = phi i64 [ %i.dr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %bb.h ] ; 3 uses
  %.not = icmp eq i64 %.02365, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph68
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.14, i64 noundef 2) #19 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 98, ptr %i.a, align 1
  %i.cz = load ptr, ptr %i.bw, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 -24
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds i8, ptr %i.bw, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i64, ptr %i.dd, align 8
  %.not.i27 = icmp eq i64 %i.de, 0
  br i1 %.not.i27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %i.a, i64 noundef 1) #19
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.l:                                             ; preds = %bb.j
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i8 noundef signext 98) #19 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.k, %bb.l
  %.0.i = phi ptr [ %i.df, %bb.k ], [ %i.bw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.046.066, i64 52
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.dh, align 4
  %i.di = zext i32 %.sroa.0.0.copyload.i28 to i64
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i64 noundef %i.di) #19
  %i.dk = load ptr, ptr %3, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.02365
  %i.dm = load i8, ptr %i.dl, align 1, !range !10, !noundef !6
  %i.dn = trunc nuw i8 %i.dm to i1                ; 2 uses
  %i.do = select i1 %i.dn, ptr @.str.8, ptr @.str.7
  %not. = xor i1 %i.dn, true
  %i.dp = zext i1 %not. to i64
  %i.dq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull %i.do, i64 noundef %i.dp) #19 ; 0 uses
  %i.dr = add i64 %.02365, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.046.066, i64 64
  %.sroa.046.0 = load ptr, ptr %i.ds, align 8     ; 2 uses
  %.not58 = icmp eq ptr %.sroa.046.0, null
  br i1 %.not58, label %._crit_edge69, label %.lr.ph68

bb.m:                                             ; preds = %._crit_edge69
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.dt, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.du, ptr %5, align 8, !alias.scope !45
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.dv, align 8, !alias.scope !45
  store i8 0, ptr %i.du, align 8, !alias.scope !45
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !45 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.dx, null
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !45 ; 2 uses
  %i.ea = icmp ugt ptr %i.dx, %i.dz
  %.08.i.i.i = select i1 %i.ea, ptr %i.dx, ptr %i.dz ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !45 ; 2 uses
  %i.ed = ptrtoint ptr %.08.i.i.i to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ec, i64 noundef %i.ef) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.o:                                             ; preds = %bb.m
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.o
  %i.eh = load ptr, ptr %5, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.15, i32 noundef %.sroa.0.0.copyload.i30, ptr noundef %i.eh) #19
  %i.ei = load ptr, ptr %5, align 8               ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.du
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ek = load i64, ptr %i.du, align 8
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge69
  %i.em = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.em, ptr %4, align 8
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.eo = getelementptr i8, ptr %i.em, i64 -24
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr %4, i64 %i.ep
  store ptr %i.en, ptr %i.eq, align 8
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.er, ptr %i.bw, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cl, align 8
  %i.es = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.cq
  br i1 %i.et, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.eu = load i64, ptr %i.cq, align 8
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cl, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #19
  store ptr %i.bm, ptr %4, align 8
  %i.ew = load i64, ptr %i.bo, align 8
  %i.ex = getelementptr inbounds i8, ptr %4, i64 %i.ew
  store ptr %i.bn, ptr %i.ex, align 8
  store i64 0, ptr %i.br, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bh) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.f
  %i.ey = load ptr, ptr %2, align 8               ; 3 uses
  %i.ez = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.fa = icmp ne ptr %i.ey, %i.ez
  %.012.i.i = getelementptr inbounds i8, ptr %i.ez, i64 -8 ; 2 uses
  %i.fb = icmp ult ptr %i.ey, %.012.i.i
  %or.cond.i.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.012.i.i, %bb.q ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.fd, %.lr.ph.i.i ], [ %i.ey, %bb.q ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.0913.i.i, align 8
  %i.fc = load i64, ptr %.014.i.i, align 8
  store i64 %i.fc, ptr %.0913.i.i, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.014.i.i, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 8 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -8 ; 2 uses
  %i.fe = icmp ult ptr %i.fd, %.0.i.i
  br i1 %i.fe, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit, !llvm.loop !36

_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %bb.q
  %i.ff = load ptr, ptr %3, align 8               ; 12 uses
  %6 = ptrtoaddr ptr %i.ff to i64                 ; 4 uses
  %i.fg = load ptr, ptr %i.g, align 8             ; 6 uses
  %7 = ptrtoaddr ptr %i.fg to i64                 ; 2 uses
  %i.fh = icmp ne ptr %i.ff, %i.fg
  %.012.i.i31 = getelementptr inbounds i8, ptr %i.fg, i64 -1 ; 7 uses
  %i.fi = icmp ult ptr %i.ff, %.012.i.i31
  %or.cond.i.i32 = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %or.cond.i.i32, label %iter.check, label %_ZSt7reverseIPbEvT_S1_.exit

iter.check:                                       ; preds = %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit
  %i.fj = add i64 %7, -2
  %i.fk = add i64 %6, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.fj, i64 %i.fk)
  %i.fl = xor i64 %6, -1
  %i.fm = add i64 %umax, %i.fl                    ; 2 uses
  %i.fn = icmp ne i64 %i.fm, 0
  %umin = zext i1 %i.fn to i64                    ; 2 uses
  %i.fo = sub i64 %i.fm, %umin
  %i.fp = lshr i64 %i.fo, 1
  %i.fq = add nuw i64 %i.fp, %umin
  %i.fr = add i64 %i.fq, 1                        ; 7 uses
  %min.iters.check = icmp ult i64 %i.fr, 8
  br i1 %min.iters.check, label %.lr.ph.i.i33.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fs = add i64 %7, -2
  %i.ft = add i64 %6, 1
  %i.fu = call i64 @llvm.umax.i64(i64 %i.fs, i64 %i.ft)
  %i.fv = xor i64 %6, -1
  %i.fw = add i64 %i.fu, %i.fv                    ; 2 uses
  %i.fx = icmp ne i64 %i.fw, 0
  %i.fy = zext i1 %i.fx to i64                    ; 2 uses
  %i.fz = sub i64 %i.fw, %i.fy
  %i.ga = lshr i64 %i.fz, 1
  %i.gb = add nuw i64 %i.ga, %i.fy                ; 2 uses
  %i.gc = getelementptr i8, ptr %i.ff, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 1
  %i.ge = xor i64 %i.gb, -1
  %i.gf = getelementptr i8, ptr %i.fg, i64 %i.ge
  %bound0 = icmp ult ptr %i.ff, %i.fg
  %bound1 = icmp ult ptr %i.gf, %i.gd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i33.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check79 = icmp ult i64 %i.fr, 16
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gg = and i64 %i.fr, 8
  %n.vec = and i64 %i.fr, -16                     ; 5 uses
  %i.gh = sub i64 0, %n.vec
  %i.gi = getelementptr i8, ptr %.012.i.i31, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.ff, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gk = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.012.i.i31, i64 %i.gk
  %next.gep80 = getelementptr i8, ptr %i.ff, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep80, align 1, !alias.scope !46, !noalias !47
  %i.gl = getelementptr i8, ptr %next.gep, i64 -15 ; 2 uses
  %wide.load81 = load <16 x i8>, ptr %i.gl, align 1, !alias.scope !47
  %reverse = shufflevector <16 x i8> %wide.load81, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %next.gep80, align 1, !alias.scope !46, !noalias !47
  %reverse82 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse82, ptr %i.gl, align 1, !alias.scope !47
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fr, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIPbEvT_S1_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.gg, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i33.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec84 = and i64 %i.fr, -8                    ; 4 uses
  %i.gn = sub i64 0, %n.vec84
  %i.go = getelementptr i8, ptr %.012.i.i31, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.ff, i64 %n.vec84
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 3 uses
  %i.gq = sub i64 0, %index85
  %next.gep86 = getelementptr i8, ptr %.012.i.i31, i64 %i.gq
  %next.gep87 = getelementptr i8, ptr %i.ff, i64 %index85 ; 2 uses
  %wide.load88 = load <8 x i8>, ptr %next.gep87, align 1, !alias.scope !46, !noalias !47
  %i.gr = getelementptr i8, ptr %next.gep86, i64 -7 ; 2 uses
  %wide.load89 = load <8 x i8>, ptr %i.gr, align 1, !alias.scope !47
  %reverse90 = shufflevector <8 x i8> %wide.load89, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse90, ptr %next.gep87, align 1, !alias.scope !46, !noalias !47
  %reverse91 = shufflevector <8 x i8> %wide.load88, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse91, ptr %i.gr, align 1, !alias.scope !47
  %index.next92 = add nuw i64 %index85, 8         ; 2 uses
  %i.gs = icmp eq i64 %index.next92, %n.vec84
  br i1 %i.gs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %i.fr, %n.vec84
  br i1 %cmp.n93, label %_ZSt7reverseIPbEvT_S1_.exit.loopexit, label %.lr.ph.i.i33.preheader

.lr.ph.i.i33.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.i.i34.ph = phi ptr [ %.012.i.i31, %iter.check ], [ %.012.i.i31, %vector.memcheck ], [ %i.gi, %vec.epilog.iter.check ], [ %i.go, %vec.epilog.middle.block ]
  %.0913.i.i35.ph = phi ptr [ %i.ff, %iter.check ], [ %i.ff, %vector.memcheck ], [ %i.gj, %vec.epilog.iter.check ], [ %i.gp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %.lr.ph.i.i33.preheader, %.lr.ph.i.i33
  %.014.i.i34 = phi ptr [ %.0.i.i36, %.lr.ph.i.i33 ], [ %.014.i.i34.ph, %.lr.ph.i.i33.preheader ] ; 3 uses
  %.0913.i.i35 = phi ptr [ %i.gv, %.lr.ph.i.i33 ], [ %.0913.i.i35.ph, %.lr.ph.i.i33.preheader ] ; 3 uses
  %i.gt = load i8, ptr %.0913.i.i35, align 1, !range !10, !noundef !6
  %i.gu = load i8, ptr %.014.i.i34, align 1, !range !10, !noundef !6
  store i8 %i.gu, ptr %.0913.i.i35, align 1
  store i8 %i.gt, ptr %.014.i.i34, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %.0913.i.i35, i64 1 ; 2 uses
  %.0.i.i36 = getelementptr inbounds i8, ptr %.014.i.i34, i64 -1 ; 2 uses
  %i.gw = icmp ult ptr %i.gv, %.0.i.i36
  br i1 %i.gw, label %.lr.ph.i.i33, label %_ZSt7reverseIPbEvT_S1_.exit.loopexit, !llvm.loop !42

_ZSt7reverseIPbEvT_S1_.exit.loopexit:             ; preds = %.lr.ph.i.i33, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %3, align 8
  %.pre70 = load ptr, ptr %i.g, align 8
  br label %_ZSt7reverseIPbEvT_S1_.exit

_ZSt7reverseIPbEvT_S1_.exit:                      ; preds = %_ZSt7reverseIPbEvT_S1_.exit.loopexit, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit
  %i.gx = phi ptr [ %.pre70, %_ZSt7reverseIPbEvT_S1_.exit.loopexit ], [ %i.fg, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit ]
  %i.gy = phi ptr [ %.pre, %_ZSt7reverseIPbEvT_S1_.exit.loopexit ], [ %i.ff, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit ] ; 2 uses
  %i.gz = load ptr, ptr %2, align 8               ; 2 uses
  %i.ha = load ptr, ptr %i.c, align 8
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gz to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = ashr exact i64 %i.hd, 3
  %i.hf = ptrtoint ptr %i.gx to i64
  %i.hg = ptrtoint ptr %i.gy to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr %i.gz, i64 %i.he, ptr %i.gy, i64 %i.hh) ; 0 uses
  call preserve_mostcc void @_ZN2v84base11SmallVectorIbLm8ESaIbEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft13SnapshotTableINS2_4wasm9ValueTypeENS4_9NoKeyDataEE8SnapshotELm8ESaISA_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer21ProcessBranchOnTargetERKNS2_8BranchOpERKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(100) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = inttoptr i64 %i.h to ptr                 ; 9 uses
  %i.j = load i8, ptr %i.i, align 4
  switch i8 %i.j, label %.critedge [
    i8 18, label %bb.b
    i8 15, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, %2
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.m, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i52 = load i32, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.020.0.copyload = load i32, ptr %i.o, align 4
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19RefineTypeKnowledgeENS2_7OpIndexENS0_4wasm9ValueTypeERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %.sroa.0.0.copyload.i.i52, i32 %.sroa.020.0.copyload, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %.critedge

.preheader:                                       ; preds = %bb.b, %bb.f
  %.sroa.08.0.i.i.in = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.b ]
  %.sroa.08.0.i.i = load i32, ptr %.sroa.08.0.i.i.in, align 4 ; 2 uses
  %i.q = zext i32 %.sroa.08.0.i.i to i64
  %i.r = add i64 %i.q, %i.f
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4
  switch i8 %i.t, label %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer15GetResolvedTypeENS2_7OpIndexE.exit [
    i8 19, label %bb.f
    i8 16, label %bb.d
    i8 22, label %bb.e
  ]

bb.d:                                             ; preds = %.preheader
  br label %bb.f

bb.e:                                             ; preds = %.preheader
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.preheader
  %.sink.i.i = phi i64 [ 8, %bb.e ], [ 12, %bb.d ], [ 16, %.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink.i.i
  br label %.preheader

_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer15GetResolvedTypeENS2_7OpIndexE.exit: ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = tail call i32 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.v, i32 %.sroa.08.0.i.i) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.015.0.copyload = load i32, ptr %i.x, align 4 ; 2 uses
  %i.y = icmp eq i32 %i.w, %.sroa.015.0.copyload
  br i1 %i.y, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit, !prof !11

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer15GetResolvedTypeENS2_7OpIndexE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %i.w, i32 %.sroa.015.0.copyload, ptr noundef %i.aa, ptr noundef %i.aa) #19
  br i1 %i.ab, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread, label %.critedge

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer15GetResolvedTypeENS2_7OpIndexE.exit, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ac, align 4 ; 3 uses
  %i.ad = and i32 %.sroa.0.0.copyload.i, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ah = load ptr, ptr %i.ag, align 8
end_hunk_1
