inline.NumInlined: 1504
inline.NumDeleted: 739
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a

.preheader.i197:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i182
  %i.kx = icmp sgt i32 %3, 0
  br i1 %i.kx, label %.lr.ph48.i198, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

.lr.ph48.i198:                                    ; preds = %.preheader.i197
  %i.ky = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !85
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !86
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 3 uses
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
  br i1 %niter501.ncmp.1, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit473.unr-lcssa.a, label %bb.av, !llvm.loop !274

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
  %19 = add nsw i64 %i.oj, 1                      ; 2 uses
  %smax447 = call i64 @llvm.smax.i64(i64 %19, i64 1)
  %smax450 = call i64 @llvm.smax.i64(i64 %19, i64 1) ; 2 uses
  %min.iters.check452 = icmp slt i64 %i.oh, 121
  %20 = sub nsw i64 0, %smax447
  %21 = and i64 %20, 4294967295
  %22 = icmp eq i64 %21, 0
  %n.vec455 = and i64 %smax450, 9223372036854775804 ; 4 uses
  %i.om = trunc i64 %n.vec455 to i32
  %cmp.n462 = icmp eq i64 %smax450, %n.vec455
  br label %.lr.ph.split.i40.preheader.i

bb.ba:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212
  %i.on = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !85 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 32
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !86
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ot = load ptr, ptr %i.os, align 8            ; 2 uses
  %i.ou = ptrtoaddr ptr %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !86 ; 3 uses
  %.not.i.i35.i = icmp eq ptr %i.ow, null
  br i1 %.not.i.i35.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ox = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !66
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 9
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !89, !range !96, !noundef !97
  %i.pb = trunc nuw i8 %i.pa to i1
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.pd = load ptr, ptr %i.pc, align 8
  %i.pe = select i1 %i.pb, ptr %i.pd, ptr null, !prof !45
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.pe, i64 %i.oy
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i214 = phi ptr [ %i.pf, %bb.bb ], [ null, %bb.ba ]
  %i.pg = icmp sgt i32 %i.nz, 0
  br i1 %i.pg, label %.lr.ph.preheader.i215, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"

.lr.ph.preheader.i215:                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %wide.trip.count.i216 = zext nneg i32 %i.nz to i64
  %i.ph = getelementptr i8, ptr %2, i64 72
  br label %.lr.ph.i217

bb.bc:                                            ; preds = %bb.ax
  %i.pi = landingpad { ptr, i32 }
          cleanup
  %i.pj = load ptr, ptr %10, align 8, !tbaa !42
  %.not.i.i36.i = icmp eq ptr %i.pj, null
  br i1 %.not.i.i36.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i, label %bb.bd, !prof !45

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %common.resume

