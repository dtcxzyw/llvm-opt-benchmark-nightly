inline.NumInlined: 1504
inline.NumDeleted: 739
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
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
  %.sroa.0.0.copyload.i.i46.i.a = load i64, ptr %i.od, align 8
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
  %.sroa.0.0.copyload.i.i50.i = phi i64 [ %.sroa.0.0.copyload.i.i46.i.a, %.thread.i227 ], [ %.sroa.0.0.copyload.i.i.i210, %bb.ay ], [ %.sroa.0.0.copyload.i.i.i210, %bb.az ] ; 3 uses
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
  %19 = and i64 %indvars.iv.next.i.i, 4294967295
  %.not.i.i220 = icmp slt i64 %i.qi, %19
  br i1 %.not.i.i220, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i, !llvm.loop !280

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i, %middle.block436, %.lr.ph.i217
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i218, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i216
  br i1 %exitcond.not.i222, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.i217, !llvm.loop !281

.lr.ph.split.i40.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", %.lr.ph.split.i40.preheader.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.split.i40.preheader.preheader.i ], [ %indvars.iv.next60.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i" ] ; 4 uses
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv59.i
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !253
  %i.rb = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 40
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !87
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !88
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8            ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rb, i64 32
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !68
  %i.rk = zext i16 %i.ra to i64
  %i.rl = add nsw i64 %i.rj, %i.rk
  %i.rm = mul nsw i64 %i.rl, %.sroa.520.0.extract.shift51.i ; 2 uses
  %i.rn = getelementptr inbounds i8, ptr %i.rh, i64 %i.rm ; 2 uses
  %.val.val.val.i226 = load ptr, ptr %i.ol, align 8, !tbaa !163
  %i.ro = getelementptr inbounds nuw i8, ptr %.val.val.val.i226, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8            ; 2 uses
  %i.rq = trunc nuw nsw i64 %indvars.iv59.i to i32
  %i.rr = add nsw i32 %i.h, %i.rq
  %i.rs = sext i32 %i.rr to i64
  %i.rt = mul nsw i64 %i.oh, %i.rs
  %i.ru = getelementptr inbounds i8, ptr %i.rp, i64 %i.rt ; 2 uses
  br i1 %or.cond, label %.lr.ph.split.i40.i.preheader, label %vector.memcheck441

vector.memcheck441:                               ; preds = %.lr.ph.split.i40.preheader.i
  %i.rv = ptrtoaddr ptr %i.rp to i64
  %i.rw = ptrtoaddr ptr %i.rh to i64
  %i.rx = trunc i64 %indvars.iv59.i to i32
  %i.ry = add i32 %i.h, %i.rx
  %i.rz = sext i32 %i.ry to i64
  %i.sa = mul nsw i64 %i.oh, %i.rz
  %i.sb = add i64 %i.sa, %i.rv
  %i.sc = add i64 %i.rm, %i.rw
  %i.sd = sub i64 %i.sc, %i.sb
  %diff.check442 = icmp ugt i64 %i.sd, -32
  br i1 %diff.check442, label %.lr.ph.split.i40.i.preheader, label %vector.body447

vector.body447:                                   ; preds = %vector.memcheck441, %vector.body447
  %index448 = phi i64 [ %index.next451, %vector.body447 ], [ 0, %vector.memcheck441 ] ; 3 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %index448 ; 2 uses
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %index448 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %wide.load449 = load <2 x i64>, ptr %i.sf, align 8
  %wide.load450 = load <2 x i64>, ptr %i.sg, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  store <2 x i64> %wide.load449, ptr %i.se, align 1
  store <2 x i64> %wide.load450, ptr %i.sh, align 1
  %index.next451 = add nuw i64 %index448, 4       ; 2 uses
  %i.si = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.si, label %middle.block452, label %vector.body447, !llvm.loop !282

middle.block452:                                  ; preds = %vector.body447
  br i1 %cmp.n453, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", label %.lr.ph.split.i40.i.preheader

.lr.ph.split.i40.i.preheader:                     ; preds = %vector.memcheck441, %.lr.ph.split.i40.preheader.i, %middle.block452
  %indvars.iv.i41.i.ph = phi i64 [ 0, %vector.memcheck441 ], [ 0, %.lr.ph.split.i40.preheader.i ], [ %n.vec446, %middle.block452 ]
  br label %.lr.ph.split.i40.i

