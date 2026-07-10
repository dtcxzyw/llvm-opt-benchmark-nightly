inline.NumInlined: 1504
inline.NumDeleted: 739
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 32 ; 3 uses
  %i.lf = getelementptr i8, ptr %2, i64 72
  %.val.val.val.i201 = load ptr, ptr %i.lf, align 8, !tbaa !161
  %i.lg = getelementptr inbounds nuw i8, ptr %.val.val.val.i201, i64 16 ; 3 uses
  %i.lh = sext i32 %i.h to i64                    ; 3 uses
  %wide.trip.count54.i202 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter497 = and i64 %wide.trip.count54.i202, 1
  %i.li = icmp eq i32 %3, 1
  br i1 %i.li, label %.epil.preheader496, label %.lr.ph48.i198.new

.lr.ph48.i198.new:                                ; preds = %.lr.ph48.i198
  %unroll_iter500 = and i64 %wide.trip.count54.i202, 2147483646
  br label %bb.av

bb.aq:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i182
  %i.lj = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !85 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !86
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8            ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !86 ; 3 uses
  %.not.i.i37.i185 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i37.i185, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !66
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 9
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !89, !range !96, !noundef !97
  %i.lw = trunc nuw i8 %i.lv to i1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = select i1 %i.lw, ptr %i.ly, ptr null, !prof !45
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.lt
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i187 = phi ptr [ %i.ma, %bb.ar ], [ null, %bb.aq ] ; 3 uses
  %i.mb = icmp sgt i32 %3, 0
  br i1 %i.mb, label %.lr.ph.i188, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

.lr.ph.i188:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186
  %i.mc = getelementptr i8, ptr %2, i64 72
  %.val34.val.val.i191 = load ptr, ptr %i.mc, align 8, !tbaa !161
  %i.md = getelementptr inbounds nuw i8, ptr %.val34.val.val.i191, i64 16 ; 3 uses
  %i.me = sext i32 %i.h to i64                    ; 3 uses
  %wide.trip.count.i192 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter491 = and i64 %wide.trip.count.i192, 1
  %i.mf = icmp eq i32 %3, 1
  br i1 %i.mf, label %.epil.preheader490, label %.lr.ph.i188.new

.lr.ph.i188.new:                                  ; preds = %.lr.ph.i188
  %unroll_iter494 = and i64 %wide.trip.count.i192, 2147483646
  br label %bb.au

bb.as:                                            ; preds = %bb.an
  %i.mg = landingpad { ptr, i32 }
          cleanup
  %i.mh = load ptr, ptr %11, align 8, !tbaa !42
  %.not.i.i38.i177 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i38.i177, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178, label %bb.at, !prof !45

bb.at:                                            ; preds = %bb.as
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178: ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %common.resume

bb.au:                                            ; preds = %bb.au, %.lr.ph.i188.new
  %indvars.iv.i193 = phi i64 [ 0, %.lr.ph.i188.new ], [ %indvars.iv.next.i195.1, %bb.au ] ; 4 uses
  %niter495 = phi i64 [ 0, %.lr.ph.i188.new ], [ %niter495.next.1, %bb.au ]
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i193
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !251
  %i.mk = zext i16 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i187, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !3
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds i8, ptr %i.lp, i64 %i.mn
  %.val36.i194 = load i64, ptr %i.mo, align 8, !tbaa !18
  %i.mp = load ptr, ptr %i.md, align 8
  %i.mq = getelementptr [8 x i8], ptr %i.mp, i64 %indvars.iv.i193
  %i.mr = getelementptr [8 x i8], ptr %i.mq, i64 %i.me
  store i64 %.val36.i194, ptr %i.mr, align 8, !tbaa !18
  %indvars.iv.next.i195 = or disjoint i64 %indvars.iv.i193, 1 ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next.i195
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !251
  %i.mu = zext i16 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i187, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !3
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %i.lp, i64 %i.mx
  %.val36.i194.1 = load i64, ptr %i.my, align 8, !tbaa !18
  %i.mz = load ptr, ptr %i.md, align 8
  %i.na = getelementptr [8 x i8], ptr %i.mz, i64 %indvars.iv.next.i195
  %i.nb = getelementptr [8 x i8], ptr %i.na, i64 %i.me
  store i64 %.val36.i194.1, ptr %i.nb, align 8, !tbaa !18
  %indvars.iv.next.i195.1 = add nuw nsw i64 %indvars.iv.i193, 2 ; 2 uses
  %niter495.next.1 = add i64 %niter495, 2         ; 2 uses
  %niter495.ncmp.1 = icmp eq i64 %niter495.next.1, %unroll_iter494
  br i1 %niter495.ncmp.1, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit474.unr-lcssa, label %bb.au, !llvm.loop !273

bb.av:                                            ; preds = %bb.av, %.lr.ph48.i198.new
  %indvars.iv51.i203 = phi i64 [ 0, %.lr.ph48.i198.new ], [ %indvars.iv.next52.i205.1, %bb.av ] ; 4 uses
  %niter501 = phi i64 [ 0, %.lr.ph48.i198.new ], [ %niter501.next.1, %bb.av ]
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv51.i203
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !251
  %i.ne = load ptr, ptr %i.ld, align 8
  %i.nf = load i64, ptr %i.le, align 8, !tbaa !66
  %i.ng = zext i16 %i.nd to i64
  %i.nh = add nsw i64 %i.nf, %i.ng
  %i.ni = mul nsw i64 %i.nh, %.sroa.520.0.extract.shift44.i184
  %i.nj = getelementptr inbounds i8, ptr %i.ne, i64 %i.ni
  %.val33.i204 = load i64, ptr %i.nj, align 8, !tbaa !18
  %i.nk = load ptr, ptr %i.lg, align 8
  %i.nl = getelementptr [8 x i8], ptr %i.nk, i64 %indvars.iv51.i203
  %i.nm = getelementptr [8 x i8], ptr %i.nl, i64 %i.lh
  store i64 %.val33.i204, ptr %i.nm, align 8, !tbaa !18
  %indvars.iv.next52.i205 = or disjoint i64 %indvars.iv51.i203, 1 ; 2 uses
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next52.i205
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !251
  %i.np = load ptr, ptr %i.ld, align 8
  %i.nq = load i64, ptr %i.le, align 8, !tbaa !66
  %i.nr = zext i16 %i.no to i64
  %i.ns = add nsw i64 %i.nq, %i.nr
  %i.nt = mul nsw i64 %i.ns, %.sroa.520.0.extract.shift44.i184
  %i.nu = getelementptr inbounds i8, ptr %i.np, i64 %i.nt
  %.val33.i204.1 = load i64, ptr %i.nu, align 8, !tbaa !18
  %i.nv = load ptr, ptr %i.lg, align 8
  %i.nw = getelementptr [8 x i8], ptr %i.nv, i64 %indvars.iv.next52.i205
  %i.nx = getelementptr [8 x i8], ptr %i.nw, i64 %i.lh
  store i64 %.val33.i204.1, ptr %i.nx, align 8, !tbaa !18
  %indvars.iv.next52.i205.1 = add nuw nsw i64 %indvars.iv51.i203, 2 ; 2 uses
  %niter501.next.1 = add i64 %niter501, 2         ; 2 uses
  %niter501.ncmp.1 = icmp eq i64 %niter501.next.1, %unroll_iter500
  br i1 %niter501.ncmp.1, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit473.unr-lcssa, label %bb.av, !llvm.loop !274

