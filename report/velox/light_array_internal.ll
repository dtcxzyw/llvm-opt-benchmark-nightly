inline.NumInlined: 1504
inline.NumDeleted: 739
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !88
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 32 ; 3 uses
  %i.lf = getelementptr i8, ptr %2, i64 72
  %.val.val.val.i201 = load ptr, ptr %i.lf, align 8, !tbaa !163
  %i.lg = getelementptr inbounds nuw i8, ptr %.val.val.val.i201, i64 16 ; 3 uses
  %i.lh = sext i32 %i.h to i64                    ; 3 uses
  %wide.trip.count54.i202 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter487 = and i64 %wide.trip.count54.i202, 1
  %i.li = icmp eq i32 %3, 1
  br i1 %i.li, label %.epil.preheader486, label %.lr.ph48.i198.new

.lr.ph48.i198.new:                                ; preds = %.lr.ph48.i198
  %unroll_iter490 = and i64 %wide.trip.count54.i202, 2147483646
  br label %bb.av

bb.aq:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i182
  %i.lj = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !87 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !88
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8            ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !88 ; 3 uses
  %.not.i.i37.i185 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i37.i185, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !68
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 9
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !91, !range !98, !noundef !99
  %i.lw = trunc nuw i8 %i.lv to i1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = select i1 %i.lw, ptr %i.ly, ptr null, !prof !47
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.lt
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i187 = phi ptr [ %i.ma, %bb.ar ], [ null, %bb.aq ] ; 3 uses
  %i.mb = icmp sgt i32 %3, 0
  br i1 %i.mb, label %.lr.ph.i188, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

.lr.ph.i188:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186
  %i.mc = getelementptr i8, ptr %2, i64 72
  %.val34.val.val.i191 = load ptr, ptr %i.mc, align 8, !tbaa !163
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
  %i.mh = load ptr, ptr %11, align 8, !tbaa !44
  %.not.i.i38.i177 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i38.i177, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178, label %bb.at, !prof !47

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
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !253
  %i.mk = zext i16 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i187, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !16
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds i8, ptr %i.lp, i64 %i.mn
  %.val36.i194 = load i64, ptr %i.mo, align 8, !tbaa !20
  %i.mp = load ptr, ptr %i.md, align 8
  %i.mq = getelementptr [8 x i8], ptr %i.mp, i64 %indvars.iv.i193
  %i.mr = getelementptr [8 x i8], ptr %i.mq, i64 %i.me
  store i64 %.val36.i194, ptr %i.mr, align 8, !tbaa !20
  %indvars.iv.next.i195 = or disjoint i64 %indvars.iv.i193, 1 ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next.i195
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !253
  %i.mu = zext i16 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i187, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !16
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %i.lp, i64 %i.mx
  %.val36.i194.1 = load i64, ptr %i.my, align 8, !tbaa !20
  %i.mz = load ptr, ptr %i.md, align 8
  %i.na = getelementptr [8 x i8], ptr %i.mz, i64 %indvars.iv.next.i195
  %i.nb = getelementptr [8 x i8], ptr %i.na, i64 %i.me
  store i64 %.val36.i194.1, ptr %i.nb, align 8, !tbaa !20
  %indvars.iv.next.i195.1 = add nuw nsw i64 %indvars.iv.i193, 2 ; 2 uses
  %niter485.next.1 = add i64 %niter485, 2         ; 2 uses
  %niter485.ncmp.1 = icmp eq i64 %niter485.next.1, %unroll_iter484
  br i1 %niter485.ncmp.1, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit466.unr-lcssa, label %bb.au, !llvm.loop !275