.lr.ph.split.i40.i:                               ; preds = %.lr.ph.split.i40.i.preheader, %.lr.ph.split.i40.i
  %indvars.iv.i41.i = phi i64 [ %indvars.iv.next.i43.i, %.lr.ph.split.i40.i ], [ %indvars.iv.i41.i.ph, %.lr.ph.split.i40.i.preheader ] ; 3 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %indvars.iv.i41.i
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %indvars.iv.i41.i
  %.0.copyload.i.i42.i = load i64, ptr %i.sk, align 8
  store i64 %.0.copyload.i.i42.i, ptr %i.sj, align 1
  %indvars.iv.next.i43.i = add i64 %indvars.iv.i41.i, 1 ; 2 uses
  %20 = and i64 %indvars.iv.next.i43.i, 4294967295
  %.not.i44.i = icmp slt i64 %i.oj, %20
  br i1 %.not.i44.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", label %.lr.ph.split.i40.i, !llvm.loop !283

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i": ; preds = %.lr.ph.split.i40.i, %middle.block452
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.i, !llvm.loop !284

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", %.preheader.i223, %.lr.ph56.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %i.sl = icmp sgt i32 %i.ny, 0
  br i1 %i.sl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  %i.sm = sext i32 %i.nz to i64
  %i.sn = getelementptr inbounds [2 x i8], ptr %4, i64 %i.sm
  store ptr %i.a, ptr %18, align 8, !tbaa !285
  %i.so = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.b, ptr %i.so, align 8, !tbaa !288
  %i.sp = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.c, ptr %i.sp, align 8, !tbaa !288
  call fastcc void @"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_5EEvS7_iSB_T_"(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ny, ptr noundef %i.sn, ptr noundef nonnull byval(%class.anon.86) align 8 %18)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

bb.bg:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !163 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 9
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !91, !range !98, !noundef !99
  %i.su = trunc nuw i8 %i.st to i1
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.sw = load i8, ptr %i.sv, align 8, !range !98
  %i.sx = trunc nuw i8 %i.sw to i1
  %i.sy = select i1 %i.su, i1 %i.sx, i1 false, !prof !47
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.ta = load ptr, ptr %i.sz, align 8            ; 12 uses
  %i.tb = select i1 %i.sy, ptr %i.ta, ptr null, !prof !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  br i1 %i.j, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tc = sext i32 %i.h to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !tbaa !16
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.tf = phi i32 [ %i.te, %bb.bh ], [ 0, %bb.bg ] ; 5 uses
  store i32 %i.tf, ptr %i.d, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.tg = load ptr, ptr %1, align 8, !tbaa !65
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.tg)
  %i.th = load ptr, ptr %9, align 8, !tbaa !44
  %i.ti = icmp eq ptr %i.th, null
  br i1 %i.ti, label %.thread.i247, label %bb.bj, !prof !47

.thread.i247:                                     ; preds = %bb.bi
  %i.tj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i38.i = load i64, ptr %i.tj, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %.pr.i230 = load ptr, ptr %9, align 8, !tbaa !44
  %i.tk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i.i231 = load i64, ptr %i.tk, align 8 ; 2 uses
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
  %i.tl = trunc i64 %.sroa.0.0.copyload.i.i42.i to i1
  br i1 %i.tl, label %.preheader.i244, label %bb.bm

.preheader.i244:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.tm = icmp sgt i32 %3, 0
  br i1 %i.tm, label %.lr.ph47.i.preheader, label %.critedge101

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
  %i.tn = add nsw i32 %i.h, %index
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.to ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.tp, align 4, !tbaa !16
  store <4 x i32> %broadcast.splat, ptr %i.tq, align 4, !tbaa !16
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.tr = icmp eq i32 %index.next, %n.vec
  br i1 %i.tr, label %middle.block, label %vector.body, !llvm.loop !290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %.lr.ph47.i.preheader471

