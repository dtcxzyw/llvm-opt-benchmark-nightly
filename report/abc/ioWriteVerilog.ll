Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioWriteVerilog?download=true
inline.NumInlined: 284
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Io_WriteVerilogObjectsLut:bb.a

._crit_edge.loopexit.i369:                        ; preds = %bb.x
  %i.nv = trunc nuw nsw i64 %indvars.iv.i365 to i32
  br label %._crit_edge.i360

._crit_edge.i360:                                 ; preds = %._crit_edge.loopexit.i369, %.preheader.i359
  %.0.lcssa.i361 = phi i32 [ 0, %.preheader.i359 ], [ %i.nv, %._crit_edge.loopexit.i369 ]
  %i.nw = icmp eq i32 %.0.lcssa.i361, %i.nl
  br i1 %i.nw, label %Io_WriteVerilogGetName.exit372, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i360, %bb.w
  store i8 92, ptr @Io_WriteVerilogGetName.Buffer, align 16, !tbaa !38
  %i.nx = icmp sgt i32 %i.nl, 0
  br i1 %i.nx, label %iter.check794, label %._crit_edge49.i349

iter.check794:                                    ; preds = %bb.z
  %wide.trip.count54.i354 = and i64 %i.nk, 2147483647 ; 6 uses
  %min.iters.check781 = icmp samesign ult i64 %wide.trip.count54.i354, 8
  %i.ny = sub i64 ptrtoaddr (ptr @Io_WriteVerilogGetName.Buffer to i64), %i.nj
  %diff.check780 = icmp ult i64 %i.ny, 31
  %or.cond1007 = or i1 %min.iters.check781, %diff.check780
  br i1 %or.cond1007, label %.lr.ph48.i355.preheader, label %vector.main.loop.iter.check782

vector.main.loop.iter.check782:                   ; preds = %iter.check794
  %min.iters.check783 = icmp samesign ult i64 %wide.trip.count54.i354, 32
  br i1 %min.iters.check783, label %vec.epilog.ph798, label %vector.ph784

vector.ph784:                                     ; preds = %vector.main.loop.iter.check782
  %i.nz = and i64 %i.nk, 24
  %n.vec785 = and i64 %i.nk, 2147483616           ; 4 uses
  br label %vector.body786

vector.body786:                                   ; preds = %vector.ph784, %vector.body786
  %index787 = phi i64 [ 0, %vector.ph784 ], [ %index.next790, %vector.body786 ] ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ni, i64 %index787 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %wide.load788 = load <16 x i8>, ptr %i.oa, align 1, !tbaa !38
  %wide.load789 = load <16 x i8>, ptr %i.ob, align 1, !tbaa !38
  %i.oc = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index787 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 1
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 17
  store <16 x i8> %wide.load788, ptr %i.od, align 1, !tbaa !38
  store <16 x i8> %wide.load789, ptr %i.oe, align 1, !tbaa !38
  %index.next790 = add nuw i64 %index787, 32      ; 2 uses
  %i.of = icmp eq i64 %index.next790, %n.vec785
  br i1 %i.of, label %middle.block791, label %vector.body786, !llvm.loop !161

middle.block791:                                  ; preds = %vector.body786
  %cmp.n792 = icmp eq i64 %wide.trip.count54.i354, %n.vec785
  br i1 %cmp.n792, label %._crit_edge49.i349, label %vec.epilog.iter.check796

vec.epilog.iter.check796:                         ; preds = %middle.block791
  %min.epilog.iters.check797 = icmp eq i64 %i.nz, 0
  br i1 %min.epilog.iters.check797, label %.lr.ph48.i355.preheader, label %vec.epilog.ph798, !prof !41

vec.epilog.ph798:                                 ; preds = %vector.main.loop.iter.check782, %vec.epilog.iter.check796
  %vec.epilog.resume.val793 = phi i64 [ %n.vec785, %vec.epilog.iter.check796 ], [ 0, %vector.main.loop.iter.check782 ]
  %n.vec799 = and i64 %i.nk, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body800

vec.epilog.vector.body800:                        ; preds = %vec.epilog.vector.body800, %vec.epilog.ph798
  %index801 = phi i64 [ %vec.epilog.resume.val793, %vec.epilog.ph798 ], [ %index.next803, %vec.epilog.vector.body800 ] ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.ni, i64 %index801
  %wide.load802 = load <8 x i8>, ptr %i.og, align 1, !tbaa !38
  %i.oh = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index801
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 1
  store <8 x i8> %wide.load802, ptr %i.oi, align 1, !tbaa !38
  %index.next803 = add nuw i64 %index801, 8       ; 2 uses
  %i.oj = icmp eq i64 %index.next803, %n.vec799
  br i1 %i.oj, label %vec.epilog.middle.block804, label %vec.epilog.vector.body800, !llvm.loop !162

vec.epilog.middle.block804:                       ; preds = %vec.epilog.vector.body800
  %cmp.n805 = icmp eq i64 %wide.trip.count54.i354, %n.vec799
  br i1 %cmp.n805, label %._crit_edge49.i349, label %.lr.ph48.i355.preheader

.lr.ph48.i355.preheader:                          ; preds = %iter.check794, %vec.epilog.iter.check796, %vec.epilog.middle.block804
  %indvars.iv51.i356.ph = phi i64 [ 0, %iter.check794 ], [ %n.vec785, %vec.epilog.iter.check796 ], [ %n.vec799, %vec.epilog.middle.block804 ] ; 3 uses
  %xtraiter1044 = and i64 %i.nk, 3                ; 2 uses
  %lcmp.mod1045.not = icmp eq i64 %xtraiter1044, 0
  br i1 %lcmp.mod1045.not, label %.lr.ph48.i355.prol.loopexit, label %.lr.ph48.i355.prol

.lr.ph48.i355.prol:                               ; preds = %.lr.ph48.i355.preheader, %.lr.ph48.i355.prol
  %indvars.iv51.i356.prol = phi i64 [ %indvars.iv.next52.i357.prol, %.lr.ph48.i355.prol ], [ %indvars.iv51.i356.ph, %.lr.ph48.i355.preheader ] ; 2 uses
  %prol.iter1046 = phi i64 [ %prol.iter1046.next, %.lr.ph48.i355.prol ], [ 0, %.lr.ph48.i355.preheader ]
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ni, i64 %indvars.iv51.i356.prol
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !38
  %indvars.iv.next52.i357.prol = add nuw nsw i64 %indvars.iv51.i356.prol, 1 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i357.prol
  store i8 %i.ol, ptr %i.om, align 1, !tbaa !38
  %prol.iter1046.next = add i64 %prol.iter1046, 1 ; 2 uses
  %prol.iter1046.cmp.not = icmp eq i64 %prol.iter1046.next, %xtraiter1044
  br i1 %prol.iter1046.cmp.not, label %.lr.ph48.i355.prol.loopexit, label %.lr.ph48.i355.prol, !llvm.loop !163

