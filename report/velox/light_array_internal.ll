Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/light_array_internal?download=true
inline.NumInlined: 1504
inline.NumDeleted: 739
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i187, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !22
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds i8, ptr %i.lp, i64 %i.mn
  %.val36.i194 = load i64, ptr %i.mo, align 8, !tbaa !25
  %i.mp = load ptr, ptr %i.md, align 8
  %i.mq = getelementptr [8 x i8], ptr %i.mp, i64 %indvars.iv.i193
  %i.mr = getelementptr [8 x i8], ptr %i.mq, i64 %i.me
  store i64 %.val36.i194, ptr %i.mr, align 8, !tbaa !25
  %indvars.iv.next.i195 = or disjoint i64 %indvars.iv.i193, 1 ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next.i195
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !137
  %i.mu = zext i16 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i187, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !22
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %i.lp, i64 %i.mx
  %.val36.i194.1 = load i64, ptr %i.my, align 8, !tbaa !25
  %i.mz = load ptr, ptr %i.md, align 8
  %i.na = getelementptr [8 x i8], ptr %i.mz, i64 %indvars.iv.next.i195
  %i.nb = getelementptr [8 x i8], ptr %i.na, i64 %i.me
  store i64 %.val36.i194.1, ptr %i.nb, align 8, !tbaa !25
  %indvars.iv.next.i195.1 = add nuw nsw i64 %indvars.iv.i193, 2 ; 2 uses
  %niter485.next.1 = add i64 %niter485, 2         ; 2 uses
  %niter485.ncmp.1 = icmp eq i64 %niter485.next.1, %unroll_iter484
  br i1 %niter485.ncmp.1, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit466.unr-lcssa, label %bb.au, !llvm.loop !298

bb.av:                                            ; preds = %bb.av, %.lr.ph48.i198.new
  %indvars.iv51.i203 = phi i64 [ 0, %.lr.ph48.i198.new ], [ %indvars.iv.next52.i205.1, %bb.av ] ; 4 uses
  %niter491 = phi i64 [ 0, %.lr.ph48.i198.new ], [ %niter491.next.1, %bb.av ]
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv51.i203
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !137
  %i.ne = load ptr, ptr %i.ld, align 8
  %i.nf = load i64, ptr %i.le, align 8, !tbaa !73
  %i.ng = zext i16 %i.nd to i64
  %i.nh = add nsw i64 %i.nf, %i.ng
  %i.ni = mul nsw i64 %i.nh, %.sroa.520.0.extract.shift44.i184
  %i.nj = getelementptr inbounds i8, ptr %i.ne, i64 %i.ni
  %.val33.i204 = load i64, ptr %i.nj, align 8, !tbaa !25
  %i.nk = load ptr, ptr %i.lg, align 8
  %i.nl = getelementptr [8 x i8], ptr %i.nk, i64 %indvars.iv51.i203
  %i.nm = getelementptr [8 x i8], ptr %i.nl, i64 %i.lh
  store i64 %.val33.i204, ptr %i.nm, align 8, !tbaa !25
  %indvars.iv.next52.i205 = or disjoint i64 %indvars.iv51.i203, 1 ; 2 uses
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next52.i205
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !137
  %i.np = load ptr, ptr %i.ld, align 8
  %i.nq = load i64, ptr %i.le, align 8, !tbaa !73
  %i.nr = zext i16 %i.no to i64
  %i.ns = add nsw i64 %i.nq, %i.nr
  %i.nt = mul nsw i64 %i.ns, %.sroa.520.0.extract.shift44.i184
  %i.nu = getelementptr inbounds i8, ptr %i.np, i64 %i.nt
  %.val33.i204.1 = load i64, ptr %i.nu, align 8, !tbaa !25
  %i.nv = load ptr, ptr %i.lg, align 8
  %i.nw = getelementptr [8 x i8], ptr %i.nv, i64 %indvars.iv.next52.i205
  %i.nx = getelementptr [8 x i8], ptr %i.nw, i64 %i.lh
  store i64 %.val33.i204.1, ptr %i.nx, align 8, !tbaa !25
  %indvars.iv.next52.i205.1 = add nuw nsw i64 %indvars.iv51.i203, 2 ; 2 uses
  %niter491.next.1 = add i64 %niter491, 2         ; 2 uses
  %niter491.ncmp.1 = icmp eq i64 %niter491.next.1, %unroll_iter490
  br i1 %niter491.ncmp.1, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit465.unr-lcssa.a, label %bb.av, !llvm.loop !299

bb.aw:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ny = call noundef i32 @_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, ptr noundef %4, i32 noundef 8) ; 3 uses
  %i.nz = sub nsw i32 %3, %i.ny                   ; 6 uses
  store i32 %i.nz, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.oa = load ptr, ptr %1, align 8, !tbaa !54
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.oa)
  %i.ob = load ptr, ptr %10, align 8, !tbaa !36
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %.thread.i227, label %bb.ax, !prof !37

.thread.i227:                                     ; preds = %bb.aw
  %i.od = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.0.0.copyload.i.i46.i = load i64, ptr %i.od, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %.pr.i209 = load ptr, ptr %10, align 8, !tbaa !36
  %i.oe = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.0.0.copyload.i.i.i210 = load i64, ptr %i.oe, align 8 ; 2 uses
  %.not.i.i.i211 = icmp eq ptr %.pr.i209, null
  br i1 %.not.i.i.i211, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212, label %bb.az, !prof !135

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212: ; preds = %bb.az, %bb.ay, %.thread.i227
  %.sroa.0.0.copyload.i.i50.i = phi i64 [ %.sroa.0.0.copyload.i.i46.i, %.thread.i227 ], [ %.sroa.0.0.copyload.i.i.i210, %bb.ay ], [ %.sroa.0.0.copyload.i.i.i210, %bb.az ] ; 3 uses
  %.sroa.520.0.extract.shift51.i = lshr i64 %.sroa.0.0.copyload.i.i50.i, 32 ; 3 uses
  %.sroa.520.0.extract.trunc52.i = trunc nuw i64 %.sroa.520.0.extract.shift51.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.of = trunc i64 %.sroa.0.0.copyload.i.i50.i to i1
  br i1 %i.of, label %.preheader.i223, label %bb.ba

.preheader.i223:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212
  %i.og = icmp sgt i32 %i.nz, 0
  br i1 %i.og, label %.lr.ph56.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"