bb.aw:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ny = call noundef i32 @_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, ptr noundef %4, i32 noundef 8) ; 3 uses
  %i.nz = sub nsw i32 %3, %i.ny                   ; 6 uses
  store i32 %i.nz, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.oa = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.oa)
  %i.ob = load ptr, ptr %10, align 8, !tbaa !42
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %.thread.i227, label %bb.ax, !prof !45

.thread.i227:                                     ; preds = %bb.aw
  %i.od = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.0.0.copyload.i.i45.i = load i64, ptr %i.od, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %.pr.i209 = load ptr, ptr %10, align 8, !tbaa !42
  %i.oe = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.0.0.copyload.i.i.i210 = load i64, ptr %i.oe, align 8 ; 2 uses
  %.not.i.i.i211 = icmp eq ptr %.pr.i209, null
  br i1 %.not.i.i.i211, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212, label %bb.az, !prof !250

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212: ; preds = %bb.az, %bb.ay, %.thread.i227
  %.sroa.0.0.copyload.i.i49.i = phi i64 [ %.sroa.0.0.copyload.i.i45.i, %.thread.i227 ], [ %.sroa.0.0.copyload.i.i.i210, %bb.ay ], [ %.sroa.0.0.copyload.i.i.i210, %bb.az ] ; 3 uses
  %.sroa.520.0.extract.shift50.i = lshr i64 %.sroa.0.0.copyload.i.i49.i, 32 ; 3 uses
  %.sroa.520.0.extract.trunc51.i = trunc nuw i64 %.sroa.520.0.extract.shift50.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.of = trunc i64 %.sroa.0.0.copyload.i.i49.i to i1
  br i1 %i.of, label %.preheader.i223, label %bb.ba

.preheader.i223:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212
  %i.og = icmp sgt i32 %i.nz, 0
  br i1 %i.og, label %.lr.ph55.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"

.lr.ph55.i:                                       ; preds = %.preheader.i223
  %i.oh = ashr i64 %.sroa.0.0.copyload.i.i49.i, 32 ; 4 uses
  %i.oi = add nsw i64 %i.oh, -1
  %i.oj = sdiv i64 %i.oi, 8                       ; 2 uses
  %i.ok = icmp eq i64 %.sroa.520.0.extract.shift50.i, 0
  %.not1.i38.i = icmp slt i32 %.sroa.520.0.extract.trunc51.i, -6
  %or.cond2.i39.i = or i1 %i.ok, %.not1.i38.i
  br i1 %or.cond2.i39.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.preheader.i

.lr.ph.split.i40.preheader.preheader.i:           ; preds = %.lr.ph55.i
  %wide.trip.count61.i = zext nneg i32 %i.nz to i64
  %i.ol = getelementptr i8, ptr %2, i64 72
  %i.om = add nsw i64 %i.oj, 1                    ; 2 uses
  %smax447 = call i64 @llvm.smax.i64(i64 %i.om, i64 1)
  %smax450 = call i64 @llvm.smax.i64(i64 %i.om, i64 1) ; 2 uses
  %min.iters.check452 = icmp slt i64 %i.oh, 121
  %i.on = sub nsw i64 0, %smax447
  %i.oo = and i64 %i.on, 4294967295
  %i.op = icmp eq i64 %i.oo, 0
  %n.vec455 = and i64 %smax450, 9223372036854775804 ; 4 uses
  %19 = trunc i64 %n.vec455 to i32
  %cmp.n462 = icmp eq i64 %smax450, %n.vec455
  br label %.lr.ph.split.i40.preheader.i

bb.ba:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212
  %i.oq = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 40
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !85 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !86
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8            ; 2 uses
  %i.ox = ptrtoaddr ptr %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !86 ; 3 uses
  %.not.i.i35.i = icmp eq ptr %i.oz, null
  br i1 %.not.i.i35.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !66
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 9
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !89, !range !96, !noundef !97
  %i.pe = trunc nuw i8 %i.pd to i1
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = select i1 %i.pe, ptr %i.pg, ptr null, !prof !45
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.pb
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i214 = phi ptr [ %i.pi, %bb.bb ], [ null, %bb.ba ]
  %i.pj = icmp sgt i32 %i.nz, 0
  br i1 %i.pj, label %.lr.ph.preheader.i215, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"

.lr.ph.preheader.i215:                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %wide.trip.count.i216 = zext nneg i32 %i.nz to i64
  %i.pk = getelementptr i8, ptr %2, i64 72
  br label %.lr.ph.i217

bb.bc:                                            ; preds = %bb.ax
  %i.pl = landingpad { ptr, i32 }
          cleanup
  %i.pm = load ptr, ptr %10, align 8, !tbaa !42
  %.not.i.i36.i = icmp eq ptr %i.pm, null
  br i1 %.not.i.i36.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i, label %bb.bd, !prof !45

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %common.resume

