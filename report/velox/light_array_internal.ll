Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/light_array_internal?download=true
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
  %i.ky = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !74
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !77
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 32 ; 3 uses
  %i.lf = getelementptr i8, ptr %2, i64 72
  %.val.val.val.i201 = load ptr, ptr %i.lf, align 8, !tbaa !131
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
  %i.oj = sdiv i64 %i.oi, 8                       ; 2 uses
  %i.ok = icmp eq i64 %.sroa.520.0.extract.shift51.i, 0
  %.not1.i38.i = icmp slt i32 %.sroa.520.0.extract.trunc52.i, -6
  %or.cond2.i39.i = or i1 %i.ok, %.not1.i38.i
  br i1 %or.cond2.i39.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.preheader.i

.lr.ph.split.i40.preheader.preheader.i:           ; preds = %.lr.ph56.i
  %wide.trip.count62.i = zext nneg i32 %i.nz to i64
  %i.ol = getelementptr i8, ptr %2, i64 72
  %i.om = call i64 @llvm.smax.i64(i64 %i.oj, i64 0)
  %i.on = add nuw nsw i64 %i.om, 1                ; 2 uses
  %min.iters.check444 = icmp slt i64 %i.oh, 25
  %n.vec446 = and i64 %i.on, 9223372036854775804  ; 3 uses
  %cmp.n453 = icmp eq i64 %i.on, %n.vec446
  br label %.lr.ph.split.i40.preheader.i

bb.ba:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212
  %i.oo = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 40
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !74 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !77
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8            ; 2 uses
  %i.ov = ptrtoaddr ptr %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !77 ; 3 uses
  %.not.i.i35.i = icmp eq ptr %i.ox, null
  br i1 %.not.i.i35.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !73
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 9
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !84, !range !85, !noundef !86
  %i.pc = trunc nuw i8 %i.pb to i1
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.pe = load ptr, ptr %i.pd, align 8
  %i.pf = select i1 %i.pc, ptr %i.pe, ptr null, !prof !37
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.oz
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i214 = phi ptr [ %i.pg, %bb.bb ], [ null, %bb.ba ]
  %i.ph = icmp sgt i32 %i.nz, 0
  br i1 %i.ph, label %.lr.ph.preheader.i215, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"

.lr.ph.preheader.i215:                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %wide.trip.count.i216 = zext nneg i32 %i.nz to i64
  %i.pi = getelementptr i8, ptr %2, i64 72
  br label %.lr.ph.i217

bb.bc:                                            ; preds = %bb.ax
  %i.pj = landingpad { ptr, i32 }
          cleanup
  %i.pk = load ptr, ptr %10, align 8, !tbaa !36
  %.not.i.i36.i = icmp eq ptr %i.pk, null
  br i1 %.not.i.i36.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i, label %bb.bd, !prof !37

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %common.resume

.lr.ph.i217:                                      ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %.lr.ph.preheader.i215
  %indvars.iv.i218 = phi i64 [ 0, %.lr.ph.preheader.i215 ], [ %indvars.iv.next.i221, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i" ] ; 3 uses
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i218
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !137
  %i.pn = zext i16 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i214, i64 %i.pn ; 2 uses
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !22 ; 3 uses
  %i.pq = sext i32 %i.pp to i64                   ; 2 uses
  %i.pr = getelementptr inbounds i8, ptr %i.ou, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !22 ; 2 uses
  %i.pu = sub nsw i32 %i.pt, %i.pp                ; 3 uses
  %.val33.val.val.i = load ptr, ptr %i.pi, align 8, !tbaa !131
  %i.pv = getelementptr inbounds nuw i8, ptr %.val33.val.val.i, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8            ; 2 uses
  %i.px = ptrtoaddr ptr %i.pw to i64
  %i.py = sext i32 %i.pu to i64                   ; 2 uses
  %i.pz = trunc i64 %indvars.iv.i218 to i32
  %i.qa = add i32 %i.h, %i.pz
  %i.qb = sext i32 %i.qa to i64
  %i.qc = mul nsw i64 %i.qb, %i.py                ; 2 uses
  %i.qd = getelementptr inbounds i8, ptr %i.pw, i64 %i.qc ; 2 uses
  %i.qe = add nsw i64 %i.py, -1
  %i.qf = sdiv i64 %i.qe, 8                       ; 2 uses
  %i.qg = icmp eq i32 %i.pt, %i.pp
  %.not1.i.i = icmp slt i32 %i.pu, -6
  %or.cond2.i.i = or i1 %i.qg, %.not1.i.i
  br i1 %or.cond2.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i217
  %i.qh = call i64 @llvm.smax.i64(i64 %i.qf, i64 0)
  %i.qi = add nuw nsw i64 %i.qh, 1                ; 2 uses
  %min.iters.check428 = icmp slt i32 %i.pu, 25
  br i1 %min.iters.check428, label %.lr.ph.split.i.i.preheader458, label %vector.memcheck425

vector.memcheck425:                               ; preds = %.lr.ph.split.i.i.preheader
  %i.qj = add i64 %i.qc, %i.px
  %i.qk = add i64 %i.ov, %i.pq
  %i.ql = sub i64 %i.qk, %i.qj
  %diff.check426 = icmp ugt i64 %i.ql, -32
  br i1 %diff.check426, label %.lr.ph.split.i.i.preheader458, label %vector.ph429

vector.ph429:                                     ; preds = %vector.memcheck425
  %n.vec430 = and i64 %i.qi, 9223372036854775804  ; 3 uses
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph429
  %index432 = phi i64 [ 0, %vector.ph429 ], [ %index.next435, %vector.body431 ] ; 3 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %index432 ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %index432 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %wide.load433 = load <2 x i64>, ptr %i.qn, align 8
  %wide.load434 = load <2 x i64>, ptr %i.qo, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  store <2 x i64> %wide.load433, ptr %i.qm, align 1
  store <2 x i64> %wide.load434, ptr %i.qp, align 1
  %index.next435 = add nuw i64 %index432, 4       ; 2 uses
  %i.qq = icmp eq i64 %index.next435, %n.vec430
  br i1 %i.qq, label %middle.block436, label %vector.body431, !llvm.loop !300

middle.block436:                                  ; preds = %vector.body431
  %cmp.n437 = icmp eq i64 %i.qi, %n.vec430
  br i1 %cmp.n437, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader458

.lr.ph.split.i.i.preheader458:                    ; preds = %vector.memcheck425, %.lr.ph.split.i.i.preheader, %middle.block436
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck425 ], [ 0, %.lr.ph.split.i.i.preheader ], [ %n.vec430, %middle.block436 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader458, %.lr.ph.split.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.split.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.split.i.i.preheader458 ] ; 3 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %indvars.iv.i.i
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %indvars.iv.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.qs, align 8
  store i64 %.0.copyload.i.i.i, ptr %i.qr, align 1
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.qt = and i64 %indvars.iv.next.i.i, 4294967295
  %.not.i.i220 = icmp slt i64 %i.qf, %i.qt
  br i1 %.not.i.i220, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i, !llvm.loop !301

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i, %middle.block436, %.lr.ph.i217
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i218, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i216
  br i1 %exitcond.not.i222, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.i217, !llvm.loop !302