.lr.ph48.i355.prol.loopexit:                      ; preds = %.lr.ph48.i355.prol, %.lr.ph48.i355.preheader
  %indvars.iv51.i356.unr = phi i64 [ %indvars.iv51.i356.ph, %.lr.ph48.i355.preheader ], [ %indvars.iv.next52.i357.prol, %.lr.ph48.i355.prol ]
  %i.on = sub nsw i64 %indvars.iv51.i356.ph, %wide.trip.count54.i354
  %i.oo = icmp ugt i64 %i.on, -4
  br i1 %i.oo, label %._crit_edge49.i349, label %.lr.ph48.i355

.lr.ph48.i355:                                    ; preds = %.lr.ph48.i355.prol.loopexit, %.lr.ph48.i355
  %indvars.iv51.i356 = phi i64 [ %indvars.iv.next52.i357.3, %.lr.ph48.i355 ], [ %indvars.iv51.i356.unr, %.lr.ph48.i355.prol.loopexit ] ; 5 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ni, i64 %indvars.iv51.i356
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !38
  %indvars.iv.next52.i357 = add nuw nsw i64 %indvars.iv51.i356, 1 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i357
  store i8 %i.oq, ptr %i.or, align 1, !tbaa !38
  %i.os = getelementptr inbounds nuw i8, ptr %i.ni, i64 %indvars.iv.next52.i357
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !38
  %indvars.iv.next52.i357.1 = add nuw nsw i64 %indvars.iv51.i356, 2 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i357.1
  store i8 %i.ot, ptr %i.ou, align 1, !tbaa !38
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ni, i64 %indvars.iv.next52.i357.1
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !38
  %indvars.iv.next52.i357.2 = add nuw nsw i64 %indvars.iv51.i356, 3 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i357.2
  store i8 %i.ow, ptr %i.ox, align 1, !tbaa !38
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ni, i64 %indvars.iv.next52.i357.2
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !38
  %indvars.iv.next52.i357.3 = add nuw nsw i64 %indvars.iv51.i356, 4 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i357.3
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !38
  %exitcond55.not.i358.3 = icmp eq i64 %indvars.iv.next52.i357.3, %wide.trip.count54.i354
  br i1 %exitcond55.not.i358.3, label %._crit_edge49.i349, label %.lr.ph48.i355, !llvm.loop !164

._crit_edge49.i349:                               ; preds = %.lr.ph48.i355.prol.loopexit, %.lr.ph48.i355, %middle.block791, %vec.epilog.middle.block804, %bb.z
  %i.pb = shl i64 %i.nk, 32                       ; 2 uses
  %sext.i350 = add i64 %i.pb, 4294967296
  %i.pc = ashr exact i64 %sext.i350, 32
  %i.pd = getelementptr inbounds i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %i.pc
  store i8 32, ptr %i.pd, align 1, !tbaa !38
  %sext37.i351 = add i64 %i.pb, 8589934592
  %i.pe = ashr exact i64 %sext37.i351, 32
  %i.pf = getelementptr inbounds i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %i.pe
  store i8 0, ptr %i.pf, align 1, !tbaa !38
  br label %Io_WriteVerilogGetName.exit372

Io_WriteVerilogGetName.exit372:                   ; preds = %bb.y, %._crit_edge.i360, %._crit_edge49.i349
  %.031.i352 = phi ptr [ @Io_WriteVerilogGetName.Buffer, %._crit_edge49.i349 ], [ %i.ni, %._crit_edge.i360 ], [ %i.ni, %bb.y ]
  %i.pg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.031.i352) #12
  %i.ph = trunc i64 %i.pg to i32
  %i.pi = tail call noundef i32 @llvm.smax.i32(i32 %.1567, i32 %i.ph) ; 2 uses
  %indvars.iv.next625 = add nuw nsw i64 %indvars.iv624, 1 ; 2 uses
  %.val227 = load i32, ptr %i.my, align 4, !tbaa !54
  %i.pj = sext i32 %.val227 to i64
  %i.pk = icmp slt i64 %indvars.iv.next625, %i.pj
  br i1 %i.pk, label %bb.w, label %.critedge8, !llvm.loop !165

.critedge8:                                       ; preds = %Io_WriteVerilogGetName.exit372, %Io_WriteVerilogGetName.exit347, %bb.r, %.lr.ph572
  %.2 = phi i32 [ %.0571, %.lr.ph572 ], [ %.0571, %bb.r ], [ %i.mx, %Io_WriteVerilogGetName.exit347 ], [ %i.pi, %Io_WriteVerilogGetName.exit372 ] ; 2 uses
  %indvars.iv.next628 = add nuw nsw i64 %indvars.iv627, 1 ; 2 uses
  %i.pl = load ptr, ptr %i.j, align 8, !tbaa !52  ; 3 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 4
  %.val186 = load i32, ptr %i.pm, align 4, !tbaa !34 ; 2 uses
  %i.pn = sext i32 %.val186 to i64
  %i.po = icmp slt i64 %indvars.iv.next628, %i.pn
  br i1 %i.po, label %.lr.ph572, label %.critedge6.loopexit, !llvm.loop !166

.critedge6.loopexit:                              ; preds = %.critedge8
  %i.pp = icmp sgt i32 %.val186, 0
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge.preheader
  %.val184596 = phi i1 [ false, %.critedge.preheader ], [ %i.pp, %.critedge6.loopexit ] ; 2 uses
  %i.pq = phi ptr [ %i.k, %.critedge.preheader ], [ %i.pl, %.critedge6.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.critedge.preheader ], [ %.2, %.critedge6.loopexit ] ; 8 uses
  %i.pr = getelementptr i8, ptr %1, i64 124
  %.val245 = load i32, ptr %i.pr, align 4, !tbaa !43 ; 3 uses
  %i.ps = icmp ult i32 %.val245, 2
  br i1 %i.ps, label %Abc_Base10Log.exit379, label %.lr.ph.preheader.i373

.lr.ph.preheader.i373:                            ; preds = %.critedge6
  %i.pt = add i32 %.val245, -1
  br label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %.lr.ph.i374, %.lr.ph.preheader.i373
  %.013.i375 = phi i32 [ %i.pv, %.lr.ph.i374 ], [ 0, %.lr.ph.preheader.i373 ]
  %.0812.i376 = phi i32 [ %i.pu, %.lr.ph.i374 ], [ %i.pt, %.lr.ph.preheader.i373 ] ; 2 uses
  %i.pu = udiv i32 %.0812.i376, 10
  %i.pv = add nuw nsw i32 %.013.i375, 1           ; 2 uses
  %.not.i377 = icmp ult i32 %.0812.i376, 10
  br i1 %.not.i377, label %Abc_Base10Log.exit379, label %.lr.ph.i374, !llvm.loop !1

Abc_Base10Log.exit379:                            ; preds = %.lr.ph.i374, %.critedge6
  %.09.i378 = phi i32 [ %.val245, %.critedge6 ], [ %i.pv, %.lr.ph.i374 ] ; 3 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.preheader534, label %.preheader536

.preheader536:                                    ; preds = %Abc_Base10Log.exit379
  br i1 %.val184596, label %.lr.ph586, label %.critedge10

.preheader534:                                    ; preds = %Abc_Base10Log.exit379
  br i1 %.val184596, label %.lr.ph599, label %.critedge10