.lr.ph47.i.preheader471:                          ; preds = %.lr.ph47.i.preheader, %middle.block
  %.046.i.ph = phi i32 [ 0, %.lr.ph47.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph47.i

bb.bm:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.ts = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 40
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !87
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !88 ; 3 uses
  %.not.i.i35.i234 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i35.i234, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ts, i64 32
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !68
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 9
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !91, !range !98, !noundef !99
  %i.ub = trunc nuw i8 %i.ua to i1
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ud = load ptr, ptr %i.uc, align 8
  %i.ue = select i1 %i.ub, ptr %i.ud, ptr null, !prof !47
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.ty
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i236 = phi ptr [ %i.uf, %bb.bn ], [ null, %bb.bm ] ; 3 uses
  %i.ug = icmp sgt i32 %3, 0
  br i1 %i.ug, label %.lr.ph.i237, label %.critedge101

.lr.ph.i237:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235
  %wide.trip.count.i239 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i239, 1
  %i.uh = icmp eq i32 %3, 1
  br i1 %i.uh, label %.epil.preheader, label %.lr.ph.i237.new

.lr.ph.i237.new:                                  ; preds = %.lr.ph.i237
  %unroll_iter = and i64 %wide.trip.count.i239, 2147483646
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bj
  %i.ui = landingpad { ptr, i32 }
          cleanup
  %i.uj = load ptr, ptr %9, align 8, !tbaa !44
  %.not.i.i36.i228 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i36.i228, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229, label %bb.bp, !prof !47

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.i237.new
  %indvars.iv.i240 = phi i64 [ 0, %.lr.ph.i237.new ], [ %indvars.iv.next.i242.1, %bb.bq ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i237.new ], [ %niter.next.1, %bb.bq ]
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i240
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !253
  %i.um = zext i16 %i.ul to i64
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i236, i64 %i.um ; 2 uses
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !16
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !16
  %i.ur = sub nsw i32 %i.uq, %i.uo
  %i.us = trunc nuw nsw i64 %indvars.iv.i240 to i32
  %i.ut = add nsw i32 %i.h, %i.us
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.uu
  store i32 %i.ur, ptr %i.uv, align 4, !tbaa !16
  %indvars.iv.next.i242 = or disjoint i64 %indvars.iv.i240, 1 ; 2 uses
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next.i242
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !253
  %i.uy = zext i16 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i236, i64 %i.uy ; 2 uses
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !16
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !16
  %i.vd = sub nsw i32 %i.vc, %i.va
  %i.ve = trunc nuw nsw i64 %indvars.iv.next.i242 to i32
  %i.vf = add nsw i32 %i.h, %i.ve
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.vg
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.vw
  store i32 %i.vt, ptr %i.vx, align 4, !tbaa !16
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.epil.preheader, %.lr.ph.preheader.loopexit472.unr-lcssa, %.lr.ph47.i, %middle.block
  %xtraiter474 = and i32 %3, 1
  %i.vy = icmp eq i32 %3, 1
  br i1 %i.vy, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter478 = and i32 %3, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.br, %.lr.ph.preheader.new
  %i.vz = phi i32 [ %i.tf, %.lr.ph.preheader.new ], [ %i.wo, %bb.br ] ; 2 uses
  %.090330 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.wp, %bb.br ] ; 4 uses
  %niter479 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter479.next.1, %bb.br ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wa = add nsw i32 %i.h, %.090330
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.wb ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !16 ; 2 uses
  store i32 %i.wd, ptr %i.e, align 4, !tbaa !16
  store i32 %i.vz, ptr %i.wc, align 4, !tbaa !16
  %i.we = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.vz, i32 %i.wd) ; 2 uses
  %i.wf = extractvalue { i32, i1 } %i.we, 1
  br i1 %i.wf, label %.loopexit, label %.lr.ph.1, !prof !64

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.wg = extractvalue { i32, i1 } %i.we, 0       ; 3 uses
  store i32 %i.wg, ptr %i.d, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.wh = or disjoint i32 %.090330, 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wi = add nsw i32 %i.h, %i.wh
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.wj ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !16 ; 2 uses
  store i32 %i.wl, ptr %i.e, align 4, !tbaa !16
  store i32 %i.wg, ptr %i.wk, align 4, !tbaa !16
  %i.wm = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.wg, i32 %i.wl) ; 2 uses
  %i.wn = extractvalue { i32, i1 } %i.wm, 1
  br i1 %i.wn, label %.loopexit, label %bb.br, !prof !64

bb.br:                                            ; preds = %.lr.ph.1
  %i.wo = extractvalue { i32, i1 } %i.wm, 0       ; 4 uses
  store i32 %i.wo, ptr %i.d, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.wp = add nuw nsw i32 %.090330, 2             ; 2 uses
  %niter479.next.1 = add i32 %niter479, 2         ; 2 uses
  %niter479.ncmp.1 = icmp eq i32 %niter479.next.1, %unroll_iter478
  br i1 %niter479.ncmp.1, label %.critedge101.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !293

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.epil.preheader
  %.090330.lcssa = phi i32 [ %.090330.epil.init, %.lr.ph.epil.preheader ], [ %.090330, %.lr.ph ], [ %i.wh, %.lr.ph.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.wq = add nuw i32 %.090330.lcssa, 1
  %i.wr = add i32 %i.wq, %i.h
  store i32 %i.wr, ptr %i.f, align 4, !tbaa !16
  call void @_ZN5arrow6Status8FromArgsIJRA54_KciRA23_S2_RiRA26_S2_S7_RA7_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(54) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(23) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(26) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge103

.critedge101.loopexit.unr-lcssa:                  ; preds = %bb.br
  %lcmp.mod475.not = icmp eq i32 %xtraiter474, 0
  br i1 %lcmp.mod475.not, label %.critedge101, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.critedge101.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ %i.tf, %.lr.ph.preheader ], [ %i.wo, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %.090330.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.wp, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod477 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.ws = add nsw i32 %i.h, %.090330.epil.init
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.wt ; 2 uses
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !16 ; 2 uses
  store i32 %i.wv, ptr %i.e, align 4, !tbaa !16
  store i32 %.epil.init, ptr %i.wu, align 4, !tbaa !16
  %i.ww = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.epil.init, i32 %i.wv) ; 2 uses
  %i.wx = extractvalue { i32, i1 } %i.ww, 1
  br i1 %i.wx, label %.loopexit, label %.critedge101.loopexit.epilog-lcssa, !prof !64

.critedge101.loopexit.epilog-lcssa:               ; preds = %.lr.ph.epil.preheader
  %i.wy = extractvalue { i32, i1 } %i.ww, 0       ; 2 uses
  store i32 %i.wy, ptr %i.d, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge101