.lr.ph.i217:                                      ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %.lr.ph.preheader.i215
  %indvars.iv.i218 = phi i64 [ 0, %.lr.ph.preheader.i215 ], [ %indvars.iv.next.i221, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i" ] ; 3 uses
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i218
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !251
  %i.pp = zext i16 %i.po to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i214, i64 %i.pp ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !3  ; 3 uses
  %i.ps = sext i32 %i.pr to i64                   ; 2 uses
  %i.pt = getelementptr inbounds i8, ptr %i.ow, i64 %i.ps ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3  ; 2 uses
  %i.pw = sub nsw i32 %i.pv, %i.pr                ; 3 uses
  %.val33.val.val.i = load ptr, ptr %i.pk, align 8, !tbaa !161
  %i.px = getelementptr inbounds nuw i8, ptr %.val33.val.val.i, i64 16
  %i.py = load ptr, ptr %i.px, align 8            ; 2 uses
  %i.pz = ptrtoaddr ptr %i.py to i64
  %i.qa = sext i32 %i.pw to i64                   ; 2 uses
  %i.qb = trunc i64 %indvars.iv.i218 to i32
  %i.qc = add i32 %i.h, %i.qb
  %i.qd = sext i32 %i.qc to i64
  %i.qe = mul nsw i64 %i.qd, %i.qa                ; 2 uses
  %i.qf = getelementptr inbounds i8, ptr %i.py, i64 %i.qe ; 2 uses
  %i.qg = add nsw i64 %i.qa, -1
  %i.qh = sdiv i64 %i.qg, 8                       ; 3 uses
  %i.qi = icmp eq i32 %i.pv, %i.pr
  %.not1.i.i = icmp slt i32 %i.pw, -6
  %or.cond2.i.i = or i1 %i.qi, %.not1.i.i
  br i1 %or.cond2.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i217
  %i.qj = call i64 @llvm.smax.i64(i64 %i.qh, i64 0)
  %smax431 = add nuw nsw i64 %i.qj, 1             ; 2 uses
  %min.iters.check433 = icmp slt i32 %i.pw, 185
  br i1 %min.iters.check433, label %.lr.ph.split.i.i.preheader465, label %vector.scevcheck427

vector.scevcheck427:                              ; preds = %.lr.ph.split.i.i.preheader
  %i.qk = call i64 @llvm.smax.i64(i64 %i.qh, i64 0)
  %i.ql = and i64 %i.qk, 4294967295
  %i.qm = icmp eq i64 %i.ql, 4294967295
  br i1 %i.qm, label %.lr.ph.split.i.i.preheader465, label %vector.memcheck429

vector.memcheck429:                               ; preds = %vector.scevcheck427
  %i.qn = add i64 %i.qe, %i.pz
  %i.qo = add i64 %i.ox, %i.ps
  %i.qp = sub i64 %i.qo, %i.qn
  %diff.check430 = icmp ugt i64 %i.qp, -32
  br i1 %diff.check430, label %.lr.ph.split.i.i.preheader465, label %vector.ph434

vector.ph434:                                     ; preds = %vector.memcheck429
  %n.vec436 = and i64 %smax431, 9223372036854775804 ; 4 uses
  %20 = trunc i64 %n.vec436 to i32
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph434
  %index438 = phi i64 [ 0, %vector.ph434 ], [ %index.next441, %vector.body437 ] ; 3 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %index438 ; 2 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %index438 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %wide.load439 = load <2 x i64>, ptr %i.qr, align 8
  %wide.load440 = load <2 x i64>, ptr %i.qs, align 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  store <2 x i64> %wide.load439, ptr %i.qq, align 1
  store <2 x i64> %wide.load440, ptr %i.qt, align 1
  %index.next441 = add nuw i64 %index438, 4       ; 2 uses
  %i.qu = icmp eq i64 %index.next441, %n.vec436
  br i1 %i.qu, label %middle.block442, label %vector.body437, !llvm.loop !275

middle.block442:                                  ; preds = %vector.body437
  %cmp.n443 = icmp eq i64 %smax431, %n.vec436
  br i1 %cmp.n443, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader465

.lr.ph.split.i.i.preheader465:                    ; preds = %vector.memcheck429, %vector.scevcheck427, %.lr.ph.split.i.i.preheader, %middle.block442
  %.ph466 = phi i64 [ 0, %vector.memcheck429 ], [ 0, %vector.scevcheck427 ], [ 0, %.lr.ph.split.i.i.preheader ], [ %n.vec436, %middle.block442 ]
  %.03.i.i.ph = phi i32 [ 0, %vector.memcheck429 ], [ 0, %vector.scevcheck427 ], [ 0, %.lr.ph.split.i.i.preheader ], [ %20, %middle.block442 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader465, %.lr.ph.split.i.i
  %i.qv = phi i64 [ %22, %.lr.ph.split.i.i ], [ %.ph466, %.lr.ph.split.i.i.preheader465 ] ; 2 uses
  %.03.i.i = phi i32 [ %21, %.lr.ph.split.i.i ], [ %.03.i.i.ph, %.lr.ph.split.i.i.preheader465 ]
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.qv
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.qv
  %.0.copyload.i.i.i = load i64, ptr %i.qx, align 8
  store i64 %.0.copyload.i.i.i, ptr %i.qw, align 1
  %21 = add i32 %.03.i.i, 1                       ; 2 uses
  %22 = zext i32 %21 to i64                       ; 2 uses
  %.not.i.i220 = icmp slt i64 %i.qh, %22
  br i1 %.not.i.i220, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i, !llvm.loop !278

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i, %middle.block442, %.lr.ph.i217
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i218, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i216
  br i1 %exitcond.not.i222, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.i217, !llvm.loop !279

.lr.ph.split.i40.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", %.lr.ph.split.i40.preheader.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph.split.i40.preheader.preheader.i ], [ %indvars.iv.next59.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i" ] ; 4 uses
  %i.qy = trunc i64 %indvars.iv58.i to i32
  %i.qz = add i32 %i.h, %i.qy
  %i.ra = sext i32 %i.qz to i64
  %i.rb = mul nsw i64 %i.oh, %i.ra
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv58.i
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !251
  %i.re = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 40
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !85
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !86
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8            ; 2 uses
  %i.rl = ptrtoaddr ptr %i.rk to i64
  %i.rm = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !66
  %i.ro = zext i16 %i.rd to i64
  %i.rp = add nsw i64 %i.rn, %i.ro
  %i.rq = mul nsw i64 %i.rp, %.sroa.520.0.extract.shift50.i ; 2 uses
  %i.rr = getelementptr inbounds i8, ptr %i.rk, i64 %i.rq ; 2 uses
  %.val.val.val.i226 = load ptr, ptr %i.ol, align 8, !tbaa !161
  %i.rs = getelementptr inbounds nuw i8, ptr %.val.val.val.i226, i64 16
  %i.rt = load ptr, ptr %i.rs, align 8            ; 2 uses
  %i.ru = ptrtoaddr ptr %i.rt to i64
  %i.rv = trunc nuw nsw i64 %indvars.iv58.i to i32
  %i.rw = add nsw i32 %i.h, %i.rv
  %i.rx = sext i32 %i.rw to i64
  %i.ry = mul nsw i64 %i.oh, %i.rx
  %i.rz = getelementptr inbounds i8, ptr %i.rt, i64 %i.ry ; 2 uses
  %brmerge = select i1 %min.iters.check452, i1 true, i1 %i.op
  br i1 %brmerge, label %.lr.ph.split.i40.i.preheader, label %vector.memcheck448

vector.memcheck448:                               ; preds = %.lr.ph.split.i40.preheader.i
  %i.sa = add i64 %i.rb, %i.ru
  %i.sb = add i64 %i.rq, %i.rl
  %i.sc = sub i64 %i.sb, %i.sa
  %diff.check449 = icmp ugt i64 %i.sc, -32
  br i1 %diff.check449, label %.lr.ph.split.i40.i.preheader, label %vector.body456

vector.body456:                                   ; preds = %vector.memcheck448, %vector.body456
  %index457 = phi i64 [ %index.next460, %vector.body456 ], [ 0, %vector.memcheck448 ] ; 3 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %index457 ; 2 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %index457 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %wide.load458.a = load <2 x i64>, ptr %i.se, align 8
  %wide.load459 = load <2 x i64>, ptr %i.sf, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store <2 x i64> %wide.load458.a, ptr %i.sd, align 1
  store <2 x i64> %wide.load459, ptr %i.sg, align 1
  %index.next460 = add nuw i64 %index457, 4       ; 2 uses
  %i.sh = icmp eq i64 %index.next460, %n.vec455
  br i1 %i.sh, label %middle.block461, label %vector.body456, !llvm.loop !280

middle.block461:                                  ; preds = %vector.body456
  br i1 %cmp.n462, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", label %.lr.ph.split.i40.i.preheader

.lr.ph.split.i40.i.preheader:                     ; preds = %.lr.ph.split.i40.preheader.i, %vector.memcheck448, %middle.block461
  %.ph = phi i64 [ 0, %vector.memcheck448 ], [ %n.vec455, %middle.block461 ], [ 0, %.lr.ph.split.i40.preheader.i ]
  %.03.i41.i.ph = phi i32 [ 0, %vector.memcheck448 ], [ %19, %middle.block461 ], [ 0, %.lr.ph.split.i40.preheader.i ]
  br label %.lr.ph.split.i40.i

.lr.ph.split.i40.i:                               ; preds = %.lr.ph.split.i40.i.preheader, %.lr.ph.split.i40.i
  %i.si = phi i64 [ %24, %.lr.ph.split.i40.i ], [ %.ph, %.lr.ph.split.i40.i.preheader ] ; 2 uses
  %.03.i41.i = phi i32 [ %23, %.lr.ph.split.i40.i ], [ %.03.i41.i.ph, %.lr.ph.split.i40.i.preheader ]
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.si
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.si
  %.0.copyload.i.i42.i = load i64, ptr %i.sk, align 8
  store i64 %.0.copyload.i.i42.i, ptr %i.sj, align 1
  %23 = add i32 %.03.i41.i, 1                     ; 2 uses
  %24 = zext i32 %23 to i64                       ; 2 uses
  %.not.i43.i = icmp slt i64 %i.oj, %24
  br i1 %.not.i43.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", label %.lr.ph.split.i40.i, !llvm.loop !281

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i": ; preds = %.lr.ph.split.i40.i, %middle.block461
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.i, !llvm.loop !282

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", %.preheader.i223, %.lr.ph55.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %i.sl = icmp sgt i32 %i.ny, 0
  br i1 %i.sl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  %i.sm = sext i32 %i.nz to i64
  %i.sn = getelementptr inbounds [2 x i8], ptr %4, i64 %i.sm
  store ptr %i.a, ptr %18, align 8, !tbaa !283
  %i.so = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.b, ptr %i.so, align 8, !tbaa !286
  %i.sp = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.c, ptr %i.sp, align 8, !tbaa !286
  call fastcc void @"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_5EEvS7_iSB_T_"(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ny, ptr noundef %i.sn, ptr noundef nonnull byval(%class.anon.86) align 8 %18)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

bb.bg:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !161 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 9
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !89, !range !96, !noundef !97
  %i.su = trunc nuw i8 %i.st to i1
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.sw = load i8, ptr %i.sv, align 8, !range !96
  %i.sx = trunc nuw i8 %i.sw to i1
  %i.sy = select i1 %i.su, i1 %i.sx, i1 false, !prof !45
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.ta = load ptr, ptr %i.sz, align 8            ; 12 uses
  %i.tb = select i1 %i.sy, ptr %i.ta, ptr null, !prof !45 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  br i1 %i.j, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tc = sext i32 %i.h to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !tbaa !3
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.tf = phi i32 [ %i.te, %bb.bh ], [ 0, %bb.bg ] ; 5 uses
  store i32 %i.tf, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.tg = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.tg)
  %i.th = load ptr, ptr %9, align 8, !tbaa !42
  %i.ti = icmp eq ptr %i.th, null
  br i1 %i.ti, label %.thread.i247, label %bb.bj, !prof !45