.lr.ph.split.i40.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", %.lr.ph.split.i40.preheader.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.split.i40.preheader.preheader.i ], [ %indvars.iv.next60.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i" ] ; 3 uses
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv59.i
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !137
  %i.qw = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 40
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !74
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !77
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rc = load ptr, ptr %i.rb, align 8            ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !73
  %i.rf = zext i16 %i.qv to i64
  %i.rg = add nsw i64 %i.re, %i.rf
  %i.rh = mul nsw i64 %i.rg, %.sroa.520.0.extract.shift51.i ; 2 uses
  %i.ri = getelementptr inbounds i8, ptr %i.rc, i64 %i.rh ; 2 uses
  %.val.val.val.i226 = load ptr, ptr %i.ol, align 8, !tbaa !131
  %i.rj = getelementptr inbounds nuw i8, ptr %.val.val.val.i226, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8            ; 2 uses
  %i.rl = trunc nuw nsw i64 %indvars.iv59.i to i32
  %i.rm = add nsw i32 %i.h, %i.rl
  %i.rn = sext i32 %i.rm to i64
  %i.ro = mul nsw i64 %i.oh, %i.rn                ; 2 uses
  %i.rp = getelementptr inbounds i8, ptr %i.rk, i64 %i.ro ; 2 uses
  br i1 %min.iters.check444, label %.lr.ph.split.i40.i.preheader, label %vector.memcheck441

vector.memcheck441:                               ; preds = %.lr.ph.split.i40.preheader.i
  %i.rq = ptrtoaddr ptr %i.rk to i64
  %i.rr = ptrtoaddr ptr %i.rc to i64
  %i.rs = add i64 %i.ro, %i.rq
  %i.rt = add i64 %i.rh, %i.rr
  %i.ru = sub i64 %i.rt, %i.rs
  %diff.check442 = icmp ugt i64 %i.ru, -32
  br i1 %diff.check442, label %.lr.ph.split.i40.i.preheader, label %vector.body447

vector.body447:                                   ; preds = %vector.memcheck441, %vector.body447
  %index448 = phi i64 [ %index.next451, %vector.body447 ], [ 0, %vector.memcheck441 ] ; 3 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %index448 ; 2 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %index448 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %wide.load449 = load <2 x i64>, ptr %i.rw, align 8
  %wide.load450 = load <2 x i64>, ptr %i.rx, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  store <2 x i64> %wide.load449, ptr %i.rv, align 1
  store <2 x i64> %wide.load450, ptr %i.ry, align 1
  %index.next451 = add nuw i64 %index448, 4       ; 2 uses
  %i.rz = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.rz, label %middle.block452, label %vector.body447, !llvm.loop !303

middle.block452:                                  ; preds = %vector.body447
  br i1 %cmp.n453, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", label %.lr.ph.split.i40.i.preheader

.lr.ph.split.i40.i.preheader:                     ; preds = %vector.memcheck441, %.lr.ph.split.i40.preheader.i, %middle.block452
  %indvars.iv.i41.i.ph = phi i64 [ 0, %vector.memcheck441 ], [ 0, %.lr.ph.split.i40.preheader.i ], [ %n.vec446, %middle.block452 ]
  br label %.lr.ph.split.i40.i