.critedge101:                                     ; preds = %.critedge101.loopexit.epilog-lcssa, %.critedge101.loopexit.unr-lcssa, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, %.preheader.i244
  %i.wz = phi i32 [ %i.tf, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235 ], [ %i.tf, %.preheader.i244 ], [ %i.wo, %.critedge101.loopexit.unr-lcssa ], [ %i.wy, %.critedge101.loopexit.epilog-lcssa ]
  %i.xa = sext i32 %i.i to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.xa
  store i32 %i.wz, ptr %i.xb, align 4, !tbaa !16
  %i.xc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.xd = load i8, ptr %i.xc, align 8, !tbaa !174, !range !98, !noalias !294, !noundef !99
  %i.xe = trunc nuw i8 %i.xd to i1
  br i1 %i.xe, label %_ZN5arrow6StatusD2Ev.exit252, label %bb.bs

bb.bs:                                            ; preds = %.critedge101
  %i.xf = load ptr, ptr %i.sq, align 8, !tbaa !163, !noalias !294
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !noalias !294
  %i.xi = load i32, ptr %i.g, align 8, !tbaa !142, !noalias !294
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.xj
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !16, !noalias !294
  %i.xm = sext i32 %i.xl to i64                   ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !158, !noalias !294 ; 2 uses
  %i.xp = icmp slt i64 %i.xo, %i.xm
  br i1 %i.xp, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit252

.preheader.i248:                                  ; preds = %bb.bs, %.preheader.i248
  %.012.i = phi i64 [ %i.xr, %.preheader.i248 ], [ %i.xo, %bb.bs ] ; 4 uses
  %i.xq = icmp slt i64 %.012.i, %i.xm
  %i.xr = shl nsw i64 %.012.i, 1
  br i1 %i.xq, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit.i, !llvm.loop !235

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.preheader.i248
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !294
  %i.xs = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !163, !noalias !294 ; 2 uses
  %i.xu = add nsw i64 %.012.i, 64
  %i.xv = load ptr, ptr %i.xt, align 8, !tbaa !42, !noalias !297
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 24
  %i.xx = load ptr, ptr %i.xw, align 8, !noalias !297
  call void %i.xx(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %i.xt, i64 noundef %i.xu, i1 noundef zeroext true), !noalias !294, !inline_history !300
  %i.xy = load ptr, ptr %8, align 8, !tbaa !44, !noalias !301 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !294
  %i.xz = icmp eq ptr %i.xy, null
  br i1 %i.xz, label %_ZN5arrow6StatusD2Ev.exit17.i, label %_ZN5arrow6StatusD2Ev.exit250

_ZN5arrow6StatusD2Ev.exit17.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store i64 %.012.i, ptr %i.xn, align 8, !tbaa !158, !noalias !294
  br label %_ZN5arrow6StatusD2Ev.exit252

_ZN5arrow6StatusD2Ev.exit250:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.xy, ptr %0, align 8, !tbaa !44, !alias.scope !304
  br label %.critedge103

_ZN5arrow6StatusD2Ev.exit252:                     ; preds = %_ZN5arrow6StatusD2Ev.exit17.i, %bb.bs, %.critedge101
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !307
  %i.ya = call noundef i32 @_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, ptr noundef %4, i32 noundef 8) ; 5 uses
  %i.yb = sub nsw i32 %3, %i.ya                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.yc = load ptr, ptr %1, align 8, !tbaa !65
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.yc)
  %i.yd = load ptr, ptr %7, align 8, !tbaa !44
  %i.ye = icmp eq ptr %i.yd, null
  br i1 %i.ye, label %.thread.i270, label %bb.bt, !prof !47

.thread.i270:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit252
  %i.yf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i43.i271 = load i64, ptr %i.yf, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256

bb.bt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit252
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %.pr.i253 = load ptr, ptr %7, align 8, !tbaa !44
  %i.yg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i.i254 = load i64, ptr %i.yg, align 8 ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %.pr.i253, null
  br i1 %.not.i.i.i255, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256, label %bb.bv, !prof !252

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256: ; preds = %bb.bv, %bb.bu, %.thread.i270
  %.sroa.0.0.copyload.i.i47.i = phi i64 [ %.sroa.0.0.copyload.i.i43.i271, %.thread.i270 ], [ %.sroa.0.0.copyload.i.i.i254, %bb.bu ], [ %.sroa.0.0.copyload.i.i.i254, %bb.bv ] ; 3 uses
  %.sroa.520.0.extract.shift48.i = lshr i64 %.sroa.0.0.copyload.i.i47.i, 32 ; 3 uses
  %.sroa.520.0.extract.trunc49.i = trunc nuw i64 %.sroa.520.0.extract.shift48.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.yh = trunc i64 %.sroa.0.0.copyload.i.i47.i to i1
  br i1 %i.yh, label %.preheader.i269, label %bb.bw

.preheader.i269:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.yi = icmp sgt i32 %i.yb, 0
  br i1 %i.yi, label %.lr.ph53.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph53.i:                                       ; preds = %.preheader.i269
  %i.yj = ashr i64 %.sroa.0.0.copyload.i.i47.i, 32 ; 2 uses
  %i.yk = add nsw i64 %i.yj, -1
  %i.yl = sdiv i64 %i.yk, 8                       ; 3 uses
  %i.ym = icmp eq i64 %.sroa.520.0.extract.shift48.i, 0
  %.not10.i35.i = icmp slt i32 %.sroa.520.0.extract.trunc49.i, -6
  %or.cond11.i36.i = or i1 %i.ym, %.not10.i35.i
  br i1 %or.cond11.i36.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.preheader.i