.thread.i247:                                     ; preds = %bb.bi
  %i.tj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i38.i = load i64, ptr %i.tj, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %.pr.i230 = load ptr, ptr %9, align 8, !tbaa !42
  %i.tk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i.i231 = load i64, ptr %i.tk, align 8 ; 2 uses
  %.not.i.i.i232 = icmp eq ptr %.pr.i230, null
  br i1 %.not.i.i.i232, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233, label %bb.bl, !prof !250

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
  br i1 %min.iters.check, label %.lr.ph47.i.preheader481, label %vector.ph

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
  store <4 x i32> %broadcast.splat, ptr %i.tp, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.tq, align 4, !tbaa !3
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.tr = icmp eq i32 %index.next, %n.vec
  br i1 %i.tr, label %middle.block, label %vector.body, !llvm.loop !288

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %.lr.ph47.i.preheader481

.lr.ph47.i.preheader481:                          ; preds = %.lr.ph47.i.preheader, %middle.block
  %.03146.i.ph = phi i32 [ 0, %.lr.ph47.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph47.i

bb.bm:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.ts = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 40
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !85
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !86 ; 3 uses
  %.not.i.i35.i234 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i35.i234, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ts, i64 32
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !66
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 9
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !89, !range !96, !noundef !97
  %i.ub = trunc nuw i8 %i.ua to i1
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ud = load ptr, ptr %i.uc, align 8
  %i.ue = select i1 %i.ub, ptr %i.ud, ptr null, !prof !45
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
  %i.uj = load ptr, ptr %9, align 8, !tbaa !42
  %.not.i.i36.i228 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i36.i228, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229, label %bb.bp, !prof !45

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
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !251
  %i.um = zext i16 %i.ul to i64
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i236, i64 %i.um ; 2 uses
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !3
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !3
  %i.ur = sub nsw i32 %i.uq, %i.uo
  %i.us = trunc nuw nsw i64 %indvars.iv.i240 to i32
  %i.ut = add nsw i32 %i.h, %i.us
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.uu
  store i32 %i.ur, ptr %i.uv, align 4, !tbaa !3
  %indvars.iv.next.i242 = or disjoint i64 %indvars.iv.i240, 1 ; 2 uses
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next.i242
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !251
  %i.uy = zext i16 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i236, i64 %i.uy ; 2 uses
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !3
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !3
  %i.vd = sub nsw i32 %i.vc, %i.va
  %i.ve = trunc nuw nsw i64 %indvars.iv.next.i242 to i32
  %i.vf = add nsw i32 %i.h, %i.ve
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.vg
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.vw
  store i32 %i.vt, ptr %i.vx, align 4, !tbaa !3
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.epil.preheader, %.lr.ph.preheader.loopexit482.unr-lcssa, %.lr.ph47.i, %middle.block
  %xtraiter484 = and i32 %3, 1
  %i.vy = icmp eq i32 %3, 1
  br i1 %i.vy, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter488 = and i32 %3, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.br, %.lr.ph.preheader.new
  %i.vz = phi i32 [ %i.tf, %.lr.ph.preheader.new ], [ %i.wo, %bb.br ] ; 2 uses
  %.091328 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.wp, %bb.br ] ; 4 uses
  %niter489 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter489.next.1, %bb.br ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wa = add nsw i32 %i.h, %.091328
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.wb ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !3  ; 2 uses
  store i32 %i.wd, ptr %i.e, align 4, !tbaa !3
  store i32 %i.vz, ptr %i.wc, align 4, !tbaa !3
  %i.we = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.vz, i32 %i.wd) ; 2 uses
  %i.wf = extractvalue { i32, i1 } %i.we, 1
  br i1 %i.wf, label %.loopexit, label %.lr.ph.1, !prof !62

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.wg = extractvalue { i32, i1 } %i.we, 0       ; 3 uses
  store i32 %i.wg, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.wh = or disjoint i32 %.091328, 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wi = add nsw i32 %i.h, %i.wh
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.wj ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !3  ; 2 uses
  store i32 %i.wl, ptr %i.e, align 4, !tbaa !3
  store i32 %i.wg, ptr %i.wk, align 4, !tbaa !3
  %i.wm = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.wg, i32 %i.wl) ; 2 uses
  %i.wn = extractvalue { i32, i1 } %i.wm, 1
  br i1 %i.wn, label %.loopexit, label %bb.br, !prof !62