.lr.ph599:                                        ; preds = %.preheader534
  %i.pw = shl nuw i32 1, %2                       ; 2 uses
  %i.px = icmp eq i32 %2, 6
  %i.py = add nsw i32 %2, -2
  %i.pz = shl nuw i32 1, %i.py
  %i.qa = sub nsw i32 32, %i.pw
  %i.qb = lshr i32 -1, %i.qa
  %.6587 = add nsw i32 %2, -1                     ; 2 uses
  br label %bb.au

.lr.ph586:                                        ; preds = %.preheader536, %bb.at
  %indvars.iv636 = phi i64 [ %indvars.iv.next637, %bb.at ], [ 0, %.preheader536 ] ; 2 uses
  %i.qc = phi ptr [ %i.abk, %bb.at ], [ %i.pq, %.preheader536 ]
  %.2158585 = phi i32 [ %.3, %bb.at ], [ 0, %.preheader536 ] ; 5 uses
  %i.qd = getelementptr i8, ptr %i.qc, i64 8
  %.val216.val = load ptr, ptr %i.qd, align 8, !tbaa !35
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %.val216.val, i64 %indvars.iv636
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !36 ; 14 uses
  %i.qg = icmp eq ptr %i.qf, null
  br i1 %i.qg, label %bb.at, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph586
  %i.qh = getelementptr i8, ptr %i.qf, i64 20
  %.val219 = load i32, ptr %i.qh, align 4         ; 2 uses
  %i.qi = and i32 %.val219, 15
  %.not530 = icmp eq i32 %i.qi, 7
  br i1 %.not530, label %bb.ab, label %bb.at

bb.ab:                                            ; preds = %bb.aa
  %i.qj = and i32 %.val219, 512
  %.not176 = icmp eq i32 %i.qj, 0
  br i1 %.not176, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val238 = load ptr, ptr %i.qf, align 8, !tbaa !50
  %i.qk = getelementptr i8, ptr %i.qf, i64 32     ; 2 uses
  %.val239 = load ptr, ptr %i.qk, align 8, !tbaa !53 ; 2 uses
  %i.ql = getelementptr i8, ptr %.val238, i64 32
  %.val238.val = load ptr, ptr %i.ql, align 8, !tbaa !52
  %i.qm = getelementptr i8, ptr %.val238.val, i64 8
  %.val238.val.val = load ptr, ptr %i.qm, align 8, !tbaa !35 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.val239, i64 4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !43
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds [8 x i8], ptr %.val238.val.val, i64 %i.qp
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !36 ; 2 uses
  %.val207 = load ptr, ptr %i.qr, align 8, !tbaa !50
  %i.qs = getelementptr i8, ptr %i.qr, i64 32
  %.val208 = load ptr, ptr %i.qs, align 8, !tbaa !53
  %i.qt = getelementptr i8, ptr %.val207, i64 32
  %.val207.val = load ptr, ptr %i.qt, align 8, !tbaa !52
  %.val208.val = load i32, ptr %.val208, align 4, !tbaa !43
  %i.qu = getelementptr i8, ptr %.val207.val, i64 8
  %.val207.val.val = load ptr, ptr %i.qu, align 8, !tbaa !35
  %i.qv = sext i32 %.val208.val to i64
  %i.qw = getelementptr inbounds [8 x i8], ptr %.val207.val.val, i64 %i.qv
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !36
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 20
  %i.qz = load i32, ptr %i.qy, align 4
  %i.ra = and i32 %i.qz, 512
  %.not178 = icmp eq i32 %i.ra, 0
  br i1 %.not178, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rb = getelementptr inbounds nuw i8, ptr %.val239, i64 8
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !43
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [8 x i8], ptr %.val238.val.val, i64 %i.rd
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !36 ; 2 uses
  %.val205 = load ptr, ptr %i.rf, align 8, !tbaa !50
  %i.rg = getelementptr i8, ptr %i.rf, i64 32
  %.val206 = load ptr, ptr %i.rg, align 8, !tbaa !53
  %i.rh = getelementptr i8, ptr %.val205, i64 32
  %.val205.val = load ptr, ptr %i.rh, align 8, !tbaa !52
  %.val206.val = load i32, ptr %.val206, align 4, !tbaa !43
  %i.ri = getelementptr i8, ptr %.val205.val, i64 8
  %.val205.val.val = load ptr, ptr %i.ri, align 8, !tbaa !35
  %i.rj = sext i32 %.val206.val to i64
  %i.rk = getelementptr inbounds [8 x i8], ptr %.val205.val.val, i64 %i.rj
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !36
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 20
  %i.rn = load i32, ptr %i.rm, align 4
  %i.ro = lshr i32 %i.rn, 9
  %.lobit = and i32 %i.ro, 1
  %i.rp = add nuw nsw i32 %.lobit, 7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.rq = phi i32 [ 7, %bb.ac ], [ %i.rp, %bb.ad ]
  %i.rr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %i.rq) #11 ; 0 uses
  %i.rs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %.09.i378, i32 noundef %.2158585) #11 ; 0 uses
  %.val194 = load ptr, ptr %i.qf, align 8, !tbaa !50
  %i.rt = getelementptr i8, ptr %i.qf, i64 48
  %.val195 = load ptr, ptr %i.rt, align 8, !tbaa !51
  %i.ru = getelementptr i8, ptr %.val194, i64 32
  %.val194.val = load ptr, ptr %i.ru, align 8, !tbaa !52
  %.val195.val = load i32, ptr %.val195, align 4, !tbaa !43
  %i.rv = getelementptr i8, ptr %.val194.val, i64 8
  %.val194.val.val = load ptr, ptr %i.rv, align 8, !tbaa !35
  %i.rw = sext i32 %.val195.val to i64
  %i.rx = getelementptr inbounds [8 x i8], ptr %.val194.val.val, i64 %i.rw
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !36
  %i.rz = tail call ptr @Abc_ObjName(ptr noundef %i.ry) #11 ; 13 uses
  %i.sa = ptrtoaddr ptr %i.rz to i64
  %i.sb = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.rz) #12 ; 8 uses
  %i.sc = trunc i64 %i.sb to i32                  ; 3 uses
  %i.sd = load i8, ptr %i.rz, align 1, !tbaa !38
  %i.se = add i8 %i.sd, -58
  %or.cond.i380 = icmp ult i8 %i.se, -10
  br i1 %or.cond.i380, label %.preheader.i391, label %bb.ah

.preheader.i391:                                  ; preds = %bb.ae
  %i.sf = icmp sgt i32 %i.sc, 0
  br i1 %i.sf, label %.lr.ph.preheader.i394, label %._crit_edge.i392

.lr.ph.preheader.i394:                            ; preds = %.preheader.i391
  %wide.trip.count.i395 = and i64 %i.sb, 2147483647
  br label %.lr.ph.i396

