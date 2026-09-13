Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/light_array_internal?download=true
inline.NumInlined: 1504
inline.NumDeleted: 739
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
  %i.lh = sext i32 %i.h to i64                    ; 3 uses
  %wide.trip.count54.i202 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter487 = and i64 %wide.trip.count54.i202, 1
  %i.li = icmp eq i32 %3, 1
  br i1 %i.li, label %.epil.preheader486, label %.lr.ph48.i198.new

.lr.ph48.i198.new:                                ; preds = %.lr.ph48.i198
  %unroll_iter490 = and i64 %wide.trip.count54.i202, 2147483646
  br label %bb.av

bb.aq:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i182
  %i.lj = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !74 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !77
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8            ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !77 ; 3 uses
  %.not.i.i37.i185 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i37.i185, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !73
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 9
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !84, !range !85, !noundef !86
  %i.lw = trunc nuw i8 %i.lv to i1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = select i1 %i.lw, ptr %i.ly, ptr null, !prof !37
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.lt
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i187 = phi ptr [ %i.ma, %bb.ar ], [ null, %bb.aq ] ; 3 uses
  %i.mb = icmp sgt i32 %3, 0
  br i1 %i.mb, label %.lr.ph.i188, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

.lr.ph.i188:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186
  %i.mc = getelementptr i8, ptr %2, i64 72
  %.val34.val.val.i191 = load ptr, ptr %i.mc, align 8, !tbaa !131
  %i.md = getelementptr inbounds nuw i8, ptr %.val34.val.val.i191, i64 16 ; 3 uses
  %i.me = sext i32 %i.h to i64                    ; 3 uses
  %wide.trip.count.i192 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter481 = and i64 %wide.trip.count.i192, 1
  %i.mf = icmp eq i32 %3, 1
  br i1 %i.mf, label %.epil.preheader480, label %.lr.ph.i188.new

.lr.ph.i188.new:                                  ; preds = %.lr.ph.i188
  %unroll_iter484 = and i64 %wide.trip.count.i192, 2147483646
  br label %bb.au

bb.as:                                            ; preds = %bb.an
  %i.mg = landingpad { ptr, i32 }
          cleanup
  %i.mh = load ptr, ptr %11, align 8, !tbaa !36
  %.not.i.i38.i177 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i38.i177, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178, label %bb.at, !prof !37

bb.at:                                            ; preds = %bb.as
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178: ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %common.resume

bb.au:                                            ; preds = %bb.au, %.lr.ph.i188.new
  %indvars.iv.i193 = phi i64 [ 0, %.lr.ph.i188.new ], [ %indvars.iv.next.i195.1, %bb.au ] ; 4 uses
  %niter485 = phi i64 [ 0, %.lr.ph.i188.new ], [ %niter485.next.1, %bb.au ]
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i193
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !137
  %i.mk = zext i16 %i.mj to i64
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
  br i1 %niter491.ncmp.1, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit465.unr-lcssa, label %bb.av, !llvm.loop !299

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
  %or.cond.a = select i1 %min.iters.check444, i1 true, i1 %i.oq
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
  %i.qf = mul nsw i64 %i.qe, %i.qb                ; 2 uses
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
  %19 = call i64 @llvm.smax.i64(i64 %i.qi, i64 0)
  %20 = and i64 %19, 4294967295
  %21 = icmp eq i64 %20, 4294967295
  br i1 %21, label %.lr.ph.split.i.i.preheader458, label %vector.memcheck425

vector.memcheck425:                               ; preds = %vector.scevcheck423
  %i.qm = add i64 %i.qf, %i.qa
  %i.qn = add i64 %i.oy, %i.pt
  %i.qo = sub i64 %i.qn, %i.qm
  %diff.check426 = icmp ugt i64 %i.qo, -32
  br i1 %diff.check426, label %.lr.ph.split.i.i.preheader458, label %vector.ph429

vector.ph429:                                     ; preds = %vector.memcheck425
  %n.vec430 = and i64 %i.ql, 9223372036854775804  ; 3 uses
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph429
  %index432 = phi i64 [ 0, %vector.ph429 ], [ %index.next435, %vector.body431 ] ; 3 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %index432 ; 2 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %index432 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %wide.load433 = load <2 x i64>, ptr %i.qq, align 8
  %wide.load434 = load <2 x i64>, ptr %i.qr, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  store <2 x i64> %wide.load433, ptr %i.qp, align 1
  store <2 x i64> %wide.load434, ptr %i.qs, align 1
  %index.next435 = add nuw i64 %index432, 4       ; 2 uses
  %i.qt = icmp eq i64 %index.next435, %n.vec430
  br i1 %i.qt, label %middle.block436, label %vector.body431, !llvm.loop !300

middle.block436:                                  ; preds = %vector.body431
  %cmp.n437 = icmp eq i64 %i.ql, %n.vec430
  br i1 %cmp.n437, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader458