.lr.ph.split.i37.preheader.preheader.i:           ; preds = %.lr.ph53.i
  %wide.trip.count59.i = zext nneg i32 %i.yb to i64
  %i.yn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.yo = call i64 @llvm.smax.i64(i64 %i.yl, i64 0)
  %i.yp = call i64 @llvm.smax.i64(i64 %i.yl, i64 0)
  %i.yq = add nuw nsw i64 %i.yp, 1                ; 2 uses
  %min.iters.check412 = icmp slt i64 %i.yj, 89
  %i.yr = and i64 %i.yo, 4294967295
  %i.ys = icmp eq i64 %i.yr, 4294967295
  %or.cond457 = select i1 %min.iters.check412, i1 true, i1 %i.ys
  %n.vec414 = and i64 %i.yq, 9223372036854775804  ; 3 uses
  %cmp.n421 = icmp eq i64 %i.yq, %n.vec414
  br label %.lr.ph.split.i37.preheader.i

bb.bw:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.yt = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 40
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !87 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 32
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !88
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.yz = load ptr, ptr %i.yy, align 8            ; 2 uses
  %i.za = ptrtoaddr ptr %i.yz to i64
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !88 ; 3 uses
  %.not.i.i32.i = icmp eq ptr %i.zc, null
  br i1 %.not.i.i32.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yt, i64 32
  %i.ze = load i64, ptr %i.zd, align 8, !tbaa !68
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zc, i64 9
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !91, !range !98, !noundef !99
  %i.zh = trunc nuw i8 %i.zg to i1
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %i.zj = load ptr, ptr %i.zi, align 8
  %i.zk = select i1 %i.zh, ptr %i.zj, ptr null, !prof !47
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.zk, i64 %i.ze
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i258 = phi ptr [ %i.zl, %bb.bx ], [ null, %bb.bw ]
  %i.zm = icmp sgt i32 %i.yb, 0
  br i1 %i.zm, label %.lr.ph.i259, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph.i259:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %wide.trip.count.i260 = zext nneg i32 %i.yb to i64
  %i.zn = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %bb.ca

bb.by:                                            ; preds = %bb.bt
  %i.zo = landingpad { ptr, i32 }
          cleanup
  %i.zp = load ptr, ptr %7, align 8, !tbaa !44
  %.not.i.i33.i = icmp eq ptr %i.zp, null
  br i1 %.not.i.i33.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i, label %bb.bz, !prof !47

bb.bz:                                            ; preds = %bb.by
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

bb.ca:                                            ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %.lr.ph.i259
  %indvars.iv.i261 = phi i64 [ 0, %.lr.ph.i259 ], [ %indvars.iv.next.i267, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i" ] ; 3 uses
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i261
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !253
  %i.zs = zext i16 %i.zr to i64
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i258, i64 %i.zs ; 2 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !16 ; 3 uses
  %i.zv = sext i32 %i.zu to i64                   ; 2 uses
  %i.zw = getelementptr inbounds i8, ptr %i.yz, i64 %i.zv ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 4
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !16 ; 2 uses
  %i.zz = sub nsw i32 %i.zy, %i.zu                ; 3 uses
  %i.aaa = load ptr, ptr %i.zn, align 8, !tbaa !163
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aac = load ptr, ptr %i.aab, align 8          ; 2 uses
  %i.aad = ptrtoaddr ptr %i.aac to i64
  %i.aae = trunc nuw nsw i64 %indvars.iv.i261 to i32
  %i.aaf = add nsw i32 %i.h, %i.aae
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.aag
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !16
  %i.aaj = sext i32 %i.aai to i64                 ; 2 uses
  %i.aak = getelementptr inbounds i8, ptr %i.aac, i64 %i.aaj ; 2 uses
  %i.aal = sext i32 %i.zz to i64
  %i.aam = add nsw i64 %i.aal, -1
  %i.aan = sdiv i64 %i.aam, 8                     ; 3 uses
  %i.aao = icmp eq i32 %i.zy, %i.zu
  %.not10.i.i = icmp slt i32 %i.zz, -6
  %or.cond11.i.i = or i1 %i.aao, %.not10.i.i
  br i1 %or.cond11.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader

.lr.ph.split.i.i262.preheader:                    ; preds = %bb.ca
  %i.aap = call i64 @llvm.smax.i64(i64 %i.aan, i64 0)
  %i.aaq = add nuw nsw i64 %i.aap, 1              ; 2 uses
  %min.iters.check397 = icmp slt i32 %i.zz, 137
  br i1 %min.iters.check397, label %.lr.ph.split.i.i262.preheader468, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.i.i262.preheader
  %i.aar = call i64 @llvm.smax.i64(i64 %i.aan, i64 0)
  %i.aas = and i64 %i.aar, 4294967295
  %i.aat = icmp eq i64 %i.aas, 4294967295
  br i1 %i.aat, label %.lr.ph.split.i.i262.preheader468, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aau = add i64 %i.aad, %i.aaj
  %i.aav = add i64 %i.za, %i.zv
  %i.aaw = sub i64 %i.aav, %i.aau
  %diff.check = icmp ugt i64 %i.aaw, -32
  br i1 %diff.check, label %.lr.ph.split.i.i262.preheader468, label %vector.ph398

vector.ph398:                                     ; preds = %vector.memcheck
  %n.vec399 = and i64 %i.aaq, 9223372036854775804 ; 3 uses
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next403, %vector.body400 ] ; 3 uses
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %index401 ; 2 uses
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.zw, i64 %index401 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  %wide.load = load <2 x i64>, ptr %i.aay, align 8
  %wide.load402 = load <2 x i64>, ptr %i.aaz, align 8
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  store <2 x i64> %wide.load, ptr %i.aax, align 1
  store <2 x i64> %wide.load402, ptr %i.aba, align 1
  %index.next403 = add nuw i64 %index401, 4       ; 2 uses
  %i.abb = icmp eq i64 %index.next403, %n.vec399
  br i1 %i.abb, label %middle.block404, label %vector.body400, !llvm.loop !309