bb.br:                                            ; preds = %.lr.ph.1
  %i.wo = extractvalue { i32, i1 } %i.wm, 0       ; 4 uses
  store i32 %i.wo, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.wp = add nuw nsw i32 %.091328, 2             ; 2 uses
  %niter489.next.1 = add i32 %niter489, 2         ; 2 uses
  %niter489.ncmp.1 = icmp eq i32 %niter489.next.1, %unroll_iter488
  br i1 %niter489.ncmp.1, label %.critedge101.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !291

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.epil.preheader
  %.091328.lcssa = phi i32 [ %.091328.epil.init, %.lr.ph.epil.preheader ], [ %.091328, %.lr.ph ], [ %i.wh, %.lr.ph.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.wq = add nuw i32 %.091328.lcssa, 1
  %i.wr = add i32 %i.wq, %i.h
  store i32 %i.wr, ptr %i.f, align 4, !tbaa !3
  call void @_ZN5arrow6Status8FromArgsIJRA54_KciRA23_S2_RiRA26_S2_S7_RA7_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(54) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(23) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(26) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge103

.critedge101.loopexit.unr-lcssa:                  ; preds = %bb.br
  %lcmp.mod485.not = icmp eq i32 %xtraiter484, 0
  br i1 %lcmp.mod485.not, label %.critedge101, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.critedge101.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ %i.tf, %.lr.ph.preheader ], [ %i.wo, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %.091328.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.wp, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod487 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.ws = add nsw i32 %i.h, %.091328.epil.init
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.wt ; 2 uses
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !3  ; 2 uses
  store i32 %i.wv, ptr %i.e, align 4, !tbaa !3
  store i32 %.epil.init, ptr %i.wu, align 4, !tbaa !3
  %i.ww = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.epil.init, i32 %i.wv) ; 2 uses
  %i.wx = extractvalue { i32, i1 } %i.ww, 1
  br i1 %i.wx, label %.loopexit, label %.critedge101.loopexit.epilog-lcssa, !prof !62

.critedge101.loopexit.epilog-lcssa:               ; preds = %.lr.ph.epil.preheader
  %i.wy = extractvalue { i32, i1 } %i.ww, 0       ; 2 uses
  store i32 %i.wy, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge101

.critedge101:                                     ; preds = %.critedge101.loopexit.epilog-lcssa, %.critedge101.loopexit.unr-lcssa, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, %.preheader.i244
  %i.wz = phi i32 [ %i.tf, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235 ], [ %i.tf, %.preheader.i244 ], [ %i.wo, %.critedge101.loopexit.unr-lcssa ], [ %i.wy, %.critedge101.loopexit.epilog-lcssa ]
  %i.xa = sext i32 %i.i to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.xa
  store i32 %i.wz, ptr %i.xb, align 4, !tbaa !3
  %i.xc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.xd = load i8, ptr %i.xc, align 8, !tbaa !172, !range !96, !noalias !292, !noundef !97
  %i.xe = trunc nuw i8 %i.xd to i1
  br i1 %i.xe, label %_ZN5arrow6StatusD2Ev.exit252, label %bb.bs

bb.bs:                                            ; preds = %.critedge101
  %i.xf = load ptr, ptr %i.sq, align 8, !tbaa !161, !noalias !292
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !noalias !292
  %i.xi = load i32, ptr %i.g, align 8, !tbaa !140, !noalias !292
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.xj
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !3, !noalias !292
  %i.xm = sext i32 %i.xl to i64                   ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !156, !noalias !292 ; 2 uses
  %i.xp = icmp slt i64 %i.xo, %i.xm
  br i1 %i.xp, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit252

.preheader.i248:                                  ; preds = %bb.bs, %.preheader.i248
  %.012.i = phi i64 [ %i.xr, %.preheader.i248 ], [ %i.xo, %bb.bs ] ; 4 uses
  %i.xq = icmp slt i64 %.012.i, %i.xm
  %i.xr = shl nsw i64 %.012.i, 1
  br i1 %i.xq, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit.i, !llvm.loop !233

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.preheader.i248
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !292
  %i.xs = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !161, !noalias !292 ; 2 uses
  %i.xu = add nsw i64 %.012.i, 64
  %i.xv = load ptr, ptr %i.xt, align 8, !tbaa !40, !noalias !295
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 24
  %i.xx = load ptr, ptr %i.xw, align 8, !noalias !295
  call void %i.xx(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %i.xt, i64 noundef %i.xu, i1 noundef zeroext true), !noalias !292, !inline_history !298
  %i.xy = load ptr, ptr %8, align 8, !tbaa !42, !noalias !299 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !292
  %i.xz = icmp eq ptr %i.xy, null
  br i1 %i.xz, label %_ZN5arrow6StatusD2Ev.exit17.i, label %_ZN5arrow6StatusD2Ev.exit250

_ZN5arrow6StatusD2Ev.exit17.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store i64 %.012.i, ptr %i.xn, align 8, !tbaa !156, !noalias !292
  br label %_ZN5arrow6StatusD2Ev.exit252

_ZN5arrow6StatusD2Ev.exit250:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.xy, ptr %0, align 8, !tbaa !42, !alias.scope !302
  br label %.critedge103

_ZN5arrow6StatusD2Ev.exit252:                     ; preds = %_ZN5arrow6StatusD2Ev.exit17.i, %bb.bs, %.critedge101
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !305
  %i.ya = call noundef i32 @_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, ptr noundef %4, i32 noundef 8) ; 5 uses
  %i.yb = sub nsw i32 %3, %i.ya                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.yc = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.yc)
  %i.yd = load ptr, ptr %7, align 8, !tbaa !42
  %i.ye = icmp eq ptr %i.yd, null
  br i1 %i.ye, label %.thread.i268, label %bb.bt, !prof !45

.thread.i268:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit252
  %i.yf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i42.i269 = load i64, ptr %i.yf, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256

bb.bt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit252
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %.pr.i253 = load ptr, ptr %7, align 8, !tbaa !42
  %i.yg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i.i254 = load i64, ptr %i.yg, align 8 ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %.pr.i253, null
  br i1 %.not.i.i.i255, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256, label %bb.bv, !prof !250

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256: ; preds = %bb.bv, %bb.bu, %.thread.i268
  %.sroa.0.0.copyload.i.i46.i = phi i64 [ %.sroa.0.0.copyload.i.i42.i269, %.thread.i268 ], [ %.sroa.0.0.copyload.i.i.i254, %bb.bu ], [ %.sroa.0.0.copyload.i.i.i254, %bb.bv ] ; 3 uses
  %.sroa.520.0.extract.shift47.i = lshr i64 %.sroa.0.0.copyload.i.i46.i, 32 ; 3 uses
  %.sroa.520.0.extract.trunc48.i = trunc nuw i64 %.sroa.520.0.extract.shift47.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.yh = trunc i64 %.sroa.0.0.copyload.i.i46.i to i1
  br i1 %i.yh, label %.preheader.i267, label %bb.bw