.lr.ph.split.i.i.preheader458:                    ; preds = %vector.memcheck425, %vector.scevcheck423, %.lr.ph.split.i.i.preheader, %middle.block436
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck425 ], [ 0, %vector.scevcheck423 ], [ 0, %.lr.ph.split.i.i.preheader ], [ %n.vec430, %middle.block436 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader458, %.lr.ph.split.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.split.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.split.i.i.preheader458 ] ; 3 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv.i.i
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.qv, align 8
  store i64 %.0.copyload.i.i.i, ptr %i.qu, align 1
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.qw = and i64 %indvars.iv.next.i.i, 4294967295
  %.not.i.i220 = icmp slt i64 %i.qi, %i.qw
  br i1 %.not.i.i220, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i, !llvm.loop !301

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i, %middle.block436, %.lr.ph.i217
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i218, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i216
  br i1 %exitcond.not.i222, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.i217, !llvm.loop !302

.lr.ph.split.i40.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", %.lr.ph.split.i40.preheader.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.split.i40.preheader.preheader.i ], [ %indvars.iv.next60.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i" ] ; 3 uses
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv59.i
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !137
  %i.qz = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 40
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !74
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !77
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %i.rf = load ptr, ptr %i.re, align 8            ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qz, i64 32
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !73
  %i.ri = zext i16 %i.qy to i64
  %i.rj = add nsw i64 %i.rh, %i.ri
  %i.rk = mul nsw i64 %i.rj, %.sroa.520.0.extract.shift51.i ; 2 uses
  %i.rl = getelementptr inbounds i8, ptr %i.rf, i64 %i.rk ; 2 uses
  %.val.val.val.i226 = load ptr, ptr %i.ol, align 8, !tbaa !131
  %i.rm = getelementptr inbounds nuw i8, ptr %.val.val.val.i226, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8            ; 2 uses
  %i.ro = trunc nuw nsw i64 %indvars.iv59.i to i32
  %i.rp = add nsw i32 %i.h, %i.ro
  %i.rq = sext i32 %i.rp to i64
  %i.rr = mul nsw i64 %i.oh, %i.rq                ; 2 uses
  %i.rs = getelementptr inbounds i8, ptr %i.rn, i64 %i.rr ; 2 uses
  br i1 %or.cond.a, label %.lr.ph.split.i40.i.preheader, label %vector.memcheck441

vector.memcheck441:                               ; preds = %.lr.ph.split.i40.preheader.i
  %i.rt = ptrtoaddr ptr %i.rn to i64
  %i.ru = ptrtoaddr ptr %i.rf to i64
  %i.rv = add i64 %i.rr, %i.rt
  %i.rw = add i64 %i.rk, %i.ru
  %i.rx = sub i64 %i.rw, %i.rv
  %diff.check442 = icmp ugt i64 %i.rx, -32
  br i1 %diff.check442, label %.lr.ph.split.i40.i.preheader, label %vector.body447

vector.body447:                                   ; preds = %vector.memcheck441, %vector.body447
  %index448 = phi i64 [ %index.next451, %vector.body447 ], [ 0, %vector.memcheck441 ] ; 3 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %index448 ; 2 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %index448 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %wide.load449 = load <2 x i64>, ptr %i.rz, align 8
  %wide.load450 = load <2 x i64>, ptr %i.sa, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store <2 x i64> %wide.load449, ptr %i.ry, align 1
  store <2 x i64> %wide.load450, ptr %i.sb, align 1
  %index.next451 = add nuw i64 %index448, 4       ; 2 uses
  %i.sc = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.sc, label %middle.block452, label %vector.body447, !llvm.loop !303

middle.block452:                                  ; preds = %vector.body447
  br i1 %cmp.n453, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", label %.lr.ph.split.i40.i.preheader

.lr.ph.split.i40.i.preheader:                     ; preds = %vector.memcheck441, %.lr.ph.split.i40.preheader.i, %middle.block452
  %indvars.iv.i41.i.ph = phi i64 [ 0, %vector.memcheck441 ], [ 0, %.lr.ph.split.i40.preheader.i ], [ %n.vec446, %middle.block452 ]
  br label %.lr.ph.split.i40.i