.lr.ph.i396:                                      ; preds = %bb.ag, %.lr.ph.preheader.i394
  %indvars.iv.i397 = phi i64 [ 0, %.lr.ph.preheader.i394 ], [ %indvars.iv.next.i402, %bb.ag ] ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rz, i64 %indvars.iv.i397
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !38  ; 3 uses
  %i.si = and i8 %i.sh, -33
  %i.sj = add i8 %i.si, -65
  %or.cond42.i398 = icmp ult i8 %i.sj, 26
  br i1 %or.cond42.i398, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i396
  %i.sk = add i8 %i.sh, -48
  %or.cond40.i399 = icmp ult i8 %i.sk, 10
  %i.sl = icmp eq i8 %i.sh, 95
  %or.cond41.i400 = or i1 %i.sl, %or.cond40.i399
  br i1 %or.cond41.i400, label %bb.ag, label %._crit_edge.loopexit.i401

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i396
  %indvars.iv.next.i402 = add nuw nsw i64 %indvars.iv.i397, 1 ; 2 uses
  %exitcond.not.i403 = icmp eq i64 %indvars.iv.next.i402, %wide.trip.count.i395
  br i1 %exitcond.not.i403, label %Io_WriteVerilogGetName.exit404, label %.lr.ph.i396, !llvm.loop !0

._crit_edge.loopexit.i401:                        ; preds = %bb.af
  %i.sm = trunc nuw nsw i64 %indvars.iv.i397 to i32
  br label %._crit_edge.i392

._crit_edge.i392:                                 ; preds = %._crit_edge.loopexit.i401, %.preheader.i391
  %.0.lcssa.i393 = phi i32 [ 0, %.preheader.i391 ], [ %i.sm, %._crit_edge.loopexit.i401 ]
  %i.sn = icmp eq i32 %.0.lcssa.i393, %i.sc
  br i1 %i.sn, label %Io_WriteVerilogGetName.exit404, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i392, %bb.ae
  store i8 92, ptr @Io_WriteVerilogGetName.Buffer, align 16, !tbaa !38
  %i.so = icmp sgt i32 %i.sc, 0
  br i1 %i.so, label %iter.check934, label %._crit_edge49.i381

iter.check934:                                    ; preds = %bb.ah
  %wide.trip.count54.i386 = and i64 %i.sb, 2147483647 ; 6 uses
  %min.iters.check921 = icmp samesign ult i64 %wide.trip.count54.i386, 8
  %i.sp = sub i64 ptrtoaddr (ptr @Io_WriteVerilogGetName.Buffer to i64), %i.sa
  %diff.check920 = icmp ult i64 %i.sp, 31
  %or.cond1008 = or i1 %min.iters.check921, %diff.check920
  br i1 %or.cond1008, label %.lr.ph48.i387.preheader, label %vector.main.loop.iter.check922

vector.main.loop.iter.check922:                   ; preds = %iter.check934
  %min.iters.check923 = icmp samesign ult i64 %wide.trip.count54.i386, 32
  br i1 %min.iters.check923, label %vec.epilog.ph938, label %vector.ph924

vector.ph924:                                     ; preds = %vector.main.loop.iter.check922
  %i.sq = and i64 %i.sb, 24
  %n.vec925 = and i64 %i.sb, 2147483616           ; 4 uses
  br label %vector.body926

vector.body926:                                   ; preds = %vector.ph924, %vector.body926
  %index927 = phi i64 [ 0, %vector.ph924 ], [ %index.next930, %vector.body926 ] ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rz, i64 %index927 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %wide.load928 = load <16 x i8>, ptr %i.sr, align 1, !tbaa !38
  %wide.load929 = load <16 x i8>, ptr %i.ss, align 1, !tbaa !38
  %i.st = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index927 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 1
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 17
  store <16 x i8> %wide.load928, ptr %i.su, align 1, !tbaa !38
  store <16 x i8> %wide.load929, ptr %i.sv, align 1, !tbaa !38
  %index.next930 = add nuw i64 %index927, 32      ; 2 uses
  %i.sw = icmp eq i64 %index.next930, %n.vec925
  br i1 %i.sw, label %middle.block931, label %vector.body926, !llvm.loop !167

middle.block931:                                  ; preds = %vector.body926
  %cmp.n932 = icmp eq i64 %wide.trip.count54.i386, %n.vec925
  br i1 %cmp.n932, label %._crit_edge49.i381, label %vec.epilog.iter.check936

vec.epilog.iter.check936:                         ; preds = %middle.block931
  %min.epilog.iters.check937 = icmp eq i64 %i.sq, 0
  br i1 %min.epilog.iters.check937, label %.lr.ph48.i387.preheader, label %vec.epilog.ph938, !prof !41

vec.epilog.ph938:                                 ; preds = %vector.main.loop.iter.check922, %vec.epilog.iter.check936
  %vec.epilog.resume.val933 = phi i64 [ %n.vec925, %vec.epilog.iter.check936 ], [ 0, %vector.main.loop.iter.check922 ]
  %n.vec939 = and i64 %i.sb, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body940

vec.epilog.vector.body940:                        ; preds = %vec.epilog.vector.body940, %vec.epilog.ph938
  %index941 = phi i64 [ %vec.epilog.resume.val933, %vec.epilog.ph938 ], [ %index.next943, %vec.epilog.vector.body940 ] ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rz, i64 %index941
  %wide.load942 = load <8 x i8>, ptr %i.sx, align 1, !tbaa !38
  %i.sy = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index941
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 1
  store <8 x i8> %wide.load942, ptr %i.sz, align 1, !tbaa !38
  %index.next943 = add nuw i64 %index941, 8       ; 2 uses
  %i.ta = icmp eq i64 %index.next943, %n.vec939
end_hunk_0
begin_hunk_1_@Io_WriteVerilogObjectsLut:bb.a
  store i8 92, ptr @Io_WriteVerilogGetName.Buffer, align 16, !tbaa !38
  %i.zw = icmp sgt i32 %i.zk, 0
  br i1 %i.zw, label %iter.check850, label %._crit_edge49.i456

iter.check850:                                    ; preds = %bb.as
  %wide.trip.count54.i461 = and i64 %i.zj, 2147483647 ; 6 uses
  %min.iters.check837 = icmp samesign ult i64 %wide.trip.count54.i461, 8
  %i.zx = sub i64 ptrtoaddr (ptr @Io_WriteVerilogGetName.Buffer to i64), %i.zi
  %diff.check836 = icmp ult i64 %i.zx, 31
  %or.cond1011 = or i1 %min.iters.check837, %diff.check836
  br i1 %or.cond1011, label %.lr.ph48.i462.preheader, label %vector.main.loop.iter.check838

vector.main.loop.iter.check838:                   ; preds = %iter.check850
  %min.iters.check839 = icmp samesign ult i64 %wide.trip.count54.i461, 32
  br i1 %min.iters.check839, label %vec.epilog.ph854, label %vector.ph840

vector.ph840:                                     ; preds = %vector.main.loop.iter.check838
  %i.zy = and i64 %i.zj, 24
  %n.vec841 = and i64 %i.zj, 2147483616           ; 4 uses
  br label %vector.body842