.preheader.i267:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.yi = icmp sgt i32 %i.yb, 0
  br i1 %i.yi, label %.lr.ph52.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph52.i:                                       ; preds = %.preheader.i267
  %i.yj = ashr i64 %.sroa.0.0.copyload.i.i46.i, 32 ; 2 uses
  %i.yk = add nsw i64 %i.yj, -1
  %i.yl = sdiv i64 %i.yk, 8                       ; 2 uses
  %i.ym = icmp eq i64 %.sroa.520.0.extract.shift47.i, 0
  %.not10.i35.i = icmp slt i32 %.sroa.520.0.extract.trunc48.i, -6
  %or.cond11.i36.i = or i1 %i.ym, %.not10.i35.i
  br i1 %or.cond11.i36.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.preheader.i

.lr.ph.split.i37.preheader.preheader.i:           ; preds = %.lr.ph52.i
  %wide.trip.count58.i = zext nneg i32 %i.yb to i64
  %i.yn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.yo = add nsw i64 %i.yl, 1                    ; 2 uses
  %smax409 = call i64 @llvm.smax.i64(i64 %i.yo, i64 1)
  %smax412 = call i64 @llvm.smax.i64(i64 %i.yo, i64 1) ; 2 uses
  %min.iters.check414 = icmp slt i64 %i.yj, 121
  %i.yp = sub nsw i64 0, %smax409
  %i.yq = and i64 %i.yp, 4294967295
  %i.yr = icmp eq i64 %i.yq, 0
  %n.vec417 = and i64 %smax412, 9223372036854775804 ; 4 uses
  %25 = trunc i64 %n.vec417 to i32
  %cmp.n424 = icmp eq i64 %smax412, %n.vec417
  br label %.lr.ph.split.i37.preheader.i

bb.bw:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.ys = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 40
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !85 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 32
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !86
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %i.yy = load ptr, ptr %i.yx, align 8            ; 2 uses
  %i.yz = ptrtoaddr ptr %i.yy to i64
  %i.za = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !86 ; 3 uses
  %.not.i.i32.i = icmp eq ptr %i.zb, null
  br i1 %.not.i.i32.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ys, i64 32
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !66
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 9
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !89, !range !96, !noundef !97
  %i.zg = trunc nuw i8 %i.zf to i1
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  %i.zi = load ptr, ptr %i.zh, align 8
  %i.zj = select i1 %i.zg, ptr %i.zi, ptr null, !prof !45
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.zj, i64 %i.zd
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i258 = phi ptr [ %i.zk, %bb.bx ], [ null, %bb.bw ]
  %i.zl = icmp sgt i32 %i.yb, 0
  br i1 %i.zl, label %.lr.ph.i259, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph.i259:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %wide.trip.count.i260 = zext nneg i32 %i.yb to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %bb.ca

bb.by:                                            ; preds = %bb.bt
  %i.zn = landingpad { ptr, i32 }
          cleanup
  %i.zo = load ptr, ptr %7, align 8, !tbaa !42
  %.not.i.i33.i = icmp eq ptr %i.zo, null
  br i1 %.not.i.i33.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i, label %bb.bz, !prof !45

bb.bz:                                            ; preds = %bb.by
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

bb.ca:                                            ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %.lr.ph.i259
  %indvars.iv.i261 = phi i64 [ 0, %.lr.ph.i259 ], [ %indvars.iv.next.i265, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i" ] ; 3 uses
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i261
  %i.zq = load i16, ptr %i.zp, align 2, !tbaa !251
  %i.zr = zext i16 %i.zq to i64
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i258, i64 %i.zr ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !3  ; 3 uses
  %i.zu = sext i32 %i.zt to i64                   ; 2 uses
  %i.zv = getelementptr inbounds i8, ptr %i.yy, i64 %i.zu ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !3  ; 2 uses
  %i.zy = sub nsw i32 %i.zx, %i.zt                ; 3 uses
  %i.zz = load ptr, ptr %i.zm, align 8, !tbaa !161
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  %i.aab = load ptr, ptr %i.aaa, align 8          ; 2 uses
  %i.aac = ptrtoaddr ptr %i.aab to i64
  %i.aad = trunc nuw nsw i64 %indvars.iv.i261 to i32
  %i.aae = add nsw i32 %i.h, %i.aad
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !3
  %i.aai = sext i32 %i.aah to i64                 ; 2 uses
  %i.aaj = getelementptr inbounds i8, ptr %i.aab, i64 %i.aai ; 2 uses
  %i.aak = sext i32 %i.zy to i64
  %i.aal = add nsw i64 %i.aak, -1
  %i.aam = sdiv i64 %i.aal, 8                     ; 3 uses
  %i.aan = icmp eq i32 %i.zx, %i.zt
  %.not10.i.i = icmp slt i32 %i.zy, -6
  %or.cond11.i.i = or i1 %i.aan, %.not10.i.i
  br i1 %or.cond11.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader

.lr.ph.split.i.i262.preheader:                    ; preds = %bb.ca
  %i.aao = call i64 @llvm.smax.i64(i64 %i.aam, i64 0)
  %smax394 = add nuw nsw i64 %i.aao, 1            ; 2 uses
  %min.iters.check396 = icmp slt i32 %i.zy, 185
  br i1 %min.iters.check396, label %.lr.ph.split.i.i262.preheader477, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.i.i262.preheader
  %i.aap = call i64 @llvm.smax.i64(i64 %i.aam, i64 0)
  %i.aaq = and i64 %i.aap, 4294967295
  %i.aar = icmp eq i64 %i.aaq, 4294967295
  br i1 %i.aar, label %.lr.ph.split.i.i262.preheader477, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aas = add i64 %i.aac, %i.aai
  %i.aat = add i64 %i.yz, %i.zu
  %i.aau = sub i64 %i.aat, %i.aas
  %diff.check = icmp ugt i64 %i.aau, -32
  br i1 %diff.check, label %.lr.ph.split.i.i262.preheader477, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck
  %n.vec399 = and i64 %smax394, 9223372036854775804 ; 4 uses
  %26 = trunc i64 %n.vec399 to i32
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph397
  %index401 = phi i64 [ 0, %vector.ph397 ], [ %index.next403, %vector.body400 ] ; 3 uses
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %index401 ; 2 uses
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.zv, i64 %index401 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %wide.load = load <2 x i64>, ptr %i.aaw, align 8
  %wide.load402 = load <2 x i64>, ptr %i.aax, align 8
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  store <2 x i64> %wide.load, ptr %i.aav, align 1
  store <2 x i64> %wide.load402, ptr %i.aay, align 1
  %index.next403 = add nuw i64 %index401, 4       ; 2 uses
  %i.aaz = icmp eq i64 %index.next403, %n.vec399
  br i1 %i.aaz, label %middle.block404, label %vector.body400, !llvm.loop !307

middle.block404:                                  ; preds = %vector.body400
  %cmp.n405 = icmp eq i64 %smax394, %n.vec399
  br i1 %cmp.n405, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader477

.lr.ph.split.i.i262.preheader477:                 ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.i.i262.preheader, %middle.block404
  %.ph478 = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.i.i262.preheader ], [ %n.vec399, %middle.block404 ]
  %.012.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.i.i262.preheader ], [ %26, %middle.block404 ]
  br label %.lr.ph.split.i.i262