.lr.ph.split.i40.i:                               ; preds = %.lr.ph.split.i40.i.preheader, %.lr.ph.split.i40.i
  %indvars.iv.i41.i = phi i64 [ %indvars.iv.next.i43.i, %.lr.ph.split.i40.i ], [ %indvars.iv.i41.i.ph, %.lr.ph.split.i40.i.preheader ] ; 3 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %indvars.iv.i41.i
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %indvars.iv.i41.i
  %.0.copyload.i.i42.i = load i64, ptr %i.sb, align 8
  store i64 %.0.copyload.i.i42.i, ptr %i.sa, align 1
  %indvars.iv.next.i43.i = add i64 %indvars.iv.i41.i, 1 ; 2 uses
  %i.sc = and i64 %indvars.iv.next.i43.i, 4294967295
  %.not.i44.i = icmp slt i64 %i.oj, %i.sc
  br i1 %.not.i44.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", label %.lr.ph.split.i40.i, !llvm.loop !304

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i": ; preds = %.lr.ph.split.i40.i, %middle.block452
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.i, !llvm.loop !305

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", %.preheader.i223, %.lr.ph56.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %i.sd = icmp sgt i32 %i.ny, 0
  br i1 %i.sd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  %i.se = sext i32 %i.nz to i64
  %i.sf = getelementptr inbounds [2 x i8], ptr %4, i64 %i.se
  store ptr %i.a, ptr %18, align 8, !tbaa !333
  %i.sg = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.b, ptr %i.sg, align 8, !tbaa !334
  %i.sh = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.c, ptr %i.sh, align 8, !tbaa !334
  call fastcc void @"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_5EEvS7_iSB_T_"(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ny, ptr noundef %i.sf, ptr noundef nonnull byval(%class.anon.86) align 8 %18)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

bb.bg:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit
  %i.si = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !131 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 9
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !84, !range !85, !noundef !86
  %i.sm = trunc nuw i8 %i.sl to i1
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.so = load i8, ptr %i.sn, align 8, !range !85
  %i.sp = trunc nuw i8 %i.so to i1
  %i.sq = select i1 %i.sm, i1 %i.sp, i1 false, !prof !37
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8            ; 12 uses
  %i.st = select i1 %i.sq, ptr %i.ss, ptr null, !prof !37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  br i1 %i.j, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.su = sext i32 %i.h to i64
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.ss, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !22
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.sx = phi i32 [ %i.sw, %bb.bh ], [ 0, %bb.bg ] ; 5 uses
  store i32 %i.sx, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.sy = load ptr, ptr %1, align 8, !tbaa !54
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.sy)
  %i.sz = load ptr, ptr %9, align 8, !tbaa !36
  %i.ta = icmp eq ptr %i.sz, null
  br i1 %i.ta, label %.thread.i247, label %bb.bj, !prof !37

.thread.i247:                                     ; preds = %bb.bi
  %i.tb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i38.i = load i64, ptr %i.tb, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %.pr.i230 = load ptr, ptr %9, align 8, !tbaa !36
  %i.tc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i.i231 = load i64, ptr %i.tc, align 8 ; 2 uses
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
  %i.td = trunc i64 %.sroa.0.0.copyload.i.i42.i to i1
  br i1 %i.td, label %.preheader.i244, label %bb.bm

.preheader.i244:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.te = icmp sgt i32 %3, 0
  br i1 %i.te, label %.lr.ph47.i.preheader, label %.critedge101

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
  %i.tf = add nsw i32 %i.h, %index
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds [4 x i8], ptr %i.ss, i64 %i.tg ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.th, align 4, !tbaa !22
  store <4 x i32> %broadcast.splat, ptr %i.ti, align 4, !tbaa !22
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.tj = icmp eq i32 %index.next, %n.vec
  br i1 %i.tj, label %middle.block, label %vector.body, !llvm.loop !306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %.lr.ph47.i.preheader471

.lr.ph47.i.preheader471:                          ; preds = %.lr.ph47.i.preheader, %middle.block
  %.046.i.ph = phi i32 [ 0, %.lr.ph47.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph47.i

bb.bm:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.tk = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 40
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !74
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !77 ; 3 uses
  %.not.i.i35.i234 = icmp eq ptr %i.to, null
  br i1 %.not.i.i35.i234, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !73
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 9
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !84, !range !85, !noundef !86
  %i.tt = trunc nuw i8 %i.ts to i1
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.tv = load ptr, ptr %i.tu, align 8
  %i.tw = select i1 %i.tt, ptr %i.tv, ptr null, !prof !37
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.tq
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i236 = phi ptr [ %i.tx, %bb.bn ], [ null, %bb.bm ] ; 3 uses
  %i.ty = icmp sgt i32 %3, 0
  br i1 %i.ty, label %.lr.ph.i237, label %.critedge101

.lr.ph.i237:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235
  %wide.trip.count.i239 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i239, 1
  %i.tz = icmp eq i32 %3, 1
  br i1 %i.tz, label %.epil.preheader, label %.lr.ph.i237.new

.lr.ph.i237.new:                                  ; preds = %.lr.ph.i237
  %unroll_iter = and i64 %wide.trip.count.i239, 2147483646
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bj
  %i.ua = landingpad { ptr, i32 }
          cleanup
  %i.ub = load ptr, ptr %9, align 8, !tbaa !36
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
  call void @llvm.assume(i1 %lcmp.mod473)
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i240.epil.init
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !137
  %i.vg = zext i16 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i236, i64 %i.vg ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !22
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vh, i64 4
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !22
  %i.vl = sub nsw i32 %i.vk, %i.vi
  %i.vm = trunc nuw nsw i64 %indvars.iv.i240.epil.init to i32
  %i.vn = add nsw i32 %i.h, %i.vm
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.ss, i64 %i.vo
  store i32 %i.vl, ptr %i.vp, align 4, !tbaa !22
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.epil.preheader, %.lr.ph.preheader.loopexit472.unr-lcssa, %.lr.ph47.i, %middle.block
  %xtraiter474 = and i32 %3, 1
  %i.vq = icmp eq i32 %3, 1
  br i1 %i.vq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter478 = and i32 %3, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.br, %.lr.ph.preheader.new
  %i.vr = phi i32 [ %i.sx, %.lr.ph.preheader.new ], [ %i.wg, %bb.br ] ; 2 uses
  %.090330 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.wh, %bb.br ] ; 4 uses
  %niter479 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter479.next.1, %bb.br ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.vs = add nsw i32 %i.h, %.090330
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.vt ; 2 uses
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !22 ; 2 uses
  store i32 %i.vv, ptr %i.e, align 4, !tbaa !22
  store i32 %i.vr, ptr %i.vu, align 4, !tbaa !22
  %i.vw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.vr, i32 %i.vv) ; 2 uses
  %i.vx = extractvalue { i32, i1 } %i.vw, 1
  br i1 %i.vx, label %.loopexit, label %.lr.ph.1, !prof !51

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.vy = extractvalue { i32, i1 } %i.vw, 0       ; 3 uses
  store i32 %i.vy, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.vz = or disjoint i32 %.090330, 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wa = add nsw i32 %i.h, %i.vz
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.wb ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !22 ; 2 uses
  store i32 %i.wd, ptr %i.e, align 4, !tbaa !22
  store i32 %i.vy, ptr %i.wc, align 4, !tbaa !22
  %i.we = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.vy, i32 %i.wd) ; 2 uses
  %i.wf = extractvalue { i32, i1 } %i.we, 1
  br i1 %i.wf, label %.loopexit, label %bb.br, !prof !51