vector.body842:                                   ; preds = %vector.ph840, %vector.body842
  %index843 = phi i64 [ 0, %vector.ph840 ], [ %index.next846, %vector.body842 ] ; 3 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zh, i64 %index843 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  %wide.load844 = load <16 x i8>, ptr %i.zz, align 1, !tbaa !38
  %wide.load845 = load <16 x i8>, ptr %i.aaa, align 1, !tbaa !38
  %i.aab = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index843 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 1
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aab, i64 17
  store <16 x i8> %wide.load844, ptr %i.aac, align 1, !tbaa !38
  store <16 x i8> %wide.load845, ptr %i.aad, align 1, !tbaa !38
  %index.next846 = add nuw i64 %index843, 32      ; 2 uses
  %i.aae = icmp eq i64 %index.next846, %n.vec841
  br i1 %i.aae, label %middle.block847, label %vector.body842, !llvm.loop !180

middle.block847:                                  ; preds = %vector.body842
  %cmp.n848 = icmp eq i64 %wide.trip.count54.i461, %n.vec841
  br i1 %cmp.n848, label %._crit_edge49.i456, label %vec.epilog.iter.check852

vec.epilog.iter.check852:                         ; preds = %middle.block847
  %min.epilog.iters.check853 = icmp eq i64 %i.zy, 0
  br i1 %min.epilog.iters.check853, label %.lr.ph48.i462.preheader, label %vec.epilog.ph854, !prof !41

vec.epilog.ph854:                                 ; preds = %vector.main.loop.iter.check838, %vec.epilog.iter.check852
  %vec.epilog.resume.val849 = phi i64 [ %n.vec841, %vec.epilog.iter.check852 ], [ 0, %vector.main.loop.iter.check838 ]
  %n.vec855 = and i64 %i.zj, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body856

vec.epilog.vector.body856:                        ; preds = %vec.epilog.vector.body856, %vec.epilog.ph854
  %index857 = phi i64 [ %vec.epilog.resume.val849, %vec.epilog.ph854 ], [ %index.next859, %vec.epilog.vector.body856 ] ; 3 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zh, i64 %index857
  %wide.load858 = load <8 x i8>, ptr %i.aaf, align 1, !tbaa !38
  %i.aag = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index857
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 1
  store <8 x i8> %wide.load858, ptr %i.aah, align 1, !tbaa !38
  %index.next859 = add nuw i64 %index857, 8       ; 2 uses
  %i.aai = icmp eq i64 %index.next859, %n.vec855
  br i1 %i.aai, label %vec.epilog.middle.block860, label %vec.epilog.vector.body856, !llvm.loop !181

vec.epilog.middle.block860:                       ; preds = %vec.epilog.vector.body856
  %cmp.n861 = icmp eq i64 %wide.trip.count54.i461, %n.vec855
  br i1 %cmp.n861, label %._crit_edge49.i456, label %.lr.ph48.i462.preheader

.lr.ph48.i462.preheader:                          ; preds = %iter.check850, %vec.epilog.iter.check852, %vec.epilog.middle.block860
  %indvars.iv51.i463.ph = phi i64 [ 0, %iter.check850 ], [ %n.vec841, %vec.epilog.iter.check852 ], [ %n.vec855, %vec.epilog.middle.block860 ] ; 3 uses
  %xtraiter1056 = and i64 %i.zj, 3                ; 2 uses
  %lcmp.mod1057.not = icmp eq i64 %xtraiter1056, 0
  br i1 %lcmp.mod1057.not, label %.lr.ph48.i462.prol.loopexit, label %.lr.ph48.i462.prol

.lr.ph48.i462.prol:                               ; preds = %.lr.ph48.i462.preheader, %.lr.ph48.i462.prol
  %indvars.iv51.i463.prol = phi i64 [ %indvars.iv.next52.i464.prol, %.lr.ph48.i462.prol ], [ %indvars.iv51.i463.ph, %.lr.ph48.i462.preheader ] ; 2 uses
  %prol.iter1058 = phi i64 [ %prol.iter1058.next, %.lr.ph48.i462.prol ], [ 0, %.lr.ph48.i462.preheader ]
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zh, i64 %indvars.iv51.i463.prol
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !38
  %indvars.iv.next52.i464.prol = add nuw nsw i64 %indvars.iv51.i463.prol, 1 ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i464.prol
  store i8 %i.aak, ptr %i.aal, align 1, !tbaa !38
  %prol.iter1058.next = add i64 %prol.iter1058, 1 ; 2 uses
  %prol.iter1058.cmp.not = icmp eq i64 %prol.iter1058.next, %xtraiter1056
  br i1 %prol.iter1058.cmp.not, label %.lr.ph48.i462.prol.loopexit, label %.lr.ph48.i462.prol, !llvm.loop !182

.lr.ph48.i462.prol.loopexit:                      ; preds = %.lr.ph48.i462.prol, %.lr.ph48.i462.preheader
  %indvars.iv51.i463.unr = phi i64 [ %indvars.iv51.i463.ph, %.lr.ph48.i462.preheader ], [ %indvars.iv.next52.i464.prol, %.lr.ph48.i462.prol ]
  %i.aam = sub nsw i64 %indvars.iv51.i463.ph, %wide.trip.count54.i461
  %i.aan = icmp ugt i64 %i.aam, -4
  br i1 %i.aan, label %._crit_edge49.i456, label %.lr.ph48.i462

.lr.ph48.i462:                                    ; preds = %.lr.ph48.i462.prol.loopexit, %.lr.ph48.i462
  %indvars.iv51.i463 = phi i64 [ %indvars.iv.next52.i464.3, %.lr.ph48.i462 ], [ %indvars.iv51.i463.unr, %.lr.ph48.i462.prol.loopexit ] ; 5 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.zh, i64 %indvars.iv51.i463
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !38
  %indvars.iv.next52.i464 = add nuw nsw i64 %indvars.iv51.i463, 1 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i464
  store i8 %i.aap, ptr %i.aaq, align 1, !tbaa !38
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zh, i64 %indvars.iv.next52.i464
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !38
  %indvars.iv.next52.i464.1 = add nuw nsw i64 %indvars.iv51.i463, 2 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i464.1
  store i8 %i.aas, ptr %i.aat, align 1, !tbaa !38
  %i.aau = getelementptr inbounds nuw i8, ptr %i.zh, i64 %indvars.iv.next52.i464.1
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !38
  %indvars.iv.next52.i464.2 = add nuw nsw i64 %indvars.iv51.i463, 3 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i464.2
  store i8 %i.aav, ptr %i.aaw, align 1, !tbaa !38
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zh, i64 %indvars.iv.next52.i464.2
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !38
  %indvars.iv.next52.i464.3 = add nuw nsw i64 %indvars.iv51.i463, 4 ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i464.3
  store i8 %i.aay, ptr %i.aaz, align 1, !tbaa !38
  %exitcond55.not.i465.3 = icmp eq i64 %indvars.iv.next52.i464.3, %wide.trip.count54.i461
  br i1 %exitcond55.not.i465.3, label %._crit_edge49.i456, label %.lr.ph48.i462, !llvm.loop !183