.lr.ph.i217:                                      ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %.lr.ph.preheader.i215
  %indvars.iv.i218 = phi i64 [ 0, %.lr.ph.preheader.i215 ], [ %indvars.iv.next.i221, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i" ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i218
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !251
  %i.pm = zext i16 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i214, i64 %i.pm ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !3  ; 3 uses
  %i.pp = sext i32 %i.po to i64                   ; 2 uses
  %i.pq = getelementptr inbounds i8, ptr %i.ot, i64 %i.pp ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !3  ; 2 uses
  %i.pt = sub nsw i32 %i.ps, %i.po                ; 3 uses
  %.val33.val.val.i = load ptr, ptr %i.ph, align 8, !tbaa !161
  %i.pu = getelementptr inbounds nuw i8, ptr %.val33.val.val.i, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8            ; 2 uses
  %i.pw = ptrtoaddr ptr %i.pv to i64
  %i.px = sext i32 %i.pt to i64                   ; 2 uses
  %i.py = trunc i64 %indvars.iv.i218 to i32
  %i.pz = add i32 %i.h, %i.py
  %i.qa = sext i32 %i.pz to i64
  %i.qb = mul nsw i64 %i.qa, %i.px                ; 2 uses
  %i.qc = getelementptr inbounds i8, ptr %i.pv, i64 %i.qb ; 2 uses
  %i.qd = add nsw i64 %i.px, -1
  %i.qe = sdiv i64 %i.qd, 8                       ; 3 uses
  %i.qf = icmp eq i32 %i.ps, %i.po
  %.not1.i.i = icmp slt i32 %i.pt, -6
  %or.cond2.i.i = or i1 %i.qf, %.not1.i.i
  br i1 %or.cond2.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i217
  %i.qg = call i64 @llvm.smax.i64(i64 %i.qe, i64 0)
  %smax431 = add nuw nsw i64 %i.qg, 1             ; 2 uses
  %min.iters.check433 = icmp slt i32 %i.pt, 185
  br i1 %min.iters.check433, label %.lr.ph.split.i.i.preheader465, label %vector.scevcheck427

vector.scevcheck427:                              ; preds = %.lr.ph.split.i.i.preheader
  %i.qh = call i64 @llvm.smax.i64(i64 %i.qe, i64 0)
  %i.qi = and i64 %i.qh, 4294967295
  %i.qj = icmp eq i64 %i.qi, 4294967295
  br i1 %i.qj, label %.lr.ph.split.i.i.preheader465, label %vector.memcheck429

vector.memcheck429:                               ; preds = %vector.scevcheck427
  %i.qk = add i64 %i.qb, %i.pw
  %i.ql = add i64 %i.ou, %i.pp
  %i.qm = sub i64 %i.ql, %i.qk
  %diff.check430 = icmp ugt i64 %i.qm, -32
  br i1 %diff.check430, label %.lr.ph.split.i.i.preheader465, label %vector.ph434

vector.ph434:                                     ; preds = %vector.memcheck429
  %n.vec436 = and i64 %smax431, 9223372036854775804 ; 4 uses
  %i.qn = trunc i64 %n.vec436 to i32
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph434
  %index438 = phi i64 [ 0, %vector.ph434 ], [ %index.next441, %vector.body437 ] ; 3 uses
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %index438 ; 2 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %index438 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %wide.load439 = load <2 x i64>, ptr %i.qp, align 8
  %wide.load440 = load <2 x i64>, ptr %i.qq, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store <2 x i64> %wide.load439, ptr %i.qo, align 1
  store <2 x i64> %wide.load440, ptr %i.qr, align 1
  %index.next441 = add nuw i64 %index438, 4       ; 2 uses
  %i.qs = icmp eq i64 %index.next441, %n.vec436
  br i1 %i.qs, label %middle.block442, label %vector.body437, !llvm.loop !275

middle.block442:                                  ; preds = %vector.body437
  %cmp.n443 = icmp eq i64 %smax431, %n.vec436
  br i1 %cmp.n443, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader465

.lr.ph.split.i.i.preheader465:                    ; preds = %vector.memcheck429, %vector.scevcheck427, %.lr.ph.split.i.i.preheader, %middle.block442
  %.ph466 = phi i64 [ 0, %vector.memcheck429 ], [ 0, %vector.scevcheck427 ], [ 0, %.lr.ph.split.i.i.preheader ], [ %n.vec436, %middle.block442 ]
  %.03.i.i.ph = phi i32 [ 0, %vector.memcheck429 ], [ 0, %vector.scevcheck427 ], [ 0, %.lr.ph.split.i.i.preheader ], [ %i.qn, %middle.block442 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader465, %.lr.ph.split.i.i
  %i.qt = phi i64 [ %i.qx, %.lr.ph.split.i.i ], [ %.ph466, %.lr.ph.split.i.i.preheader465 ] ; 2 uses
  %.03.i.i = phi i32 [ %i.qw, %.lr.ph.split.i.i ], [ %.03.i.i.ph, %.lr.ph.split.i.i.preheader465 ]
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.qt
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.qt
  %.0.copyload.i.i.i = load i64, ptr %i.qv, align 8
  store i64 %.0.copyload.i.i.i, ptr %i.qu, align 1
  %i.qw = add i32 %.03.i.i, 1                     ; 2 uses
  %i.qx = zext i32 %i.qw to i64                   ; 2 uses
  %.not.i.i220 = icmp slt i64 %i.qe, %i.qx
  br i1 %.not.i.i220, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i, !llvm.loop !278

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i, %middle.block442, %.lr.ph.i217
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i218, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i216
  br i1 %exitcond.not.i222, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.i217, !llvm.loop !279

.lr.ph.split.i40.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", %.lr.ph.split.i40.preheader.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph.split.i40.preheader.preheader.i ], [ %indvars.iv.next59.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i" ] ; 4 uses
  %23 = trunc i64 %indvars.iv58.i to i32
  %24 = add i32 %i.h, %23
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %i.oh, %25
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv58.i
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !251
  %i.ra = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 40
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !85
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !86
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8            ; 2 uses
  %27 = ptrtoaddr ptr %i.rg to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ra, i64 32
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !66
  %i.rj = zext i16 %i.qz to i64
  %i.rk = add nsw i64 %i.ri, %i.rj
  %i.rl = mul nsw i64 %i.rk, %.sroa.520.0.extract.shift50.i ; 2 uses
  %i.rm = getelementptr inbounds i8, ptr %i.rg, i64 %i.rl ; 2 uses
  %.val.val.val.i226 = load ptr, ptr %i.ol, align 8, !tbaa !161
  %i.rn = getelementptr inbounds nuw i8, ptr %.val.val.val.i226, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8            ; 2 uses
  %28 = ptrtoaddr ptr %i.ro to i64
  %i.rp = trunc nuw nsw i64 %indvars.iv58.i to i32
  %i.rq = add nsw i32 %i.h, %i.rp
  %i.rr = sext i32 %i.rq to i64
  %i.rs = mul nsw i64 %i.oh, %i.rr
  %i.rt = getelementptr inbounds i8, ptr %i.ro, i64 %i.rs ; 2 uses
  %brmerge = select i1 %min.iters.check452, i1 true, i1 %22
  br i1 %brmerge, label %.lr.ph.split.i40.i.preheader, label %vector.memcheck448

vector.memcheck448:                               ; preds = %.lr.ph.split.i40.preheader.i
  %i.ru = add i64 %26, %28
  %i.rv = add i64 %i.rl, %27
  %i.rw = sub i64 %i.rv, %i.ru
  %diff.check449 = icmp ugt i64 %i.rw, -32
  br i1 %diff.check449, label %.lr.ph.split.i40.i.preheader, label %vector.body456

vector.body456:                                   ; preds = %vector.memcheck448, %vector.body456
  %index457 = phi i64 [ %index.next460, %vector.body456 ], [ 0, %vector.memcheck448 ] ; 3 uses
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %index457 ; 2 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %index457 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %wide.load458 = load <2 x i64>, ptr %i.ry, align 8
  %wide.load459 = load <2 x i64>, ptr %i.rz, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  store <2 x i64> %wide.load458, ptr %i.rx, align 1
  store <2 x i64> %wide.load459, ptr %i.sa, align 1
  %index.next460 = add nuw i64 %index457, 4       ; 2 uses
  %i.sb = icmp eq i64 %index.next460, %n.vec455
  br i1 %i.sb, label %middle.block461, label %vector.body456, !llvm.loop !280

middle.block461:                                  ; preds = %vector.body456
  br i1 %cmp.n462, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", label %.lr.ph.split.i40.i.preheader

.lr.ph.split.i40.i.preheader:                     ; preds = %.lr.ph.split.i40.preheader.i, %vector.memcheck448, %middle.block461
  %.ph = phi i64 [ 0, %vector.memcheck448 ], [ %n.vec455, %middle.block461 ], [ 0, %.lr.ph.split.i40.preheader.i ]
  %.03.i41.i.ph = phi i32 [ 0, %vector.memcheck448 ], [ %i.om, %middle.block461 ], [ 0, %.lr.ph.split.i40.preheader.i ]
  br label %.lr.ph.split.i40.i

.lr.ph.split.i40.i:                               ; preds = %.lr.ph.split.i40.i.preheader, %.lr.ph.split.i40.i
  %i.sc = phi i64 [ %i.sg, %.lr.ph.split.i40.i ], [ %.ph, %.lr.ph.split.i40.i.preheader ] ; 2 uses
  %.03.i41.i = phi i32 [ %i.sf, %.lr.ph.split.i40.i ], [ %.03.i41.i.ph, %.lr.ph.split.i40.i.preheader ]
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.sc
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %i.sc
  %.0.copyload.i.i42.i = load i64, ptr %i.se, align 8
  store i64 %.0.copyload.i.i42.i, ptr %i.sd, align 1
  %i.sf = add i32 %.03.i41.i, 1                   ; 2 uses
  %i.sg = zext i32 %i.sf to i64                   ; 2 uses
  %.not.i43.i = icmp slt i64 %i.oj, %i.sg
  br i1 %.not.i43.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", label %.lr.ph.split.i40.i, !llvm.loop !281

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i": ; preds = %.lr.ph.split.i40.i, %middle.block461
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.i, !llvm.loop !282

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", %.preheader.i223, %.lr.ph55.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %i.sh = icmp sgt i32 %i.ny, 0
  br i1 %i.sh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  %i.si = sext i32 %i.nz to i64
  %i.sj = getelementptr inbounds [2 x i8], ptr %4, i64 %i.si
  store ptr %i.a, ptr %18, align 8, !tbaa !283
  %i.sk = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.b, ptr %i.sk, align 8, !tbaa !286
  %i.sl = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.c, ptr %i.sl, align 8, !tbaa !286
  call fastcc void @"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_5EEvS7_iSB_T_"(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ny, ptr noundef %i.sj, ptr noundef nonnull byval(%class.anon.86) align 8 %18)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

bb.bg:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit
  %i.sm = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !161 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 9
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !89, !range !96, !noundef !97
  %i.sq = trunc nuw i8 %i.sp to i1
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.ss = load i8, ptr %i.sr, align 8, !range !96
  %i.st = trunc nuw i8 %i.ss to i1
  %i.su = select i1 %i.sq, i1 %i.st, i1 false, !prof !45
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.sw = load ptr, ptr %i.sv, align 8            ; 12 uses
  %i.sx = select i1 %i.su, ptr %i.sw, ptr null, !prof !45 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  br i1 %i.j, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.sy = sext i32 %i.h to i64
  %i.sz = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.sy
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !3
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.tb = phi i32 [ %i.ta, %bb.bh ], [ 0, %bb.bg ] ; 5 uses
  store i32 %i.tb, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.tc = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.tc)
  %i.td = load ptr, ptr %9, align 8, !tbaa !42
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %.thread.i247, label %bb.bj, !prof !45