.lr.ph56.i:                                       ; preds = %.preheader.i223
  %i.oh = ashr i64 %.sroa.0.0.copyload.i.i50.i, 32 ; 3 uses
  %i.oi = add nsw i64 %i.oh, -1
  %i.oj = sdiv i64 %i.oi, 8                       ; 3 uses
  %i.ok = icmp eq i64 %.sroa.520.0.extract.shift51.i, 0
  %.not1.i38.i = icmp slt i32 %.sroa.520.0.extract.trunc52.i, -6
  %or.cond2.i39.i = or i1 %i.ok, %.not1.i38.i
  br i1 %or.cond2.i39.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.preheader.i

.lr.ph.split.i40.preheader.preheader.i:           ; preds = %.lr.ph56.i
  %wide.trip.count62.i = zext nneg i32 %i.nz to i64
  %i.ol = getelementptr i8, ptr %2, i64 72
  %i.om = call i64 @llvm.smax.i64(i64 %i.oj, i64 0)
  %i.on = call i64 @llvm.smax.i64(i64 %i.oj, i64 0)
  %i.oo = add nuw nsw i64 %i.on, 1                ; 2 uses
  %min.iters.check444 = icmp slt i64 %i.oh, 89
  %i.op = and i64 %i.om, 4294967295
  %i.oq = icmp eq i64 %i.op, 4294967295
  %or.cond = select i1 %min.iters.check444, i1 true, i1 %i.oq
  %n.vec446 = and i64 %i.oo, 9223372036854775804  ; 3 uses
  %cmp.n453 = icmp eq i64 %i.oo, %n.vec446
  br label %.lr.ph.split.i40.preheader.i

bb.ba:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212
  %i.or = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 40
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !74 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !77
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8            ; 2 uses
  %i.oy = ptrtoaddr ptr %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !77 ; 3 uses
  %.not.i.i35.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i35.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pb = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !73
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 9
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !84, !range !85, !noundef !86
  %i.pf = trunc nuw i8 %i.pe to i1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = select i1 %i.pf, ptr %i.ph, ptr null, !prof !37
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.pc
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i214 = phi ptr [ %i.pj, %bb.bb ], [ null, %bb.ba ]
  %i.pk = icmp sgt i32 %i.nz, 0
  br i1 %i.pk, label %.lr.ph.preheader.i215, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"

.lr.ph.preheader.i215:                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %wide.trip.count.i216 = zext nneg i32 %i.nz to i64
  %i.pl = getelementptr i8, ptr %2, i64 72
  br label %.lr.ph.i217

bb.bc:                                            ; preds = %bb.ax
  %i.pm = landingpad { ptr, i32 }
          cleanup
  %i.pn = load ptr, ptr %10, align 8, !tbaa !36
  %.not.i.i36.i = icmp eq ptr %i.pn, null
  br i1 %.not.i.i36.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i, label %bb.bd, !prof !37

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %common.resume

.lr.ph.i217:                                      ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %.lr.ph.preheader.i215
  %indvars.iv.i218 = phi i64 [ 0, %.lr.ph.preheader.i215 ], [ %indvars.iv.next.i221, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i" ] ; 3 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i218
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !137
  %i.pq = zext i16 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i214, i64 %i.pq ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !22 ; 3 uses
  %i.pt = sext i32 %i.ps to i64                   ; 2 uses
  %i.pu = getelementptr inbounds i8, ptr %i.ox, i64 %i.pt ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !22 ; 2 uses
  %i.px = sub nsw i32 %i.pw, %i.ps                ; 3 uses
  %.val33.val.val.i = load ptr, ptr %i.pl, align 8, !tbaa !131
  %i.py = getelementptr inbounds nuw i8, ptr %.val33.val.val.i, i64 16
  %i.pz = load ptr, ptr %i.py, align 8            ; 2 uses
  %i.qa = ptrtoaddr ptr %i.pz to i64
  %i.qb = sext i32 %i.px to i64                   ; 2 uses
  %i.qc = trunc i64 %indvars.iv.i218 to i32
  %i.qd = add i32 %i.h, %i.qc
  %i.qe = sext i32 %i.qd to i64
  %i.qf = mul nsw i64 %i.qb, %i.qe                ; 2 uses
  %i.qg = getelementptr inbounds i8, ptr %i.pz, i64 %i.qf ; 2 uses
  %i.qh = add nsw i64 %i.qb, -1
  %i.qi = sdiv i64 %i.qh, 8                       ; 3 uses
  %i.qj = icmp eq i32 %i.pw, %i.ps
  %.not1.i.i = icmp slt i32 %i.px, -6
  %or.cond2.i.i = or i1 %i.qj, %.not1.i.i
  br i1 %or.cond2.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i217
  %i.qk = call i64 @llvm.smax.i64(i64 %i.qi, i64 0)
  %i.ql = add nuw nsw i64 %i.qk, 1                ; 2 uses
  %min.iters.check428 = icmp slt i32 %i.px, 137
  br i1 %min.iters.check428, label %.lr.ph.split.i.i.preheader458, label %vector.scevcheck423

vector.scevcheck423:                              ; preds = %.lr.ph.split.i.i.preheader
  %i.qm = call i64 @llvm.smax.i64(i64 %i.qi, i64 0)
  %i.qn = and i64 %i.qm, 4294967295
  %i.qo = icmp eq i64 %i.qn, 4294967295
  br i1 %i.qo, label %.lr.ph.split.i.i.preheader458, label %vector.memcheck425

vector.memcheck425:                               ; preds = %vector.scevcheck423
  %i.qp = add i64 %i.qf, %i.qa
  %i.qq = add i64 %i.oy, %i.pt
  %i.qr = sub i64 %i.qq, %i.qp
  %diff.check426 = icmp ugt i64 %i.qr, -32
  br i1 %diff.check426, label %.lr.ph.split.i.i.preheader458, label %vector.ph429

vector.ph429:                                     ; preds = %vector.memcheck425
  %n.vec430 = and i64 %i.ql, 9223372036854775804  ; 3 uses
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph429
  %index432 = phi i64 [ 0, %vector.ph429 ], [ %index.next435, %vector.body431 ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %index432 ; 2 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %index432 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %wide.load433.a = load <2 x i64>, ptr %i.qt, align 8
  %wide.load434 = load <2 x i64>, ptr %i.qu, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store <2 x i64> %wide.load433.a, ptr %i.qs, align 1
  store <2 x i64> %wide.load434, ptr %i.qv, align 1
  %index.next435 = add nuw i64 %index432, 4       ; 2 uses
  %i.qw = icmp eq i64 %index.next435, %n.vec430
  br i1 %i.qw, label %middle.block436, label %vector.body431, !llvm.loop !300

middle.block436:                                  ; preds = %vector.body431
  %cmp.n437 = icmp eq i64 %i.ql, %n.vec430
  br i1 %cmp.n437, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader458

.lr.ph.split.i.i.preheader458:                    ; preds = %vector.memcheck425, %vector.scevcheck423, %.lr.ph.split.i.i.preheader, %middle.block436
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck425 ], [ 0, %vector.scevcheck423 ], [ 0, %.lr.ph.split.i.i.preheader ], [ %n.vec430, %middle.block436 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader458, %.lr.ph.split.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.split.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.split.i.i.preheader458 ] ; 3 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv.i.i
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.qy, align 8
  store i64 %.0.copyload.i.i.i, ptr %i.qx, align 1
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.qz = and i64 %indvars.iv.next.i.i, 4294967295
  %.not.i.i220 = icmp slt i64 %i.qi, %i.qz
  br i1 %.not.i.i220, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i, !llvm.loop !301

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i, %middle.block436, %.lr.ph.i217
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i218, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i216
  br i1 %exitcond.not.i222, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.i217, !llvm.loop !302

.lr.ph.split.i40.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", %.lr.ph.split.i40.preheader.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.split.i40.preheader.preheader.i ], [ %indvars.iv.next60.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i" ] ; 3 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv59.i
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !137
  %i.rc = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 40
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !74
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !77
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8            ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !73
  %i.rl = zext i16 %i.rb to i64
  %i.rm = add nsw i64 %i.rk, %i.rl
  %i.rn = mul nsw i64 %i.rm, %.sroa.520.0.extract.shift51.i ; 2 uses
  %i.ro = getelementptr inbounds i8, ptr %i.ri, i64 %i.rn ; 2 uses
  %.val.val.val.i226 = load ptr, ptr %i.ol, align 8, !tbaa !131
  %i.rp = getelementptr inbounds nuw i8, ptr %.val.val.val.i226, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8            ; 2 uses
  %i.rr = trunc nuw nsw i64 %indvars.iv59.i to i32
  %i.rs = add nsw i32 %i.h, %i.rr
  %i.rt = sext i32 %i.rs to i64
  %i.ru = mul nsw i64 %i.oh, %i.rt                ; 2 uses
  %i.rv = getelementptr inbounds i8, ptr %i.rq, i64 %i.ru ; 2 uses
  br i1 %or.cond, label %.lr.ph.split.i40.i.preheader, label %vector.memcheck441