._crit_edge49.i456:                               ; preds = %.lr.ph48.i462.prol.loopexit, %.lr.ph48.i462, %middle.block847, %vec.epilog.middle.block860, %bb.as
  %i.aba = shl i64 %i.zj, 32                      ; 2 uses
  %sext.i457 = add i64 %i.aba, 4294967296
  %i.abb = ashr exact i64 %sext.i457, 32
  %i.abc = getelementptr inbounds i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %i.abb
  store i8 32, ptr %i.abc, align 1, !tbaa !38
  %sext37.i458 = add i64 %i.aba, 8589934592
  %i.abd = ashr exact i64 %sext37.i458, 32
  %i.abe = getelementptr inbounds i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %i.abd
  store i8 0, ptr %i.abe, align 1, !tbaa !38
  br label %Io_WriteVerilogGetName.exit479

Io_WriteVerilogGetName.exit479:                   ; preds = %bb.ar, %._crit_edge.i467, %._crit_edge49.i456
  %.031.i459 = phi ptr [ @Io_WriteVerilogGetName.Buffer, %._crit_edge49.i456 ], [ %i.zh, %._crit_edge.i467 ], [ %i.zh, %bb.ar ]
  %i.abf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %.0.lcssa, ptr noundef nonnull %.031.i459) #11 ; 0 uses
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1 ; 3 uses
  %.val224 = load i32, ptr %i.wk, align 4, !tbaa !54
  %i.abg = sext i32 %.val224 to i64
  %i.abh = icmp slt i64 %indvars.iv.next634, %i.abg
  br i1 %i.abh, label %bb.ap, label %.preheader535, !llvm.loop !184

.lr.ph581:                                        ; preds = %.lr.ph581.preheader, %.lr.ph581
  %.5164580 = phi i32 [ %i.abj, %.lr.ph581 ], [ %.5164580.ph, %.lr.ph581.preheader ]
  %i.abi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %.0.lcssa, ptr noundef nonnull @.str.37) #11 ; 0 uses
  %i.abj = add nuw i32 %.5164580, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.abj, 6
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph581, !llvm.loop !185

.sink.split:                                      ; preds = %Io_WriteVerilogGetName.exit429, %.lr.ph581, %.preheader535, %Io_WriteVerilogGetName.exit404
  %.3.ph = add nsw i32 %.2158585, 1
  %fwrite177 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 4, i64 1, ptr %0) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %bb.aa, %.lr.ph586
  %.3 = phi i32 [ %.2158585, %.lr.ph586 ], [ %.2158585, %bb.aa ], [ %.3.ph, %.sink.split ]
  %indvars.iv.next637 = add nuw nsw i64 %indvars.iv636, 1 ; 2 uses
  %i.abk = load ptr, ptr %i.j, align 8, !tbaa !52 ; 2 uses
  %i.abl = getelementptr i8, ptr %i.abk, i64 4
  %.val185 = load i32, ptr %i.abl, align 4, !tbaa !34
  %i.abm = sext i32 %.val185 to i64
  %i.abn = icmp slt i64 %indvars.iv.next637, %i.abm
  br i1 %i.abn, label %.lr.ph586, label %.critedge10, !llvm.loop !186

bb.au:                                            ; preds = %.lr.ph599, %bb.bh
  %i.abo = phi ptr [ %i.pq, %.lr.ph599 ], [ %i.aha, %bb.bh ] ; 3 uses
  %indvars.iv642 = phi i64 [ 0, %.lr.ph599 ], [ %indvars.iv.next643, %bb.bh ] ; 2 uses
  %.4598 = phi i32 [ 0, %.lr.ph599 ], [ %.5, %bb.bh ] ; 4 uses
  %i.abp = getelementptr i8, ptr %i.abo, i64 8
  %.val215.val = load ptr, ptr %i.abp, align 8, !tbaa !35
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %.val215.val, i64 %indvars.iv642
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !36 ; 8 uses
  %i.abs = icmp eq ptr %i.abr, null
  br i1 %i.abs, label %bb.bh, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.abt = getelementptr i8, ptr %i.abr, i64 20
  %.val218 = load i32, ptr %i.abt, align 4
  %i.abu = and i32 %.val218, 15
  %.not531 = icmp eq i32 %i.abu, 7
  br i1 %.not531, label %bb.aw, label %bb.bh

bb.aw:                                            ; preds = %bb.av
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abr, i64 64
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !38
  %i.abx = getelementptr i8, ptr %i.abr, i64 28   ; 3 uses
  %.val223 = load i32, ptr %i.abx, align 4, !tbaa !54
  %i.aby = tail call i64 @Abc_SopToTruth(ptr noundef %i.abw, i32 noundef %.val223) #11 ; 3 uses
  %i.abz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %2, i32 noundef %i.pw) #11 ; 0 uses
  br i1 %i.px, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.aca = lshr i64 %i.aby, 32
  %i.acb = trunc nuw i64 %i.aca to i32
  %i.acc = trunc i64 %i.aby to i32
  %i.acd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %i.acb, i32 noundef %i.acc) #11 ; 0 uses
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ace = trunc i64 %i.aby to i32
  %i.acf = and i32 %i.qb, %i.ace
  %i.acg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %i.pz, i32 noundef %i.acf) #11 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ach = add nsw i32 %.4598, 1
  %i.aci = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %.09.i378, i32 noundef %.4598) #11 ; 0 uses
  %.val222587 = load i32, ptr %i.abx, align 4, !tbaa !54 ; 2 uses
  %.not174589 = icmp slt i32 %.6587, %.val222587
  br i1 %.not174589, label %.preheader, label %.lr.ph591

.preheader:                                       ; preds = %.lr.ph591, %bb.az
  %.val222.lcssa = phi i32 [ %.val222587, %bb.az ], [ %.val222, %.lr.ph591 ] ; 2 uses
  %i.acj = icmp sgt i32 %.val222.lcssa, 0
  br i1 %i.acj, label %.lr.ph594, label %._crit_edge595

.lr.ph594:                                        ; preds = %.preheader
  %i.ack = getelementptr i8, ptr %i.abr, i64 32
  %i.acl = zext nneg i32 %.val222.lcssa to i64
  br label %bb.ba

.lr.ph591:                                        ; preds = %bb.az, %.lr.ph591
  %.6.in589 = phi i32 [ %.6, %.lr.ph591 ], [ %.6587, %bb.az ]
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %.0.lcssa, ptr noundef nonnull @.str.37) #11 ; 0 uses
  %.6 = add nsw i32 %.6.in589, -1                 ; 2 uses
  %.val222 = load i32, ptr %i.abx, align 4, !tbaa !54 ; 2 uses
  %.not174 = icmp slt i32 %.6, %.val222
  br i1 %.not174, label %.preheader, label %.lr.ph591, !llvm.loop !187