.lr.ph.split.i.i262:                              ; preds = %.lr.ph.split.i.i262.preheader477, %.lr.ph.split.i.i262
  %i.aba = phi i64 [ %28, %.lr.ph.split.i.i262 ], [ %.ph478, %.lr.ph.split.i.i262.preheader477 ] ; 2 uses
  %.012.i.i = phi i32 [ %27, %.lr.ph.split.i.i262 ], [ %.012.i.i.ph, %.lr.ph.split.i.i262.preheader477 ]
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %i.aba
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.zv, i64 %i.aba
  %.0.copyload.i.i.i263 = load i64, ptr %i.abc, align 8
  store i64 %.0.copyload.i.i.i263, ptr %i.abb, align 1
  %27 = add i32 %.012.i.i, 1                      ; 2 uses
  %28 = zext i32 %27 to i64                       ; 2 uses
  %.not.i.i264 = icmp slt i64 %i.aam, %28
  br i1 %.not.i.i264, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262, !llvm.loop !308

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i262, %middle.block404, %bb.ca
  %indvars.iv.next.i265 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.not.i266 = icmp eq i64 %indvars.iv.next.i265, %wide.trip.count.i260
  br i1 %exitcond.not.i266, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %bb.ca, !llvm.loop !309

.lr.ph.split.i37.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", %.lr.ph.split.i37.preheader.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph.split.i37.preheader.preheader.i ], [ %indvars.iv.next56.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i" ] ; 3 uses
  %i.abd = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv55.i
  %i.abe = load i16, ptr %i.abd, align 2, !tbaa !251
  %i.abf = load ptr, ptr %1, align 8, !tbaa !63   ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 40
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !85
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 16
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !86
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %i.abl = load ptr, ptr %i.abk, align 8          ; 2 uses
  %i.abm = ptrtoaddr ptr %i.abl to i64
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abf, i64 32
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !66
  %i.abp = zext i16 %i.abe to i64
  %i.abq = add nsw i64 %i.abo, %i.abp
  %i.abr = mul nsw i64 %i.abq, %.sroa.520.0.extract.shift47.i ; 2 uses
  %i.abs = getelementptr inbounds i8, ptr %i.abl, i64 %i.abr ; 2 uses
  %i.abt = load ptr, ptr %i.yn, align 8, !tbaa !161
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  %i.abv = load ptr, ptr %i.abu, align 8          ; 2 uses
  %i.abw = ptrtoaddr ptr %i.abv to i64
  %i.abx = trunc nuw nsw i64 %indvars.iv55.i to i32
  %i.aby = add nsw i32 %i.h, %i.abx
  %i.abz = sext i32 %i.aby to i64
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.abz
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !3
  %i.acc = sext i32 %i.acb to i64                 ; 2 uses
  %i.acd = getelementptr inbounds i8, ptr %i.abv, i64 %i.acc ; 2 uses
  %brmerge533 = select i1 %min.iters.check414, i1 true, i1 %i.yr
  br i1 %brmerge533, label %.lr.ph.split.i37.i.preheader, label %vector.memcheck410

vector.memcheck410:                               ; preds = %.lr.ph.split.i37.preheader.i
  %i.ace = add i64 %i.abw, %i.acc
  %i.acf = add i64 %i.abr, %i.abm
  %i.acg = sub i64 %i.acf, %i.ace
  %diff.check411 = icmp ugt i64 %i.acg, -32
  br i1 %diff.check411, label %.lr.ph.split.i37.i.preheader, label %vector.body418

vector.body418:                                   ; preds = %vector.memcheck410, %vector.body418
  %index419 = phi i64 [ %index.next422, %vector.body418 ], [ 0, %vector.memcheck410 ] ; 3 uses
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %index419 ; 2 uses
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %index419 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  %wide.load420 = load <2 x i64>, ptr %i.aci, align 8
  %wide.load421 = load <2 x i64>, ptr %i.acj, align 8
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  store <2 x i64> %wide.load420, ptr %i.ach, align 1
  store <2 x i64> %wide.load421, ptr %i.ack, align 1
  %index.next422 = add nuw i64 %index419, 4       ; 2 uses
  %i.acl = icmp eq i64 %index.next422, %n.vec417
  br i1 %i.acl, label %middle.block423, label %vector.body418, !llvm.loop !310

middle.block423:                                  ; preds = %vector.body418
  br i1 %cmp.n424, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", label %.lr.ph.split.i37.i.preheader

.lr.ph.split.i37.i.preheader:                     ; preds = %.lr.ph.split.i37.preheader.i, %vector.memcheck410, %middle.block423
  %.ph476 = phi i64 [ 0, %vector.memcheck410 ], [ %n.vec417, %middle.block423 ], [ 0, %.lr.ph.split.i37.preheader.i ]
  %.012.i38.i.ph = phi i32 [ 0, %vector.memcheck410 ], [ %25, %middle.block423 ], [ 0, %.lr.ph.split.i37.preheader.i ]
  br label %.lr.ph.split.i37.i

.lr.ph.split.i37.i:                               ; preds = %.lr.ph.split.i37.i.preheader, %.lr.ph.split.i37.i
  %i.acm = phi i64 [ %30, %.lr.ph.split.i37.i ], [ %.ph476, %.lr.ph.split.i37.i.preheader ] ; 2 uses
  %.012.i38.i = phi i32 [ %29, %.lr.ph.split.i37.i ], [ %.012.i38.i.ph, %.lr.ph.split.i37.i.preheader ]
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %i.acm
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %i.acm
  %.0.copyload.i.i39.i = load i64, ptr %i.aco, align 8
  store i64 %.0.copyload.i.i39.i, ptr %i.acn, align 1
  %29 = add i32 %.012.i38.i, 1                    ; 2 uses
  %30 = zext i32 %29 to i64                       ; 2 uses
  %.not.i40.i = icmp slt i64 %i.yl, %30
  br i1 %.not.i40.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", label %.lr.ph.split.i37.i, !llvm.loop !311

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i": ; preds = %.lr.ph.split.i37.i, %middle.block423
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.i, !llvm.loop !312

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", %.preheader.i267, %.lr.ph52.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %i.acp = sext i32 %i.yb to i64
  %i.acq = getelementptr inbounds [2 x i8], ptr %4, i64 %i.acp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.acr = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.acr)
  %i.acs = load ptr, ptr %6, align 8, !tbaa !42
  %i.act = icmp eq ptr %i.acs, null
  br i1 %i.act, label %.thread.i285, label %bb.cb, !prof !45

.thread.i285:                                     ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  %i.acu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.acu, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275

bb.cb:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %.pr.i272 = load ptr, ptr %6, align 8, !tbaa !42
  %i.acv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i273 = load i64, ptr %i.acv, align 8 ; 2 uses
  %.not.i.i.i274 = icmp eq ptr %.pr.i272, null
  br i1 %.not.i.i.i274, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275, label %bb.cd, !prof !250

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275: ; preds = %bb.cd, %bb.cc, %.thread.i285
  %.sroa.0.0.copyload.i.i39.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %.thread.i285 ], [ %.sroa.0.0.copyload.i.i.i273, %bb.cc ], [ %.sroa.0.0.copyload.i.i.i273, %bb.cd ] ; 3 uses
  %.sroa.520.0.extract.shift40.i = lshr i64 %.sroa.0.0.copyload.i.i39.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.acw = trunc i64 %.sroa.0.0.copyload.i.i39.i to i1
  br i1 %i.acw, label %.preheader.i284, label %bb.ce