.thread.i247:                                     ; preds = %bb.bi
  %i.tf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i38.i = load i64, ptr %i.tf, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %.pr.i230 = load ptr, ptr %9, align 8, !tbaa !42
  %i.tg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i.i231 = load i64, ptr %i.tg, align 8 ; 2 uses
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
  %i.th = trunc i64 %.sroa.0.0.copyload.i.i42.i to i1
  br i1 %i.th, label %.preheader.i244, label %bb.bm

.preheader.i244:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.ti = icmp sgt i32 %3, 0
  br i1 %i.ti, label %.lr.ph47.i.preheader, label %.critedge101

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
  %i.tj = add nsw i32 %i.h, %index
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.tk ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.tl, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.tm, align 4, !tbaa !3
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.tn = icmp eq i32 %index.next, %n.vec
  br i1 %i.tn, label %middle.block, label %vector.body, !llvm.loop !288

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %.lr.ph47.i.preheader481

.lr.ph47.i.preheader481:                          ; preds = %.lr.ph47.i.preheader, %middle.block
  %.03146.i.ph = phi i32 [ 0, %.lr.ph47.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph47.i

bb.bm:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.to = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 40
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !85
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !86 ; 3 uses
  %.not.i.i35.i234 = icmp eq ptr %i.ts, null
  br i1 %.not.i.i35.i234, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tt = getelementptr inbounds nuw i8, ptr %i.to, i64 32
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !66
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 9
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !89, !range !96, !noundef !97
  %i.tx = trunc nuw i8 %i.tw to i1
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = select i1 %i.tx, ptr %i.tz, ptr null, !prof !45
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.tu
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i236 = phi ptr [ %i.ub, %bb.bn ], [ null, %bb.bm ] ; 3 uses
  %i.uc = icmp sgt i32 %3, 0
  br i1 %i.uc, label %.lr.ph.i237, label %.critedge101

.lr.ph.i237:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235
  %wide.trip.count.i239 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i239, 1
  %i.ud = icmp eq i32 %3, 1
  br i1 %i.ud, label %.epil.preheader, label %.lr.ph.i237.new

.lr.ph.i237.new:                                  ; preds = %.lr.ph.i237
  %unroll_iter = and i64 %wide.trip.count.i239, 2147483646
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bj
  %i.ue = landingpad { ptr, i32 }
          cleanup
  %i.uf = load ptr, ptr %9, align 8, !tbaa !42
  %.not.i.i36.i228 = icmp eq ptr %i.uf, null
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
  %i.ug = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i240
  %i.uh = load i16, ptr %i.ug, align 2, !tbaa !251
  %i.ui = zext i16 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i236, i64 %i.ui ; 2 uses
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !3
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !3
  %i.un = sub nsw i32 %i.um, %i.uk
  %i.uo = trunc nuw nsw i64 %indvars.iv.i240 to i32
  %i.up = add nsw i32 %i.h, %i.uo
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.uq
  store i32 %i.un, ptr %i.ur, align 4, !tbaa !3
  %indvars.iv.next.i242 = or disjoint i64 %indvars.iv.i240, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
  call void @llvm.assume(i1 %lcmp.mod483)
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i240.epil.init
  %i.vj = load i16, ptr %i.vi, align 2, !tbaa !251
  %i.vk = zext i16 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i236, i64 %i.vk ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !3
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !3
  %i.vp = sub nsw i32 %i.vo, %i.vm
  %i.vq = trunc nuw nsw i64 %indvars.iv.i240.epil.init to i32
  %i.vr = add nsw i32 %i.h, %i.vq
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.vs
  store i32 %i.vp, ptr %i.vt, align 4, !tbaa !3
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.epil.preheader, %.lr.ph.preheader.loopexit482.unr-lcssa, %.lr.ph47.i, %middle.block
  %xtraiter484 = and i32 %3, 1
  %i.vu = icmp eq i32 %3, 1
  br i1 %i.vu, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter488 = and i32 %3, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.br, %.lr.ph.preheader.new
  %i.vv = phi i32 [ %i.tb, %.lr.ph.preheader.new ], [ %i.wk, %bb.br ] ; 2 uses
  %.091328 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.wl, %bb.br ] ; 4 uses
  %niter489 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter489.next.1, %bb.br ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.vw = add nsw i32 %i.h, %.091328
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.vx ; 2 uses
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !3  ; 2 uses
  store i32 %i.vz, ptr %i.e, align 4, !tbaa !3
  store i32 %i.vv, ptr %i.vy, align 4, !tbaa !3
  %i.wa = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.vv, i32 %i.vz) ; 2 uses
  %i.wb = extractvalue { i32, i1 } %i.wa, 1
  br i1 %i.wb, label %.loopexit, label %.lr.ph.1, !prof !62

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.wc = extractvalue { i32, i1 } %i.wa, 0       ; 3 uses
  store i32 %i.wc, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.wd = or disjoint i32 %.091328, 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.we = add nsw i32 %i.h, %i.wd
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.wf ; 2 uses
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !3  ; 2 uses
  store i32 %i.wh, ptr %i.e, align 4, !tbaa !3
  store i32 %i.wc, ptr %i.wg, align 4, !tbaa !3
  %i.wi = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.wc, i32 %i.wh) ; 2 uses
  %i.wj = extractvalue { i32, i1 } %i.wi, 1
  br i1 %i.wj, label %.loopexit, label %bb.br, !prof !62