bb.ba:                                            ; preds = %.lr.ph594, %Io_WriteVerilogGetName.exit504
  %indvars.iv639 = phi i64 [ %i.acl, %.lr.ph594 ], [ %indvars.iv.next640, %Io_WriteVerilogGetName.exit504 ] ; 2 uses
  %indvars.iv.next640 = add nsw i64 %indvars.iv639, -1 ; 3 uses
  %.val230 = load ptr, ptr %i.abr, align 8, !tbaa !50
  %.val231 = load ptr, ptr %i.ack, align 8, !tbaa !53
  %i.acm = getelementptr i8, ptr %.val230, i64 32
  %.val230.val = load ptr, ptr %i.acm, align 8, !tbaa !52
  %i.acn = getelementptr i8, ptr %.val230.val, i64 8
  %.val230.val.val = load ptr, ptr %i.acn, align 8, !tbaa !35
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %.val231, i64 %indvars.iv.next640
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !43
  %i.acq = sext i32 %i.acp to i64
  %i.acr = getelementptr inbounds [8 x i8], ptr %.val230.val.val, i64 %i.acq
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !36
  %i.act = tail call ptr @Abc_ObjName(ptr noundef %i.acs) #11 ; 13 uses
  %i.acu = ptrtoaddr ptr %i.act to i64
  %i.acv = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.act) #12 ; 8 uses
  %i.acw = trunc i64 %i.acv to i32                ; 3 uses
  %i.acx = load i8, ptr %i.act, align 1, !tbaa !38
  %i.acy = add i8 %i.acx, -58
  %or.cond.i480 = icmp ult i8 %i.acy, -10
  br i1 %or.cond.i480, label %.preheader.i491, label %bb.bd

.preheader.i491:                                  ; preds = %bb.ba
  %i.acz = icmp sgt i32 %i.acw, 0
  br i1 %i.acz, label %.lr.ph.preheader.i494, label %._crit_edge.i492

.lr.ph.preheader.i494:                            ; preds = %.preheader.i491
  %wide.trip.count.i495 = and i64 %i.acv, 2147483647
  br label %.lr.ph.i496

.lr.ph.i496:                                      ; preds = %bb.bc, %.lr.ph.preheader.i494
  %indvars.iv.i497 = phi i64 [ 0, %.lr.ph.preheader.i494 ], [ %indvars.iv.next.i502, %bb.bc ] ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.act, i64 %indvars.iv.i497
  %i.adb = load i8, ptr %i.ada, align 1, !tbaa !38 ; 3 uses
  %i.adc = and i8 %i.adb, -33
  %i.add = add i8 %i.adc, -65
  %or.cond42.i498 = icmp ult i8 %i.add, 26
  br i1 %or.cond42.i498, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i496
  %i.ade = add i8 %i.adb, -48
  %or.cond40.i499 = icmp ult i8 %i.ade, 10
  %i.adf = icmp eq i8 %i.adb, 95
  %or.cond41.i500 = or i1 %i.adf, %or.cond40.i499
  br i1 %or.cond41.i500, label %bb.bc, label %._crit_edge.loopexit.i501

bb.bc:                                            ; preds = %bb.bb, %.lr.ph.i496
  %indvars.iv.next.i502 = add nuw nsw i64 %indvars.iv.i497, 1 ; 2 uses
  %exitcond.not.i503 = icmp eq i64 %indvars.iv.next.i502, %wide.trip.count.i495
  br i1 %exitcond.not.i503, label %Io_WriteVerilogGetName.exit504, label %.lr.ph.i496, !llvm.loop !0

._crit_edge.loopexit.i501:                        ; preds = %bb.bb
  %i.adg = trunc nuw nsw i64 %indvars.iv.i497 to i32
  br label %._crit_edge.i492

._crit_edge.i492:                                 ; preds = %._crit_edge.loopexit.i501, %.preheader.i491
  %.0.lcssa.i493 = phi i32 [ 0, %.preheader.i491 ], [ %i.adg, %._crit_edge.loopexit.i501 ]
  %i.adh = icmp eq i32 %.0.lcssa.i493, %i.acw
  br i1 %i.adh, label %Io_WriteVerilogGetName.exit504, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.i492, %bb.ba
  store i8 92, ptr @Io_WriteVerilogGetName.Buffer, align 16, !tbaa !38
  %i.adi = icmp sgt i32 %i.acw, 0
  br i1 %i.adi, label %iter.check990, label %._crit_edge49.i481

iter.check990:                                    ; preds = %bb.bd
  %wide.trip.count54.i486 = and i64 %i.acv, 2147483647 ; 6 uses
  %min.iters.check977 = icmp samesign ult i64 %wide.trip.count54.i486, 8
  %i.adj = sub i64 ptrtoaddr (ptr @Io_WriteVerilogGetName.Buffer to i64), %i.acu
  %diff.check976 = icmp ult i64 %i.adj, 31
  %or.cond1012 = or i1 %min.iters.check977, %diff.check976
  br i1 %or.cond1012, label %.lr.ph48.i487.preheader, label %vector.main.loop.iter.check978

vector.main.loop.iter.check978:                   ; preds = %iter.check990
  %min.iters.check979 = icmp samesign ult i64 %wide.trip.count54.i486, 32
  br i1 %min.iters.check979, label %vec.epilog.ph994, label %vector.ph980

vector.ph980:                                     ; preds = %vector.main.loop.iter.check978
  %i.adk = and i64 %i.acv, 24
  %n.vec981 = and i64 %i.acv, 2147483616          ; 4 uses
  br label %vector.body982

vector.body982:                                   ; preds = %vector.ph980, %vector.body982
  %index983 = phi i64 [ 0, %vector.ph980 ], [ %index.next986, %vector.body982 ] ; 3 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.act, i64 %index983 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  %wide.load984 = load <16 x i8>, ptr %i.adl, align 1, !tbaa !38
  %wide.load985 = load <16 x i8>, ptr %i.adm, align 1, !tbaa !38
  %i.adn = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index983 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 1
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adn, i64 17
  store <16 x i8> %wide.load984, ptr %i.ado, align 1, !tbaa !38
  store <16 x i8> %wide.load985, ptr %i.adp, align 1, !tbaa !38
  %index.next986 = add nuw i64 %index983, 32      ; 2 uses
  %i.adq = icmp eq i64 %index.next986, %n.vec981
  br i1 %i.adq, label %middle.block987, label %vector.body982, !llvm.loop !188

middle.block987:                                  ; preds = %vector.body982
  %cmp.n988 = icmp eq i64 %wide.trip.count54.i486, %n.vec981
  br i1 %cmp.n988, label %._crit_edge49.i481, label %vec.epilog.iter.check992

vec.epilog.iter.check992:                         ; preds = %middle.block987
  %min.epilog.iters.check993 = icmp eq i64 %i.adk, 0
  br i1 %min.epilog.iters.check993, label %.lr.ph48.i487.preheader, label %vec.epilog.ph994, !prof !41

vec.epilog.ph994:                                 ; preds = %vector.main.loop.iter.check978, %vec.epilog.iter.check992
  %vec.epilog.resume.val989 = phi i64 [ %n.vec981, %vec.epilog.iter.check992 ], [ 0, %vector.main.loop.iter.check978 ]
  %n.vec995 = and i64 %i.acv, 2147483640          ; 3 uses
  br label %vec.epilog.vector.body996

vec.epilog.vector.body996:                        ; preds = %vec.epilog.vector.body996, %vec.epilog.ph994
  %index997 = phi i64 [ %vec.epilog.resume.val989, %vec.epilog.ph994 ], [ %index.next999, %vec.epilog.vector.body996 ] ; 3 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.act, i64 %index997
  %wide.load998 = load <8 x i8>, ptr %i.adr, align 1, !tbaa !38
  %i.ads = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index997
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 1
  store <8 x i8> %wide.load998, ptr %i.adt, align 1, !tbaa !38
  %index.next999 = add nuw i64 %index997, 8       ; 2 uses
  %i.adu = icmp eq i64 %index.next999, %n.vec995
  br i1 %i.adu, label %vec.epilog.middle.block1000, label %vec.epilog.vector.body996, !llvm.loop !189