vector.memcheck441:                               ; preds = %.lr.ph.split.i40.preheader.i
  %i.rw = ptrtoaddr ptr %i.rq to i64
  %i.rx = ptrtoaddr ptr %i.ri to i64
  %i.ry = add i64 %i.ru, %i.rw
  %i.rz = add i64 %i.rn, %i.rx
  %i.sa = sub i64 %i.rz, %i.ry
  %diff.check442 = icmp ugt i64 %i.sa, -32
  br i1 %diff.check442, label %.lr.ph.split.i40.i.preheader, label %vector.body447

vector.body447:                                   ; preds = %vector.memcheck441, %vector.body447
  %index448 = phi i64 [ %index.next451, %vector.body447 ], [ 0, %vector.memcheck441 ] ; 3 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %index448 ; 2 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %index448 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %wide.load449.a = load <2 x i64>, ptr %i.sc, align 8
  %wide.load450 = load <2 x i64>, ptr %i.sd, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  store <2 x i64> %wide.load449.a, ptr %i.sb, align 1
  store <2 x i64> %wide.load450, ptr %i.se, align 1
  %index.next451 = add nuw i64 %index448, 4       ; 2 uses
  %i.sf = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.sf, label %middle.block452, label %vector.body447, !llvm.loop !303

middle.block452:                                  ; preds = %vector.body447
  br i1 %cmp.n453, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", label %.lr.ph.split.i40.i.preheader

.lr.ph.split.i40.i.preheader:                     ; preds = %vector.memcheck441, %.lr.ph.split.i40.preheader.i, %middle.block452
  %indvars.iv.i41.i.ph = phi i64 [ 0, %vector.memcheck441 ], [ 0, %.lr.ph.split.i40.preheader.i ], [ %n.vec446, %middle.block452 ]
  br label %.lr.ph.split.i40.i

.lr.ph.split.i40.i:                               ; preds = %.lr.ph.split.i40.i.preheader, %.lr.ph.split.i40.i
  %indvars.iv.i41.i = phi i64 [ %indvars.iv.next.i43.i, %.lr.ph.split.i40.i ], [ %indvars.iv.i41.i.ph, %.lr.ph.split.i40.i.preheader ] ; 3 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv.i41.i
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %indvars.iv.i41.i
  %.0.copyload.i.i42.i = load i64, ptr %i.sh, align 8
  store i64 %.0.copyload.i.i42.i, ptr %i.sg, align 1
  %indvars.iv.next.i43.i = add i64 %indvars.iv.i41.i, 1 ; 2 uses
  %i.si = and i64 %indvars.iv.next.i43.i, 4294967295
  %.not.i44.i = icmp slt i64 %i.oj, %i.si
  br i1 %.not.i44.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", label %.lr.ph.split.i40.i, !llvm.loop !304

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i": ; preds = %.lr.ph.split.i40.i, %middle.block452
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.i, !llvm.loop !305

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", %.preheader.i223, %.lr.ph56.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %i.sj = icmp sgt i32 %i.ny, 0
  br i1 %i.sj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  %i.sk = sext i32 %i.nz to i64
  %i.sl = getelementptr inbounds [2 x i8], ptr %4, i64 %i.sk
  store ptr %i.a, ptr %18, align 8, !tbaa !334
  %i.sm = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.b, ptr %i.sm, align 8, !tbaa !335
  %i.sn = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.c, ptr %i.sn, align 8, !tbaa !335
  call fastcc void @"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_5EEvS7_iSB_T_"(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ny, ptr noundef %i.sl, ptr noundef nonnull byval(%class.anon.86) align 8 %18)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