bb.br:                                            ; preds = %.lr.ph.1
  %i.wg = extractvalue { i32, i1 } %i.we, 0       ; 4 uses
  store i32 %i.wg, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.wh = add nuw nsw i32 %.090330, 2             ; 2 uses
  %niter479.next.1 = add i32 %niter479, 2         ; 2 uses
  %niter479.ncmp.1 = icmp eq i32 %niter479.next.1, %unroll_iter478
  br i1 %niter479.ncmp.1, label %.critedge101.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !309

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.epil.preheader
  %.090330.lcssa = phi i32 [ %.090330.epil.init, %.lr.ph.epil.preheader ], [ %.090330, %.lr.ph ], [ %i.vz, %.lr.ph.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.wi = add nuw i32 %.090330.lcssa, 1
  %i.wj = add i32 %i.wi, %i.h
  store i32 %i.wj, ptr %i.f, align 4, !tbaa !22
  call void @_ZN5arrow6Status8FromArgsIJRA54_KciRA23_S2_RiRA26_S2_S7_RA7_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(54) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(23) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(26) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge103

.critedge101.loopexit.unr-lcssa:                  ; preds = %bb.br
  %lcmp.mod475.not = icmp eq i32 %xtraiter474, 0
  br i1 %lcmp.mod475.not, label %.critedge101, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.critedge101.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ %i.sx, %.lr.ph.preheader ], [ %i.wg, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %.090330.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.wh, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod477 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wk = add nsw i32 %i.h, %.090330.epil.init
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.wl ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !22 ; 2 uses
  store i32 %i.wn, ptr %i.e, align 4, !tbaa !22
  store i32 %.epil.init, ptr %i.wm, align 4, !tbaa !22
  %i.wo = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.epil.init, i32 %i.wn) ; 2 uses
  %i.wp = extractvalue { i32, i1 } %i.wo, 1
  br i1 %i.wp, label %.loopexit, label %.critedge101.loopexit.epilog-lcssa, !prof !51

.critedge101.loopexit.epilog-lcssa:               ; preds = %.lr.ph.epil.preheader
  %i.wq = extractvalue { i32, i1 } %i.wo, 0       ; 2 uses
  store i32 %i.wq, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge101

.critedge101:                                     ; preds = %.critedge101.loopexit.epilog-lcssa, %.critedge101.loopexit.unr-lcssa, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, %.preheader.i244
  %i.wr = phi i32 [ %i.sx, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235 ], [ %i.sx, %.preheader.i244 ], [ %i.wg, %.critedge101.loopexit.unr-lcssa ], [ %i.wq, %.critedge101.loopexit.epilog-lcssa ]
  %i.ws = sext i32 %i.i to i64
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.ss, i64 %i.ws
  store i32 %i.wr, ptr %i.wt, align 4, !tbaa !22
  %i.wu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.wv = load i8, ptr %i.wu, align 8, !tbaa !132, !range !85, !noalias !335, !noundef !86
  %i.ww = trunc nuw i8 %i.wv to i1
  br i1 %i.ww, label %_ZN5arrow6StatusD2Ev.exit252, label %bb.bs

bb.bs:                                            ; preds = %.critedge101
  %i.wx = load ptr, ptr %i.si, align 8, !tbaa !131, !noalias !335
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %i.wz = load ptr, ptr %i.wy, align 8, !noalias !335
  %i.xa = load i32, ptr %i.g, align 8, !tbaa !120, !noalias !335
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.wz, i64 %i.xb
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !22, !noalias !335
  %i.xe = sext i32 %i.xd to i64                   ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !129, !noalias !335 ; 2 uses
  %i.xh = icmp slt i64 %i.xg, %i.xe
  br i1 %i.xh, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit252