bb.br:                                            ; preds = %.lr.ph.1
  %i.wk = extractvalue { i32, i1 } %i.wi, 0       ; 4 uses
  store i32 %i.wk, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.wl = add nuw nsw i32 %.091328, 2             ; 2 uses
  %niter489.next.1 = add i32 %niter489, 2         ; 2 uses
  %niter489.ncmp.1 = icmp eq i32 %niter489.next.1, %unroll_iter488
  br i1 %niter489.ncmp.1, label %.critedge101.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !291

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.epil.preheader
  %.091328.lcssa = phi i32 [ %.091328.epil.init, %.lr.ph.epil.preheader ], [ %.091328, %.lr.ph ], [ %i.wd, %.lr.ph.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.wm = add nuw i32 %.091328.lcssa, 1
  %i.wn = add i32 %i.wm, %i.h
  store i32 %i.wn, ptr %i.f, align 4, !tbaa !3
  call void @_ZN5arrow6Status8FromArgsIJRA54_KciRA23_S2_RiRA26_S2_S7_RA7_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(54) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(23) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(26) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge103

.critedge101.loopexit.unr-lcssa:                  ; preds = %bb.br
  %lcmp.mod485.not = icmp eq i32 %xtraiter484, 0
  br i1 %lcmp.mod485.not, label %.critedge101, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.critedge101.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ %i.tb, %.lr.ph.preheader ], [ %i.wk, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %.091328.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.wl, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod487 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wo = add nsw i32 %i.h, %.091328.epil.init
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.wp ; 2 uses
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !3  ; 2 uses
  store i32 %i.wr, ptr %i.e, align 4, !tbaa !3
  store i32 %.epil.init, ptr %i.wq, align 4, !tbaa !3
  %i.ws = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.epil.init, i32 %i.wr) ; 2 uses
  %i.wt = extractvalue { i32, i1 } %i.ws, 1
  br i1 %i.wt, label %.loopexit, label %.critedge101.loopexit.epilog-lcssa, !prof !62

.critedge101.loopexit.epilog-lcssa:               ; preds = %.lr.ph.epil.preheader
  %i.wu = extractvalue { i32, i1 } %i.ws, 0       ; 2 uses
  store i32 %i.wu, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge101

.critedge101:                                     ; preds = %.critedge101.loopexit.epilog-lcssa, %.critedge101.loopexit.unr-lcssa, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, %.preheader.i244
  %i.wv = phi i32 [ %i.tb, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235 ], [ %i.tb, %.preheader.i244 ], [ %i.wk, %.critedge101.loopexit.unr-lcssa ], [ %i.wu, %.critedge101.loopexit.epilog-lcssa ]
  %i.ww = sext i32 %i.i to i64
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.ww
  store i32 %i.wv, ptr %i.wx, align 4, !tbaa !3
  %i.wy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.wz = load i8, ptr %i.wy, align 8, !tbaa !172, !range !96, !noalias !292, !noundef !97
  %i.xa = trunc nuw i8 %i.wz to i1
  br i1 %i.xa, label %_ZN5arrow6StatusD2Ev.exit252, label %bb.bs

bb.bs:                                            ; preds = %.critedge101
  %i.xb = load ptr, ptr %i.sm, align 8, !tbaa !161, !noalias !292
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8, !noalias !292
  %i.xe = load i32, ptr %i.g, align 8, !tbaa !140, !noalias !292
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.xd, i64 %i.xf
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !3, !noalias !292
  %i.xi = sext i32 %i.xh to i64                   ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !156, !noalias !292 ; 2 uses
  %i.xl = icmp slt i64 %i.xk, %i.xi
  br i1 %i.xl, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit252