bb.bg:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit
  %i.so = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !131 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 9
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !84, !range !85, !noundef !86
  %i.ss = trunc nuw i8 %i.sr to i1
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.su = load i8, ptr %i.st, align 8, !range !85
  %i.sv = trunc nuw i8 %i.su to i1
  %i.sw = select i1 %i.ss, i1 %i.sv, i1 false, !prof !37
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8            ; 12 uses
  %i.sz = select i1 %i.sw, ptr %i.sy, ptr null, !prof !37 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  br i1 %i.j, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ta = sext i32 %i.h to i64
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !22
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.td = phi i32 [ %i.tc, %bb.bh ], [ 0, %bb.bg ] ; 5 uses
  store i32 %i.td, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.te = load ptr, ptr %1, align 8, !tbaa !54
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.te)
  %i.tf = load ptr, ptr %9, align 8, !tbaa !36
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %.thread.i247, label %bb.bj, !prof !37

.thread.i247:                                     ; preds = %bb.bi
  %i.th = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i38.i = load i64, ptr %i.th, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %.pr.i230 = load ptr, ptr %9, align 8, !tbaa !36
  %i.ti = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i.i231 = load i64, ptr %i.ti, align 8 ; 2 uses
  %.not.i.i.i232 = icmp eq ptr %.pr.i230, null
  br i1 %.not.i.i.i232, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233, label %bb.bl, !prof !135

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233: ; preds = %bb.bl, %bb.bk, %.thread.i247
  %.sroa.0.0.copyload.i.i42.i = phi i64 [ %.sroa.0.0.copyload.i.i38.i, %.thread.i247 ], [ %.sroa.0.0.copyload.i.i.i231, %bb.bk ], [ %.sroa.0.0.copyload.i.i.i231, %bb.bl ] ; 2 uses
  %.sroa.520.0.extract.trunc43.in.i = lshr i64 %.sroa.0.0.copyload.i.i42.i, 32
  %.sroa.520.0.extract.trunc43.i = trunc nuw i64 %.sroa.520.0.extract.trunc43.in.i to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.tj = trunc i64 %.sroa.0.0.copyload.i.i42.i to i1
  br i1 %i.tj, label %.preheader.i244, label %bb.bm

.preheader.i244:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.tk = icmp sgt i32 %3, 0
  br i1 %i.tk, label %.lr.ph47.i.preheader, label %.critedge101

.lr.ph47.i.preheader:                             ; preds = %.preheader.i244
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph47.i.preheader471, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph47.i.preheader
  %n.vec = and i32 %3, 2147483640                 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.520.0.extract.trunc43.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tl = add nsw i32 %i.h, %index
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.tm ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.tn, align 4, !tbaa !22
  store <4 x i32> %broadcast.splat, ptr %i.to, align 4, !tbaa !22
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.tp = icmp eq i32 %index.next, %n.vec
  br i1 %i.tp, label %middle.block, label %vector.body, !llvm.loop !306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %.lr.ph47.i.preheader471

.lr.ph47.i.preheader471:                          ; preds = %.lr.ph47.i.preheader, %middle.block
  %.046.i.ph = phi i32 [ 0, %.lr.ph47.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph47.i

bb.bm:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.tq = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 40
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !74
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !77 ; 3 uses
  %.not.i.i35.i234 = icmp eq ptr %i.tu, null
  br i1 %.not.i.i35.i234, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 32
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !73
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 9
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !84, !range !85, !noundef !86
  %i.tz = trunc nuw i8 %i.ty to i1
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8
  %i.uc = select i1 %i.tz, ptr %i.ub, ptr null, !prof !37
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.tw
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i236 = phi ptr [ %i.ud, %bb.bn ], [ null, %bb.bm ] ; 3 uses
  %i.ue = icmp sgt i32 %3, 0
  br i1 %i.ue, label %.lr.ph.i237, label %.critedge101

.lr.ph.i237:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235
  %wide.trip.count.i239 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i239, 1
  %i.uf = icmp eq i32 %3, 1
  br i1 %i.uf, label %.epil.preheader, label %.lr.ph.i237.new

.lr.ph.i237.new:                                  ; preds = %.lr.ph.i237
  %unroll_iter = and i64 %wide.trip.count.i239, 2147483646
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bj
  %i.ug = landingpad { ptr, i32 }
          cleanup
  %i.uh = load ptr, ptr %9, align 8, !tbaa !36
  %.not.i.i36.i228 = icmp eq ptr %i.uh, null
  br i1 %.not.i.i36.i228, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229, label %bb.bp, !prof !37

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.i237.new
  %indvars.iv.i240 = phi i64 [ 0, %.lr.ph.i237.new ], [ %indvars.iv.next.i242.1, %bb.bq ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i237.new ], [ %niter.next.1, %bb.bq ]
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i240
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !137
  %i.uk = zext i16 %i.uj to i64
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i236, i64 %i.uk ; 2 uses
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !22
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !22
  %i.up = sub nsw i32 %i.uo, %i.um
  %i.uq = trunc nuw nsw i64 %indvars.iv.i240 to i32
  %i.ur = add nsw i32 %i.h, %i.uq
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.us
  store i32 %i.up, ptr %i.ut, align 4, !tbaa !22
  %indvars.iv.next.i242 = or disjoint i64 %indvars.iv.i240, 1 ; 2 uses
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next.i242
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !137
  %i.uw = zext i16 %i.uv to i64
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i236, i64 %i.uw ; 2 uses
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !22
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !22
  %i.vb = sub nsw i32 %i.va, %i.uy
  %i.vc = trunc nuw nsw i64 %indvars.iv.next.i242 to i32
  %i.vd = add nsw i32 %i.h, %i.vc
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.ve
  store i32 %i.vb, ptr %i.vf, align 4, !tbaa !22
  %indvars.iv.next.i242.1 = add nuw nsw i64 %indvars.iv.i240, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.loopexit472.unr-lcssa, label %bb.bq, !llvm.loop !307

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.preheader471, %.lr.ph47.i
  %.046.i = phi i32 [ %i.vj, %.lr.ph47.i ], [ %.046.i.ph, %.lr.ph47.i.preheader471 ] ; 2 uses
  %i.vg = add nsw i32 %i.h, %.046.i
  %i.vh = sext i32 %i.vg to i64
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.vh
  store i32 %.sroa.520.0.extract.trunc43.i, ptr %i.vi, align 4, !tbaa !22
  %i.vj = add nuw nsw i32 %.046.i, 1              ; 2 uses
  %exitcond50.not.i = icmp eq i32 %i.vj, %3
  br i1 %exitcond50.not.i, label %.lr.ph.preheader, label %.lr.ph47.i, !llvm.loop !308

.lr.ph.preheader.loopexit472.unr-lcssa:           ; preds = %bb.bq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.loopexit472.unr-lcssa, %.lr.ph.i237
  %indvars.iv.i240.epil.init = phi i64 [ 0, %.lr.ph.i237 ], [ %indvars.iv.next.i242.1, %.lr.ph.preheader.loopexit472.unr-lcssa ] ; 2 uses
  %lcmp.mod473 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod473)
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i240.epil.init
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !137
  %i.vm = zext i16 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i236, i64 %i.vm ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !22
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 4
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !22
  %i.vr = sub nsw i32 %i.vq, %i.vo
  %i.vs = trunc nuw nsw i64 %indvars.iv.i240.epil.init to i32
  %i.vt = add nsw i32 %i.h, %i.vs
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.vu
  store i32 %i.vr, ptr %i.vv, align 4, !tbaa !22
  br label %.lr.ph.preheader

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge103