.lr.ph.split.i40.i:                               ; preds = %.lr.ph.split.i40.i.preheader, %.lr.ph.split.i40.i
  %indvars.iv.i41.i = phi i64 [ %indvars.iv.next.i43.i, %.lr.ph.split.i40.i ], [ %indvars.iv.i41.i.ph, %.lr.ph.split.i40.i.preheader ] ; 3 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %indvars.iv.i41.i
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %indvars.iv.i41.i
  %.0.copyload.i.i42.i = load i64, ptr %i.se, align 8
  store i64 %.0.copyload.i.i42.i, ptr %i.sd, align 1
  %indvars.iv.next.i43.i = add i64 %indvars.iv.i41.i, 1 ; 2 uses
  %i.sf = and i64 %indvars.iv.next.i43.i, 4294967295
  %.not.i44.i = icmp slt i64 %i.oj, %i.sf
  br i1 %.not.i44.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", label %.lr.ph.split.i40.i, !llvm.loop !304

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i": ; preds = %.lr.ph.split.i40.i, %middle.block452
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.i, !llvm.loop !305

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", %.preheader.i223, %.lr.ph56.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %i.sg = icmp sgt i32 %i.ny, 0
  br i1 %i.sg, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  %i.sh = sext i32 %i.nz to i64
  %i.si = getelementptr inbounds [2 x i8], ptr %4, i64 %i.sh
  store ptr %i.a, ptr %18, align 8, !tbaa !333
  %i.sj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.b, ptr %i.sj, align 8, !tbaa !334
  %i.sk = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.c, ptr %i.sk, align 8, !tbaa !334
  call fastcc void @"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_5EEvS7_iSB_T_"(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ny, ptr noundef %i.si, ptr noundef nonnull byval(%class.anon.86) align 8 %18)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

bb.bg:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit
  %i.sl = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !131 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 9
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !84, !range !85, !noundef !86
  %i.sp = trunc nuw i8 %i.so to i1
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.sr = load i8, ptr %i.sq, align 8, !range !85
  %i.ss = trunc nuw i8 %i.sr to i1
  %i.st = select i1 %i.sp, i1 %i.ss, i1 false, !prof !37
  %i.su = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.sv = load ptr, ptr %i.su, align 8            ; 12 uses
  %i.sw = select i1 %i.st, ptr %i.sv, ptr null, !prof !37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  br i1 %i.j, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.sx = sext i32 %i.h to i64
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !22
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.ta = phi i32 [ %i.sz, %bb.bh ], [ 0, %bb.bg ] ; 5 uses
  store i32 %i.ta, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.tb = load ptr, ptr %1, align 8, !tbaa !54
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.tb)
  %i.tc = load ptr, ptr %9, align 8, !tbaa !36
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %.thread.i247, label %bb.bj, !prof !37

.thread.i247:                                     ; preds = %bb.bi
  %i.te = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i38.i = load i64, ptr %i.te, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %.pr.i230 = load ptr, ptr %9, align 8, !tbaa !36
  %i.tf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i.i231 = load i64, ptr %i.tf, align 8 ; 2 uses
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
  %i.tg = trunc i64 %.sroa.0.0.copyload.i.i42.i to i1
  br i1 %i.tg, label %.preheader.i244, label %bb.bm

.preheader.i244:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.th = icmp sgt i32 %3, 0
  br i1 %i.th, label %.lr.ph47.i.preheader, label %.critedge101

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
  %i.ti = add nsw i32 %i.h, %index
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.tj ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.tk, align 4, !tbaa !22
  store <4 x i32> %broadcast.splat, ptr %i.tl, align 4, !tbaa !22
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.tm = icmp eq i32 %index.next, %n.vec
  br i1 %i.tm, label %middle.block, label %vector.body, !llvm.loop !306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %.lr.ph47.i.preheader471

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
.lr.ph.preheader:                                 ; preds = %.epil.preheader, %.lr.ph.preheader.loopexit472.unr-lcssa, %.lr.ph47.i, %middle.block
  %xtraiter474 = and i32 %3, 1
  %i.vt = icmp eq i32 %3, 1
  br i1 %i.vt, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter478 = and i32 %3, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.br, %.lr.ph.preheader.new
  %i.vu = phi i32 [ %i.ta, %.lr.ph.preheader.new ], [ %i.wj, %bb.br ] ; 2 uses
  %.090330 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.wk, %bb.br ] ; 4 uses
  %niter479 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter479.next.1, %bb.br ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.vv = add nsw i32 %i.h, %.090330
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.vw ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !22 ; 2 uses
  store i32 %i.vy, ptr %i.e, align 4, !tbaa !22
  store i32 %i.vu, ptr %i.vx, align 4, !tbaa !22
  %i.vz = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.vu, i32 %i.vy) ; 2 uses
  %i.wa = extractvalue { i32, i1 } %i.vz, 1
  br i1 %i.wa, label %.loopexit, label %.lr.ph.1, !prof !51

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.wb = extractvalue { i32, i1 } %i.vz, 0       ; 3 uses
  store i32 %i.wb, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.wc = or disjoint i32 %.090330, 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wd = add nsw i32 %i.h, %i.wc
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.we ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !22 ; 2 uses
  store i32 %i.wg, ptr %i.e, align 4, !tbaa !22
  store i32 %i.wb, ptr %i.wf, align 4, !tbaa !22
  %i.wh = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.wb, i32 %i.wg) ; 2 uses
  %i.wi = extractvalue { i32, i1 } %i.wh, 1
  br i1 %i.wi, label %.loopexit, label %bb.br, !prof !51