.preheader.i248:                                  ; preds = %bb.bs, %.preheader.i248
  %.012.i = phi i64 [ %i.xn, %.preheader.i248 ], [ %i.xk, %bb.bs ] ; 4 uses
  %i.xm = icmp slt i64 %.012.i, %i.xi
  %i.xn = shl nsw i64 %.012.i, 1
  br i1 %i.xm, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit.i, !llvm.loop !233

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.preheader.i248
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !292
  %i.xo = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !161, !noalias !292 ; 2 uses
  %i.xq = add nsw i64 %.012.i, 64
  %i.xr = load ptr, ptr %i.xp, align 8, !tbaa !40, !noalias !295
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 24
  %i.xt = load ptr, ptr %i.xs, align 8, !noalias !295
  call void %i.xt(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %i.xp, i64 noundef %i.xq, i1 noundef zeroext true), !noalias !292, !inline_history !298
  %i.xu = load ptr, ptr %8, align 8, !tbaa !42, !noalias !299 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !292
  %i.xv = icmp eq ptr %i.xu, null
  br i1 %i.xv, label %_ZN5arrow6StatusD2Ev.exit17.i, label %_ZN5arrow6StatusD2Ev.exit250

_ZN5arrow6StatusD2Ev.exit17.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store i64 %.012.i, ptr %i.xj, align 8, !tbaa !156, !noalias !292
  br label %_ZN5arrow6StatusD2Ev.exit252

_ZN5arrow6StatusD2Ev.exit250:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.xu, ptr %0, align 8, !tbaa !42, !alias.scope !302
  br label %.critedge103

_ZN5arrow6StatusD2Ev.exit252:                     ; preds = %_ZN5arrow6StatusD2Ev.exit17.i, %bb.bs, %.critedge101
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !305
  %i.xw = call noundef i32 @_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, ptr noundef %4, i32 noundef 8) ; 5 uses
  %i.xx = sub nsw i32 %3, %i.xw                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.xy = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.xy)
  %i.xz = load ptr, ptr %7, align 8, !tbaa !42
  %i.ya = icmp eq ptr %i.xz, null
  br i1 %i.ya, label %.thread.i268, label %bb.bt, !prof !45

.thread.i268:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit252
  %i.yb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i42.i269 = load i64, ptr %i.yb, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256

bb.bt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit252
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %.pr.i253 = load ptr, ptr %7, align 8, !tbaa !42
  %i.yc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i.i254 = load i64, ptr %i.yc, align 8 ; 2 uses
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
  %i.yd = trunc i64 %.sroa.0.0.copyload.i.i46.i to i1
  br i1 %i.yd, label %.preheader.i267, label %bb.bw

.preheader.i267:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.ye = icmp sgt i32 %i.xx, 0
  br i1 %i.ye, label %.lr.ph52.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph52.i:                                       ; preds = %.preheader.i267
  %i.yf = ashr i64 %.sroa.0.0.copyload.i.i46.i, 32 ; 2 uses
  %i.yg = add nsw i64 %i.yf, -1
  %i.yh = sdiv i64 %i.yg, 8                       ; 2 uses
  %i.yi = icmp eq i64 %.sroa.520.0.extract.shift47.i, 0
  %.not10.i35.i = icmp slt i32 %.sroa.520.0.extract.trunc48.i, -6
  %or.cond11.i36.i = or i1 %i.yi, %.not10.i35.i
  br i1 %or.cond11.i36.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.preheader.i

.lr.ph.split.i37.preheader.preheader.i:           ; preds = %.lr.ph52.i
  %wide.trip.count58.i = zext nneg i32 %i.xx to i64
  %i.yj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %29 = add nsw i64 %i.yh, 1                      ; 2 uses
  %smax409 = call i64 @llvm.smax.i64(i64 %29, i64 1)
  %smax412 = call i64 @llvm.smax.i64(i64 %29, i64 1) ; 2 uses
  %min.iters.check414 = icmp slt i64 %i.yf, 121
  %30 = sub nsw i64 0, %smax409
  %31 = and i64 %30, 4294967295
  %32 = icmp eq i64 %31, 0
  %n.vec417 = and i64 %smax412, 9223372036854775804 ; 4 uses
  %i.yk = trunc i64 %n.vec417 to i32
  %cmp.n424 = icmp eq i64 %smax412, %n.vec417
  br label %.lr.ph.split.i37.preheader.i

bb.bw:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.yl = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 40
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !85 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 32
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !86
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.yr = load ptr, ptr %i.yq, align 8            ; 2 uses
  %i.ys = ptrtoaddr ptr %i.yr to i64
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !86 ; 3 uses
  %.not.i.i32.i = icmp eq ptr %i.yu, null
  br i1 %.not.i.i32.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yl, i64 32
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !66
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 9
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !89, !range !96, !noundef !97
  %i.yz = trunc nuw i8 %i.yy to i1
  %i.za = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.zb = load ptr, ptr %i.za, align 8
  %i.zc = select i1 %i.yz, ptr %i.zb, ptr null, !prof !45
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.zc, i64 %i.yw
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i258 = phi ptr [ %i.zd, %bb.bx ], [ null, %bb.bw ]
  %i.ze = icmp sgt i32 %i.xx, 0
  br i1 %i.ze, label %.lr.ph.i259, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph.i259:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %wide.trip.count.i260 = zext nneg i32 %i.xx to i64
  %i.zf = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %bb.ca

bb.by:                                            ; preds = %bb.bt
  %i.zg = landingpad { ptr, i32 }
          cleanup
  %i.zh = load ptr, ptr %7, align 8, !tbaa !42
  %.not.i.i33.i = icmp eq ptr %i.zh, null
  br i1 %.not.i.i33.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i, label %bb.bz, !prof !45

bb.bz:                                            ; preds = %bb.by
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