.critedge101.loopexit.unr-lcssa:                  ; preds = %bb.br
  %lcmp.mod475.not = icmp eq i32 %xtraiter474, 0
  br i1 %lcmp.mod475.not, label %.critedge101, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.critedge101.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ %i.td, %.lr.ph.preheader ], [ %i.wm, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %.090330.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.wn, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod477 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wq = add nsw i32 %i.h, %.090330.epil.init
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.wr ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !22 ; 2 uses
  store i32 %i.wt, ptr %i.e, align 4, !tbaa !22
  store i32 %.epil.init, ptr %i.ws, align 4, !tbaa !22
  %i.wu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.epil.init, i32 %i.wt) ; 2 uses
  %i.wv = extractvalue { i32, i1 } %i.wu, 1
  br i1 %i.wv, label %.loopexit, label %.critedge101.loopexit.epilog-lcssa, !prof !51

.critedge101.loopexit.epilog-lcssa:               ; preds = %.lr.ph.epil.preheader
  %i.ww = extractvalue { i32, i1 } %i.wu, 0       ; 2 uses
  store i32 %i.ww, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge101

.critedge101:                                     ; preds = %.critedge101.loopexit.epilog-lcssa, %.critedge101.loopexit.unr-lcssa, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, %.preheader.i244
  %i.wx = phi i32 [ %i.td, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235 ], [ %i.td, %.preheader.i244 ], [ %i.wm, %.critedge101.loopexit.unr-lcssa ], [ %i.ww, %.critedge101.loopexit.epilog-lcssa ]
  %i.wy = sext i32 %i.i to i64
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.wy
  store i32 %i.wx, ptr %i.wz, align 4, !tbaa !22
  %i.xa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.xb = load i8, ptr %i.xa, align 8, !tbaa !132, !range !85, !noalias !336, !noundef !86
  %i.xc = trunc nuw i8 %i.xb to i1
  br i1 %i.xc, label %_ZN5arrow6StatusD2Ev.exit252, label %bb.bs

bb.bs:                                            ; preds = %.critedge101
  %i.xd = load ptr, ptr %i.so, align 8, !tbaa !131, !noalias !336
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %i.xf = load ptr, ptr %i.xe, align 8, !noalias !336
  %i.xg = load i32, ptr %i.g, align 8, !tbaa !120, !noalias !336
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.xf, i64 %i.xh
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !22, !noalias !336
  %i.xk = sext i32 %i.xj to i64                   ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !129, !noalias !336 ; 2 uses
  %i.xn = icmp slt i64 %i.xm, %i.xk
  br i1 %i.xn, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit252

.preheader.i248:                                  ; preds = %bb.bs, %.preheader.i248
  %.012.i = phi i64 [ %i.xp, %.preheader.i248 ], [ %i.xm, %bb.bs ] ; 4 uses
  %i.xo = icmp slt i64 %.012.i, %i.xk
  %i.xp = shl nsw i64 %.012.i, 1
  br i1 %i.xo, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit.i, !llvm.loop !1

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.preheader.i248
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !336
  %i.xq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !131, !noalias !336 ; 2 uses
  %i.xs = add nsw i64 %.012.i, 64
  %i.xt = load ptr, ptr %i.xr, align 8, !tbaa !33, !noalias !337
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = load ptr, ptr %i.xu, align 8, !noalias !337
  call void %i.xv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %i.xr, i64 noundef %i.xs, i1 noundef zeroext true), !noalias !336, !inline_history !314
  %i.xw = load ptr, ptr %8, align 8, !tbaa !36, !noalias !338 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !336
  %i.xx = icmp eq ptr %i.xw, null
  br i1 %i.xx, label %_ZN5arrow6StatusD2Ev.exit17.i, label %_ZN5arrow6StatusD2Ev.exit250

_ZN5arrow6StatusD2Ev.exit17.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store i64 %.012.i, ptr %i.xl, align 8, !tbaa !129, !noalias !336
  br label %_ZN5arrow6StatusD2Ev.exit252

_ZN5arrow6StatusD2Ev.exit250:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.xw, ptr %0, align 8, !tbaa !36, !alias.scope !339
  br label %.critedge103

_ZN5arrow6StatusD2Ev.exit252:                     ; preds = %_ZN5arrow6StatusD2Ev.exit17.i, %bb.bs, %.critedge101
  store ptr null, ptr %0, align 8, !tbaa !36, !alias.scope !340
  %i.xy = call noundef i32 @_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, ptr noundef %4, i32 noundef 8) ; 5 uses
  %i.xz = sub nsw i32 %3, %i.xy                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ya = load ptr, ptr %1, align 8, !tbaa !54
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ya)
  %i.yb = load ptr, ptr %7, align 8, !tbaa !36
  %i.yc = icmp eq ptr %i.yb, null
  br i1 %i.yc, label %.thread.i270, label %bb.bt, !prof !37

.thread.i270:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit252
  %i.yd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i43.i271 = load i64, ptr %i.yd, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256