bb.av:                                            ; preds = %bb.av, %.lr.ph48.i198.new
  %indvars.iv51.i203 = phi i64 [ 0, %.lr.ph48.i198.new ], [ %indvars.iv.next52.i205.1, %bb.av ] ; 4 uses
  %niter491 = phi i64 [ 0, %.lr.ph48.i198.new ], [ %niter491.next.1, %bb.av ]
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv51.i203
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !253
  %i.ne = load ptr, ptr %i.ld, align 8
  %i.nf = load i64, ptr %i.le, align 8, !tbaa !68
  %i.ng = zext i16 %i.nd to i64
  %i.nh = add nsw i64 %i.nf, %i.ng
  %i.ni = mul nsw i64 %i.nh, %.sroa.520.0.extract.shift44.i184
  %i.nj = getelementptr inbounds i8, ptr %i.ne, i64 %i.ni
  %.val33.i204 = load i64, ptr %i.nj, align 8, !tbaa !20
  %i.nk = load ptr, ptr %i.lg, align 8
  %i.nl = getelementptr [8 x i8], ptr %i.nk, i64 %indvars.iv51.i203
  %i.nm = getelementptr [8 x i8], ptr %i.nl, i64 %i.lh
  store i64 %.val33.i204, ptr %i.nm, align 8, !tbaa !20
  %indvars.iv.next52.i205 = or disjoint i64 %indvars.iv51.i203, 1 ; 2 uses
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next52.i205
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !253
  %i.np = load ptr, ptr %i.ld, align 8
  %i.nq = load i64, ptr %i.le, align 8, !tbaa !68
  %i.nr = zext i16 %i.no to i64
  %i.ns = add nsw i64 %i.nq, %i.nr
  %i.nt = mul nsw i64 %i.ns, %.sroa.520.0.extract.shift44.i184
  %i.nu = getelementptr inbounds i8, ptr %i.np, i64 %i.nt
  %.val33.i204.1 = load i64, ptr %i.nu, align 8, !tbaa !20
  %i.nv = load ptr, ptr %i.lg, align 8
  %i.nw = getelementptr [8 x i8], ptr %i.nv, i64 %indvars.iv.next52.i205
  %i.nx = getelementptr [8 x i8], ptr %i.nw, i64 %i.lh
  store i64 %.val33.i204.1, ptr %i.nx, align 8, !tbaa !20
  %indvars.iv.next52.i205.1 = add nuw nsw i64 %indvars.iv51.i203, 2 ; 2 uses
  %niter491.next.1 = add i64 %niter491, 2         ; 2 uses
  %niter491.ncmp.1 = icmp eq i64 %niter491.next.1, %unroll_iter490
  br i1 %niter491.ncmp.1, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit465.unr-lcssa, label %bb.av, !llvm.loop !276

bb.aw:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ny = call noundef i32 @_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, ptr noundef %4, i32 noundef 8) ; 3 uses
  %i.nz = sub nsw i32 %3, %i.ny                   ; 6 uses
  store i32 %i.nz, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.oa = load ptr, ptr %1, align 8, !tbaa !65
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.oa)
  %i.ob = load ptr, ptr %10, align 8, !tbaa !44
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %.thread.i227, label %bb.ax, !prof !47

.thread.i227:                                     ; preds = %bb.aw
  %i.od = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.0.0.copyload.i.i46.i = load i64, ptr %i.od, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %.pr.i209 = load ptr, ptr %10, align 8, !tbaa !44
  %i.oe = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.0.0.copyload.i.i.i210 = load i64, ptr %i.oe, align 8 ; 2 uses
  %.not.i.i.i211 = icmp eq ptr %.pr.i209, null
  br i1 %.not.i.i.i211, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212, label %bb.az, !prof !252

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
  %i.oh = ashr i64 %.sroa.0.0.copyload.i.i50.i, 32 ; 4 uses
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
  %19 = sext i32 %i.h to i64
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
  %i.or = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 40
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !87 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !88
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8            ; 2 uses
  %i.oy = ptrtoaddr ptr %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !88 ; 3 uses
  %.not.i.i35.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i35.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pb = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !68
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 9
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !91, !range !98, !noundef !99
  %i.pf = trunc nuw i8 %i.pe to i1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = select i1 %i.pf, ptr %i.ph, ptr null, !prof !47
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
  %i.pn = load ptr, ptr %10, align 8, !tbaa !44
  %.not.i.i36.i = icmp eq ptr %i.pn, null
  br i1 %.not.i.i36.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i, label %bb.bd, !prof !47

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %common.resume

.lr.ph.i217:                                      ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %.lr.ph.preheader.i215
  %indvars.iv.i218 = phi i64 [ 0, %.lr.ph.preheader.i215 ], [ %indvars.iv.next.i221, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i" ] ; 3 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i218
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !253
  %i.pq = zext i16 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i214, i64 %i.pq ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !16 ; 3 uses
  %i.pt = sext i32 %i.ps to i64                   ; 2 uses
  %i.pu = getelementptr inbounds i8, ptr %i.ox, i64 %i.pt ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !16 ; 2 uses
  %i.px = sub nsw i32 %i.pw, %i.ps                ; 3 uses
  %.val33.val.val.i = load ptr, ptr %i.pl, align 8, !tbaa !163
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
  %wide.load433 = load <2 x i64>, ptr %i.qt, align 8
  %wide.load434 = load <2 x i64>, ptr %i.qu, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store <2 x i64> %wide.load433, ptr %i.qs, align 1
  store <2 x i64> %wide.load434, ptr %i.qv, align 1
  %index.next435 = add nuw i64 %index432, 4       ; 2 uses
  %i.qw = icmp eq i64 %index.next435, %n.vec430
  br i1 %i.qw, label %middle.block436, label %vector.body431, !llvm.loop !277

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
  br i1 %.not.i.i220, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i, !llvm.loop !280

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i, %middle.block436, %.lr.ph.i217
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i218, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i216
  br i1 %exitcond.not.i222, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.i217, !llvm.loop !281

.lr.ph.split.i40.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", %.lr.ph.split.i40.preheader.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.split.i40.preheader.preheader.i ], [ %indvars.iv.next60.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i" ] ; 4 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv59.i
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !253
  %i.rc = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 40
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !87
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !88
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8            ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !68
  %i.rl = zext i16 %i.rb to i64
  %i.rm = add nsw i64 %i.rk, %i.rl
  %i.rn = mul nsw i64 %i.rm, %.sroa.520.0.extract.shift51.i ; 2 uses
  %i.ro = getelementptr inbounds i8, ptr %i.ri, i64 %i.rn ; 2 uses
  %.val.val.val.i226 = load ptr, ptr %i.ol, align 8, !tbaa !163
  %i.rp = getelementptr inbounds nuw i8, ptr %.val.val.val.i226, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8            ; 2 uses
  %i.rr = trunc nuw nsw i64 %indvars.iv59.i to i32
  %i.rs = add nsw i32 %i.h, %i.rr
  %i.rt = sext i32 %i.rs to i64
  %i.ru = mul nsw i64 %i.oh, %i.rt
  %i.rv = getelementptr inbounds i8, ptr %i.rq, i64 %i.ru ; 2 uses
  br i1 %or.cond, label %.lr.ph.split.i40.i.preheader, label %vector.memcheck441