.preheader.i248:                                  ; preds = %bb.bs, %.preheader.i248
  %.012.i = phi i64 [ %i.xj, %.preheader.i248 ], [ %i.xg, %bb.bs ] ; 4 uses
  %i.xi = icmp slt i64 %.012.i, %i.xe
  %i.xj = shl nsw i64 %.012.i, 1
  br i1 %i.xi, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit.i, !llvm.loop !1

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.preheader.i248
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !335
  %i.xk = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !131, !noalias !335 ; 2 uses
  %i.xm = add nsw i64 %.012.i, 64
  %i.xn = load ptr, ptr %i.xl, align 8, !tbaa !33, !noalias !336
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.xp = load ptr, ptr %i.xo, align 8, !noalias !336
  call void %i.xp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %i.xl, i64 noundef %i.xm, i1 noundef zeroext true), !noalias !335, !inline_history !314
  %i.xq = load ptr, ptr %8, align 8, !tbaa !36, !noalias !337 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !335
  %i.xr = icmp eq ptr %i.xq, null
  br i1 %i.xr, label %_ZN5arrow6StatusD2Ev.exit17.i, label %_ZN5arrow6StatusD2Ev.exit250

_ZN5arrow6StatusD2Ev.exit17.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store i64 %.012.i, ptr %i.xf, align 8, !tbaa !129, !noalias !335
  br label %_ZN5arrow6StatusD2Ev.exit252

_ZN5arrow6StatusD2Ev.exit250:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.xq, ptr %0, align 8, !tbaa !36, !alias.scope !338
  br label %.critedge103

_ZN5arrow6StatusD2Ev.exit252:                     ; preds = %_ZN5arrow6StatusD2Ev.exit17.i, %bb.bs, %.critedge101
  store ptr null, ptr %0, align 8, !tbaa !36, !alias.scope !339
  %i.xs = call noundef i32 @_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, ptr noundef %4, i32 noundef 8) ; 5 uses
  %i.xt = sub nsw i32 %3, %i.xs                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.xu = load ptr, ptr %1, align 8, !tbaa !54
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.xu)
  %i.xv = load ptr, ptr %7, align 8, !tbaa !36
  %i.xw = icmp eq ptr %i.xv, null
  br i1 %i.xw, label %.thread.i270, label %bb.bt, !prof !37

.thread.i270:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit252
  %i.xx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i43.i271 = load i64, ptr %i.xx, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256

bb.bt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit252
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %.pr.i253 = load ptr, ptr %7, align 8, !tbaa !36
  %i.xy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i.i254 = load i64, ptr %i.xy, align 8 ; 2 uses
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
  %i.xz = trunc i64 %.sroa.0.0.copyload.i.i47.i to i1
  br i1 %i.xz, label %.preheader.i269, label %bb.bw

.preheader.i269:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.ya = icmp sgt i32 %i.xt, 0
  br i1 %i.ya, label %.lr.ph53.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph53.i:                                       ; preds = %.preheader.i269
  %i.yb = ashr i64 %.sroa.0.0.copyload.i.i47.i, 32 ; 2 uses
  %i.yc = add nsw i64 %i.yb, -1
  %i.yd = sdiv i64 %i.yc, 8                       ; 2 uses
  %i.ye = icmp eq i64 %.sroa.520.0.extract.shift48.i, 0
  %.not10.i35.i = icmp slt i32 %.sroa.520.0.extract.trunc49.i, -6
  %or.cond11.i36.i = or i1 %i.ye, %.not10.i35.i
  br i1 %or.cond11.i36.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.preheader.i

.lr.ph.split.i37.preheader.preheader.i:           ; preds = %.lr.ph53.i
  %wide.trip.count59.i = zext nneg i32 %i.xt to i64
  %i.yf = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.yg = call i64 @llvm.smax.i64(i64 %i.yd, i64 0)
  %i.yh = add nuw nsw i64 %i.yg, 1                ; 2 uses
  %min.iters.check412 = icmp slt i64 %i.yb, 25
  %n.vec414 = and i64 %i.yh, 9223372036854775804  ; 3 uses
  %cmp.n421 = icmp eq i64 %i.yh, %n.vec414
  br label %.lr.ph.split.i37.preheader.i

bb.bw:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.yi = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 40
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !74 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 32
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !77
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 16
  %i.yo = load ptr, ptr %i.yn, align 8            ; 2 uses
  %i.yp = ptrtoaddr ptr %i.yo to i64
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !77 ; 3 uses
  %.not.i.i32.i = icmp eq ptr %i.yr, null
  br i1 %.not.i.i32.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yi, i64 32
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !73
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 9
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !84, !range !85, !noundef !86
  %i.yw = trunc nuw i8 %i.yv to i1
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.yy = load ptr, ptr %i.yx, align 8
  %i.yz = select i1 %i.yw, ptr %i.yy, ptr null, !prof !37
  %i.za = getelementptr inbounds [4 x i8], ptr %i.yz, i64 %i.yt
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i258 = phi ptr [ %i.za, %bb.bx ], [ null, %bb.bw ]
  %i.zb = icmp sgt i32 %i.xt, 0
  br i1 %i.zb, label %.lr.ph.i259, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph.i259:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %wide.trip.count.i260 = zext nneg i32 %i.xt to i64
  %i.zc = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %bb.ca

bb.by:                                            ; preds = %bb.bt
  %i.zd = landingpad { ptr, i32 }
          cleanup
  %i.ze = load ptr, ptr %7, align 8, !tbaa !36
  %.not.i.i33.i = icmp eq ptr %i.ze, null
  br i1 %.not.i.i33.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i, label %bb.bz, !prof !37