vec.epilog.middle.block1000:                      ; preds = %vec.epilog.vector.body996
  %cmp.n1001 = icmp eq i64 %wide.trip.count54.i486, %n.vec995
  br i1 %cmp.n1001, label %._crit_edge49.i481, label %.lr.ph48.i487.preheader

.lr.ph48.i487.preheader:                          ; preds = %iter.check990, %vec.epilog.iter.check992, %vec.epilog.middle.block1000
  %indvars.iv51.i488.ph = phi i64 [ 0, %iter.check990 ], [ %n.vec981, %vec.epilog.iter.check992 ], [ %n.vec995, %vec.epilog.middle.block1000 ] ; 3 uses
  %xtraiter1059 = and i64 %i.acv, 3               ; 2 uses
  %lcmp.mod1060.not = icmp eq i64 %xtraiter1059, 0
  br i1 %lcmp.mod1060.not, label %.lr.ph48.i487.prol.loopexit, label %.lr.ph48.i487.prol

.lr.ph48.i487.prol:                               ; preds = %.lr.ph48.i487.preheader, %.lr.ph48.i487.prol
  %indvars.iv51.i488.prol = phi i64 [ %indvars.iv.next52.i489.prol, %.lr.ph48.i487.prol ], [ %indvars.iv51.i488.ph, %.lr.ph48.i487.preheader ] ; 2 uses
  %prol.iter1061 = phi i64 [ %prol.iter1061.next, %.lr.ph48.i487.prol ], [ 0, %.lr.ph48.i487.preheader ]
  %i.adv = getelementptr inbounds nuw i8, ptr %i.act, i64 %indvars.iv51.i488.prol
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !38
  %indvars.iv.next52.i489.prol = add nuw nsw i64 %indvars.iv51.i488.prol, 1 ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i489.prol
  store i8 %i.adw, ptr %i.adx, align 1, !tbaa !38
  %prol.iter1061.next = add i64 %prol.iter1061, 1 ; 2 uses
  %prol.iter1061.cmp.not = icmp eq i64 %prol.iter1061.next, %xtraiter1059
  br i1 %prol.iter1061.cmp.not, label %.lr.ph48.i487.prol.loopexit, label %.lr.ph48.i487.prol, !llvm.loop !190

.lr.ph48.i487.prol.loopexit:                      ; preds = %.lr.ph48.i487.prol, %.lr.ph48.i487.preheader
  %indvars.iv51.i488.unr = phi i64 [ %indvars.iv51.i488.ph, %.lr.ph48.i487.preheader ], [ %indvars.iv.next52.i489.prol, %.lr.ph48.i487.prol ]
  %i.ady = sub nsw i64 %indvars.iv51.i488.ph, %wide.trip.count54.i486
  %i.adz = icmp ugt i64 %i.ady, -4
  br i1 %i.adz, label %._crit_edge49.i481, label %.lr.ph48.i487

.lr.ph48.i487:                                    ; preds = %.lr.ph48.i487.prol.loopexit, %.lr.ph48.i487
  %indvars.iv51.i488 = phi i64 [ %indvars.iv.next52.i489.3, %.lr.ph48.i487 ], [ %indvars.iv51.i488.unr, %.lr.ph48.i487.prol.loopexit ] ; 5 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.act, i64 %indvars.iv51.i488
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !38
  %indvars.iv.next52.i489 = add nuw nsw i64 %indvars.iv51.i488, 1 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i489
  store i8 %i.aeb, ptr %i.aec, align 1, !tbaa !38
  %i.aed = getelementptr inbounds nuw i8, ptr %i.act, i64 %indvars.iv.next52.i489
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !38
  %indvars.iv.next52.i489.1 = add nuw nsw i64 %indvars.iv51.i488, 2 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i489.1
  store i8 %i.aee, ptr %i.aef, align 1, !tbaa !38
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.act, i64 %indvars.iv.next52.i489.1
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !38
  %indvars.iv.next52.i489.2 = add nuw nsw i64 %indvars.iv51.i488, 3 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i489.2
  store i8 %i.aeh, ptr %i.aei, align 1, !tbaa !38
  %i.aej = getelementptr inbounds nuw i8, ptr %i.act, i64 %indvars.iv.next52.i489.2
  %i.aek = load i8, ptr %i.aej, align 1, !tbaa !38
  %indvars.iv.next52.i489.3 = add nuw nsw i64 %indvars.iv51.i488, 4 ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i489.3
  store i8 %i.aek, ptr %i.ael, align 1, !tbaa !38
  %exitcond55.not.i490.3 = icmp eq i64 %indvars.iv.next52.i489.3, %wide.trip.count54.i486
  br i1 %exitcond55.not.i490.3, label %._crit_edge49.i481, label %.lr.ph48.i487, !llvm.loop !191

._crit_edge49.i481:                               ; preds = %.lr.ph48.i487.prol.loopexit, %.lr.ph48.i487, %middle.block987, %vec.epilog.middle.block1000, %bb.bd
  %i.aem = shl i64 %i.acv, 32                     ; 2 uses
  %sext.i482 = add i64 %i.aem, 4294967296
  %i.aen = ashr exact i64 %sext.i482, 32
  %i.aeo = getelementptr inbounds i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %i.aen
  store i8 32, ptr %i.aeo, align 1, !tbaa !38
  %sext37.i483 = add i64 %i.aem, 8589934592
  %i.aep = ashr exact i64 %sext37.i483, 32
  %i.aeq = getelementptr inbounds i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %i.aep
  store i8 0, ptr %i.aeq, align 1, !tbaa !38
  br label %Io_WriteVerilogGetName.exit504

Io_WriteVerilogGetName.exit504:                   ; preds = %bb.bc, %._crit_edge.i492, %._crit_edge49.i481
  %.031.i484 = phi ptr [ @Io_WriteVerilogGetName.Buffer, %._crit_edge49.i481 ], [ %i.act, %._crit_edge.i492 ], [ %i.act, %bb.bc ]
  %i.aer = icmp eq i64 %indvars.iv.next640, 0
  %i.aes = select i1 %i.aer, ptr @.str.27, ptr @.str.28
  %i.aet = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %.0.lcssa, ptr noundef nonnull %.031.i484, ptr noundef nonnull %i.aes) #11 ; 0 uses
  %i.aeu = icmp sgt i64 %indvars.iv639, 1
  br i1 %i.aeu, label %bb.ba, label %._crit_edge595, !llvm.loop !192

._crit_edge595:                                   ; preds = %Io_WriteVerilogGetName.exit504, %.preheader
  %.val190 = load ptr, ptr %i.abr, align 8, !tbaa !50
  %i.aev = getelementptr i8, ptr %i.abr, i64 48
  %.val191 = load ptr, ptr %i.aev, align 8, !tbaa !51
end_hunk_1