bb.br:                                            ; preds = %.lr.ph.1
  %i.wj = extractvalue { i32, i1 } %i.wh, 0       ; 4 uses
  store i32 %i.wj, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.wk = add nuw nsw i32 %.090330, 2             ; 2 uses
  %niter479.next.1 = add i32 %niter479, 2         ; 2 uses
  %niter479.ncmp.1 = icmp eq i32 %niter479.next.1, %unroll_iter478
  br i1 %niter479.ncmp.1, label %.critedge101.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !309

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.epil.preheader
  %.090330.lcssa = phi i32 [ %.090330.epil.init, %.lr.ph.epil.preheader ], [ %.090330, %.lr.ph ], [ %i.wc, %.lr.ph.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.wl = add nuw i32 %.090330.lcssa, 1
  %i.wm = add i32 %i.wl, %i.h
  store i32 %i.wm, ptr %i.f, align 4, !tbaa !22
  call void @_ZN5arrow6Status8FromArgsIJRA54_KciRA23_S2_RiRA26_S2_S7_RA7_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(54) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(23) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(26) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge103

.critedge101.loopexit.unr-lcssa:                  ; preds = %bb.br
  %lcmp.mod475.not = icmp eq i32 %xtraiter474, 0
  br i1 %lcmp.mod475.not, label %.critedge101, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.critedge101.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ %i.ta, %.lr.ph.preheader ], [ %i.wj, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %.090330.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.wk, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod477 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wn = add nsw i32 %i.h, %.090330.epil.init
  %i.wo = sext i32 %i.wn to i64
  %i.wp = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.wo ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !22 ; 2 uses
  store i32 %i.wq, ptr %i.e, align 4, !tbaa !22
  store i32 %.epil.init, ptr %i.wp, align 4, !tbaa !22
  %i.wr = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.epil.init, i32 %i.wq) ; 2 uses
  %i.ws = extractvalue { i32, i1 } %i.wr, 1
  br i1 %i.ws, label %.loopexit, label %.critedge101.loopexit.epilog-lcssa, !prof !51

.critedge101.loopexit.epilog-lcssa:               ; preds = %.lr.ph.epil.preheader
  %i.wt = extractvalue { i32, i1 } %i.wr, 0       ; 2 uses
  store i32 %i.wt, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge101

.critedge101:                                     ; preds = %.critedge101.loopexit.epilog-lcssa, %.critedge101.loopexit.unr-lcssa, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, %.preheader.i244
  %i.wu = phi i32 [ %i.ta, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235 ], [ %i.ta, %.preheader.i244 ], [ %i.wj, %.critedge101.loopexit.unr-lcssa ], [ %i.wt, %.critedge101.loopexit.epilog-lcssa ]
  %i.wv = sext i32 %i.i to i64
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.wv
  store i32 %i.wu, ptr %i.ww, align 4, !tbaa !22
  %i.wx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.wy = load i8, ptr %i.wx, align 8, !tbaa !132, !range !85, !noalias !335, !noundef !86
  %i.wz = trunc nuw i8 %i.wy to i1
  br i1 %i.wz, label %_ZN5arrow6StatusD2Ev.exit252, label %bb.bs

bb.bs:                                            ; preds = %.critedge101
  %i.xa = load ptr, ptr %i.sl, align 8, !tbaa !131, !noalias !335
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  %i.xc = load ptr, ptr %i.xb, align 8, !noalias !335
  %i.xd = load i32, ptr %i.g, align 8, !tbaa !120, !noalias !335
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds [4 x i8], ptr %i.xc, i64 %i.xe
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !22, !noalias !335
  %i.xh = sext i32 %i.xg to i64                   ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !129, !noalias !335 ; 2 uses
  %i.xk = icmp slt i64 %i.xj, %i.xh
  br i1 %i.xk, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit252

.preheader.i248:                                  ; preds = %bb.bs, %.preheader.i248
  %.012.i = phi i64 [ %i.xm, %.preheader.i248 ], [ %i.xj, %bb.bs ] ; 4 uses
  %i.xl = icmp slt i64 %.012.i, %i.xh
  %i.xm = shl nsw i64 %.012.i, 1
  br i1 %i.xl, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit.i, !llvm.loop !1

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.preheader.i248
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !335
  %i.xn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !131, !noalias !335 ; 2 uses
  %i.xp = add nsw i64 %.012.i, 64
  %i.xq = load ptr, ptr %i.xo, align 8, !tbaa !33, !noalias !336
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 24
  %i.xs = load ptr, ptr %i.xr, align 8, !noalias !336
  call void %i.xs(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %i.xo, i64 noundef %i.xp, i1 noundef zeroext true), !noalias !335, !inline_history !314
  %i.xt = load ptr, ptr %8, align 8, !tbaa !36, !noalias !337 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !335
  %i.xu = icmp eq ptr %i.xt, null
  br i1 %i.xu, label %_ZN5arrow6StatusD2Ev.exit17.i, label %_ZN5arrow6StatusD2Ev.exit250