bb.bt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit252
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %.pr.i253 = load ptr, ptr %7, align 8, !tbaa !36
  %i.ye = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i.i254 = load i64, ptr %i.ye, align 8 ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %.pr.i253, null
  br i1 %.not.i.i.i255, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256, label %bb.bv, !prof !135

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256: ; preds = %bb.bv, %bb.bu, %.thread.i270
  %.sroa.0.0.copyload.i.i47.i = phi i64 [ %.sroa.0.0.copyload.i.i43.i271, %.thread.i270 ], [ %.sroa.0.0.copyload.i.i.i254, %bb.bu ], [ %.sroa.0.0.copyload.i.i.i254, %bb.bv ] ; 3 uses
  %.sroa.520.0.extract.shift48.i = lshr i64 %.sroa.0.0.copyload.i.i47.i, 32 ; 3 uses
  %.sroa.520.0.extract.trunc49.i = trunc nuw i64 %.sroa.520.0.extract.shift48.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.yf = trunc i64 %.sroa.0.0.copyload.i.i47.i to i1
  br i1 %i.yf, label %.preheader.i269, label %bb.bw

.preheader.i269:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.yg = icmp sgt i32 %i.xz, 0
  br i1 %i.yg, label %.lr.ph53.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph53.i:                                       ; preds = %.preheader.i269
  %i.yh = ashr i64 %.sroa.0.0.copyload.i.i47.i, 32 ; 2 uses
  %i.yi = add nsw i64 %i.yh, -1
  %i.yj = sdiv i64 %i.yi, 8                       ; 3 uses
  %i.yk = icmp eq i64 %.sroa.520.0.extract.shift48.i, 0
  %.not10.i35.i = icmp slt i32 %.sroa.520.0.extract.trunc49.i, -6
  %or.cond11.i36.i = or i1 %i.yk, %.not10.i35.i
  br i1 %or.cond11.i36.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.preheader.i

.lr.ph.split.i37.preheader.preheader.i:           ; preds = %.lr.ph53.i
  %wide.trip.count59.i = zext nneg i32 %i.xz to i64
  %i.yl = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ym = call i64 @llvm.smax.i64(i64 %i.yj, i64 0)
  %i.yn = call i64 @llvm.smax.i64(i64 %i.yj, i64 0)
  %i.yo = add nuw nsw i64 %i.yn, 1                ; 2 uses
  %min.iters.check412 = icmp slt i64 %i.yh, 89
  %i.yp = and i64 %i.ym, 4294967295
  %i.yq = icmp eq i64 %i.yp, 4294967295
  %or.cond457 = select i1 %min.iters.check412, i1 true, i1 %i.yq
  %n.vec414 = and i64 %i.yo, 9223372036854775804  ; 3 uses
  %cmp.n421 = icmp eq i64 %i.yo, %n.vec414
  br label %.lr.ph.split.i37.preheader.i

bb.bw:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.yr = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 40
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !74 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 32
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !77
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %i.yx = load ptr, ptr %i.yw, align 8            ; 2 uses
  %i.yy = ptrtoaddr ptr %i.yx to i64
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !77 ; 3 uses
  %.not.i.i32.i = icmp eq ptr %i.za, null
  br i1 %.not.i.i32.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yr, i64 32
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !73
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 9
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !84, !range !85, !noundef !86
  %i.zf = trunc nuw i8 %i.ze to i1
  %i.zg = getelementptr inbounds nuw i8, ptr %i.za, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8
  %i.zi = select i1 %i.zf, ptr %i.zh, ptr null, !prof !37
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.zi, i64 %i.zc
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i258 = phi ptr [ %i.zj, %bb.bx ], [ null, %bb.bw ]
  %i.zk = icmp sgt i32 %i.xz, 0
  br i1 %i.zk, label %.lr.ph.i259, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph.i259:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %wide.trip.count.i260 = zext nneg i32 %i.xz to i64
  %i.zl = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %bb.ca

bb.by:                                            ; preds = %bb.bt
  %i.zm = landingpad { ptr, i32 }
          cleanup
  %i.zn = load ptr, ptr %7, align 8, !tbaa !36
  %.not.i.i33.i = icmp eq ptr %i.zn, null
  br i1 %.not.i.i33.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i, label %bb.bz, !prof !37

bb.bz:                                            ; preds = %bb.by
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