vector.memcheck441:                               ; preds = %.lr.ph.split.i40.preheader.i
  %i.rw = ptrtoaddr ptr %i.rq to i64
  %i.rx = ptrtoaddr ptr %i.ri to i64
  %20 = add i64 %indvars.iv59.i, %19
  %i.ry = mul i64 %i.oh, %20
  %i.rz = add i64 %i.ry, %i.rw
  %i.sa = add i64 %i.rn, %i.rx
  %i.sb = sub i64 %i.sa, %i.rz
  %diff.check442 = icmp ugt i64 %i.sb, -32
  br i1 %diff.check442, label %.lr.ph.split.i40.i.preheader, label %vector.body447

vector.body447:                                   ; preds = %vector.memcheck441, %vector.body447
  %index448 = phi i64 [ %index.next451, %vector.body447 ], [ 0, %vector.memcheck441 ] ; 3 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %index448 ; 2 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %index448 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %wide.load449 = load <2 x i64>, ptr %i.sd, align 8
  %wide.load450 = load <2 x i64>, ptr %i.se, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  store <2 x i64> %wide.load449, ptr %i.sc, align 1
  store <2 x i64> %wide.load450, ptr %i.sf, align 1
  %index.next451 = add nuw i64 %index448, 4       ; 2 uses
  %i.sg = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.sg, label %middle.block452, label %vector.body447, !llvm.loop !282

middle.block452:                                  ; preds = %vector.body447
  br i1 %cmp.n453, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", label %.lr.ph.split.i40.i.preheader

.lr.ph.split.i40.i.preheader:                     ; preds = %vector.memcheck441, %.lr.ph.split.i40.preheader.i, %middle.block452
  %indvars.iv.i41.i.ph = phi i64 [ 0, %vector.memcheck441 ], [ 0, %.lr.ph.split.i40.preheader.i ], [ %n.vec446, %middle.block452 ]
  br label %.lr.ph.split.i40.i

.lr.ph.split.i40.i:                               ; preds = %.lr.ph.split.i40.i.preheader, %.lr.ph.split.i40.i
  %indvars.iv.i41.i = phi i64 [ %indvars.iv.next.i43.i, %.lr.ph.split.i40.i ], [ %indvars.iv.i41.i.ph, %.lr.ph.split.i40.i.preheader ] ; 3 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv.i41.i
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %indvars.iv.i41.i
  %.0.copyload.i.i42.i = load i64, ptr %i.si, align 8
  store i64 %.0.copyload.i.i42.i, ptr %i.sh, align 1
  %indvars.iv.next.i43.i = add i64 %indvars.iv.i41.i, 1 ; 2 uses
  %i.sj = and i64 %indvars.iv.next.i43.i, 4294967295
  %.not.i44.i = icmp slt i64 %i.oj, %i.sj
  br i1 %.not.i44.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", label %.lr.ph.split.i40.i, !llvm.loop !283

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i": ; preds = %.lr.ph.split.i40.i, %middle.block452
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.i, !llvm.loop !284

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", %.preheader.i223, %.lr.ph56.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %i.sk = icmp sgt i32 %i.ny, 0
  br i1 %i.sk, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  %i.sl = sext i32 %i.nz to i64
  %i.sm = getelementptr inbounds [2 x i8], ptr %4, i64 %i.sl
  store ptr %i.a, ptr %18, align 8, !tbaa !285
  %i.sn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.b, ptr %i.sn, align 8, !tbaa !288
  %i.so = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.c, ptr %i.so, align 8, !tbaa !288
  call fastcc void @"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_5EEvS7_iSB_T_"(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ny, ptr noundef %i.sm, ptr noundef nonnull byval(%class.anon.86) align 8 %18)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