bb.ca:                                            ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %.lr.ph.i259
  %indvars.iv.i261 = phi i64 [ 0, %.lr.ph.i259 ], [ %indvars.iv.next.i265, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i" ] ; 3 uses
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i261
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !251
  %i.zk = zext i16 %i.zj to i64
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i258, i64 %i.zk ; 2 uses
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !3  ; 3 uses
  %i.zn = sext i32 %i.zm to i64                   ; 2 uses
  %i.zo = getelementptr inbounds i8, ptr %i.yr, i64 %i.zn ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zl, i64 4
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !3  ; 2 uses
  %i.zr = sub nsw i32 %i.zq, %i.zm                ; 3 uses
  %i.zs = load ptr, ptr %i.zf, align 8, !tbaa !161
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  %i.zu = load ptr, ptr %i.zt, align 8            ; 2 uses
  %i.zv = ptrtoaddr ptr %i.zu to i64
  %i.zw = trunc nuw nsw i64 %indvars.iv.i261 to i32
  %i.zx = add nsw i32 %i.h, %i.zw
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.zy
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !3
  %i.aab = sext i32 %i.aaa to i64                 ; 2 uses
  %i.aac = getelementptr inbounds i8, ptr %i.zu, i64 %i.aab ; 2 uses
  %i.aad = sext i32 %i.zr to i64
  %i.aae = add nsw i64 %i.aad, -1
  %i.aaf = sdiv i64 %i.aae, 8                     ; 3 uses
  %i.aag = icmp eq i32 %i.zq, %i.zm
  %.not10.i.i = icmp slt i32 %i.zr, -6
  %or.cond11.i.i = or i1 %i.aag, %.not10.i.i
  br i1 %or.cond11.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader

.lr.ph.split.i.i262.preheader:                    ; preds = %bb.ca
  %i.aah = call i64 @llvm.smax.i64(i64 %i.aaf, i64 0)
  %smax394 = add nuw nsw i64 %i.aah, 1            ; 2 uses
  %min.iters.check396 = icmp slt i32 %i.zr, 185
  br i1 %min.iters.check396, label %.lr.ph.split.i.i262.preheader477, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.i.i262.preheader
  %i.aai = call i64 @llvm.smax.i64(i64 %i.aaf, i64 0)
  %i.aaj = and i64 %i.aai, 4294967295
  %i.aak = icmp eq i64 %i.aaj, 4294967295
  br i1 %i.aak, label %.lr.ph.split.i.i262.preheader477, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aal = add i64 %i.zv, %i.aab
  %i.aam = add i64 %i.ys, %i.zn
  %i.aan = sub i64 %i.aam, %i.aal
  %diff.check = icmp ugt i64 %i.aan, -32
  br i1 %diff.check, label %.lr.ph.split.i.i262.preheader477, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck
  %n.vec399 = and i64 %smax394, 9223372036854775804 ; 4 uses
  %i.aao = trunc i64 %n.vec399 to i32
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph397
  %index401 = phi i64 [ 0, %vector.ph397 ], [ %index.next403, %vector.body400 ] ; 3 uses
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.aac, i64 %index401 ; 2 uses
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %index401 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %wide.load = load <2 x i64>, ptr %i.aaq, align 8
  %wide.load402 = load <2 x i64>, ptr %i.aar, align 8
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  store <2 x i64> %wide.load, ptr %i.aap, align 1
  store <2 x i64> %wide.load402, ptr %i.aas, align 1
  %index.next403 = add nuw i64 %index401, 4       ; 2 uses
  %i.aat = icmp eq i64 %index.next403, %n.vec399
  br i1 %i.aat, label %middle.block404, label %vector.body400, !llvm.loop !307

middle.block404:                                  ; preds = %vector.body400
  %cmp.n405 = icmp eq i64 %smax394, %n.vec399
  br i1 %cmp.n405, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader477

.lr.ph.split.i.i262.preheader477:                 ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.i.i262.preheader, %middle.block404
  %.ph478 = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.i.i262.preheader ], [ %n.vec399, %middle.block404 ]
  %.012.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.i.i262.preheader ], [ %i.aao, %middle.block404 ]
  br label %.lr.ph.split.i.i262

.lr.ph.split.i.i262:                              ; preds = %.lr.ph.split.i.i262.preheader477, %.lr.ph.split.i.i262
  %i.aau = phi i64 [ %i.aay, %.lr.ph.split.i.i262 ], [ %.ph478, %.lr.ph.split.i.i262.preheader477 ] ; 2 uses
  %.012.i.i = phi i32 [ %i.aax, %.lr.ph.split.i.i262 ], [ %.012.i.i.ph, %.lr.ph.split.i.i262.preheader477 ]
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.aac, i64 %i.aau
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %i.aau
  %.0.copyload.i.i.i263 = load i64, ptr %i.aaw, align 8
  store i64 %.0.copyload.i.i.i263, ptr %i.aav, align 1
  %i.aax = add i32 %.012.i.i, 1                   ; 2 uses
  %i.aay = zext i32 %i.aax to i64                 ; 2 uses
  %.not.i.i264 = icmp slt i64 %i.aaf, %i.aay
  br i1 %.not.i.i264, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262, !llvm.loop !308

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i262, %middle.block404, %bb.ca
  %indvars.iv.next.i265 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.not.i266 = icmp eq i64 %indvars.iv.next.i265, %wide.trip.count.i260
  br i1 %exitcond.not.i266, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %bb.ca, !llvm.loop !309