middle.block404:                                  ; preds = %vector.body400
  %cmp.n405 = icmp eq i64 %i.aaq, %n.vec399
  br i1 %cmp.n405, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader468

.lr.ph.split.i.i262.preheader468:                 ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.i.i262.preheader, %middle.block404
  %indvars.iv.i.i263.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.i.i262.preheader ], [ %n.vec399, %middle.block404 ]
  br label %.lr.ph.split.i.i262

.lr.ph.split.i.i262:                              ; preds = %.lr.ph.split.i.i262.preheader468, %.lr.ph.split.i.i262
  %indvars.iv.i.i263 = phi i64 [ %indvars.iv.next.i.i265, %.lr.ph.split.i.i262 ], [ %indvars.iv.i.i263.ph, %.lr.ph.split.i.i262.preheader468 ] ; 3 uses
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %indvars.iv.i.i263
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.zw, i64 %indvars.iv.i.i263
  %.0.copyload.i.i.i264 = load i64, ptr %i.abd, align 8
  store i64 %.0.copyload.i.i.i264, ptr %i.abc, align 1
  %indvars.iv.next.i.i265 = add i64 %indvars.iv.i.i263, 1 ; 2 uses
  %21 = and i64 %indvars.iv.next.i.i265, 4294967295
  %.not.i.i266 = icmp slt i64 %i.aan, %21
  br i1 %.not.i.i266, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262, !llvm.loop !310

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i262, %middle.block404, %bb.ca
  %indvars.iv.next.i267 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.not.i268 = icmp eq i64 %indvars.iv.next.i267, %wide.trip.count.i260
  br i1 %exitcond.not.i268, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %bb.ca, !llvm.loop !311