.preheader.i284:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275
  %i.acx = icmp sgt i32 %i.ya, 0
  br i1 %i.acx, label %.lr.ph45.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph45.i:                                       ; preds = %.preheader.i284
  %i.acy = ashr i64 %.sroa.0.0.copyload.i.i39.i, 32
  %wide.trip.count51.i = zext nneg i32 %i.ya to i64
  %i.acz = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op380 = add i32 %i.yb, %i.h
  br label %bb.cj

bb.ce:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275
  %i.ada = load ptr, ptr %1, align 8, !tbaa !63   ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 40
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !85 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 32
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !86 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 9
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !89, !range !96, !noundef !97
  %i.adh = trunc nuw i8 %i.adg to i1
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %i.adj = load ptr, ptr %i.adi, align 8
  %i.adk = select i1 %i.adh, ptr %i.adj, ptr null, !prof !45
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !86 ; 3 uses
  %.not.i.i32.i276 = icmp eq ptr %i.adm, null
  br i1 %.not.i.i32.i276, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.adn = getelementptr inbounds nuw i8, ptr %i.ada, i64 32
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !66
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adm, i64 9
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !89, !range !96, !noundef !97
  %i.adr = trunc nuw i8 %i.adq to i1
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  %i.adt = load ptr, ptr %i.ads, align 8
  %i.adu = select i1 %i.adr, ptr %i.adt, ptr null, !prof !45
  %i.adv = getelementptr inbounds [4 x i8], ptr %i.adu, i64 %i.ado
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i278 = phi ptr [ %i.adv, %bb.cf ], [ null, %bb.ce ]
  %i.adw = icmp sgt i32 %i.ya, 0
  br i1 %i.adw, label %.lr.ph.i279, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph.i279:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277
  %wide.trip.count.i280 = zext nneg i32 %i.ya to i64
  %i.adx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op = add i32 %i.yb, %i.h
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cb
  %i.ady = landingpad { ptr, i32 }
          cleanup
  %i.adz = load ptr, ptr %6, align 8, !tbaa !42
  %.not.i.i33.i270 = icmp eq ptr %i.adz, null
  br i1 %.not.i.i33.i270, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i271, label %bb.ch, !prof !45

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i271

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i271: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i279
  %indvars.iv.i281 = phi i64 [ 0, %.lr.ph.i279 ], [ %indvars.iv.next.i282, %bb.ci ] ; 3 uses
  %i.aea = getelementptr inbounds nuw [2 x i8], ptr %i.acq, i64 %indvars.iv.i281
  %i.aeb = load i16, ptr %i.aea, align 2, !tbaa !251
  %i.aec = zext i16 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i278, i64 %i.aec ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !3 ; 2 uses
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = getelementptr inbounds i8, ptr %i.adk, i64 %i.aef
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 4
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !3
  %i.aej = sub nsw i32 %i.aei, %i.aee
  %i.aek = load ptr, ptr %i.adx, align 8, !tbaa !161 ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 9
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !89, !range !96, !noundef !97
  %i.aen = trunc nuw i8 %i.aem to i1
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aep = load i8, ptr %i.aeo, align 8, !range !96
  %i.aeq = trunc nuw i8 %i.aep to i1
  %i.aer = select i1 %i.aen, i1 %i.aeq, i1 false, !prof !45
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aek, i64 16
  %i.aet = load ptr, ptr %i.aes, align 8
  %i.aeu = select i1 %i.aer, ptr %i.aet, ptr null, !prof !45
  %i.aev = trunc nuw nsw i64 %indvars.iv.i281 to i32
  %.reass = add i32 %invariant.op, %i.aev
  %i.aew = sext i32 %.reass to i64
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.aew
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !3
  %i.aez = sext i32 %i.aey to i64
  %i.afa = getelementptr inbounds i8, ptr %i.aeu, i64 %i.aez
  %i.afb = sext i32 %i.aej to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.afa, ptr readonly align 8 %i.aeg, i64 %i.afb, i1 false)
  %indvars.iv.next.i282 = add nuw nsw i64 %indvars.iv.i281, 1 ; 2 uses
  %exitcond.not.i283 = icmp eq i64 %indvars.iv.next.i282, %wide.trip.count.i280
  br i1 %exitcond.not.i283, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit", label %bb.ci, !llvm.loop !313

bb.cj:                                            ; preds = %bb.cj, %.lr.ph45.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph45.i ], [ %indvars.iv.next49.i, %bb.cj ] ; 3 uses
  %i.afc = getelementptr inbounds nuw [2 x i8], ptr %i.acq, i64 %indvars.iv48.i
  %i.afd = load i16, ptr %i.afc, align 2, !tbaa !251
  %i.afe = load ptr, ptr %1, align 8, !tbaa !63   ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 40
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !85
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 16
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !86 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 9
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !89, !range !96, !noundef !97
  %i.afl = trunc nuw i8 %i.afk to i1
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afi, i64 16
  %i.afn = load ptr, ptr %i.afm, align 8
  %i.afo = select i1 %i.afl, ptr %i.afn, ptr null, !prof !45
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afe, i64 32
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !66
  %i.afr = zext i16 %i.afd to i64
  %i.afs = add nsw i64 %i.afq, %i.afr
  %i.aft = mul nsw i64 %i.afs, %.sroa.520.0.extract.shift40.i
  %i.afu = getelementptr inbounds i8, ptr %i.afo, i64 %i.aft
  %i.afv = load ptr, ptr %i.acz, align 8, !tbaa !161 ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 9
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !89, !range !96, !noundef !97
  %i.afy = trunc nuw i8 %i.afx to i1
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.aga = load i8, ptr %i.afz, align 8, !range !96
  %i.agb = trunc nuw i8 %i.aga to i1
  %i.agc = select i1 %i.afy, i1 %i.agb, i1 false, !prof !45
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afv, i64 16
  %i.age = load ptr, ptr %i.agd, align 8
  %i.agf = select i1 %i.agc, ptr %i.age, ptr null, !prof !45
  %i.agg = trunc nuw nsw i64 %indvars.iv48.i to i32
  %.reass381 = add i32 %invariant.op380, %i.agg
  %i.agh = sext i32 %.reass381 to i64
  %i.agi = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.agh
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !3
  %i.agk = sext i32 %i.agj to i64
  %i.agl = getelementptr inbounds i8, ptr %i.agf, i64 %i.agk
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.agl, ptr readonly align 8 %i.afu, i64 %i.acy, i1 false)
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit", label %bb.cj, !llvm.loop !314

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit": ; preds = %bb.ci, %bb.cj, %.preheader.i284, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

.critedge103:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit250, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.critedge

_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit468.unr-lcssa.a: ; preds = %.lr.ph.i
  %lcmp.mod527.not = icmp eq i64 %xtraiter526, 0
end_hunk_1