bb.ca:                                            ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %.lr.ph.i259
  %19 = phi ptr [ %i.sy, %.lr.ph.i259 ], [ %20, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i" ] ; 2 uses
  %indvars.iv.i261 = phi i64 [ 0, %.lr.ph.i259 ], [ %indvars.iv.next.i267, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i" ] ; 3 uses
  %i.zo = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i261
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !137
  %i.zq = zext i16 %i.zp to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i258, i64 %i.zq ; 2 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !22 ; 3 uses
  %i.zt = sext i32 %i.zs to i64                   ; 2 uses
  %i.zu = getelementptr inbounds i8, ptr %i.yx, i64 %i.zt ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zr, i64 4
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !22 ; 2 uses
  %i.zx = sub nsw i32 %i.zw, %i.zs                ; 3 uses
  %i.zy = load ptr, ptr %i.zl, align 8, !tbaa !131
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  %i.aaa = load ptr, ptr %i.zz, align 8           ; 2 uses
  %i.aab = ptrtoaddr ptr %i.aaa to i64
  %i.aac = trunc nuw nsw i64 %indvars.iv.i261 to i32
  %i.aad = add nsw i32 %i.h, %i.aac
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds [4 x i8], ptr %19, i64 %i.aae
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !22
  %i.aah = sext i32 %i.aag to i64                 ; 2 uses
  %i.aai = getelementptr inbounds i8, ptr %i.aaa, i64 %i.aah ; 2 uses
  %i.aaj = sext i32 %i.zx to i64
  %i.aak = add nsw i64 %i.aaj, -1
  %i.aal = sdiv i64 %i.aak, 8                     ; 3 uses
  %i.aam = icmp eq i32 %i.zw, %i.zs
  %.not10.i.i = icmp slt i32 %i.zx, -6
  %or.cond11.i.i = or i1 %i.aam, %.not10.i.i
  br i1 %or.cond11.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader

.lr.ph.split.i.i262.preheader:                    ; preds = %bb.ca
  %i.aan = call i64 @llvm.smax.i64(i64 %i.aal, i64 0)
  %i.aao = add nuw nsw i64 %i.aan, 1              ; 2 uses
  %min.iters.check397 = icmp slt i32 %i.zx, 137
  br i1 %min.iters.check397, label %.lr.ph.split.i.i262.preheader468, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.i.i262.preheader
  %i.aap = call i64 @llvm.smax.i64(i64 %i.aal, i64 0)
  %i.aaq = and i64 %i.aap, 4294967295
  %i.aar = icmp eq i64 %i.aaq, 4294967295
  br i1 %i.aar, label %.lr.ph.split.i.i262.preheader468, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aas = add i64 %i.aab, %i.aah
  %i.aat = add i64 %i.yy, %i.zt
  %i.aau = sub i64 %i.aat, %i.aas
  %diff.check = icmp ugt i64 %i.aau, -32
  br i1 %diff.check, label %.lr.ph.split.i.i262.preheader468, label %vector.ph398

vector.ph398:                                     ; preds = %vector.memcheck
  %n.vec399 = and i64 %i.aao, 9223372036854775804 ; 3 uses
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next403, %vector.body400 ] ; 3 uses
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %index401 ; 2 uses
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %index401 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %wide.load = load <2 x i64>, ptr %i.aaw, align 8
  %wide.load402 = load <2 x i64>, ptr %i.aax, align 8
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  store <2 x i64> %wide.load, ptr %i.aav, align 1
  store <2 x i64> %wide.load402, ptr %i.aay, align 1
  %index.next403 = add nuw i64 %index401, 4       ; 2 uses
  %i.aaz = icmp eq i64 %index.next403, %n.vec399
  br i1 %i.aaz, label %middle.block404, label %vector.body400, !llvm.loop !321

middle.block404:                                  ; preds = %vector.body400
  %cmp.n405 = icmp eq i64 %i.aao, %n.vec399
  br i1 %cmp.n405, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader468

.lr.ph.split.i.i262.preheader468:                 ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.i.i262.preheader, %middle.block404
  %indvars.iv.i.i263.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.i.i262.preheader ], [ %n.vec399, %middle.block404 ]
  br label %.lr.ph.split.i.i262

.lr.ph.split.i.i262:                              ; preds = %.lr.ph.split.i.i262.preheader468, %.lr.ph.split.i.i262
  %indvars.iv.i.i263 = phi i64 [ %indvars.iv.next.i.i265, %.lr.ph.split.i.i262 ], [ %indvars.iv.i.i263.ph, %.lr.ph.split.i.i262.preheader468 ] ; 3 uses
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %indvars.iv.i.i263
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %indvars.iv.i.i263
  %.0.copyload.i.i.i264 = load i64, ptr %i.abb, align 8
  store i64 %.0.copyload.i.i.i264, ptr %i.aba, align 1
  %indvars.iv.next.i.i265 = add i64 %indvars.iv.i.i263, 1 ; 2 uses
  %i.abc = and i64 %indvars.iv.next.i.i265, 4294967295
  %.not.i.i266 = icmp slt i64 %i.aal, %i.abc
  br i1 %.not.i.i266, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262, !llvm.loop !322

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i262, %middle.block404, %bb.ca
  %20 = phi ptr [ %19, %bb.ca ], [ %i.sz, %middle.block404 ], [ %i.sz, %.lr.ph.split.i.i262 ]
  %indvars.iv.next.i267 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.not.i268 = icmp eq i64 %indvars.iv.next.i267, %wide.trip.count.i260
  br i1 %exitcond.not.i268, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %bb.ca, !llvm.loop !323

.lr.ph.split.i37.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", %.lr.ph.split.i37.preheader.preheader.i
  %indvars.iv56.i = phi i64 [ 0, %.lr.ph.split.i37.preheader.preheader.i ], [ %indvars.iv.next57.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i" ] ; 3 uses
  %i.abd = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv56.i
  %i.abe = load i16, ptr %i.abd, align 2, !tbaa !137
  %i.abf = load ptr, ptr %1, align 8, !tbaa !54   ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 40
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !74
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 16
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !77
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %i.abl = load ptr, ptr %i.abk, align 8          ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abf, i64 32
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !73
  %i.abo = zext i16 %i.abe to i64
  %i.abp = add nsw i64 %i.abn, %i.abo
  %i.abq = mul nsw i64 %i.abp, %.sroa.520.0.extract.shift48.i ; 2 uses
  %i.abr = getelementptr inbounds i8, ptr %i.abl, i64 %i.abq ; 2 uses
  %i.abs = load ptr, ptr %i.yl, align 8, !tbaa !131
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %i.abu = load ptr, ptr %i.abt, align 8          ; 2 uses
  %i.abv = trunc nuw nsw i64 %indvars.iv56.i to i32
  %i.abw = add nsw i32 %i.h, %i.abv
  %i.abx = sext i32 %i.abw to i64
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.abx
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !22
  %i.aca = sext i32 %i.abz to i64                 ; 2 uses
  %i.acb = getelementptr inbounds i8, ptr %i.abu, i64 %i.aca ; 2 uses
  br i1 %or.cond457, label %.lr.ph.split.i37.i.preheader, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph.split.i37.preheader.i
  %i.acc = ptrtoaddr ptr %i.abu to i64
  %i.acd = ptrtoaddr ptr %i.abl to i64
  %i.ace = add i64 %i.acc, %i.aca
  %i.acf = add i64 %i.abq, %i.acd
  %i.acg = sub i64 %i.acf, %i.ace
  %diff.check410 = icmp ugt i64 %i.acg, -32
  br i1 %diff.check410, label %.lr.ph.split.i37.i.preheader, label %vector.body415

vector.body415:                                   ; preds = %vector.memcheck409, %vector.body415
  %index416 = phi i64 [ %index.next419, %vector.body415 ], [ 0, %vector.memcheck409 ] ; 3 uses
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.acb, i64 %index416 ; 2 uses
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %index416 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  %wide.load417.a = load <2 x i64>, ptr %i.aci, align 8
  %wide.load418 = load <2 x i64>, ptr %i.acj, align 8
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  store <2 x i64> %wide.load417.a, ptr %i.ach, align 1
  store <2 x i64> %wide.load418, ptr %i.ack, align 1
  %index.next419 = add nuw i64 %index416, 4       ; 2 uses
  %i.acl = icmp eq i64 %index.next419, %n.vec414
  br i1 %i.acl, label %middle.block420, label %vector.body415, !llvm.loop !324

middle.block420:                                  ; preds = %vector.body415
  br i1 %cmp.n421, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", label %.lr.ph.split.i37.i.preheader

.lr.ph.split.i37.i.preheader:                     ; preds = %vector.memcheck409, %.lr.ph.split.i37.preheader.i, %middle.block420
  %indvars.iv.i38.i.ph = phi i64 [ 0, %vector.memcheck409 ], [ 0, %.lr.ph.split.i37.preheader.i ], [ %n.vec414, %middle.block420 ]
  br label %.lr.ph.split.i37.i

.lr.ph.split.i37.i:                               ; preds = %.lr.ph.split.i37.i.preheader, %.lr.ph.split.i37.i
  %indvars.iv.i38.i = phi i64 [ %indvars.iv.next.i40.i, %.lr.ph.split.i37.i ], [ %indvars.iv.i38.i.ph, %.lr.ph.split.i37.i.preheader ] ; 3 uses
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.acb, i64 %indvars.iv.i38.i
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %indvars.iv.i38.i
  %.0.copyload.i.i39.i = load i64, ptr %i.acn, align 8
  store i64 %.0.copyload.i.i39.i, ptr %i.acm, align 1
  %indvars.iv.next.i40.i = add i64 %indvars.iv.i38.i, 1 ; 2 uses
  %i.aco = and i64 %indvars.iv.next.i40.i, 4294967295
  %.not.i41.i = icmp slt i64 %i.yj, %i.aco
  br i1 %.not.i41.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", label %.lr.ph.split.i37.i, !llvm.loop !325

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i": ; preds = %.lr.ph.split.i37.i, %middle.block420
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.i, !llvm.loop !326

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", %.preheader.i269, %.lr.ph53.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %i.acp = sext i32 %i.xz to i64
  %i.acq = getelementptr inbounds [2 x i8], ptr %4, i64 %i.acp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.acr = load ptr, ptr %1, align 8, !tbaa !54
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.acr)
  %i.acs = load ptr, ptr %6, align 8, !tbaa !36
  %i.act = icmp eq ptr %i.acs, null
  br i1 %i.act, label %.thread.i287, label %bb.cb, !prof !37