.lr.ph.split.i37.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", %.lr.ph.split.i37.preheader.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph.split.i37.preheader.preheader.i ], [ %indvars.iv.next56.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i" ] ; 3 uses
  %i.aaz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv55.i
  %i.aba = load i16, ptr %i.aaz, align 2, !tbaa !251
  %i.abb = load ptr, ptr %1, align 8, !tbaa !63   ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 40
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !85
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !86
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 16
  %i.abh = load ptr, ptr %i.abg, align 8          ; 2 uses
  %33 = ptrtoaddr ptr %i.abh to i64
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abb, i64 32
  %i.abj = load i64, ptr %i.abi, align 8, !tbaa !66
  %i.abk = zext i16 %i.aba to i64
  %i.abl = add nsw i64 %i.abj, %i.abk
  %i.abm = mul nsw i64 %i.abl, %.sroa.520.0.extract.shift47.i ; 2 uses
  %i.abn = getelementptr inbounds i8, ptr %i.abh, i64 %i.abm ; 2 uses
  %i.abo = load ptr, ptr %i.yj, align 8, !tbaa !161
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  %i.abq = load ptr, ptr %i.abp, align 8          ; 2 uses
  %34 = ptrtoaddr ptr %i.abq to i64
  %i.abr = trunc nuw nsw i64 %indvars.iv55.i to i32
  %i.abs = add nsw i32 %i.h, %i.abr
  %i.abt = sext i32 %i.abs to i64
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.abt
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !3
  %i.abw = sext i32 %i.abv to i64                 ; 2 uses
  %i.abx = getelementptr inbounds i8, ptr %i.abq, i64 %i.abw ; 2 uses
  %brmerge533 = select i1 %min.iters.check414, i1 true, i1 %32
  br i1 %brmerge533, label %.lr.ph.split.i37.i.preheader, label %vector.memcheck410

vector.memcheck410:                               ; preds = %.lr.ph.split.i37.preheader.i
  %i.aby = add i64 %34, %i.abw
  %i.abz = add i64 %i.abm, %33
  %i.aca = sub i64 %i.abz, %i.aby
  %diff.check411 = icmp ugt i64 %i.aca, -32
  br i1 %diff.check411, label %.lr.ph.split.i37.i.preheader, label %vector.body418

vector.body418:                                   ; preds = %vector.memcheck410, %vector.body418
  %index419 = phi i64 [ %index.next422, %vector.body418 ], [ 0, %vector.memcheck410 ] ; 3 uses
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %index419 ; 2 uses
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %index419 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  %wide.load420 = load <2 x i64>, ptr %i.acc, align 8
  %wide.load421 = load <2 x i64>, ptr %i.acd, align 8
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  store <2 x i64> %wide.load420, ptr %i.acb, align 1
  store <2 x i64> %wide.load421, ptr %i.ace, align 1
  %index.next422 = add nuw i64 %index419, 4       ; 2 uses
  %i.acf = icmp eq i64 %index.next422, %n.vec417
  br i1 %i.acf, label %middle.block423, label %vector.body418, !llvm.loop !310

middle.block423:                                  ; preds = %vector.body418
  br i1 %cmp.n424, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", label %.lr.ph.split.i37.i.preheader

.lr.ph.split.i37.i.preheader:                     ; preds = %.lr.ph.split.i37.preheader.i, %vector.memcheck410, %middle.block423
  %.ph476 = phi i64 [ 0, %vector.memcheck410 ], [ %n.vec417, %middle.block423 ], [ 0, %.lr.ph.split.i37.preheader.i ]
  %.012.i38.i.ph = phi i32 [ 0, %vector.memcheck410 ], [ %i.yk, %middle.block423 ], [ 0, %.lr.ph.split.i37.preheader.i ]
  br label %.lr.ph.split.i37.i

.lr.ph.split.i37.i:                               ; preds = %.lr.ph.split.i37.i.preheader, %.lr.ph.split.i37.i
  %i.acg = phi i64 [ %i.ack, %.lr.ph.split.i37.i ], [ %.ph476, %.lr.ph.split.i37.i.preheader ] ; 2 uses
  %.012.i38.i = phi i32 [ %i.acj, %.lr.ph.split.i37.i ], [ %.012.i38.i.ph, %.lr.ph.split.i37.i.preheader ]
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %i.acg
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %i.acg
  %.0.copyload.i.i39.i = load i64, ptr %i.aci, align 8
  store i64 %.0.copyload.i.i39.i, ptr %i.ach, align 1
  %i.acj = add i32 %.012.i38.i, 1                 ; 2 uses
  %i.ack = zext i32 %i.acj to i64                 ; 2 uses
  %.not.i40.i = icmp slt i64 %i.yh, %i.ack
  br i1 %.not.i40.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", label %.lr.ph.split.i37.i, !llvm.loop !311

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i": ; preds = %.lr.ph.split.i37.i, %middle.block423
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.i, !llvm.loop !312

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", %.preheader.i267, %.lr.ph52.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %i.acl = sext i32 %i.xx to i64
  %i.acm = getelementptr inbounds [2 x i8], ptr %4, i64 %i.acl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.acn = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.acn)
  %i.aco = load ptr, ptr %6, align 8, !tbaa !42
  %i.acp = icmp eq ptr %i.aco, null
  br i1 %i.acp, label %.thread.i285, label %bb.cb, !prof !45

.thread.i285:                                     ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  %i.acq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.acq, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275

bb.cb:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %.pr.i272 = load ptr, ptr %6, align 8, !tbaa !42
  %i.acr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i273 = load i64, ptr %i.acr, align 8 ; 2 uses
  %.not.i.i.i274 = icmp eq ptr %.pr.i272, null
  br i1 %.not.i.i.i274, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275, label %bb.cd, !prof !250

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275: ; preds = %bb.cd, %bb.cc, %.thread.i285
  %.sroa.0.0.copyload.i.i39.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %.thread.i285 ], [ %.sroa.0.0.copyload.i.i.i273, %bb.cc ], [ %.sroa.0.0.copyload.i.i.i273, %bb.cd ] ; 3 uses
  %.sroa.520.0.extract.shift40.i = lshr i64 %.sroa.0.0.copyload.i.i39.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.acs = trunc i64 %.sroa.0.0.copyload.i.i39.i to i1
  br i1 %i.acs, label %.preheader.i284, label %bb.ce

.preheader.i284:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275
  %i.act = icmp sgt i32 %i.xw, 0
  br i1 %i.act, label %.lr.ph45.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph45.i:                                       ; preds = %.preheader.i284
  %i.acu = ashr i64 %.sroa.0.0.copyload.i.i39.i, 32
  %wide.trip.count51.i = zext nneg i32 %i.xw to i64
  %i.acv = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op380 = add i32 %i.xx, %i.h
  br label %bb.cj