bb.bg:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !163 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 9
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !91, !range !98, !noundef !99
  %i.st = trunc nuw i8 %i.ss to i1
  %i.su = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.sv = load i8, ptr %i.su, align 8, !range !98
  %i.sw = trunc nuw i8 %i.sv to i1
  %i.sx = select i1 %i.st, i1 %i.sw, i1 false, !prof !47
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.sz = load ptr, ptr %i.sy, align 8            ; 12 uses
  %i.ta = select i1 %i.sx, ptr %i.sz, ptr null, !prof !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  br i1 %i.j, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tb = sext i32 %i.h to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !16
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.te = phi i32 [ %i.td, %bb.bh ], [ 0, %bb.bg ] ; 5 uses
  store i32 %i.te, ptr %i.d, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.tf = load ptr, ptr %1, align 8, !tbaa !65
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.tf)
  %i.tg = load ptr, ptr %9, align 8, !tbaa !44
  %i.th = icmp eq ptr %i.tg, null
  br i1 %i.th, label %.thread.i247, label %bb.bj, !prof !47

.thread.i247:                                     ; preds = %bb.bi
  %i.ti = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i38.i = load i64, ptr %i.ti, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %.pr.i230 = load ptr, ptr %9, align 8, !tbaa !44
  %i.tj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i.i231 = load i64, ptr %i.tj, align 8 ; 2 uses
  %.not.i.i.i232 = icmp eq ptr %.pr.i230, null
  br i1 %.not.i.i.i232, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233, label %bb.bl, !prof !252

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233: ; preds = %bb.bl, %bb.bk, %.thread.i247
  %.sroa.0.0.copyload.i.i42.i = phi i64 [ %.sroa.0.0.copyload.i.i38.i, %.thread.i247 ], [ %.sroa.0.0.copyload.i.i.i231, %bb.bk ], [ %.sroa.0.0.copyload.i.i.i231, %bb.bl ] ; 2 uses
  %.sroa.520.0.extract.trunc43.in.i = lshr i64 %.sroa.0.0.copyload.i.i42.i, 32
  %.sroa.520.0.extract.trunc43.i = trunc nuw i64 %.sroa.520.0.extract.trunc43.in.i to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.tk = trunc i64 %.sroa.0.0.copyload.i.i42.i to i1
  br i1 %i.tk, label %.preheader.i244, label %bb.bm

.preheader.i244:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.tl = icmp sgt i32 %3, 0
  br i1 %i.tl, label %.lr.ph47.i.preheader, label %.critedge101

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
  %i.tm = add nsw i32 %i.h, %index
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.tn ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.to, align 4, !tbaa !16
  store <4 x i32> %broadcast.splat, ptr %i.tp, align 4, !tbaa !16
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.tq = icmp eq i32 %index.next, %n.vec
  br i1 %i.tq, label %middle.block, label %vector.body, !llvm.loop !290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %.lr.ph47.i.preheader471

.lr.ph47.i.preheader471:                          ; preds = %.lr.ph47.i.preheader, %middle.block
  %.046.i.ph = phi i32 [ 0, %.lr.ph47.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph47.i

bb.bm:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.tr = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 40
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !87
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !88 ; 3 uses
  %.not.i.i35.i234 = icmp eq ptr %i.tv, null
  br i1 %.not.i.i35.i234, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !68
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 9
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !91, !range !98, !noundef !99
  %i.ua = trunc nuw i8 %i.tz to i1
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.uc = load ptr, ptr %i.ub, align 8
  %i.ud = select i1 %i.ua, ptr %i.uc, ptr null, !prof !47
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.tx
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i236 = phi ptr [ %i.ue, %bb.bn ], [ null, %bb.bm ] ; 3 uses
  %i.uf = icmp sgt i32 %3, 0
  br i1 %i.uf, label %.lr.ph.i237, label %.critedge101

.lr.ph.i237:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235
  %wide.trip.count.i239 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i239, 1
  %i.ug = icmp eq i32 %3, 1
  br i1 %i.ug, label %.epil.preheader, label %.lr.ph.i237.new

.lr.ph.i237.new:                                  ; preds = %.lr.ph.i237
  %unroll_iter = and i64 %wide.trip.count.i239, 2147483646
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bj
  %i.uh = landingpad { ptr, i32 }
          cleanup
  %i.ui = load ptr, ptr %9, align 8, !tbaa !44
  %.not.i.i36.i228 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i36.i228, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229, label %bb.bp, !prof !47

bb.bp:                                            ; preds = %bb.bo
end_hunk_0