bb.bz:                                            ; preds = %bb.by
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

bb.ca:                                            ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %.lr.ph.i259
  %indvars.iv.i261 = phi i64 [ 0, %.lr.ph.i259 ], [ %indvars.iv.next.i267, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i" ] ; 3 uses
  %i.zf = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i261
  %i.zg = load i16, ptr %i.zf, align 2, !tbaa !137
  %i.zh = zext i16 %i.zg to i64
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i258, i64 %i.zh ; 2 uses
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !22 ; 3 uses
  %i.zk = sext i32 %i.zj to i64                   ; 2 uses
  %i.zl = getelementptr inbounds i8, ptr %i.yo, i64 %i.zk ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zi, i64 4
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !22 ; 2 uses
  %i.zo = sub nsw i32 %i.zn, %i.zj                ; 3 uses
  %i.zp = load ptr, ptr %i.zc, align 8, !tbaa !131
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  %i.zr = load ptr, ptr %i.zq, align 8            ; 2 uses
  %i.zs = ptrtoaddr ptr %i.zr to i64
  %i.zt = trunc nuw nsw i64 %indvars.iv.i261 to i32
  %i.zu = add nsw i32 %i.h, %i.zt
  %i.zv = sext i32 %i.zu to i64
  %i.zw = getelementptr inbounds [4 x i8], ptr %i.ss, i64 %i.zv
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !22
  %i.zy = sext i32 %i.zx to i64                   ; 2 uses
  %i.zz = getelementptr inbounds i8, ptr %i.zr, i64 %i.zy ; 2 uses
  %i.aaa = sext i32 %i.zo to i64
  %i.aab = add nsw i64 %i.aaa, -1
  %i.aac = sdiv i64 %i.aab, 8                     ; 2 uses
  %i.aad = icmp eq i32 %i.zn, %i.zj
  %.not10.i.i = icmp slt i32 %i.zo, -6
  %or.cond11.i.i = or i1 %i.aad, %.not10.i.i
  br i1 %or.cond11.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader

.lr.ph.split.i.i262.preheader:                    ; preds = %bb.ca
  %i.aae = call i64 @llvm.smax.i64(i64 %i.aac, i64 0)
  %i.aaf = add nuw nsw i64 %i.aae, 1              ; 2 uses
  %min.iters.check397 = icmp slt i32 %i.zo, 25
  br i1 %min.iters.check397, label %.lr.ph.split.i.i262.preheader468, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.i.i262.preheader
  %i.aag = add i64 %i.zs, %i.zy
  %i.aah = add i64 %i.yp, %i.zk
  %i.aai = sub i64 %i.aah, %i.aag
  %diff.check = icmp ugt i64 %i.aai, -32
  br i1 %diff.check, label %.lr.ph.split.i.i262.preheader468, label %vector.ph398

vector.ph398:                                     ; preds = %vector.memcheck
  %n.vec399 = and i64 %i.aaf, 9223372036854775804 ; 3 uses
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next403, %vector.body400 ] ; 3 uses
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %index401 ; 2 uses
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %index401 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %wide.load = load <2 x i64>, ptr %i.aak, align 8
  %wide.load402 = load <2 x i64>, ptr %i.aal, align 8
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  store <2 x i64> %wide.load, ptr %i.aaj, align 1
  store <2 x i64> %wide.load402, ptr %i.aam, align 1
  %index.next403 = add nuw i64 %index401, 4       ; 2 uses
  %i.aan = icmp eq i64 %index.next403, %n.vec399
  br i1 %i.aan, label %middle.block404, label %vector.body400, !llvm.loop !320

middle.block404:                                  ; preds = %vector.body400
  %cmp.n405 = icmp eq i64 %i.aaf, %n.vec399
  br i1 %cmp.n405, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader468

.lr.ph.split.i.i262.preheader468:                 ; preds = %vector.memcheck, %.lr.ph.split.i.i262.preheader, %middle.block404
  %indvars.iv.i.i263.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.i.i262.preheader ], [ %n.vec399, %middle.block404 ]
  br label %.lr.ph.split.i.i262

.lr.ph.split.i.i262:                              ; preds = %.lr.ph.split.i.i262.preheader468, %.lr.ph.split.i.i262
  %indvars.iv.i.i263 = phi i64 [ %indvars.iv.next.i.i265, %.lr.ph.split.i.i262 ], [ %indvars.iv.i.i263.ph, %.lr.ph.split.i.i262.preheader468 ] ; 3 uses
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %indvars.iv.i.i263
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %indvars.iv.i.i263
  %.0.copyload.i.i.i264 = load i64, ptr %i.aap, align 8
  store i64 %.0.copyload.i.i.i264, ptr %i.aao, align 1
  %indvars.iv.next.i.i265 = add i64 %indvars.iv.i.i263, 1 ; 2 uses
  %i.aaq = and i64 %indvars.iv.next.i.i265, 4294967295
  %.not.i.i266 = icmp slt i64 %i.aac, %i.aaq
  br i1 %.not.i.i266, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262, !llvm.loop !321

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i262, %middle.block404, %bb.ca
  %indvars.iv.next.i267 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.not.i268 = icmp eq i64 %indvars.iv.next.i267, %wide.trip.count.i260
  br i1 %exitcond.not.i268, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %bb.ca, !llvm.loop !322