bb.ce:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275
  %i.acw = load ptr, ptr %1, align 8, !tbaa !63   ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 40
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !85 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 32
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !86 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 9
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !89, !range !96, !noundef !97
  %i.add = trunc nuw i8 %i.adc to i1
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  %i.adf = load ptr, ptr %i.ade, align 8
  %i.adg = select i1 %i.add, ptr %i.adf, ptr null, !prof !45
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !86 ; 3 uses
  %.not.i.i32.i276 = icmp eq ptr %i.adi, null
  br i1 %.not.i.i32.i276, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acw, i64 32
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !66
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adi, i64 9
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !89, !range !96, !noundef !97
  %i.adn = trunc nuw i8 %i.adm to i1
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %i.adp = load ptr, ptr %i.ado, align 8
  %i.adq = select i1 %i.adn, ptr %i.adp, ptr null, !prof !45
  %i.adr = getelementptr inbounds [4 x i8], ptr %i.adq, i64 %i.adk
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i278 = phi ptr [ %i.adr, %bb.cf ], [ null, %bb.ce ]
  %i.ads = icmp sgt i32 %i.xw, 0
  br i1 %i.ads, label %.lr.ph.i279, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph.i279:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277
  %wide.trip.count.i280 = zext nneg i32 %i.xw to i64
  %i.adt = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op = add i32 %i.xx, %i.h
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cb
  %i.adu = landingpad { ptr, i32 }
          cleanup
  %i.adv = load ptr, ptr %6, align 8, !tbaa !42
  %.not.i.i33.i270 = icmp eq ptr %i.adv, null
  br i1 %.not.i.i33.i270, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i271, label %bb.ch, !prof !45

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i271

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i271: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i279
  %indvars.iv.i281 = phi i64 [ 0, %.lr.ph.i279 ], [ %indvars.iv.next.i282, %bb.ci ] ; 3 uses
  %i.adw = getelementptr inbounds nuw [2 x i8], ptr %i.acm, i64 %indvars.iv.i281
  %i.adx = load i16, ptr %i.adw, align 2, !tbaa !251
  %i.ady = zext i16 %i.adx to i64
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i278, i64 %i.ady ; 2 uses
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !3 ; 2 uses
  %i.aeb = sext i32 %i.aea to i64
  %i.aec = getelementptr inbounds i8, ptr %i.adg, i64 %i.aeb
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adz, i64 4
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !3
  %i.aef = sub nsw i32 %i.aee, %i.aea
  %i.aeg = load ptr, ptr %i.adt, align 8, !tbaa !161 ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 9
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !89, !range !96, !noundef !97
  %i.aej = trunc nuw i8 %i.aei to i1
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %i.ael = load i8, ptr %i.aek, align 8, !range !96
  %i.aem = trunc nuw i8 %i.ael to i1
  %i.aen = select i1 %i.aej, i1 %i.aem, i1 false, !prof !45
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  %i.aep = load ptr, ptr %i.aeo, align 8
  %i.aeq = select i1 %i.aen, ptr %i.aep, ptr null, !prof !45
  %i.aer = trunc nuw nsw i64 %indvars.iv.i281 to i32
  %.reass = add i32 %invariant.op, %i.aer
  %i.aes = sext i32 %.reass to i64
  %i.aet = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.aes
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !3
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = getelementptr inbounds i8, ptr %i.aeq, i64 %i.aev
  %i.aex = sext i32 %i.aef to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aew, ptr readonly align 8 %i.aec, i64 %i.aex, i1 false)
  %indvars.iv.next.i282 = add nuw nsw i64 %indvars.iv.i281, 1 ; 2 uses
  %exitcond.not.i283 = icmp eq i64 %indvars.iv.next.i282, %wide.trip.count.i280
  br i1 %exitcond.not.i283, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit", label %bb.ci, !llvm.loop !313

bb.cj:                                            ; preds = %bb.cj, %.lr.ph45.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph45.i ], [ %indvars.iv.next49.i, %bb.cj ] ; 3 uses
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %i.acm, i64 %indvars.iv48.i
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !251
  %i.afa = load ptr, ptr %1, align 8, !tbaa !63   ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 40
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !85
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 16
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !86 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 9
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !89, !range !96, !noundef !97
  %i.afh = trunc nuw i8 %i.afg to i1
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %i.afj = load ptr, ptr %i.afi, align 8
  %i.afk = select i1 %i.afh, ptr %i.afj, ptr null, !prof !45
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afa, i64 32
  %i.afm = load i64, ptr %i.afl, align 8, !tbaa !66
  %i.afn = zext i16 %i.aez to i64
  %i.afo = add nsw i64 %i.afm, %i.afn
  %i.afp = mul nsw i64 %i.afo, %.sroa.520.0.extract.shift40.i
  %i.afq = getelementptr inbounds i8, ptr %i.afk, i64 %i.afp
  %i.afr = load ptr, ptr %i.acv, align 8, !tbaa !161 ; 3 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 9
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !89, !range !96, !noundef !97
  %i.afu = trunc nuw i8 %i.aft to i1
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.afw = load i8, ptr %i.afv, align 8, !range !96
  %i.afx = trunc nuw i8 %i.afw to i1
  %i.afy = select i1 %i.afu, i1 %i.afx, i1 false, !prof !45
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %i.aga = load ptr, ptr %i.afz, align 8
  %i.agb = select i1 %i.afy, ptr %i.aga, ptr null, !prof !45
  %i.agc = trunc nuw nsw i64 %indvars.iv48.i to i32
  %.reass381 = add i32 %invariant.op380, %i.agc
  %i.agd = sext i32 %.reass381 to i64
  %i.age = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.agd
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !3
  %i.agg = sext i32 %i.agf to i64
  %i.agh = getelementptr inbounds i8, ptr %i.agb, i64 %i.agg
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.agh, ptr readonly align 8 %i.afq, i64 %i.acu, i1 false)
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
end_hunk_1