.lr.ph.split.i37.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", %.lr.ph.split.i37.preheader.preheader.i
  %indvars.iv56.i = phi i64 [ 0, %.lr.ph.split.i37.preheader.preheader.i ], [ %indvars.iv.next57.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i" ] ; 3 uses
  %i.abe = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv56.i
  %i.abf = load i16, ptr %i.abe, align 2, !tbaa !253
  %i.abg = load ptr, ptr %1, align 8, !tbaa !65   ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 40
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !87
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !88
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  %i.abm = load ptr, ptr %i.abl, align 8          ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !68
  %i.abp = zext i16 %i.abf to i64
  %i.abq = add nsw i64 %i.abo, %i.abp
  %i.abr = mul nsw i64 %i.abq, %.sroa.520.0.extract.shift48.i ; 2 uses
  %i.abs = getelementptr inbounds i8, ptr %i.abm, i64 %i.abr ; 2 uses
  %i.abt = load ptr, ptr %i.yn, align 8, !tbaa !163
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  %i.abv = load ptr, ptr %i.abu, align 8          ; 2 uses
  %i.abw = trunc nuw nsw i64 %indvars.iv56.i to i32
  %i.abx = add nsw i32 %i.h, %i.abw
  %i.aby = sext i32 %i.abx to i64
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.aby
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !16
  %i.acb = sext i32 %i.aca to i64                 ; 2 uses
  %i.acc = getelementptr inbounds i8, ptr %i.abv, i64 %i.acb ; 2 uses
  br i1 %or.cond457, label %.lr.ph.split.i37.i.preheader, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph.split.i37.preheader.i
  %i.acd = ptrtoaddr ptr %i.abv to i64
  %i.ace = ptrtoaddr ptr %i.abm to i64
  %i.acf = add i64 %i.acd, %i.acb
  %i.acg = add i64 %i.abr, %i.ace
  %i.ach = sub i64 %i.acg, %i.acf
  %diff.check410 = icmp ugt i64 %i.ach, -32
  br i1 %diff.check410, label %.lr.ph.split.i37.i.preheader, label %vector.body415

vector.body415:                                   ; preds = %vector.memcheck409, %vector.body415
  %index416 = phi i64 [ %index.next419, %vector.body415 ], [ 0, %vector.memcheck409 ] ; 3 uses
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.acc, i64 %index416 ; 2 uses
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %index416 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  %wide.load417.a = load <2 x i64>, ptr %i.acj, align 8
  %wide.load418 = load <2 x i64>, ptr %i.ack, align 8
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  store <2 x i64> %wide.load417.a, ptr %i.aci, align 1
  store <2 x i64> %wide.load418, ptr %i.acl, align 1
  %index.next419 = add nuw i64 %index416, 4       ; 2 uses
  %i.acm = icmp eq i64 %index.next419, %n.vec414
  br i1 %i.acm, label %middle.block420, label %vector.body415, !llvm.loop !312

middle.block420:                                  ; preds = %vector.body415
  br i1 %cmp.n421, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", label %.lr.ph.split.i37.i.preheader

.lr.ph.split.i37.i.preheader:                     ; preds = %vector.memcheck409, %.lr.ph.split.i37.preheader.i, %middle.block420
  %indvars.iv.i38.i.ph = phi i64 [ 0, %vector.memcheck409 ], [ 0, %.lr.ph.split.i37.preheader.i ], [ %n.vec414, %middle.block420 ]
  br label %.lr.ph.split.i37.i

.lr.ph.split.i37.i:                               ; preds = %.lr.ph.split.i37.i.preheader, %.lr.ph.split.i37.i
  %indvars.iv.i38.i = phi i64 [ %indvars.iv.next.i40.i, %.lr.ph.split.i37.i ], [ %indvars.iv.i38.i.ph, %.lr.ph.split.i37.i.preheader ] ; 3 uses
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.acc, i64 %indvars.iv.i38.i
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.i38.i
  %.0.copyload.i.i39.i = load i64, ptr %i.aco, align 8
  store i64 %.0.copyload.i.i39.i, ptr %i.acn, align 1
  %indvars.iv.next.i40.i = add i64 %indvars.iv.i38.i, 1 ; 2 uses
  %22 = and i64 %indvars.iv.next.i40.i, 4294967295
  %.not.i41.i = icmp slt i64 %i.yl, %22
  br i1 %.not.i41.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", label %.lr.ph.split.i37.i, !llvm.loop !313

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i": ; preds = %.lr.ph.split.i37.i, %middle.block420
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.i, !llvm.loop !314

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", %.preheader.i269, %.lr.ph53.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %i.acp = sext i32 %i.yb to i64
  %i.acq = getelementptr inbounds [2 x i8], ptr %4, i64 %i.acp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.acr = load ptr, ptr %1, align 8, !tbaa !65
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.acr)
  %i.acs = load ptr, ptr %6, align 8, !tbaa !44
  %i.act = icmp eq ptr %i.acs, null
  br i1 %i.act, label %.thread.i287, label %bb.cb, !prof !47

.thread.i287:                                     ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  %i.acu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.acu, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277

bb.cb:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %.pr.i274 = load ptr, ptr %6, align 8, !tbaa !44
  %i.acv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i275 = load i64, ptr %i.acv, align 8 ; 2 uses
  %.not.i.i.i276 = icmp eq ptr %.pr.i274, null
  br i1 %.not.i.i.i276, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277, label %bb.cd, !prof !252

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
  %i.acx = icmp sgt i32 %i.ya, 0
  br i1 %i.acx, label %.lr.ph45.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph45.i:                                       ; preds = %.preheader.i286
  %i.acy = ashr i64 %.sroa.0.0.copyload.i.i39.i, 32
  %wide.trip.count51.i = zext nneg i32 %i.ya to i64
  %i.acz = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op382 = add i32 %i.yb, %i.h
  br label %bb.cj