.lr.ph.split.i37.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", %.lr.ph.split.i37.preheader.preheader.i
  %indvars.iv56.i = phi i64 [ 0, %.lr.ph.split.i37.preheader.preheader.i ], [ %indvars.iv.next57.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i" ] ; 3 uses
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv56.i
  %i.aas = load i16, ptr %i.aar, align 2, !tbaa !137
  %i.aat = load ptr, ptr %1, align 8, !tbaa !54   ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 40
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !74
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !77
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.aaz = load ptr, ptr %i.aay, align 8          ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aat, i64 32
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !73
  %i.abc = zext i16 %i.aas to i64
  %i.abd = add nsw i64 %i.abb, %i.abc
  %i.abe = mul nsw i64 %i.abd, %.sroa.520.0.extract.shift48.i ; 2 uses
  %i.abf = getelementptr inbounds i8, ptr %i.aaz, i64 %i.abe ; 2 uses
  %i.abg = load ptr, ptr %i.yf, align 8, !tbaa !131
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.abi = load ptr, ptr %i.abh, align 8          ; 2 uses
  %i.abj = trunc nuw nsw i64 %indvars.iv56.i to i32
  %i.abk = add nsw i32 %i.h, %i.abj
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds [4 x i8], ptr %i.ss, i64 %i.abl
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !22
  %i.abo = sext i32 %i.abn to i64                 ; 2 uses
  %i.abp = getelementptr inbounds i8, ptr %i.abi, i64 %i.abo ; 2 uses
  br i1 %min.iters.check412, label %.lr.ph.split.i37.i.preheader, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph.split.i37.preheader.i
  %i.abq = ptrtoaddr ptr %i.abi to i64
  %i.abr = ptrtoaddr ptr %i.aaz to i64
  %i.abs = add i64 %i.abq, %i.abo
  %i.abt = add i64 %i.abe, %i.abr
  %i.abu = sub i64 %i.abt, %i.abs
  %diff.check410 = icmp ugt i64 %i.abu, -32
  br i1 %diff.check410, label %.lr.ph.split.i37.i.preheader, label %vector.body415

vector.body415:                                   ; preds = %vector.memcheck409, %vector.body415
  %index416 = phi i64 [ %index.next419, %vector.body415 ], [ 0, %vector.memcheck409 ] ; 3 uses
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %index416 ; 2 uses
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %index416 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  %wide.load417 = load <2 x i64>, ptr %i.abw, align 8
  %wide.load418 = load <2 x i64>, ptr %i.abx, align 8
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  store <2 x i64> %wide.load417, ptr %i.abv, align 1
  store <2 x i64> %wide.load418, ptr %i.aby, align 1
  %index.next419 = add nuw i64 %index416, 4       ; 2 uses
  %i.abz = icmp eq i64 %index.next419, %n.vec414
  br i1 %i.abz, label %middle.block420, label %vector.body415, !llvm.loop !323

middle.block420:                                  ; preds = %vector.body415
  br i1 %cmp.n421, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", label %.lr.ph.split.i37.i.preheader

.lr.ph.split.i37.i.preheader:                     ; preds = %vector.memcheck409, %.lr.ph.split.i37.preheader.i, %middle.block420
  %indvars.iv.i38.i.ph = phi i64 [ 0, %vector.memcheck409 ], [ 0, %.lr.ph.split.i37.preheader.i ], [ %n.vec414, %middle.block420 ]
  br label %.lr.ph.split.i37.i

.lr.ph.split.i37.i:                               ; preds = %.lr.ph.split.i37.i.preheader, %.lr.ph.split.i37.i
  %indvars.iv.i38.i = phi i64 [ %indvars.iv.next.i40.i, %.lr.ph.split.i37.i ], [ %indvars.iv.i38.i.ph, %.lr.ph.split.i37.i.preheader ] ; 3 uses
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %indvars.iv.i38.i
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %indvars.iv.i38.i
  %.0.copyload.i.i39.i = load i64, ptr %i.acb, align 8
  store i64 %.0.copyload.i.i39.i, ptr %i.aca, align 1
  %indvars.iv.next.i40.i = add i64 %indvars.iv.i38.i, 1 ; 2 uses
  %i.acc = and i64 %indvars.iv.next.i40.i, 4294967295
  %.not.i41.i = icmp slt i64 %i.yd, %i.acc
  br i1 %.not.i41.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", label %.lr.ph.split.i37.i, !llvm.loop !324

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i": ; preds = %.lr.ph.split.i37.i, %middle.block420
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.i, !llvm.loop !325

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit42.loopexit.i", %.preheader.i269, %.lr.ph53.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %i.acd = sext i32 %i.xt to i64
  %i.ace = getelementptr inbounds [2 x i8], ptr %4, i64 %i.acd ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.acf = load ptr, ptr %1, align 8, !tbaa !54
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.acf)
  %i.acg = load ptr, ptr %6, align 8, !tbaa !36
  %i.ach = icmp eq ptr %i.acg, null
  br i1 %i.ach, label %.thread.i287, label %bb.cb, !prof !37

.thread.i287:                                     ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  %i.aci = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.aci, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277

bb.cb:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %.pr.i274 = load ptr, ptr %6, align 8, !tbaa !36
  %i.acj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i275 = load i64, ptr %i.acj, align 8 ; 2 uses
  %.not.i.i.i276 = icmp eq ptr %.pr.i274, null
  br i1 %.not.i.i.i276, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277, label %bb.cd, !prof !135

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277: ; preds = %bb.cd, %bb.cc, %.thread.i287
  %.sroa.0.0.copyload.i.i39.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %.thread.i287 ], [ %.sroa.0.0.copyload.i.i.i275, %bb.cc ], [ %.sroa.0.0.copyload.i.i.i275, %bb.cd ] ; 3 uses
  %.sroa.520.0.extract.shift40.i = lshr i64 %.sroa.0.0.copyload.i.i39.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ack = trunc i64 %.sroa.0.0.copyload.i.i39.i to i1
  br i1 %i.ack, label %.preheader.i286, label %bb.ce