_ZN5arrow6StatusD2Ev.exit17.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store i64 %.012.i, ptr %i.xi, align 8, !tbaa !129, !noalias !335
  br label %_ZN5arrow6StatusD2Ev.exit252

_ZN5arrow6StatusD2Ev.exit250:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.xt, ptr %0, align 8, !tbaa !36, !alias.scope !338
  br label %.critedge103

_ZN5arrow6StatusD2Ev.exit252:                     ; preds = %_ZN5arrow6StatusD2Ev.exit17.i, %bb.bs, %.critedge101
  store ptr null, ptr %0, align 8, !tbaa !36, !alias.scope !339
  %i.xv = call noundef i32 @_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, ptr noundef %4, i32 noundef 8) ; 5 uses
  %i.xw = sub nsw i32 %3, %i.xv                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.xx = load ptr, ptr %1, align 8, !tbaa !54
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.xx)
  %i.xy = load ptr, ptr %7, align 8, !tbaa !36
  %i.xz = icmp eq ptr %i.xy, null
  br i1 %i.xz, label %.thread.i270, label %bb.bt, !prof !37

.thread.i270:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit252
  %i.ya = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i43.i271 = load i64, ptr %i.ya, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256

bb.bt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit252
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %.pr.i253 = load ptr, ptr %7, align 8, !tbaa !36
  %i.yb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i.i254 = load i64, ptr %i.yb, align 8 ; 2 uses
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
  %i.yc = trunc i64 %.sroa.0.0.copyload.i.i47.i to i1
  br i1 %i.yc, label %.preheader.i269, label %bb.bw

.preheader.i269:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.yd = icmp sgt i32 %i.xw, 0
  br i1 %i.yd, label %.lr.ph53.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph53.i:                                       ; preds = %.preheader.i269
  %i.ye = ashr i64 %.sroa.0.0.copyload.i.i47.i, 32 ; 2 uses
  %i.yf = add nsw i64 %i.ye, -1
  %i.yg = sdiv i64 %i.yf, 8                       ; 3 uses
  %i.yh = icmp eq i64 %.sroa.520.0.extract.shift48.i, 0
  %.not10.i35.i = icmp slt i32 %.sroa.520.0.extract.trunc49.i, -6
  %or.cond11.i36.i = or i1 %i.yh, %.not10.i35.i
  br i1 %or.cond11.i36.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.preheader.i

.lr.ph.split.i37.preheader.preheader.i:           ; preds = %.lr.ph53.i
  %wide.trip.count59.i = zext nneg i32 %i.xw to i64
  %i.yi = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.yj = call i64 @llvm.smax.i64(i64 %i.yg, i64 0)
  %i.yk = call i64 @llvm.smax.i64(i64 %i.yg, i64 0)
  %i.yl = add nuw nsw i64 %i.yk, 1                ; 2 uses
  %min.iters.check412 = icmp slt i64 %i.ye, 89
  %i.ym = and i64 %i.yj, 4294967295
  %i.yn = icmp eq i64 %i.ym, 4294967295
  %or.cond457.a = select i1 %min.iters.check412, i1 true, i1 %i.yn
  %n.vec414 = and i64 %i.yl, 9223372036854775804  ; 3 uses
  %cmp.n421 = icmp eq i64 %i.yl, %n.vec414
  br label %.lr.ph.split.i37.preheader.i

bb.bw:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.yo = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 40
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !74 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !77
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %i.yu = load ptr, ptr %i.yt, align 8            ; 2 uses
  %i.yv = ptrtoaddr ptr %i.yu to i64
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !77 ; 3 uses
  %.not.i.i32.i = icmp eq ptr %i.yx, null
  br i1 %.not.i.i32.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yo, i64 32
  %i.yz = load i64, ptr %i.yy, align 8, !tbaa !73
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 9
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !84, !range !85, !noundef !86
  %i.zc = trunc nuw i8 %i.zb to i1
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.ze = load ptr, ptr %i.zd, align 8
  %i.zf = select i1 %i.zc, ptr %i.ze, ptr null, !prof !37
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.yz
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i258 = phi ptr [ %i.zg, %bb.bx ], [ null, %bb.bw ]
  %i.zh = icmp sgt i32 %i.xw, 0
  br i1 %i.zh, label %.lr.ph.i259, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph.i259:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %wide.trip.count.i260 = zext nneg i32 %i.xw to i64
  %i.zi = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %bb.ca