bb.ce:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277
  %i.ada = load ptr, ptr %1, align 8, !tbaa !65   ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 40
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !87 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 32
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !88 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 9
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !91, !range !98, !noundef !99
  %i.adh = trunc nuw i8 %i.adg to i1
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %i.adj = load ptr, ptr %i.adi, align 8
  %i.adk = select i1 %i.adh, ptr %i.adj, ptr null, !prof !47
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !88 ; 3 uses
  %.not.i.i32.i278 = icmp eq ptr %i.adm, null
  br i1 %.not.i.i32.i278, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.adn = getelementptr inbounds nuw i8, ptr %i.ada, i64 32
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !68
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adm, i64 9
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !91, !range !98, !noundef !99
  %i.adr = trunc nuw i8 %i.adq to i1
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  %i.adt = load ptr, ptr %i.ads, align 8
  %i.adu = select i1 %i.adr, ptr %i.adt, ptr null, !prof !47
  %i.adv = getelementptr inbounds [4 x i8], ptr %i.adu, i64 %i.ado
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i280 = phi ptr [ %i.adv, %bb.cf ], [ null, %bb.ce ]
  %i.adw = icmp sgt i32 %i.ya, 0
  br i1 %i.adw, label %.lr.ph.i281, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph.i281:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279
  %wide.trip.count.i282 = zext nneg i32 %i.ya to i64
  %i.adx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op = add i32 %i.yb, %i.h
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cb
  %i.ady = landingpad { ptr, i32 }
          cleanup
  %i.adz = load ptr, ptr %6, align 8, !tbaa !44
  %.not.i.i33.i272 = icmp eq ptr %i.adz, null
  br i1 %.not.i.i33.i272, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273, label %bb.ch, !prof !47

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i281
  %indvars.iv.i283 = phi i64 [ 0, %.lr.ph.i281 ], [ %indvars.iv.next.i284, %bb.ci ] ; 3 uses
  %i.aea = getelementptr inbounds nuw [2 x i8], ptr %i.acq, i64 %indvars.iv.i283
  %i.aeb = load i16, ptr %i.aea, align 2, !tbaa !253
  %i.aec = zext i16 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i280, i64 %i.aec ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !16 ; 2 uses
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = getelementptr inbounds i8, ptr %i.adk, i64 %i.aef
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 4
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !16
  %i.aej = sub nsw i32 %i.aei, %i.aee
  %i.aek = load ptr, ptr %i.adx, align 8, !tbaa !163 ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 9
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !91, !range !98, !noundef !99
  %i.aen = trunc nuw i8 %i.aem to i1
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aep = load i8, ptr %i.aeo, align 8, !range !98
  %i.aeq = trunc nuw i8 %i.aep to i1
  %i.aer = select i1 %i.aen, i1 %i.aeq, i1 false, !prof !47
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aek, i64 16
  %i.aet = load ptr, ptr %i.aes, align 8
  %i.aeu = select i1 %i.aer, ptr %i.aet, ptr null, !prof !47
  %i.aev = trunc nuw nsw i64 %indvars.iv.i283 to i32
  %.reass = add i32 %invariant.op, %i.aev
  %i.aew = sext i32 %.reass to i64
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.aew
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !16
  %i.aez = sext i32 %i.aey to i64
  %i.afa = getelementptr inbounds i8, ptr %i.aeu, i64 %i.aez
  %i.afb = sext i32 %i.aej to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.afa, ptr readonly align 8 %i.aeg, i64 %i.afb, i1 false)
  %indvars.iv.next.i284 = add nuw nsw i64 %indvars.iv.i283, 1 ; 2 uses
  %exitcond.not.i285 = icmp eq i64 %indvars.iv.next.i284, %wide.trip.count.i282
  br i1 %exitcond.not.i285, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit", label %bb.ci, !llvm.loop !315

bb.cj:                                            ; preds = %bb.cj, %.lr.ph45.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph45.i ], [ %indvars.iv.next49.i, %bb.cj ] ; 3 uses
  %i.afc = getelementptr inbounds nuw [2 x i8], ptr %i.acq, i64 %indvars.iv48.i
  %i.afd = load i16, ptr %i.afc, align 2, !tbaa !253
  %i.afe = load ptr, ptr %1, align 8, !tbaa !65   ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 40
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !87
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 16
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !88 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 9
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !91, !range !98, !noundef !99
  %i.afl = trunc nuw i8 %i.afk to i1
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afi, i64 16
  %i.afn = load ptr, ptr %i.afm, align 8
  %i.afo = select i1 %i.afl, ptr %i.afn, ptr null, !prof !47
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afe, i64 32
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !68
  %i.afr = zext i16 %i.afd to i64
  %i.afs = add nsw i64 %i.afq, %i.afr
  %i.aft = mul nsw i64 %i.afs, %.sroa.520.0.extract.shift40.i
  %i.afu = getelementptr inbounds i8, ptr %i.afo, i64 %i.aft
  %i.afv = load ptr, ptr %i.acz, align 8, !tbaa !163 ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 9
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !91, !range !98, !noundef !99
  %i.afy = trunc nuw i8 %i.afx to i1
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.aga = load i8, ptr %i.afz, align 8, !range !98
  %i.agb = trunc nuw i8 %i.aga to i1
  %i.agc = select i1 %i.afy, i1 %i.agb, i1 false, !prof !47
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afv, i64 16
  %i.age = load ptr, ptr %i.agd, align 8
  %i.agf = select i1 %i.agc, ptr %i.age, ptr null, !prof !47
  %i.agg = trunc nuw nsw i64 %indvars.iv48.i to i32
  %.reass383 = add i32 %invariant.op382, %i.agg
  %i.agh = sext i32 %.reass383 to i64
  %i.agi = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.agh
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !16
  %i.agk = sext i32 %i.agj to i64
  %i.agl = getelementptr inbounds i8, ptr %i.agf, i64 %i.agk
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.agl, ptr readonly align 8 %i.afu, i64 %i.acy, i1 false)
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit", label %bb.cj, !llvm.loop !316

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit": ; preds = %bb.ci, %bb.cj, %.preheader.i286, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

.critedge103:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit250, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.critedge

_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit460.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod517.not.a = icmp eq i64 %xtraiter516.a, 0
end_hunk_1