.preheader.i286:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277
  %i.acl = icmp sgt i32 %i.xs, 0
  br i1 %i.acl, label %.lr.ph45.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph45.i:                                       ; preds = %.preheader.i286
  %i.acm = ashr i64 %.sroa.0.0.copyload.i.i39.i, 32
  %wide.trip.count51.i = zext nneg i32 %i.xs to i64
  %i.acn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op382 = add i32 %i.xt, %i.h
  br label %bb.cj

bb.ce:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i277
  %i.aco = load ptr, ptr %1, align 8, !tbaa !54   ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 40
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !74 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 32
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !77 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 9
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !84, !range !85, !noundef !86
  %i.acv = trunc nuw i8 %i.acu to i1
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  %i.acx = load ptr, ptr %i.acw, align 8
  %i.acy = select i1 %i.acv, ptr %i.acx, ptr null, !prof !37
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acq, i64 16
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !77 ; 3 uses
  %.not.i.i32.i278 = icmp eq ptr %i.ada, null
  br i1 %.not.i.i32.i278, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aco, i64 32
  %i.adc = load i64, ptr %i.adb, align 8, !tbaa !73
  %i.add = getelementptr inbounds nuw i8, ptr %i.ada, i64 9
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !84, !range !85, !noundef !86
  %i.adf = trunc nuw i8 %i.ade to i1
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  %i.adh = load ptr, ptr %i.adg, align 8
  %i.adi = select i1 %i.adf, ptr %i.adh, ptr null, !prof !37
  %i.adj = getelementptr inbounds [4 x i8], ptr %i.adi, i64 %i.adc
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i280 = phi ptr [ %i.adj, %bb.cf ], [ null, %bb.ce ]
  %i.adk = icmp sgt i32 %i.xs, 0
  br i1 %i.adk, label %.lr.ph.i281, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph.i281:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i279
  %wide.trip.count.i282 = zext nneg i32 %i.xs to i64
  %i.adl = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op = add i32 %i.xt, %i.h
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cb
  %i.adm = landingpad { ptr, i32 }
          cleanup
  %i.adn = load ptr, ptr %6, align 8, !tbaa !36
  %.not.i.i33.i272 = icmp eq ptr %i.adn, null
  br i1 %.not.i.i33.i272, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273, label %bb.ch, !prof !37

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i281
  %indvars.iv.i283 = phi i64 [ 0, %.lr.ph.i281 ], [ %indvars.iv.next.i284, %bb.ci ] ; 3 uses
  %i.ado = getelementptr inbounds nuw [2 x i8], ptr %i.ace, i64 %indvars.iv.i283
  %i.adp = load i16, ptr %i.ado, align 2, !tbaa !137
  %i.adq = zext i16 %i.adp to i64
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i280, i64 %i.adq ; 2 uses
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !22 ; 2 uses
  %i.adt = sext i32 %i.ads to i64
  %i.adu = getelementptr inbounds i8, ptr %i.acy, i64 %i.adt
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !22
  %i.adx = sub nsw i32 %i.adw, %i.ads
  %i.ady = load ptr, ptr %i.adl, align 8, !tbaa !131 ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 9
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !84, !range !85, !noundef !86
  %i.aeb = trunc nuw i8 %i.aea to i1
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  %i.aed = load i8, ptr %i.aec, align 8, !range !85
  %i.aee = trunc nuw i8 %i.aed to i1
  %i.aef = select i1 %i.aeb, i1 %i.aee, i1 false, !prof !37
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  %i.aeh = load ptr, ptr %i.aeg, align 8
  %i.aei = select i1 %i.aef, ptr %i.aeh, ptr null, !prof !37
  %i.aej = trunc nuw nsw i64 %indvars.iv.i283 to i32
  %.reass = add i32 %invariant.op, %i.aej
  %i.aek = sext i32 %.reass to i64
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.ss, i64 %i.aek
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !22
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds i8, ptr %i.aei, i64 %i.aen
  %i.aep = sext i32 %i.adx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aeo, ptr readonly align 8 %i.adu, i64 %i.aep, i1 false)
  %indvars.iv.next.i284 = add nuw nsw i64 %indvars.iv.i283, 1 ; 2 uses
  %exitcond.not.i285 = icmp eq i64 %indvars.iv.next.i284, %wide.trip.count.i282
  br i1 %exitcond.not.i285, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit", label %bb.ci, !llvm.loop !326

bb.cj:                                            ; preds = %bb.cj, %.lr.ph45.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph45.i ], [ %indvars.iv.next49.i, %bb.cj ] ; 3 uses
  %i.aeq = getelementptr inbounds nuw [2 x i8], ptr %i.ace, i64 %indvars.iv48.i
  %i.aer = load i16, ptr %i.aeq, align 2, !tbaa !137
  %i.aes = load ptr, ptr %1, align 8, !tbaa !54   ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 40
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !74
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !77 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 9
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !84, !range !85, !noundef !86
  %i.aez = trunc nuw i8 %i.aey to i1
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aew, i64 16
  %i.afb = load ptr, ptr %i.afa, align 8
end_hunk_1