bb.by:                                            ; preds = %bb.bt
  %i.zj = landingpad { ptr, i32 }
          cleanup
  %i.zk = load ptr, ptr %7, align 8, !tbaa !36
  %.not.i.i33.i = icmp eq ptr %i.zk, null
  br i1 %.not.i.i33.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i, label %bb.bz, !prof !37

bb.bz:                                            ; preds = %bb.by
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

bb.ca:                                            ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %.lr.ph.i259
  %indvars.iv.i261 = phi i64 [ 0, %.lr.ph.i259 ], [ %indvars.iv.next.i267, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i" ] ; 3 uses
  %i.zl = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i261
  %i.zm = load i16, ptr %i.zl, align 2, !tbaa !137
  %i.zn = zext i16 %i.zm to i64
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i258, i64 %i.zn ; 2 uses
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !22 ; 3 uses
  %i.zq = sext i32 %i.zp to i64                   ; 2 uses
  %i.zr = getelementptr inbounds i8, ptr %i.yu, i64 %i.zq ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !22 ; 2 uses
  %i.zu = sub nsw i32 %i.zt, %i.zp                ; 3 uses
  %i.zv = load ptr, ptr %i.zi, align 8, !tbaa !131
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.zx = load ptr, ptr %i.zw, align 8            ; 2 uses
  %i.zy = ptrtoaddr ptr %i.zx to i64
  %i.zz = trunc nuw nsw i64 %indvars.iv.i261 to i32
  %i.aaa = add nsw i32 %i.h, %i.zz
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !22
  %i.aae = sext i32 %i.aad to i64                 ; 2 uses
  %i.aaf = getelementptr inbounds i8, ptr %i.zx, i64 %i.aae ; 2 uses
  %i.aag = sext i32 %i.zu to i64
  %i.aah = add nsw i64 %i.aag, -1
  %i.aai = sdiv i64 %i.aah, 8                     ; 3 uses
  %i.aaj = icmp eq i32 %i.zt, %i.zp
  %.not10.i.i = icmp slt i32 %i.zu, -6
  %or.cond11.i.i = or i1 %i.aaj, %.not10.i.i
  br i1 %or.cond11.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader

.lr.ph.split.i.i262.preheader:                    ; preds = %bb.ca
  %i.aak = call i64 @llvm.smax.i64(i64 %i.aai, i64 0)
  %i.aal = add nuw nsw i64 %i.aak, 1              ; 2 uses
  %min.iters.check397 = icmp slt i32 %i.zu, 137
  br i1 %min.iters.check397, label %.lr.ph.split.i.i262.preheader468, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.i.i262.preheader
  %22 = call i64 @llvm.smax.i64(i64 %i.aai, i64 0)
  %23 = and i64 %22, 4294967295
  %24 = icmp eq i64 %23, 4294967295
  br i1 %24, label %.lr.ph.split.i.i262.preheader468, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aam = add i64 %i.zy, %i.aae
  %i.aan = add i64 %i.yv, %i.zq
  %i.aao = sub i64 %i.aan, %i.aam
  %diff.check = icmp ugt i64 %i.aao, -32
  br i1 %diff.check, label %.lr.ph.split.i.i262.preheader468, label %vector.ph398

vector.ph398:                                     ; preds = %vector.memcheck
  %n.vec399 = and i64 %i.aal, 9223372036854775804 ; 3 uses
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next403, %vector.body400 ] ; 3 uses
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %index401 ; 2 uses
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %index401 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %wide.load = load <2 x i64>, ptr %i.aaq, align 8
  %wide.load402 = load <2 x i64>, ptr %i.aar, align 8
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  store <2 x i64> %wide.load, ptr %i.aap, align 1
  store <2 x i64> %wide.load402, ptr %i.aas, align 1
  %index.next403 = add nuw i64 %index401, 4       ; 2 uses
  %i.aat = icmp eq i64 %index.next403, %n.vec399
  br i1 %i.aat, label %middle.block404, label %vector.body400, !llvm.loop !320

middle.block404:                                  ; preds = %vector.body400
  %cmp.n405 = icmp eq i64 %i.aal, %n.vec399
  br i1 %cmp.n405, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader468

.lr.ph.split.i.i262.preheader468:                 ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.i.i262.preheader, %middle.block404
  %indvars.iv.i.i263.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.i.i262.preheader ], [ %n.vec399, %middle.block404 ]
  br label %.lr.ph.split.i.i262