.thread.i287:                                     ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  %i.acu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.acu, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277

bb.cb:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %.pr.i274 = load ptr, ptr %6, align 8, !tbaa !36
  %i.acv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i275 = load i64, ptr %i.acv, align 8 ; 2 uses
  %.not.i.i.i276 = icmp eq ptr %.pr.i274, null
  br i1 %.not.i.i.i276, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277, label %bb.cd, !prof !135

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277: ; preds = %bb.cd, %bb.cc, %.thread.i287
  %.sroa.0.0.copyload.i.i39.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %.thread.i287 ], [ %.sroa.0.0.copyload.i.i.i275, %bb.cc ], [ %.sroa.0.0.copyload.i.i.i275, %bb.cd ] ; 3 uses
  %.sroa.520.0.extract.shift40.i = lshr i64 %.sroa.0.0.copyload.i.i39.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.acw = trunc i64 %.sroa.0.0.copyload.i.i39.i to i1
  br i1 %i.acw, label %.preheader.i286, label %bb.ce

.preheader.i286:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277
  %i.acx = icmp sgt i32 %i.xy, 0
  br i1 %i.acx, label %.lr.ph45.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph45.i:                                       ; preds = %.preheader.i286
  %i.acy = ashr i64 %.sroa.0.0.copyload.i.i39.i, 32
  %wide.trip.count51.i = zext nneg i32 %i.xy to i64
  %i.acz = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op382 = add i32 %i.xz, %i.h
  br label %bb.cj

bb.ce:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277
  %i.ada = load ptr, ptr %1, align 8, !tbaa !54   ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 40
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !74 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 32
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !77 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 9
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !84, !range !85, !noundef !86
  %i.adh = trunc nuw i8 %i.adg to i1
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %i.adj = load ptr, ptr %i.adi, align 8
  %i.adk = select i1 %i.adh, ptr %i.adj, ptr null, !prof !37
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !77 ; 3 uses
  %.not.i.i32.i278 = icmp eq ptr %i.adm, null
  br i1 %.not.i.i32.i278, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.adn = getelementptr inbounds nuw i8, ptr %i.ada, i64 32
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !73
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adm, i64 9
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !84, !range !85, !noundef !86
  %i.adr = trunc nuw i8 %i.adq to i1
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  %i.adt = load ptr, ptr %i.ads, align 8
  %i.adu = select i1 %i.adr, ptr %i.adt, ptr null, !prof !37
  %i.adv = getelementptr inbounds [4 x i8], ptr %i.adu, i64 %i.ado
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i280 = phi ptr [ %i.adv, %bb.cf ], [ null, %bb.ce ]
  %i.adw = icmp sgt i32 %i.xy, 0
  br i1 %i.adw, label %.lr.ph.i281, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph.i281:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279
  %wide.trip.count.i282 = zext nneg i32 %i.xy to i64
  %i.adx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op = add i32 %i.xz, %i.h
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cb
  %i.ady = landingpad { ptr, i32 }
          cleanup
  %i.adz = load ptr, ptr %6, align 8, !tbaa !36
  %.not.i.i33.i272 = icmp eq ptr %i.adz, null
  br i1 %.not.i.i33.i272, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273, label %bb.ch, !prof !37

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i281
  %indvars.iv.i283 = phi i64 [ 0, %.lr.ph.i281 ], [ %indvars.iv.next.i284, %bb.ci ] ; 3 uses
  %i.aea = getelementptr inbounds nuw [2 x i8], ptr %i.acq, i64 %indvars.iv.i283
  %i.aeb = load i16, ptr %i.aea, align 2, !tbaa !137
  %i.aec = zext i16 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i280, i64 %i.aec ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !22 ; 2 uses
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = getelementptr inbounds i8, ptr %i.adk, i64 %i.aef
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 4
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !22
  %i.aej = sub nsw i32 %i.aei, %i.aee
  %i.aek = load ptr, ptr %i.adx, align 8, !tbaa !131 ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 9
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !84, !range !85, !noundef !86
  %i.aen = trunc nuw i8 %i.aem to i1
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aep = load i8, ptr %i.aeo, align 8, !range !85
end_hunk_1