.lr.ph.split.i.i262:                              ; preds = %.lr.ph.split.i.i262.preheader468, %.lr.ph.split.i.i262
  %indvars.iv.i.i263 = phi i64 [ %indvars.iv.next.i.i265, %.lr.ph.split.i.i262 ], [ %indvars.iv.i.i263.ph, %.lr.ph.split.i.i262.preheader468 ] ; 3 uses
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %indvars.iv.i.i263
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %indvars.iv.i.i263
  %.0.copyload.i.i.i264 = load i64, ptr %i.aav, align 8
  store i64 %.0.copyload.i.i.i264, ptr %i.aau, align 1
  %indvars.iv.next.i.i265 = add i64 %indvars.iv.i.i263, 1 ; 2 uses
  %i.aaw = and i64 %indvars.iv.next.i.i265, 4294967295
  %.not.i.i266 = icmp slt i64 %i.aai, %i.aaw
  br i1 %.not.i.i266, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262, !llvm.loop !321

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i262, %middle.block404, %bb.ca
  %indvars.iv.next.i267 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.not.i268 = icmp eq i64 %indvars.iv.next.i267, %wide.trip.count.i260
  br i1 %exitcond.not.i268, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %bb.ca, !llvm.loop !322

.lr.ph.split.i37.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", %.lr.ph.split.i37.preheader.preheader.i
  %indvars.iv56.i = phi i64 [ 0, %.lr.ph.split.i37.preheader.preheader.i ], [ %indvars.iv.next57.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i" ] ; 3 uses
  %i.aax = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv56.i
  %i.aay = load i16, ptr %i.aax, align 2, !tbaa !137
  %i.aaz = load ptr, ptr %1, align 8, !tbaa !54   ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 40
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !74
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !77
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  %i.abf = load ptr, ptr %i.abe, align 8          ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aaz, i64 32
  %i.abh = load i64, ptr %i.abg, align 8, !tbaa !73
  %i.abi = zext i16 %i.aay to i64
  %i.abj = add nsw i64 %i.abh, %i.abi
  %i.abk = mul nsw i64 %i.abj, %.sroa.520.0.extract.shift48.i ; 2 uses
  %i.abl = getelementptr inbounds i8, ptr %i.abf, i64 %i.abk ; 2 uses
  %i.abm = load ptr, ptr %i.yi, align 8, !tbaa !131
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abo = load ptr, ptr %i.abn, align 8          ; 2 uses
  %i.abp = trunc nuw nsw i64 %indvars.iv56.i to i32
  %i.abq = add nsw i32 %i.h, %i.abp
  %i.abr = sext i32 %i.abq to i64
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.abr
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !22
  %i.abu = sext i32 %i.abt to i64                 ; 2 uses
  %i.abv = getelementptr inbounds i8, ptr %i.abo, i64 %i.abu ; 2 uses
  br i1 %or.cond457.a, label %.lr.ph.split.i37.i.preheader, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph.split.i37.preheader.i
  %i.abw = ptrtoaddr ptr %i.abo to i64
  %i.abx = ptrtoaddr ptr %i.abf to i64
  %i.aby = add i64 %i.abw, %i.abu
  %i.abz = add i64 %i.abk, %i.abx
  %i.aca = sub i64 %i.abz, %i.aby
  %diff.check410 = icmp ugt i64 %i.aca, -32
  br i1 %diff.check410, label %.lr.ph.split.i37.i.preheader, label %vector.body415

vector.body415:                                   ; preds = %vector.memcheck409, %vector.body415
  %index416 = phi i64 [ %index.next419, %vector.body415 ], [ 0, %vector.memcheck409 ] ; 3 uses
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.abv, i64 %index416 ; 2 uses
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %index416 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  %wide.load417 = load <2 x i64>, ptr %i.acc, align 8
  %wide.load418 = load <2 x i64>, ptr %i.acd, align 8
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  store <2 x i64> %wide.load417, ptr %i.acb, align 1
  store <2 x i64> %wide.load418, ptr %i.ace, align 1
  %index.next419 = add nuw i64 %index416, 4       ; 2 uses
  %i.acf = icmp eq i64 %index.next419, %n.vec414
  br i1 %i.acf, label %middle.block420, label %vector.body415, !llvm.loop !323

middle.block420:                                  ; preds = %vector.body415
  br i1 %cmp.n421, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", label %.lr.ph.split.i37.i.preheader

.lr.ph.split.i37.i.preheader:                     ; preds = %vector.memcheck409, %.lr.ph.split.i37.preheader.i, %middle.block420
  %indvars.iv.i38.i.ph = phi i64 [ 0, %vector.memcheck409 ], [ 0, %.lr.ph.split.i37.preheader.i ], [ %n.vec414, %middle.block420 ]
  br label %.lr.ph.split.i37.i

.lr.ph.split.i37.i:                               ; preds = %.lr.ph.split.i37.i.preheader, %.lr.ph.split.i37.i
  %indvars.iv.i38.i = phi i64 [ %indvars.iv.next.i40.i, %.lr.ph.split.i37.i ], [ %indvars.iv.i38.i.ph, %.lr.ph.split.i37.i.preheader ] ; 3 uses
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.abv, i64 %indvars.iv.i38.i
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %indvars.iv.i38.i
  %.0.copyload.i.i39.i = load i64, ptr %i.ach, align 8
  store i64 %.0.copyload.i.i39.i, ptr %i.acg, align 1
  %indvars.iv.next.i40.i = add i64 %indvars.iv.i38.i, 1 ; 2 uses
  %i.aci = and i64 %indvars.iv.next.i40.i, 4294967295
  %.not.i41.i = icmp slt i64 %i.yg, %i.aci
  br i1 %.not.i41.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", label %.lr.ph.split.i37.i, !llvm.loop !324

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i": ; preds = %.lr.ph.split.i37.i, %middle.block420
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.i, !llvm.loop !325

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", %.preheader.i269, %.lr.ph53.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %i.acj = sext i32 %i.xw to i64
  %i.ack = getelementptr inbounds [2 x i8], ptr %4, i64 %i.acj ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.acl = load ptr, ptr %1, align 8, !tbaa !54
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.acl)
  %i.acm = load ptr, ptr %6, align 8, !tbaa !36
  %i.acn = icmp eq ptr %i.acm, null
  br i1 %i.acn, label %.thread.i287, label %bb.cb, !prof !37

.thread.i287:                                     ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  %i.aco = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.aco, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277

bb.cb:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %.pr.i274 = load ptr, ptr %6, align 8, !tbaa !36
  %i.acp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i275 = load i64, ptr %i.acp, align 8 ; 2 uses
  %.not.i.i.i276 = icmp eq ptr %.pr.i274, null
  br i1 %.not.i.i.i276, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277, label %bb.cd, !prof !135

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277: ; preds = %bb.cd, %bb.cc, %.thread.i287
  %.sroa.0.0.copyload.i.i39.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %.thread.i287 ], [ %.sroa.0.0.copyload.i.i.i275, %bb.cc ], [ %.sroa.0.0.copyload.i.i.i275, %bb.cd ] ; 3 uses
  %.sroa.520.0.extract.shift40.i = lshr i64 %.sroa.0.0.copyload.i.i39.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.acq = trunc i64 %.sroa.0.0.copyload.i.i39.i to i1
  br i1 %i.acq, label %.preheader.i286, label %bb.ce

.preheader.i286:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277
  %i.acr = icmp sgt i32 %i.xv, 0
  br i1 %i.acr, label %.lr.ph45.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph45.i:                                       ; preds = %.preheader.i286
  %i.acs = ashr i64 %.sroa.0.0.copyload.i.i39.i, 32
  %wide.trip.count51.i = zext nneg i32 %i.xv to i64
  %i.act = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op382 = add i32 %i.xw, %i.h
  br label %bb.cj

bb.ce:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277
  %i.acu = load ptr, ptr %1, align 8, !tbaa !54   ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 40
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !74 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 32
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !77 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 9
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !84, !range !85, !noundef !86
  %i.adb = trunc nuw i8 %i.ada to i1
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  %i.add = load ptr, ptr %i.adc, align 8
  %i.ade = select i1 %i.adb, ptr %i.add, ptr null, !prof !37
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acw, i64 16
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !77 ; 3 uses
  %.not.i.i32.i278 = icmp eq ptr %i.adg, null
  br i1 %.not.i.i32.i278, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acu, i64 32
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !73
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 9
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !84, !range !85, !noundef !86
  %i.adl = trunc nuw i8 %i.adk to i1
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  %i.adn = load ptr, ptr %i.adm, align 8
  %i.ado = select i1 %i.adl, ptr %i.adn, ptr null, !prof !37
  %i.adp = getelementptr inbounds [4 x i8], ptr %i.ado, i64 %i.adi
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i280 = phi ptr [ %i.adp, %bb.cf ], [ null, %bb.ce ]
  %i.adq = icmp sgt i32 %i.xv, 0
  br i1 %i.adq, label %.lr.ph.i281, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph.i281:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279
  %wide.trip.count.i282 = zext nneg i32 %i.xv to i64
  %i.adr = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op = add i32 %i.xw, %i.h
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cb
  %i.ads = landingpad { ptr, i32 }
          cleanup
  %i.adt = load ptr, ptr %6, align 8, !tbaa !36
  %.not.i.i33.i272 = icmp eq ptr %i.adt, null
  br i1 %.not.i.i33.i272, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273, label %bb.ch, !prof !37

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i281
  %indvars.iv.i283 = phi i64 [ 0, %.lr.ph.i281 ], [ %indvars.iv.next.i284, %bb.ci ] ; 3 uses
  %i.adu = getelementptr inbounds nuw [2 x i8], ptr %i.ack, i64 %indvars.iv.i283
  %i.adv = load i16, ptr %i.adu, align 2, !tbaa !137
end_hunk_1
